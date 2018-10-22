/***********************************************************************************************************************
* DISCLAIMER
* This software is supplied by Renesas Electronics Corporation and is only intended for use with Renesas products.
* No other uses are authorized. This software is owned by Renesas Electronics Corporation and is protected under all
* applicable laws, including copyright laws. 
* THIS SOFTWARE IS PROVIDED "AS IS" AND RENESAS MAKES NO WARRANTIESREGARDING THIS SOFTWARE, WHETHER EXPRESS, IMPLIED
* OR STATUTORY, INCLUDING BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
* NON-INFRINGEMENT.  ALL SUCH WARRANTIES ARE EXPRESSLY DISCLAIMED.TO THE MAXIMUM EXTENT PERMITTED NOT PROHIBITED BY
* LAW, NEITHER RENESAS ELECTRONICS CORPORATION NOR ANY OF ITS AFFILIATED COMPANIES SHALL BE LIABLE FOR ANY DIRECT,
* INDIRECT, SPECIAL, INCIDENTAL OR CONSEQUENTIAL DAMAGES FOR ANY REASON RELATED TO THIS SOFTWARE, EVEN IF RENESAS OR
* ITS AFFILIATES HAVE BEEN ADVISED OF THE POSSIBILITY OF SUCH DAMAGES.
* Renesas reserves the right, without notice, to make changes to this software and to discontinue the availability 
* of this software. By using this software, you agree to the additional terms and conditions found by accessing the 
* following link:
* http://www.renesas.com/disclaimer
*
* Copyright (C) 2016, 2017 Renesas Electronics Corporation. All rights reserved.
***********************************************************************************************************************/

/***********************************************************************************************************************
* File Name    : r_cg_iwdt.h
* Version      : 1.0.0
* Device(s)    : R5F51303AxFN
* Description  : General header file for IWDT peripheral.
* Creation Date: 2018-10-21
***********************************************************************************************************************/

#ifndef IWDT_H
#define IWDT_H

/***********************************************************************************************************************
Macro definitions (Register bit)
***********************************************************************************************************************/
/*
    IWDT Control Register (IWDTCR)
*/
/* Time-Out Period Selection (TOPS[1:0]) */
#define _0000_IWDT_TIMEOUT_128                  (0x0000U) /* 128 cycles of time out period */
#define _0001_IWDT_TIMEOUT_512                  (0x0001U) /* 512 cycles of time out period */
#define _0002_IWDT_TIMEOUT_1024                 (0x0002U) /* 1024 cycles of time out period */
#define _0003_IWDT_TIMEOUT_2048                 (0x0003U) /* 2048 cycles of time out period */
/* Clock Division Ratio Selection (CKS[3:0]) */
#define _0000_IWDT_CLOCK_DIV1                   (0x0000U) /* 1 IWDTCLK division ratio */
#define _0020_IWDT_CLOCK_DIV16                  (0x0020U) /* 16 IWDTCLK division ratio */
#define _0030_IWDT_CLOCK_DIV32                  (0x0030U) /* 32 IWDTCLK division ratio */
#define _0040_IWDT_CLOCK_DIV64                  (0x0040U) /* 64 IWDTCLK division ratio */
#define _00F0_IWDT_CLOCK_DIV128                 (0x00F0U) /* 128 IWDTCLK division ratio */
#define _0050_IWDT_CLOCK_DIV256                 (0x0050U) /* 256 IWDTCLK division ratio */ 
/* Window End Position Selection (RPES[1:0]) */
#define _0000_IWDT_WINDOW_END_75                (0x0000U) /* Window end position 75% */
#define _0100_IWDT_WINDOW_END_50                (0x0100U) /* Window end position 50% */
#define _0200_IWDT_WINDOW_END_25                (0x0200U) /* Window end position 25% */
#define _0300_IWDT_WINDOW_END_0                 (0x0300U) /* Window end position 0% */
/* Window Start Position Selection (RPSS[1:0]) */
#define _0000_IWDT_WINDOW_START_25              (0x0000U) /* Window start position 25% */
#define _1000_IWDT_WINDOW_START_50              (0x1000U) /* Window start position 50% */
#define _2000_IWDT_WINDOW_START_75              (0x2000U) /* Window start position 75% */
#define _3000_IWDT_WINDOW_START_100             (0x3000U) /* Window start position 100% */

/*
    IWDT Reset Control Register (IWDTRCR)
*/
/* Reset Interrupt Request Selection (RSTIRQS) */
#define _00_IWDT_NMI_INTERRUPT                  (0x00U) /* Non-maskable interrupt request output enabled */
#define _80_IWDT_RESET_OUTPUT                   (0x80U) /* Reset output enabled */

/*
    IWDT Count Stop Control Register (IWDTCSTPR)
*/
/* Sleep-Mode Count Stop Control (SLCSTP) */
#define _00_IWDT_COUNT_STOP_DISABLE             (0x00U) /* Count stop is disabled */
#define _80_IWDT_COUNT_STOP_ENABLE              (0x80U) /* Count stop is enabled */

/***********************************************************************************************************************
Macro definitions
***********************************************************************************************************************/

/***********************************************************************************************************************
Typedef definitions
***********************************************************************************************************************/

/***********************************************************************************************************************
Global functions
***********************************************************************************************************************/
/* Start user code for function. Do not edit comment generated here */
/* End user code. Do not edit comment generated here */
#endif

