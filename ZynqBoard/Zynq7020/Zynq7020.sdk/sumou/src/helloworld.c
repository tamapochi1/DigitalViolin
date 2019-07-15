/******************************************************************************
*
* Copyright (C) 2009 - 2014 Xilinx, Inc.  All rights reserved.
*
* Permission is hereby granted, free of charge, to any person obtaining a copy
* of this software and associated documentation files (the "Software"), to deal
* in the Software without restriction, including without limitation the rights
* to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
* copies of the Software, and to permit persons to whom the Software is
* furnished to do so, subject to the following conditions:
*
* The above copyright notice and this permission notice shall be included in
* all copies or substantial portions of the Software.
*
* Use of the Software is limited solely to applications:
* (a) running on a Xilinx device, or
* (b) that interact with a Xilinx device through a bus or interconnect.
*
* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
* IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
* FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
* XILINX  BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
* WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF
* OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
* SOFTWARE.
*
* Except as contained in this notice, the name of the Xilinx shall not be used
* in advertising or otherwise to promote the sale, use or other dealings in
* this Software without prior written authorization from Xilinx.
*
******************************************************************************/

/*
 * helloworld.c: simple test application
 *
 * This application configures UART 16550 to baud rate 9600.
 * PS7 UART (Zynq) is not initialized by this application, since
 * bootrom/bsp configures it to baud rate 115200
 *
 * ------------------------------------------------
 * | UART TYPE   BAUD RATE                        |
 * ------------------------------------------------
 *   uartns550   9600
 *   uartlite    Configurable only in HW design
 *   ps7_uart    115200 (configured by bootrom/bsp)
 */

#include <math.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "xil_io.h"
#include "xil_printf.h"
#include "xparameters.h"
#include "xuartps_hw.h"
#include "sleep.h"
#include "platform.h"
#include "xparameters.h"
#include "xscugic.h"
#include "xil_exception.h"

#define XPAR_MYIP_0_S00_AXI_BASEADDR 0x43C00000
#define XPAR_DSP_DSP_REGISTER_0_S00_AXI_BASEADDR 0x43C10000

XScuGic InterruptController; /* Instance of the Interrupt Controller */
static XScuGic_Config *GicConfig;/* The configuration parameters of the controller */

typedef union
{
	struct
	{
		u16 ch0;
		u16 ch1;
		u16 ch2;
		u16 ch3;
		u16 ch4;
		u16 ch5;
		u16 ch6;
		u16 ch7;
	}channels;
	struct
	{
		u32 ch1ch0;
		u32 ch3ch2;
		u32 ch5ch4;
		u32 ch7ch6;
	}u32;
	u16 array16[8];
}fftData;

u8 adcGain = 5;
float window[256];
u8 adcCh = 0;
u32 soundDataIndex = 0;
u32 soundDataReady = 0;

volatile u32 *UIF1_EN = (volatile u32 *)(0x43C20000);
volatile u32 *UIF1_WRITE = (volatile u32 *)(0x43C20000 + 16);
volatile u32 *UIF1_READ = (volatile u32 *)(0x43C20000 + 20);
volatile u32 *UIF1_START = (volatile u32 *)(0x43C20000 + 24);
volatile u32 *UIF1_BUSY = (volatile u32 *)(0x43C20000 + 28);
s16 adcData1;
fftData soundDataBuffer1A[1024];
fftData soundDataBuffer1B[1024];
fftData *writingSoundDataBuffer1 = soundDataBuffer1A;
fftData *readingSoundDataBuffer1 = soundDataBuffer1B;

volatile u32 *UIF2_EN = (volatile u32 *)(0x43C30000);
volatile u32 *UIF2_WRITE = (volatile u32 *)(0x43C30000 + 16);
volatile u32 *UIF2_READ = (volatile u32 *)(0x43C30000 + 20);
volatile u32 *UIF2_START = (volatile u32 *)(0x43C30000 + 24);
volatile u32 *UIF2_BUSY = (volatile u32 *)(0x43C30000 + 28);
s16 adcData2;
fftData soundDataBuffer2A[1024];
fftData soundDataBuffer2B[1024];
fftData *writingSoundDataBuffer2 = soundDataBuffer2A;
fftData *readingSoundDataBuffer2 = soundDataBuffer2B;

volatile u32 *UIF3_EN = (volatile u32 *)(0x43C40000);
volatile u32 *UIF3_WRITE = (volatile u32 *)(0x43C40000 + 16);
volatile u32 *UIF3_READ = (volatile u32 *)(0x43C40000 + 20);
volatile u32 *UIF3_START = (volatile u32 *)(0x43C40000 + 24);
volatile u32 *UIF3_BUSY = (volatile u32 *)(0x43C40000 + 28);


