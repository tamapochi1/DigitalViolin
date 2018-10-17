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
* File Name    : Config_SCI6.c
* Version      : 1.0.0
* Device(s)    : R5F51303AxFN
* Description  : This file implements device driver for Config_SCI6.
* Creation Date: 2018-10-17
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
/* End user code. Do not edit comment generated here */
#include "r_cg_userdefine.h"

/***********************************************************************************************************************
Global variables and functions
***********************************************************************************************************************/
uint8_t * gp_sci6_tx_address;               /* SCI6 transmit buffer address */
uint16_t  g_sci6_tx_count;                  /* SCI6 transmit data number */
uint8_t * gp_sci6_rx_address;               /* SCI6 receive buffer address */
uint16_t  g_sci6_rx_count;                  /* SCI6 receive data number */
uint16_t  g_sci6_rx_length;                 /* SCI6 receive data length */
/* Start user code for global. Do not edit comment generated here */
/* End user code. Do not edit comment generated here */

/***********************************************************************************************************************
* Function Name: R_Config_SCI6_Create
* Description  : This function initializes the SCI6 channel
* Arguments    : None
* Return Value : None
***********************************************************************************************************************/

void R_Config_SCI6_Create(void)
{
    /* Cancel SCI stop state */
    MSTP(SCI6) = 0U;

    /* Set interrupt priority */
    IPR(SCI6, ERI6) = _01_SCI_PRIORITY_LEVEL1;

    /* Clear the control register */
    SCI6.SCR.BYTE = 0x00U;

    /* Set clock enable */
    SCI6.SCR.BYTE = _01_SCI_INTERNAL_SCK_OUTPUT;

    /* Clear the SIMR1.IICM */
    SCI6.SIMR1.BIT.IICM = 0U;

    /* Set control registers */
    SCI6.SPMR.BYTE = _00_SCI_RTS | _00_SCI_CLOCK_NOT_INVERTED | _00_SCI_CLOCK_NOT_DELAYED;
    SCI6.SMR.BYTE = _00_SCI_CLOCK_PCLK | _00_SCI_DATA_LENGTH_8 | _80_SCI_CLOCK_SYNCHRONOUS_OR_SPI_MODE;
    SCI6.SCMR.BYTE = _00_SCI_SERIAL_MODE | _00_SCI_DATA_INVERT_NONE | _00_SCI_DATA_LSB_FIRST | _62_SCI_SCMR_DEFAULT;
    SCI6.SEMR.BYTE = _00_SCI_BIT_MODULATION_DISABLE;

    /* Set bit rate */
    SCI6.BRR = 0x01U;

    /* Set RXD6 pin */
    MPC.PD1PFS.BYTE = 0x0BU;
    PORTD.PMR.BYTE |= 0x02U;

    /* Set TXD6 pin */
    PORTD.PODR.BYTE |= 0x01U;
    MPC.PD0PFS.BYTE = 0x0BU;
    PORTD.PMR.BYTE |= 0x01U;
    PORTD.PDR.BYTE |= 0x01U;

    /* Set SCK6 pin */
    MPC.PD2PFS.BYTE = 0x0BU;
    PORTD.PMR.BYTE |= 0x04U;
    
    R_Config_SCI6_Create_UserInit();
}

/***********************************************************************************************************************
* Function Name: R_Config_SCI6_Start
* Description  : This function starts the SCI6 channel
* Arguments    : None
* Return Value : None
***********************************************************************************************************************/

void R_Config_SCI6_Start(void)
{
    /* Clear interrupt flag */
    IR(SCI6,TXI6) = 0U;
    IR(SCI6,RXI6) = 0U;

    /* Enable SCI interrupt */
    IEN(SCI6,TXI6) = 1U;
    IEN(SCI6,TEI6) = 1U;
    IEN(SCI6,RXI6) = 1U;
    IEN(SCI6,ERI6) = 1U;
}

/***********************************************************************************************************************
* Function Name: R_Config_SCI6_Stop
* Description  : This function stop the SCI6 channel
* Arguments    : None
* Return Value : None
***********************************************************************************************************************/

void R_Config_SCI6_Stop(void)
{
    PORTD.PMR.BYTE &= 0xFEU;
    SCI6.SCR.BYTE &= 0xCF;

    /* Disable SCI interrupt */
    SCI6.SCR.BIT.TIE = 0U;
    SCI6.SCR.BIT.RIE = 0U;
    IR(SCI6,TXI6) = 0U;
    IEN(SCI6,TXI6) = 0U;
    IEN(SCI6,TEI6) = 0U;
    IR(SCI6,RXI6) = 0U;
    IEN(SCI6,RXI6) = 0U;
    IEN(SCI6,ERI6) = 0U;
}

/***********************************************************************************************************************
* Function Name: R_Config_SCI6_Serial_Send_Receive
* Description  : This function transmits and receives SCI6data
* Arguments    : tx_buf -
*                    transmit buffer pointer (Not used when transmit data handled by DTC or DMAC)
*                tx_num -
*                    transmit buffer size (Not used when transmit data handled by DTC or DMAC)
*                rx_buf -
*                    receive buffer pointer (Not used when receive data handled by DTC or DMAC)
*                rx_num -
*                    receive buffer size (Not used when receive data handled by DTC or DMAC)
* Return Value : status -
*                    MD_OK or MD_ARGERROR
***********************************************************************************************************************/

MD_STATUS R_Config_SCI6_Serial_Send_Receive(uint8_t * const tx_buf, uint16_t tx_num, uint8_t * const rx_buf, uint16_t rx_num)
{
    MD_STATUS status = MD_OK;

    if (tx_num < 1U)
    {
        status = MD_ARGERROR;
    }
    else
    {
        gp_sci6_tx_address = tx_buf;
        g_sci6_tx_count = tx_num;
        g_sci6_rx_count = 0U;
        g_sci6_rx_length = rx_num;
        gp_sci6_rx_address = rx_buf;
        PORTD.PMR.BYTE |= 0x01U;

        /* Set TE, TIE, RE, RIE bits simultaneously */
        SCI6.SCR.BYTE |= 0xF0U;
    }

    return (status);
}

/* Start user code for adding. Do not edit comment generated here */
/* End user code. Do not edit comment generated here */   
