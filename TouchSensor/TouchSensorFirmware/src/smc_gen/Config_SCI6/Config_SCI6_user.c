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
* File Name    : Config_SCI6_user.c
* Version      : 1.0.0
* Device(s)    : R5F51303AxFN
* Description  : This file implements device driver for Config_SCI6.
* Creation Date: 2018-10-24
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
#include "Config_SCI6.h"
/* Start user code for include. Do not edit comment generated here */
#include "../../Registers.h"
/* End user code. Do not edit comment generated here */
#include "r_cg_userdefine.h"

/***********************************************************************************************************************
Global variables and functions
***********************************************************************************************************************/
extern uint8_t * gp_sci6_tx_address;                /* SCI6 send buffer address */
extern uint16_t  g_sci6_tx_count;                   /* SCI6 send data number */
extern uint8_t * gp_sci6_rx_address;                /* SCI6 receive buffer address */
extern uint16_t  g_sci6_rx_count;                   /* SCI6 receive data number */
extern uint16_t  g_sci6_rx_length;                  /* SCI6 receive data length */
/* Start user code for global. Do not edit comment generated here */
/* End user code. Do not edit comment generated here */

/***********************************************************************************************************************
* Function Name: R_Config_SCI6_Create_UserInit
* Description  : This function adds user code after initializing the SCI6 channel
* Arguments    : None
* Return Value : None
***********************************************************************************************************************/

void R_Config_SCI6_Create_UserInit(void)
{
    /* Start user code for user init. Do not edit comment generated here */
    /* End user code. Do not edit comment generated here */
}

/***********************************************************************************************************************
* Function Name: r_Config_SCI6_transmit_interrupt
* Description  : This function is TXI6 interrupt service routine
* Arguments    : None
* Return Value : None
***********************************************************************************************************************/

#if FAST_INTERRUPT_VECTOR == VECT_SCI6_TXI6
#pragma interrupt r_Config_SCI6_transmit_interrupt(vect=VECT(SCI6,TXI6),fint)
#else
#pragma interrupt r_Config_SCI6_transmit_interrupt(vect=VECT(SCI6,TXI6))
#endif
static void r_Config_SCI6_transmit_interrupt(void)
{
    if (g_sci6_tx_count > 0U)
    {
        SCI6.TDR = *gp_sci6_tx_address;
        gp_sci6_tx_address++;
        g_sci6_tx_count--;
    }
    else
    {
        SCI6.SCR.BIT.TIE = 0U;
        SCI6.SCR.BIT.TEIE = 1U;
    }
}

/***********************************************************************************************************************
* Function Name: r_Config_SCI6_transmitend_interrupt
* Description  : This function is TEI6 interrupt service routine
* Arguments    : None
* Return Value : None
***********************************************************************************************************************/

#if FAST_INTERRUPT_VECTOR == VECT_SCI6_TEI6
#pragma interrupt r_Config_SCI6_transmitend_interrupt(vect=VECT(SCI6,TEI6),fint)
#else
#pragma interrupt r_Config_SCI6_transmitend_interrupt(vect=VECT(SCI6,TEI6))
#endif
static void r_Config_SCI6_transmitend_interrupt(void)
{
    PORTD.PMR.BYTE &= 0xFEU;
    SCI6.SCR.BIT.TIE = 0U;
    SCI6.SCR.BIT.TEIE = 0U;

    /* Clear TE and RE bits */
    if(0U == SCI6.SCR.BIT.RIE)
    {
        SCI6.SCR.BYTE &= 0xCFU;
    }

    r_Config_SCI6_callback_transmitend();
}

/***********************************************************************************************************************
* Function Name: r_Config_SCI6_receive_interrupt
* Description  : This function is RXI6 interrupt service routine
* Arguments    : None
* Return Value : None
***********************************************************************************************************************/

#if FAST_INTERRUPT_VECTOR == VECT_SCI6_RXI6
#pragma interrupt r_Config_SCI6_receive_interrupt(vect=VECT(SCI6,RXI6),fint)
#else
#pragma interrupt r_Config_SCI6_receive_interrupt(vect=VECT(SCI6,RXI6))
#endif
static void r_Config_SCI6_receive_interrupt(void)
{
    if (g_sci6_rx_length > g_sci6_rx_count)
    {
        *gp_sci6_rx_address = SCI6.RDR;
        gp_sci6_rx_address++;
        g_sci6_rx_count++;

        if (g_sci6_rx_length == g_sci6_rx_count)
        {
            SCI6.SCR.BIT.RIE = 0;

            /* Clear TE and RE bits */
            if((0U == SCI6.SCR.BIT.TIE) && (0U == SCI6.SCR.BIT.TEIE))
            {
                SCI6.SCR.BYTE &= 0xCFU;
            }

            r_Config_SCI6_callback_receiveend();
        }
    }
}

/***********************************************************************************************************************
* Function Name: r_Config_SCI6_receiveerror_interrupt
* Description  : This function is ERI6 interrupt service routine
* Arguments    : None
* Return Value : None
***********************************************************************************************************************/

#if FAST_INTERRUPT_VECTOR == VECT_SCI6_ERI6
#pragma interrupt r_Config_SCI6_receiveerror_interrupt(vect=VECT(SCI6,ERI6),fint)
#else
#pragma interrupt r_Config_SCI6_receiveerror_interrupt(vect=VECT(SCI6,ERI6))
#endif
static void r_Config_SCI6_receiveerror_interrupt(void)
{
    uint8_t err_type;

    r_Config_SCI6_callback_receiveerror();

    /* Clear overrun error flag */
    err_type = SCI6.SSR.BYTE;
    err_type &= 0xDFU;
    err_type |= 0xC0U;
    SCI6.SSR.BYTE = err_type;
}

/***********************************************************************************************************************
* Function Name: r_Config_SCI6_callback_transmitend
* Description  : This function is a callback function when SCI6 finishes transmission
* Arguments    : None
* Return Value : None
***********************************************************************************************************************/

static void r_Config_SCI6_callback_transmitend(void)
{
    /* Start user code for r_Config_SCI6_callback_transmitend. Do not edit comment generated here */
    /* End user code. Do not edit comment generated here */
}

/***********************************************************************************************************************
* Function Name: r_Config_SCI6_callback_receiveend
* Description  : This function is a callback function when SCI6 finishes reception
* Arguments    : None
* Return Value : None
***********************************************************************************************************************/

static void r_Config_SCI6_callback_receiveend(void)
{
    /* Start user code for r_Config_SCI6_callback_receiveend. Do not edit comment generated here */
	uint8_t reg_address;

	if(reg_ReceivedData[0] != 0 && reg_ReceivedData[0] < NUM_REGS)
	{
		reg_address = reg_ReceivedData[0];

		regs[reg_address] = (reg_ReceivedData[2] << 8) + reg_ReceivedData[1];
	}

    /* End user code. Do not edit comment generated here */
}

/***********************************************************************************************************************
* Function Name: r_Config_SCI6_callback_receiveerror
* Description  : This function is a callback function when SCI6 reception encounters error
* Arguments    : None
* Return Value : None
***********************************************************************************************************************/

static void r_Config_SCI6_callback_receiveerror(void)
{
    /* Start user code for r_Config_SCI6_callback_receiveerror. Do not edit comment generated here */
    /* End user code. Do not edit comment generated here */
}

/* Start user code for adding. Do not edit comment generated here */

uint8_t SCI6_Busy(void)
{
	return !(SCI6.SSR.BIT.TEND);
}

/* End user code. Do not edit comment generated here */   