volatile u32 *DSP_FFT_SCALE = (volatile u32 *)(0x43C10000 + 12);
//volatile u32 *DSP_FFT_WRITE = (volatile u32 *)(0x43C10000 + 20);
volatile u32 *DSP_FFT_START = (volatile u32 *)(0x43C10000 + 20);
volatile u32 *DSP_FFT_READ = (volatile u32 *)(0x43C10000 + 24);
volatile u32 *DSP_FFT_DATA = (volatile u32 *)(0x42000000);
volatile u32 *DSP_FFT_RESULT = (volatile u32 *)(0x44000000);
u32 ffttemp = 1;
u32 fftSourceDataIndex = 0;
u32 fftBusy = 0;
u32 fftCompleted = 0;

void OnAudioClk(void *data)
{
	s32 adcDataTemp;
	fftData *temp;

	while(*UIF1_BUSY);

	adcDataTemp = *UIF1_READ;	// ignore
	adcDataTemp = (*UIF1_READ & 0x0F) << 8;
	adcDataTemp |= *UIF1_READ & 0xFF;

	adcDataTemp -= 2048;
	adcDataTemp = (float)adcDataTemp * window[soundDataIndex] * (float)adcGain;

	if(adcDataTemp < -2048){
		adcData1 = -2048;
	}else if(adcDataTemp > 2047){
		adcData1 = 2047;
	}else{
		adcData1 = adcDataTemp;
	}

	switch(adcCh)
	{
	case 0:
		writingSoundDataBuffer1[soundDataIndex].channels.ch0 = (u16)adcData1;
		break;
	case 1:
		writingSoundDataBuffer1[soundDataIndex].channels.ch1 = (u16)adcData1;
		break;
	case 2:
		writingSoundDataBuffer1[soundDataIndex].channels.ch2 = (u16)adcData1;
		break;
	case 3:
		writingSoundDataBuffer1[soundDataIndex].channels.ch3 = (u16)adcData1;
		break;
	case 4:
		writingSoundDataBuffer1[soundDataIndex].channels.ch4 = (u16)adcData1;
		break;
	case 5:
		writingSoundDataBuffer1[soundDataIndex].channels.ch5 = (u16)adcData1;
		break;
	case 6:
		writingSoundDataBuffer1[soundDataIndex].channels.ch6 = (u16)adcData1;
		break;
	case 7:
		writingSoundDataBuffer1[soundDataIndex].channels.ch7 = (u16)adcData1;
		soundDataIndex++;
		if(soundDataIndex >= 256)
		{
			soundDataIndex = 0;
			temp = readingSoundDataBuffer1;
			readingSoundDataBuffer1 = writingSoundDataBuffer1;
			writingSoundDataBuffer1 = temp;
			soundDataReady = 1;
		}
		break;
	default:
		break;
	}

	if(adcCh < 7)
	{
		adcCh++;
	}
	else
	{
		adcCh = 0;
	}

//    Xil_Out32(0x43C20000 + 16, 0x06 | adcCh >> 2);
//    Xil_Out32(0x43C20000 + 16, adcCh << 6);
//    Xil_Out32(0x43C20000 + 16, 0x00);
    *UIF1_WRITE = 0x06 | adcCh >> 2;		// <- and above codes are same execution speed.
    *UIF1_WRITE = adcCh << 6;
    *UIF1_WRITE = 0x00;

   *UIF1_START = 0x01;

   // clear interrupt bit
	*(u32*)XPAR_DSP_DSP_REGISTER_0_S00_AXI_BASEADDR &= ~0x00000004;
}

void OnFFTComplete(void *data)
{
	// 時間のかかる処理は他の割り込みに影響を与えるのでNG
//    for(i = 0; i < 1024; i++)
//    {
//        value[i].u32.ch1ch0 = DSP_FFT_RESULT[j++];
//        value[i].u32.ch3ch2 = DSP_FFT_RESULT[j++];
//        value[i].u32.ch5ch4 = DSP_FFT_RESULT[j++];
//        value[i].u32.ch7ch6 = DSP_FFT_RESULT[j++];
//    }

    fftCompleted = 1;

    // clear interrupt bit
	*(u32*)XPAR_DSP_DSP_REGISTER_0_S00_AXI_BASEADDR &= ~0x00000008;
}

