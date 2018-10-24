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
* File Name    : r_cg_lpc.h
* Version      : 1.0.0
* Device(s)    : R5F51303AxFN
* Description  : General header file for LPC peripheral.
* Creation Date: 2018-10-24
***********************************************************************************************************************/

#ifndef LPC_H
#define LPC_H

/***********************************************************************************************************************
Macro definitions (Register bit)
***********************************************************************************************************************/
/* 
    Operating Power Control Register (OPCCR)
*/
/* Operating Power Control Mode Select (OPCM[2:0]) */
#define _00_LPC_HIGH_SPEED_MODE             (0x00U) /* High-speed operating mode */
#define _02_LPC_MIDDLE_SPEED_MODE           (0x02U) /* Middle-speed operating mode */

/*
    Sub Operating Power Control Register (SOPCCR)
*/
/* Sub Operating Power Control Mode Select (SOPCM) */
#define _00_LPC_LOW_SPEED_MODE_DISABLED     (0x00U) /* High-speed operating mode or middle-speed operating mode */
#define _01_LPC_LOW_SPEED_MODE_ENABLED      (0x01U) /* Low-speed operating mode */

/*
    Sleep Mode Return Clock Source Switching Register (RSTCKCR)
*/
/* Sleep Mode Return Clock Source Switching Enable, Select (RSTCKEN,RSTCKSEL[2:0]) */
#define _00_LPC_RETURN_DISABLED             (0x00U) /* Clock source switching at sleep mode cancellation is disabled */
#define _80_LPC_RETURN_CLK_LOCO             (0x80U) /* LOCO is selected */
#define _81_LPC_RETURN_CLK_HOCO             (0x81U) /* HOCO is selected */
#define _82_LPC_RETURN_CLK_MAIN_OSC         (0x82U) /* Main clock oscillator is selected */

/***********************************************************************************************************************
Macro definitions
***********************************************************************************************************************/

/***********************************************************************************************************************
Typedef definitions
***********************************************************************************************************************/
typedef enum
{
    LOW_SPEED,
    MIDDLE_SPEED,
    HIGH_SPEED
} operating_mode_t;

typedef enum
{
    RETURN_DISABLE,
    RETURN_LOCO,
    RETURN_HOCO,
    RETURN_MAIN_CLOCK
} return_clock_t;

/***********************************************************************************************************************
Global functions
***********************************************************************************************************************/
/* Start user code for function. Do not edit comment generated here */
/* End user code. Do not edit comment generated here */
#endif

