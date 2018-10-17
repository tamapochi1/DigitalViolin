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
* Copyright (C) . All rights reserved.
***********************************************************************************************************************/

/***********************************************************************************************************************
* File Name    : Pin.c
* Version      : 
* Device(s)    : R5F51303AxFN
* Description  : This file implements SMC pin code generation.
* Creation Date: 2018-08-19
***********************************************************************************************************************/

/***********************************************************************************************************************
Pragma directive
***********************************************************************************************************************/
/* Start user code for pragma. Do not edit comment generated here */
/* End user code. Do not edit comment generated here */

/***********************************************************************************************************************
Includes
***********************************************************************************************************************/
#include "r_cg_macrodriver.h"
/* Start user code for include. Do not edit comment generated here */
/* End user code. Do not edit comment generated here */
#include "r_cg_userdefine.h"

/***********************************************************************************************************************
Global variables and functions
***********************************************************************************************************************/
/* Start user code for global. Do not edit comment generated here */
/* End user code. Do not edit comment generated here */

/***********************************************************************************************************************
* Function Name: R_Pins_Create
* Description  : This function initializes Smart Configurator pins
* Arguments    : None
* Return Value : None
***********************************************************************************************************************/

void R_Pins_Create(void)
{
    R_BSP_RegisterProtectDisable(BSP_REG_PROTECT_MPC);

    /* Set RXD6 pin */
    MPC.PD1PFS.BYTE = 0x0BU;
    PORTD.PMR.BYTE |= 0x02U;

    /* Set SCK6 pin */
    MPC.PD2PFS.BYTE = 0x0BU;
    PORTD.PMR.BYTE |= 0x04U;

    /* Set TS0 pin */
    MPC.P32PFS.BYTE = 0x19U;
    PORT3.PMR.BYTE |= 0x04U;

    /* Set TS1 pin */
    MPC.P31PFS.BYTE = 0x19U;
    PORT3.PMR.BYTE |= 0x02U;

    /* Set TS2 pin */
    MPC.P30PFS.BYTE = 0x19U;
    PORT3.PMR.BYTE |= 0x01U;

    /* Set TS3 pin */
    MPC.P27PFS.BYTE = 0x19U;
    PORT2.PMR.BYTE |= 0x80U;

    /* Set TS4 pin */
    MPC.P26PFS.BYTE = 0x19U;
    PORT2.PMR.BYTE |= 0x40U;

    /* Set TS5 pin */
    MPC.P15PFS.BYTE = 0x19U;
    PORT1.PMR.BYTE |= 0x20U;

    /* Set TS6 pin */
    MPC.P14PFS.BYTE = 0x19U;
    PORT1.PMR.BYTE |= 0x10U;

    /* Set TS7 pin */
    MPC.PH3PFS.BYTE = 0x19U;
    PORTH.PMR.BYTE |= 0x08U;

    /* Set TS8 pin */
    MPC.PH2PFS.BYTE = 0x19U;
    PORTH.PMR.BYTE |= 0x04U;

    /* Set TS9 pin */
    MPC.PH1PFS.BYTE = 0x19U;
    PORTH.PMR.BYTE |= 0x02U;

    /* Set TS10 pin */
    MPC.PH0PFS.BYTE = 0x19U;
    PORTH.PMR.BYTE |= 0x01U;

    /* Set TS11 pin */
    MPC.P55PFS.BYTE = 0x19U;
    PORT5.PMR.BYTE |= 0x20U;

    /* Set TS12 pin */
    MPC.P54PFS.BYTE = 0x19U;
    PORT5.PMR.BYTE |= 0x10U;

    /* Set TS13 pin */
    MPC.PC7PFS.BYTE = 0x19U;
    PORTC.PMR.BYTE |= 0x80U;

    /* Set TS14 pin */
    MPC.PC6PFS.BYTE = 0x19U;
    PORTC.PMR.BYTE |= 0x40U;

    /* Set TS15 pin */
    MPC.PC5PFS.BYTE = 0x19U;
    PORTC.PMR.BYTE |= 0x20U;

    /* Set TS16 pin */
    MPC.PC3PFS.BYTE = 0x19U;
    PORTC.PMR.BYTE |= 0x08U;

    /* Set TS17 pin */
    MPC.PC2PFS.BYTE = 0x19U;
    PORTC.PMR.BYTE |= 0x04U;

    /* Set TS18 pin */
    MPC.PB7PFS.BYTE = 0x19U;
    PORTB.PMR.BYTE |= 0x80U;

    /* Set TS19 pin */
    MPC.PB6PFS.BYTE = 0x19U;
    PORTB.PMR.BYTE |= 0x40U;

    /* Set TS20 pin */
    MPC.PB5PFS.BYTE = 0x19U;
    PORTB.PMR.BYTE |= 0x20U;

    /* Set TS21 pin */
    MPC.PB4PFS.BYTE = 0x19U;
    PORTB.PMR.BYTE |= 0x10U;

    /* Set TS22 pin */
    MPC.PB3PFS.BYTE = 0x19U;
    PORTB.PMR.BYTE |= 0x08U;

    /* Set TS27 pin */
    MPC.PA5PFS.BYTE = 0x19U;
    PORTA.PMR.BYTE |= 0x20U;

    /* Set TS28 pin */
    MPC.PA4PFS.BYTE = 0x19U;
    PORTA.PMR.BYTE |= 0x10U;

    /* Set TS29 pin */
    MPC.PA3PFS.BYTE = 0x19U;
    PORTA.PMR.BYTE |= 0x08U;

    /* Set TS30 pin */
    MPC.PA2PFS.BYTE = 0x19U;
    PORTA.PMR.BYTE |= 0x04U;

    /* Set TS31 pin */
    MPC.PA1PFS.BYTE = 0x19U;
    PORTA.PMR.BYTE |= 0x02U;

    /* Set TS32 pin */
    MPC.PA0PFS.BYTE = 0x19U;
    PORTA.PMR.BYTE |= 0x01U;

    /* Set TS33 pin */
    MPC.PE4PFS.BYTE = 0x19U;
    PORTE.PMR.BYTE |= 0x10U;

    /* Set TS34 pin */
    MPC.PE3PFS.BYTE = 0x19U;
    PORTE.PMR.BYTE |= 0x08U;

    /* Set TS35 pin */
    MPC.PE2PFS.BYTE = 0x19U;
    PORTE.PMR.BYTE |= 0x04U;

    /* Set TXD6 pin */
    MPC.PD0PFS.BYTE = 0x0BU;
    PORTD.PMR.BYTE |= 0x01U;

    R_BSP_RegisterProtectEnable(BSP_REG_PROTECT_MPC);
}   