int main()
{
	fftData value[1024];
	u32 mag[8];
	u8 receivedByte;
//	s32 value[1025];
	u32 i, j, x, freq, upDown, addr, temp[10], sum1, sum2, sumcount = 0, offset;
	u8 rddata[10][672], currentRow = 0;
	int note;
	float gain, fingerPos[4];
	int status;

    init_platform();

    *(u32*)XPAR_MYIP_0_S00_AXI_BASEADDR = 0b000;
    *(u32*)XPAR_DSP_DSP_REGISTER_0_S00_AXI_BASEADDR = 0x0;

    GicConfig = XScuGic_LookupConfig(XPAR_PS7_SCUGIC_0_DEVICE_ID);
    i = XScuGic_CfgInitialize(&InterruptController, GicConfig, GicConfig->CpuBaseAddress);
    Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_INT, (Xil_ExceptionHandler)XScuGic_InterruptHandler, &InterruptController);
    Xil_ExceptionEnable();
    i = XScuGic_Connect(&InterruptController, 61, (Xil_ExceptionHandler)OnAudioClk, NULL);
    XScuGic_Connect(&InterruptController, 62, (Xil_ExceptionHandler)OnFFTComplete, NULL);
    XScuGic_Enable(&InterruptController, 61);
    XScuGic_Enable(&InterruptController, 62);

    for(i = 0; i < 256; i++)
    {
    	window[i] = 0.54f - 0.46f * cosf(2.f * (float)M_PI * (float)i / 255.f);
    }

    *UIF1_EN = 3;
    *UIF2_EN = 0;
    *UIF3_EN = 0;

    *DSP_FFT_SCALE = 0x5556;	// 0x05556 = x1, 0x15556 = x0.5, 0x55556 = x0.25 but perfectly secure. (if N=1024, but now 256)

    *(u32*)XPAR_DSP_DSP_REGISTER_0_S00_AXI_BASEADDR = 0x3;	// start audio sample clock.

    *(u32*)XPAR_MYIP_0_S00_AXI_BASEADDR = 0b111;

    while(1)
    {
    	// 念のために割り込みフラグをクリア
    	if(*(u32*)XPAR_DSP_DSP_REGISTER_0_S00_AXI_BASEADDR & 0xC)
    	{
    		*(u32*)XPAR_DSP_DSP_REGISTER_0_S00_AXI_BASEADDR &= ~0x0000000C;
    	}

    	if(soundDataReady)
    	{
    		soundDataReady = 0;

    		if(fftBusy)
    		{
    			printf("fft failed\n");
    		}

    		*(u32*)XPAR_MYIP_0_S00_AXI_BASEADDR = 0b101;

    		j = 0;
//    		for(i = 0; i < 256; i++)
//    		{
//    			DSP_FFT_DATA[j++] = readingSoundDataBuffer[i].u32.ch1ch0;
//    			DSP_FFT_DATA[j++] = readingSoundDataBuffer[i].u32.ch3ch2;
//    			DSP_FFT_DATA[j++] = readingSoundDataBuffer[i].u32.ch5ch4;
//    			DSP_FFT_DATA[j++] = readingSoundDataBuffer1[i].u32.ch7ch6;
//    		}
    		memcpy(DSP_FFT_DATA, readingSoundDataBuffer1, 256 * 4 * 4);
    		*DSP_FFT_START = 1;
    	}

    	if(fftCompleted)
    	{
    		fftCompleted = 0;
			j = 0;
//			for(i = 0; i < 256; i++)
//			{
//			value[i].u32.ch1ch0 = DSP_FFT_RESULT[j++];
//			value[i].u32.ch3ch2 = DSP_FFT_RESULT[j++];
//			value[i].u32.ch5ch4 = DSP_FFT_RESULT[j++];
//			value[i].u32.ch7ch6 = DSP_FFT_RESULT[j++];
//			}
			memcpy(value, DSP_FFT_RESULT, 128 * 4 * 4);

			for(i = 0; i < 8; i++)
			{
				mag[i] = 0;
				// HPF
				for(j = 30; j < 128; j++)
				{
					x = (u32)((float)value[j].array16[i] * ((float)j / 12.8f));
					mag[i] += x > 20 ? x : 0;
				}
			}

			// なぜかch4だけ結果が大きいことがあった:Nを1024から256にしたときスケーリングの変更を忘れていた
			// 改行前にスペースを挿入する
			printf("%d %d %d %d %d %d %d %d ", mag[0], mag[1], mag[2], mag[3], mag[4], mag[5], mag[6], mag[7]);
//			for(i = 0; i < mag[7]; i += 10)
//			{
//				printf("*");
//			}
			printf("\n");

//			*(u32*)XPAR_MYIP_0_S00_AXI_BASEADDR = 0b111;
    	}

    	// ループの中のここの位置じゃないとすぐフリーズする？
    	if(XUartPs_IsReceiveData(STDIN_BASEADDRESS))
    	{
    		receivedByte = XUartPs_RecvByte(STDIN_BASEADDRESS);

    		if((receivedByte & 0xF0) == 0x30)
    		{
    			adcGain = receivedByte & 0x0F;
    		}
    		else
    		{
        		switch(receivedByte)
        		{
        		default:
        			break;
        		}
    		}
    	}
    }

    cleanup_platform();
    return 0;
}
