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

#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <string.h>
#include "xil_io.h"
#include "xil_printf.h"
#include "xparameters.h"
#include "xuartps_hw.h"
#include "sleep.h"
#include "platform.h"
#include "xparameters.h"
#include "xiicps.h"
#include "xgpiops.h"
#include "myip.h"
#include "DSP_register.h"
#include "fingering.h"
#include "xscugic.h"
#include "xil_exception.h"

u32 count = 0;
int scale[] = {0, 2, 4, 5, 7, 9, 11, 12};
XIicPs Iic;
XScuGic InterruptController; /* Instance of the Interrupt Controller */
static XScuGic_Config *GicConfig;/* The configuration parameters of the controller */
u8 adcCh = 0;
s16 adcData;
u8 adcGain = 5;
volatile u32 *UIF1WRITE = (volatile u32 *)(0x43C20000 + 16);
volatile u32 *UIF1_START = (volatile u32 *)(0x43C20000 + 24);
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
fftData soundDataBufferA[1024];
fftData soundDataBufferB[1024];
u32 soundDataIndex = 0;
u32 soundDataReady = 0;
fftData *writingSoundDataBuffer = soundDataBufferA;
fftData *readingSoundDataBuffer = soundDataBufferB;

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

int i2c_write(XIicPs *Iic, u8 addr, u8 command, u16 i2c_adder)
{
    int Status;
    u8 buffer[4];
    buffer[0] = addr;
    buffer[1] = command;

    Status = XIicPs_MasterSendPolled(Iic, buffer, 2, i2c_adder);

    if(Status != XST_SUCCESS){
        return XST_FAILURE;
    }

    while(XIicPs_BusIsBusy(Iic)){ }

    return XST_SUCCESS;
}

