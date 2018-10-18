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
#include "sleep.h"
#include "platform.h"
#include "xparameters.h"
#include "xiicps.h"
#include "xgpiops.h"
#include "myip.h"
#include "DSP_register.h"

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
	u32 i, freq, upDown, addr, rddata[10];
	int note;
	float gain;
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


//    MYIP_mWriteReg(XPAR_DSP_DSP_REGISTER_0_S00_AXI_BASEADDR, DSP_REGISTER_S00_AXI_SLV_REG1_OFFSET, 0x4000/(48000/442));

    MYIP_mWriteReg(XPAR_DSP_DSP_REGISTER_0_S00_AXI_BASEADDR, DSP_REGISTER_S00_AXI_SLV_REG0_OFFSET, 0x3);

	for(i=0; i < 2048; i++)
	{
		Xil_Out32(0x40000000 + i * 4, 0x00000000);
	}

//	for(i=0; i < 1; i++)
//	{
//	    MYIP_mWriteReg(XPAR_DSP_DSP_REGISTER_0_S00_AXI_BASEADDR, DSP_REGISTER_S00_AXI_SLV_REG0_OFFSET, 0x3);
//		Xil_Out32(0x40000000 + i * 4, 0xFFC00000 + 4420);
//	}
//	Xil_Out32(0x40000000 + 2047 * 4, 0xFF000000 + 8840);
//	Xil_Out32(0x40000000, 0xFFC00000 + 4420);
//	Xil_Out32(0x40000004, 4420);


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
    usleep(100000);
//    Xil_Out32(0x43C20000, (u32)2);
//    usleep(100000);
    Xil_Out32(0x43C20000, (u32)3);

	Xil_Out32(0x43C20000 + 8, (u32)0x81);
	Xil_Out32(0x43C20000 + 8, (u32)0x8F);
	Xil_Out32(0x43C20000 + 8, (u32)0x21);
	Xil_Out32(0x43C20000 + 8, (u32)0x23);

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

		while(Xil_In32(0x43C20000 + 4) < 6);

		for(i=0; i < 10; i++)
		{
			rddata[i] = Xil_In32(0x43C2000C);
		}

		freq = 442 * powf(2.0f, (float)(scale[note]) / 12);

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
	}

    cleanup_platform();
    return 0;
}
