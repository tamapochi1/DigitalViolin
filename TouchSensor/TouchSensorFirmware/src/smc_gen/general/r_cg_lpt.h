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
* File Name    : r_cg_lpt.h
* Version      : 1.0.0
* Device(s)    : R5F51303AxFN
* Description  : General header file for LPT peripheral.
* Creation Date: 2018-10-21
***********************************************************************************************************************/

#ifndef LPT_H
#define LPT_H

/***********************************************************************************************************************
Macro definitions (Register bit)
***********************************************************************************************************************/
/*
    Low-power timer control register 1 (LPTCR1)
*/
/* Low-Power Timer Clock Division Ratio Select (LPCNTPSSEL[2:0]) */
#define _01_CGC_LPT_CLK_DIV_2               (0x01U) /* x1/2 */
#define _02_CGC_LPT_CLK_DIV_4               (0x02U) /* x1/4 */
#define _03_CGC_LPT_CLK_DIV_8               (0x03U) /* x1/8 */
#define _04_CGC_LPT_CLK_DIV_16              (0x04U) /* x1/16 */
#define _05_CGC_LPT_CLK_DIV_32              (0x05U) /* x1/32 */
/* Low-Power Timer Clock Source Select (LPCNTCKSEL) */
#define _00_CGC_LPT_SOURCE_SUB              (0x00U) /* Sub-clock */
#define _10_CGC_LPT_SOURCE_IWDT             (0x10U) /* IWDT-dedicated on-chip */

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

