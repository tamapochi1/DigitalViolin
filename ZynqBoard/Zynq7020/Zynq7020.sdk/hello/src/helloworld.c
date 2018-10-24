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

u32 test[130000000];
int scale[] = {0, 2, 4, 5, 7, 9, 11, 12};
XIicPs Iic;

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

int main()
{
	u32 i, j, freq, upDown, addr, temp[10], sum1, sum2, sumcount = 0;
	u8 rddata[10][672], currentRow = 0;
	int note;
	float gain, fingerPos[4];
	int status;
	XIicPs_Config *Config;
	XGpioPs instXGpioPs;
	XGpioPs_Config *configXGpioPs;

    init_platform();

    MYIP_mWriteReg(XPAR_MYIP_0_S00_AXI_BASEADDR, MYIP_S00_AXI_SLV_REG0_OFFSET, 0x5);
    MYIP_mWriteReg(XPAR_DSP_DSP_REGISTER_0_S00_AXI_BASEADDR, DSP_REGISTER_S00_AXI_SLV_REG0_OFFSET, 0x0);
    MYIP_mWriteReg(XPAR_DSP_DSP_REGISTER_0_S00_AXI_BASEADDR, DSP_REGISTER_S00_AXI_SLV_REG2_OFFSET, 0xF);

    Config = XIicPs_LookupConfig(XPAR_XIICPS_0_DEVICE_ID);
    status = XIicPs_CfgInitialize(&Iic, Config, Config->BaseAddress);
    status = XIicPs_SelfTest(&Iic);
    status = XIicPs_SetSClk(&Iic, 400000);

    configXGpioPs = XGpioPs_LookupConfig(XPAR_PS7_GPIO_0_DEVICE_ID);
    XGpioPs_CfgInitialize(&instXGpioPs, configXGpioPs,configXGpioPs->BaseAddr);
    /* Set MIO12 as output */
    XGpioPs_SetDirectionPin(&instXGpioPs, 12, 1);
    XGpioPs_SetOutputEnablePin(&instXGpioPs, 12, 1);

    i2c_write(&Iic, 0x01, 0x30, 0x12);	// ヘッドホンアンプのミュート
    usleep(300000);
    i2c_write(&Iic, 0x01, 0x00, 0x12);	// ヘッドホンアンプオフ
    XGpioPs_WritePin(&instXGpioPs, 12, 0);
    usleep(10);
    XGpioPs_WritePin(&instXGpioPs, 12, 1);

    i2c_write(&Iic, 0x04, 0x03, 0x12);
    i2c_write(&Iic, 0x05, 0x00, 0x12);
    i2c_write(&Iic, 0x00, 0x40, 0x12);
    i2c_write(&Iic, 0x0F, 0x09, 0x12);
    i2c_write(&Iic, 0x02, 0x02, 0x12);	// Pseudo cap-less
    i2c_write(&Iic, 0x09, 0x91, 0x12);	// ALC部ディジタルボリューム 0dB
    i2c_write(&Iic, 0x0A, 0x18, 0x12);	// 出力ディジタルボリューム
//    i2c_write(&Iic, 0x0E, 0x02, 0x12);	// ディエンファシスフィルタ 48kHz
    i2c_write(&Iic, 0x00, 0x64, 0x12);	// DAC, MIN-Ampオン
    i2c_write(&Iic, 0x01, 0x30, 0x12);	// ヘッドホンアンプオン
    i2c_write(&Iic, 0x01, 0x70, 0x12);	// ヘッドホンアンプのミュート解除

    MYIP_mWriteReg(XPAR_DSP_DSP_REGISTER_0_S00_AXI_BASEADDR, DSP_REGISTER_S00_AXI_SLV_REG0_OFFSET, 0x3);

	for(i=0; i < 2048; i++)
	{
		Xil_Out32(0x40000000 + i * 4, 0x00000000);
	}


    test[0] = Xil_In32(0x40000010);

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



    Xil_Out32(0x43C20000, (u32)0);

//    while(!XUartPs_IsReceiveData(STDIN_BASEADDRESS));
    usleep(100000);

    Xil_Out32(0x43C20000, (u32)3);





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