void OnAudioClk(void *data)
{
	fftData *temp;

	while(Xil_In32(0x43C20000 + 28));

	Xil_In32(0x43C20000 + 20);	// ignore
	adcData = (Xil_In32(0x43C20000 + 20) & 0x0F) << 8;
	adcData |= Xil_In32(0x43C20000 + 20) & 0xFF;

	adcData -= 2048;
	adcData *= adcGain;

	switch(adcCh)
	{
	case 0:		writingSoundDataBuffer[soundDataIndex].channels.ch0 = (u16)adcData;
		break;
	case 1:
		writingSoundDataBuffer[soundDataIndex].channels.ch1 = (u16)adcData;
		break;
	case 2:
		writingSoundDataBuffer[soundDataIndex].channels.ch2 = (u16)adcData;
		break;
	case 3:
		writingSoundDataBuffer[soundDataIndex].channels.ch3 = (u16)adcData;
		break;
	case 4:
		writingSoundDataBuffer[soundDataIndex].channels.ch4 = (u16)adcData;
		break;
	case 5:
		writingSoundDataBuffer[soundDataIndex].channels.ch5 = (u16)adcData;
		break;
	case 6:
		writingSoundDataBuffer[soundDataIndex].channels.ch6 = (u16)adcData;
		break;
	case 7:
		writingSoundDataBuffer[soundDataIndex].channels.ch7 = (u16)adcData;
		soundDataIndex++;
		if(soundDataIndex == 256)
		{
			soundDataIndex = 0;
			temp = readingSoundDataBuffer;
			readingSoundDataBuffer = writingSoundDataBuffer;
			writingSoundDataBuffer = temp;
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
    *UIF1WRITE = 0x06 | adcCh >> 2;		// <- and above codes are same execution speed.
    *UIF1WRITE = adcCh << 6;
    *UIF1WRITE = 0x00;

   *UIF1_START = 0xFF;
//    Xil_Out32(0x43C20000 + 24, 0x01);

   // clear interrupt bit
	*(u32*)XPAR_DSP_DSP_REGISTER_0_S00_AXI_BASEADDR &= ~0x00000004;
}

void OnFFTComplete(void *data)
{
	fftData value[1024];
	u32 i, j = 0;

	// 時間のかかる処理は他の割り込みに影響を与えるのでNG
//    for(i = 0; i < 1024; i++)
//    {
//        value[i].u32.ch1ch0 = DSP_FFT_RESULT[j++];
//        value[i].u32.ch3ch2 = DSP_FFT_RESULT[j++];
//        value[i].u32.ch5ch4 = DSP_FFT_RESULT[j++];
//        value[i].u32.ch7ch6 = DSP_FFT_RESULT[j++];
//    }

    fftBusy = 0;
    fftCompleted = 1;
//    MYIP_mWriteReg(XPAR_MYIP_0_S00_AXI_BASEADDR, MYIP_S00_AXI_SLV_REG0_OFFSET, 0x1);

    // clear interrupt bit
	*(u32*)XPAR_DSP_DSP_REGISTER_0_S00_AXI_BASEADDR &= ~0x00000008;
}

int main()
{
	fftData value[1024];
	u32 mag[8];
	u8 receivedByte;
//	s32 value[1025];
	u32 i, j, freq, upDown, addr, temp[10], sum1, sum2, sumcount = 0, offset;
	u8 rddata[10][672], currentRow = 0;
	int note;
	float gain, fingerPos[4];
	int status;
	XIicPs_Config *Config;
	XGpioPs instXGpioPs;
	XGpioPs_Config *configXGpioPs;


    init_platform();

    MYIP_mWriteReg(XPAR_MYIP_0_S00_AXI_BASEADDR, MYIP_S00_AXI_SLV_REG0_OFFSET, 0x6);
    *(u32*)XPAR_DSP_DSP_REGISTER_0_S00_AXI_BASEADDR = 0x0;
//    MYIP_mWriteReg(XPAR_DSP_DSP_REGISTER_0_S00_AXI_BASEADDR, DSP_REGISTER_S00_AXI_SLV_REG0_OFFSET, 0x0);
    MYIP_mWriteReg(XPAR_DSP_DSP_REGISTER_0_S00_AXI_BASEADDR, DSP_REGISTER_S00_AXI_SLV_REG2_OFFSET, 0xF);



    GicConfig = XScuGic_LookupConfig(XPAR_PS7_SCUGIC_0_DEVICE_ID);
    i = XScuGic_CfgInitialize(&InterruptController, GicConfig, GicConfig->CpuBaseAddress);
    Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_INT, (Xil_ExceptionHandler)XScuGic_InterruptHandler, &InterruptController);
    Xil_ExceptionEnable();
    i = XScuGic_Connect(&InterruptController, 61, (Xil_ExceptionHandler)OnAudioClk, NULL);
    XScuGic_Connect(&InterruptController, 62, (Xil_ExceptionHandler)OnFFTComplete, NULL);
    XScuGic_Enable(&InterruptController, 61);
    XScuGic_Enable(&InterruptController, 62);


//    Config = XIicPs_LookupConfig(XPAR_XIICPS_0_DEVICE_ID);
//    status = XIicPs_CfgInitialize(&Iic, Config, Config->BaseAddress);
//    status = XIicPs_SelfTest(&Iic);
//    status = XIicPs_SetSClk(&Iic, 400000);

//    configXGpioPs = XGpioPs_LookupConfig(XPAR_PS7_GPIO_0_DEVICE_ID);
//    XGpioPs_CfgInitialize(&instXGpioPs, configXGpioPs,configXGpioPs->BaseAddr);
//    /* Set MIO12 as output */
//    XGpioPs_SetDirectionPin(&instXGpioPs, 12, 1);
//    XGpioPs_SetOutputEnablePin(&instXGpioPs, 12, 1);
//
//    i2c_write(&Iic, 0x01, 0x30, 0x12);	// ヘッドホンアンプのミュート
//    usleep(300000);
//    i2c_write(&Iic, 0x01, 0x00, 0x12);	// ヘッドホンアンプオフ
//    XGpioPs_WritePin(&instXGpioPs, 12, 0);
//    usleep(10);
//    XGpioPs_WritePin(&instXGpioPs, 12, 1);
//
//    i2c_write(&Iic, 0x04, 0x03, 0x12);
//    i2c_write(&Iic, 0x05, 0x00, 0x12);
//    i2c_write(&Iic, 0x00, 0x40, 0x12);
//    i2c_write(&Iic, 0x0F, 0x09, 0x12);
//    i2c_write(&Iic, 0x02, 0x02, 0x12);	// Pseudo cap-less
//    i2c_write(&Iic, 0x09, 0x91, 0x12);	// ALC部ディジタルボリューム 0dB
//    i2c_write(&Iic, 0x0A, 0x00, 0x12);	// 出力ディジタルボリューム 0x18
////    i2c_write(&Iic, 0x0E, 0x02, 0x12);	// ディエンファシスフィルタ 48kHz
//    i2c_write(&Iic, 0x00, 0x64, 0x12);	// DAC, MIN-Ampオン
//    i2c_write(&Iic, 0x01, 0x30, 0x12);	// ヘッドホンアンプオン
//    i2c_write(&Iic, 0x01, 0x70, 0x12);	// ヘッドホンアンプのミュート解除
//
    MYIP_mWriteReg(XPAR_DSP_DSP_REGISTER_0_S00_AXI_BASEADDR, DSP_REGISTER_S00_AXI_SLV_REG0_OFFSET, 0x3);
//
//	for(i=0; i < 2048; i++)
//	{
//		Xil_Out32(0x40000000 + i * 4, 0x00000000);
//	}


//    for(i = 0; i < 130000000; i++)
//    {
//    	test[i] = i;
//    }
//
//    for(i = 0; i < 130000000; i++)
//    {
//    	if(test[i] != i)
//    	{
//    		MYIP_mWriteReg(XPAR_MYIP_0_S00_AXI_BASEADDR, MYIP_S00_AXI_SLV_REG0_OFFSET, 0x4);
//    		return 0;
//    	}
//    }

    freq = 0;
    note = 0;
    gain = 2.0;
    upDown = 1;



//    Xil_Out32(0x43C20000, (u32)0);
//
////    while(!XUartPs_IsReceiveData(STDIN_BASEADDRESS));
//    usleep(100000);
//
    Xil_Out32(0x43C20000, (u32)3);


    *DSP_FFT_SCALE = 0x55556; // 0x05556 = x1, 0x15556 = x0.5, 0x55556 = x0.25 but perfectly secure.

//    Xil_Out32(0x40000000 + 0, ((u32)10000 << 18) + 1000 * 10);

    while(1)
    {
    	// 念のために割り込みフラグをクリア
    	if(*(u32*)XPAR_DSP_DSP_REGISTER_0_S00_AXI_BASEADDR & 0xC)
    	{
    		*(u32*)XPAR_DSP_DSP_REGISTER_0_S00_AXI_BASEADDR &= ~0x0000000C;
    	}



//    	usleep(100000);
    	if(soundDataReady) // && !fftBusy
    	{
    		soundDataReady = 0;

    		if(fftBusy)
    		{
    			printf("fft failed\n");
    		}

    		fftBusy = 1; //ときどきFFTが終了しない
    		MYIP_mWriteReg(XPAR_MYIP_0_S00_AXI_BASEADDR, MYIP_S00_AXI_SLV_REG0_OFFSET, 0x6);

    		j = 0;
//    		for(i = 0; i < 256; i++)
//    		{
//    			DSP_FFT_DATA[j++] = readingSoundDataBuffer[i].u32.ch1ch0;
//    			DSP_FFT_DATA[j++] = readingSoundDataBuffer[i].u32.ch3ch2;
//    			DSP_FFT_DATA[j++] = readingSoundDataBuffer[i].u32.ch5ch4;
//    			DSP_FFT_DATA[j++] = readingSoundDataBuffer[i].u32.ch7ch6;
//    		}
    		memcpy(DSP_FFT_DATA, readingSoundDataBuffer, 256 * 4 * 4);
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
				for(j = 10; j < 128; j++)
				{
					mag[i] += (value[j].array16[i] > 10) ? (u32)((float)value[j].array16[i] * ((float)(128 + j) / 128.f)) : 0;
				}
				mag[i] /= 10;
			}

			if(count == 1)
			{
				// なぜかch4だけ結果が大きい
	    		printf("%d %d %d %d %d %d %d %d\n", mag[0], mag[1], mag[2], mag[3], mag[4] / 3, mag[5], mag[6], mag[7]);
	    		count = 0;
			}
			count++;

    	    MYIP_mWriteReg(XPAR_MYIP_0_S00_AXI_BASEADDR, MYIP_S00_AXI_SLV_REG0_OFFSET, 0x2);
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

//    	usleep(50000);
//    	MYIP_mWriteReg(XPAR_MYIP_0_S00_AXI_BASEADDR, MYIP_S00_AXI_SLV_REG0_OFFSET, 0x1);
//    	usleep(50000);
//    	MYIP_mWriteReg(XPAR_MYIP_0_S00_AXI_BASEADDR, MYIP_S00_AXI_SLV_REG0_OFFSET, 0x5);

//        for(i = 0; i < 1024; i++)
//        {
//        	// ch7
//        	DSP_FFT_DATA[i * 4 + 3] = (((s32)(1000.f * sinf((float)ffttemp * 2.f * 3.141592655358f * (float)i / 1024.f)) + (s32)(1000.f * cosf((float)15 * 2.f * 3.141592655358f * (float)i / 1024.f))) & 0xFFFF) << 16;
//        }
//
//        *DSP_FFT_START = 1;

//        if(ffttemp < 100)
//        {
//        	ffttemp++;
//        }
//        else
//        {
//        	ffttemp = 1;
//        }

//        for(i = 0; i < 1024; i++)
//    	{
//    		*DSP_FFT_WRITE = value[i] & 0xFFF;
//    	}
    }







	while(1)
	{
//		print("Hello World\n\r");
//		MYIP_mWriteReg(XPAR_MYIP_0_S00_AXI_BASEADDR, MYIP_S00_AXI_SLV_REG0_OFFSET, 0x3);
//		usleep(20000);
//		MYIP_mWriteReg(XPAR_MYIP_0_S00_AXI_BASEADDR, MYIP_S00_AXI_SLV_REG0_OFFSET, 0x1);
//		usleep(20000);

//		if(upDown)
//		{
//			if(note < 7)
//			{
//				note += 1;
//			}
//			else
//			{
//				upDown = 0;
//			}
//		}
//		else
//		{
//			if(note > 0)
//			{
//				note -= 1;
//			}
//			else
//			{
//				upDown = 1;
//			}
//		}

//		MYIP_mWriteReg(XPAR_DSP_DSP_REGISTER_0_S00_AXI_BASEADDR, DSP_REGISTER_S00_AXI_SLV_REG1_OFFSET, (u32)((float)0x4000/((float)48000/(float)freq)));
//		for(i=100; i < 2000; i++)
//		{
//			Xil_Out32(0x40000000 + i * 4, 0x0A000000 + (u32)((float)0x400000/((float)48000/((float)freq * (i * 0.005 + (float)rand()/RAND_MAX)))));
//		}

		while(XUartPs_IsReceiveData(STDIN_BASEADDRESS))
		{
			i = XUartPs_ReadReg(STDIN_BASEADDRESS, XUARTPS_FIFO_OFFSET);
//			Xil_Out32(0x43C20000 + 8, i);

			ResetAverage();
		}

//	    Xil_Out32(0x43C20000 + 8, (u32)0x02);
//		Xil_Out32(0x43C20000 + 8, (u32)(700 & 0xFF));
//		Xil_Out32(0x43C20000 + 8, (u32)(700 >> 8));
//		Xil_Out32(0x43C20000 + 8, (u32)0x03);
//		Xil_Out32(0x43C20000 + 8, (u32)2);
//		Xil_Out32(0x43C20000 + 8, (u32)0);

		while(Xil_In32(0x43C20000 + 4) < 672);

		for(i=0; i < 672; i++)
		{
			rddata[currentRow][i] = Xil_In8(0x43C2000C);
		}

		i = SetSensorData(rddata[currentRow]);
		GetFingerPosition(fingerPos);

		while(XUartPs_IsReceiveData(STDIN_BASEADDRESS))
		{
			i = XUartPs_ReadReg(STDIN_BASEADDRESS, XUARTPS_FIFO_OFFSET);
//			Xil_Out32(0x43C20000 + 8, i);

			ResetAverage();
		}

//		currentRow++;
//
//		if(currentRow >= 2)
//		{
//			for(i=0; i < 112; i++)
//			{
//					outbyte((char8)(filterSensorData[i] & 0x00FF));
//					outbyte((char8)((filterSensorData[i] & 0xFF00) >> 8));
//			}
//			currentRow = 0;
//		}


		if(i==0)printf("%.1f\n", fingerPos[0]);
		else printf("failed\n");

//		currentRow++;
//
//		if(currentRow >= 3)
//		{
//			for(i=0; i < 672; i+=6)
//			{
//				sum1 = 0;
//				for(j=0; j < 3; j++)
//				{
//					sum1 += ((u16)rddata[j][i+2] << 8) + rddata[j][i+1];
//				}
//				sum1 /= 3;
//
//				sum2 = 0;
//				for(j=0; j < 3; j++)
//				{
//					sum2 += ((u16)rddata[j][i+5] << 8) + rddata[j][i+4];
//				}
//				sum2 /= 3;
//
//				if(sum2 > sum1)
//				{
//					outbyte((char8)(sum2 - sum1));
//					outbyte((char8)((sum2 - sum1) >> 8));
//				}
//				else
//				{
//					outbyte((char8)(0));
//					outbyte((char8)(0));
//				}
//			}
//
//			currentRow = 0;
//		}

//		freq = 442 * powf(2.0f, (float)(scale[note]) / 12);
		freq = 442.0f / ((30.0f - fingerPos[1]) / 30.0f);
		gain = fingerPos[1] != 0.0 ? 2.0 : 0;

		Xil_Out32(0x40000000 + 0, ((u32)(5000.0 * gain) << 18) + freq * 10);
		Xil_Out32(0x40000000 + 4, ((u32)(475.0 * gain) << 18) + freq * 20);
		Xil_Out32(0x40000000 + 8, ((u32)(598.0 * gain) << 18) + freq * 30);
		Xil_Out32(0x40000000 + 12, ((u32)(475.0 * gain) << 18) + freq * 40);
		Xil_Out32(0x40000000 + 16, ((u32)(1194.0 * gain) << 18) + freq * 50);
		Xil_Out32(0x40000000 + 20, ((u32)(4.0 * gain) << 18) + freq * 60);
		Xil_Out32(0x40000000 + 24, ((u32)(377.0 * gain) << 18) + freq * 70);
		Xil_Out32(0x40000000 + 28, ((u32)(300.0 * gain) << 18) + freq * 80);
		Xil_Out32(0x40000000 + 32, ((u32)(18.0 * gain) << 18) + freq * 90);
		Xil_Out32(0x40000000 + 36, ((u32)(3.0 * gain) << 18) + freq * 100);

		Xil_Out32(0x40000000 + 44, ((u32)(3.0 * gain) << 18) + freq * 120);

		freq = 660.0f / ((30.0f - fingerPos[3]) / 30.0f);
		gain = fingerPos[3] != 0.0 ? 2.0 : 0;

		Xil_Out32(0x40000000 + 48, ((u32)(5000.0 * gain) << 18) + freq * 10);
		Xil_Out32(0x40000000 + 52, ((u32)(475.0 * gain) << 18) + freq * 20);
		Xil_Out32(0x40000000 + 56, ((u32)(598.0 * gain) << 18) + freq * 30);
		Xil_Out32(0x40000000 + 60, ((u32)(475.0 * gain) << 18) + freq * 40);
		Xil_Out32(0x40000000 + 64, ((u32)(1194.0 * gain) << 18) + freq * 50);
		Xil_Out32(0x40000000 + 68, ((u32)(4.0 * gain) << 18) + freq * 60);
		Xil_Out32(0x40000000 + 72, ((u32)(377.0 * gain) << 18) + freq * 70);
		Xil_Out32(0x40000000 + 76, ((u32)(300.0 * gain) << 18) + freq * 80);
		Xil_Out32(0x40000000 + 80, ((u32)(18.0 * gain) << 18) + freq * 90);
		Xil_Out32(0x40000000 + 84, ((u32)(3.0 * gain) << 18) + freq * 100);

		Xil_Out32(0x40000000 + 88, ((u32)(3.0 * gain) << 18) + freq * 120);
	}

    cleanup_platform();
    return 0;
}
