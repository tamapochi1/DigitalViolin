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
* File Name    : r_cg_crc.h
* Version      : 1.0.0
* Device(s)    : R5F51303AxFN
* Description  : General header file for CRC peripheral.
* Creation Date: 2018-08-19
***********************************************************************************************************************/

#ifndef CRC_H
#define CRC_H

/***********************************************************************************************************************
Macro definitions (Register bit)
***********************************************************************************************************************/
/*
    CRC Control Register (CRCCR)
*/
/* CRC Generating Polynomial Switching (GPS[1:0]) */
#define _00_CRC_DISABLE                    (0x00U) /* Disable CRC execution */
#define _01_CRC_8                          (0x01U) /* CRC-8 execution */
#define _02_CRC_16                         (0x02U) /* CRC-16 execution */
#define _03_CRC_CCITT                      (0x03U) /* CRC-CCITT execution */
/* CRC Calculation Switching (LMS) */
#define _00_CRC_LSB_FIRST                  (0x00U) /* Performs CRC for LSB-first communication */
#define _04_CRC_MSB_FIRST                  (0x04U) /* Performs CRC for MSB-first communication */
/* CRCDOR Register Clear (DORCLR) */
#define _80_CRC_CLEAR_CRCDOR               (0x80U) /* Clear the CRCDOR register */

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

