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
* File Name    : r_cg_elc.h
* Version      : 1.0.0
* Device(s)    : R5F51303AxFN
* Description  : General header file for ELC peripheral.
* Creation Date: 2018-08-19
***********************************************************************************************************************/

#ifndef ELC_H
#define ELC_H

/***********************************************************************************************************************
Macro definitions (Register bit)
***********************************************************************************************************************/
/* 
    Event Link Control Register (ELCR)
*/
/* All Event Link Enable (ELCON) */
#define _FF_ELC_ENABLE_ALL                               (0xFFU) /* Linkage of all the events is enabled */
#define _7F_ELC_DISABLE_ALL                              (0x7FU) /* Linkage of all the events is disabled */

/*
    Event Link Setting Register n (ELSRn)
*/
/* Event Link Select (ELS[7:0]) */
#define _00_ELC_EVENT_SIG_DISABLE                        (0x00U) /* Event link function is disabled */
#define _08_ELC_EVENT_SIG_MTU1_MATCH1A                   (0x08U) /* MTU1 compare match 1A */
#define _09_ELC_EVENT_SIG_MTU1_MATCH1B                   (0x09U) /* MTU1 compare match 1B */
#define _0A_ELC_EVENT_SIG_MTU1_OVF                       (0x0AU) /* MTU1 overflow */
#define _0B_ELC_EVENT_SIG_MTU1_UDF                       (0x0BU) /* MTU1 underflow */
#define _0C_ELC_EVENT_SIG_MTU2_MATCH2A                   (0x0CU) /* MTU2 compare match 2A */
#define _0D_ELC_EVENT_SIG_MTU2_MATCH2B                   (0x0DU) /* MTU2 compare match 2B */
#define _0E_ELC_EVENT_SIG_MTU2_OVF                       (0x0EU) /* MTU2 overflow */
#define _0F_ELC_EVENT_SIG_MTU2_UDF                       (0x0FU) /* MTU2 underflow */
#define _10_ELC_EVENT_SIG_MTU3_MATCH3A                   (0x10U) /* MTU3 compare match 3A */
#define _11_ELC_EVENT_SIG_MTU3_MATCH3B                   (0x11U) /* MTU3 compare match 3B */
#define _12_ELC_EVENT_SIG_MTU3_MATCH3C                   (0x12U) /* MTU3 compare match 3C */
#define _13_ELC_EVENT_SIG_MTU3_MATCH3D                   (0x13U) /* MTU3 compare match 3D */
#define _14_ELC_EVENT_SIG_MTU3_OVF                       (0x14U) /* MTU3 overflow */
#define _15_ELC_EVENT_SIG_MTU4_MATCH4A                   (0x15U) /* MTU4 compare match 4A */
#define _16_ELC_EVENT_SIG_MTU4_MATCH4B                   (0x16U) /* MTU4 compare match 4B */
#define _17_ELC_EVENT_SIG_MTU4_MATCH4C                   (0x17U) /* MTU4 compare match 4C */
#define _18_ELC_EVENT_SIG_MTU4_MATCH4D                   (0x18U) /* MTU4 compare match 4D */
#define _19_ELC_EVENT_SIG_MTU4_OVF                       (0x19U) /* MTU4 overflow */
#define _1A_ELC_EVENT_SIG_MTU4_UDF                       (0x1AU) /* MTU4 underflow */
#define _1F_ELC_EVENT_SIG_CMT1_MATCH                     (0x1FU) /* CMT1 compare match 1 */
#define _22_ELC_EVENT_SIG_TMR0_MATCHA0                   (0x22U) /* TMR0 compare match A0 */
#define _23_ELC_EVENT_SIG_TMR0_MATCHB0                   (0x23U) /* TMR0 compare match B0 */
#define _24_ELC_EVENT_SIG_TMR0_OVF                       (0x24U) /* TMR0 overflow */
#define _28_ELC_EVENT_SIG_TMR2_MATCHA2                   (0x28U) /* TMR2 compare match A2 */
#define _29_ELC_EVENT_SIG_TMR2_MATCHB2                   (0x29U) /* TMR2 compare match B2 */
#define _2A_ELC_EVENT_SIG_TMR2_OVF                       (0x2AU) /* TMR2 overflow */
#define _32_ELC_EVENT_SIG_LPT_MATCH                      (0x32U) /* LPT compare match */
#define _34_ELC_EVENT_SIG_ADC_CMPRESULT_MATCH            (0x34U) /* S12AD comparison conditions are met */
#define _35_ELC_EVENT_SIG_ADC_CMPRESULT_NOTMATCH         (0x35U) /* S12AD comparison conditions are not met */
#define _3A_ELC_EVENT_SIG_SCI5_ERR                       (0x3AU) /* SCI5 receive error or error signal detection */
#define _3B_ELC_EVENT_SIG_SCI5_RX_FULL                   (0x3BU) /* SCI5 receive data full */
#define _3C_ELC_EVENT_SIG_SCI5_TX_EMPTY                  (0x3CU) /* SCI5 transmit data empty */
#define _3D_ELC_EVENT_SIG_SCI5_TX_END                    (0x3DU) /* SCI5 transmit end */
#define _4E_ELC_EVENT_SIG_RIIC0_ERR                      (0x4EU) /* RIIC0 communication error or event generation */
#define _4F_ELC_EVENT_SIG_RIIC0_RX_FULL                  (0x4FU) /* RIIC0 receive data full */
#define _50_ELC_EVENT_SIG_RIIC0_TX_EMPTY                 (0x50U) /* RIIC0 transmit data empty */
#define _51_ELC_EVENT_SIG_RIIC0_TX_END                   (0x51U) /* RIIC0 transmit end */
#define _58_ELC_EVENT_SIG_S12ADC_CONV_END                (0x58U) /* S12AD A/D conversion end */
#define _59_ELC_EVENT_SIG_CMPB_B0                        (0x59U) /* CMPB0 comparison result change */
#define _5A_ELC_EVENT_SIG_CMPB_B0B1                      (0x5AU) /* CMPB0/B1 comparison result change */
#define _5B_ELC_EVENT_SIG_LVD1_DETECT                    (0x5BU) /* LVD1 voltage detection */
#define _61_ELC_EVENT_SIG_DTC_TX_END                     (0x61U) /* DTC transfer end */
#define _63_ELC_EVENT_SIG_PORTGRP1_INPUT_EDGE            (0x63U) /* Input edge detection of input port group 1 */
#define _65_ELC_EVENT_SIG_SINGLEPORT0_INPUT_EDGE         (0x65U) /* Input edge detection of single input port 0 */
#define _66_ELC_EVENT_SIG_SINGLEPORT1_INPUT_EDGE         (0x66U) /* Input edge detection of single input port 1 */
#define _69_ELC_EVENT_SIG_ELC_SW_EVENT                   (0x69U) /* Software event */
#define _6A_ELC_EVENT_SIG_DOC_COND_MET                   (0x6AU) /* DOC data operation condition met signal */

/*
    Event Link Option Setting Register x (ELOPx)
*/
/* Operation Select Bit (_MD[1:0]) */
#define _00_ELC_OPERATION_COUNT_START                    (0x00U) /* Counting is started */
#define _01_ELC_OPERATION_COUNT_RESTART                  (0x01U) /* Counting is restarted */
#define _02_ELC_OPERATION_INPUT_CAPTURE                  (0x02U) /* Input capture */
#define _02_ELC_OPERATION_EVENT_COUNTER                  (0x02U) /* Event counter */
#define _03_ELC_OPERATION_EVENT_DISABLE                  (0x03U) /* Event is disabled */
#define _00_ELC_OPERATION_INTERRUPT_REQ                  (0x00U) /* Issue LPT compare match interrupt request */

/*
    Port Group Control Register n (PGCn)
*/
/* Event Output Edge Select (PGCI[1:0]) */
#define _00_ELC_INPUT_PORTGROUP_EDGE_RISING              (0x00U) /* Generate event upon rising edge */
#define _01_ELC_INPUT_PORTGROUP_EDGE_FALLING             (0x01U) /* Generate event upon falling edge */
#define _02_ELC_INPUT_PORTGROUP_EDGE_BOTH                (0x02U) /* Generate event upon both edges */
/* PDBF Overwrite (PGCOVE) */
#define _00_ELC_INPUT_PORTGROUP_BUFFER_OVERWRITE_DISABLE (0x00U) /* Overwriting PDBF register is disabled */
#define _04_ELC_INPUT_PORTGROUP_BUFFER_OVERWRITE_ENABLE  (0x04U) /* Overwriting PDBF register is enabled */
/* Port Group Operation Select (PGCO[2:0]) */
#define _00_ELC_OPERATION_OUTPUT_PORTGROUP_OUT0          (0x00U) /* 0 is output on event */
#define _10_ELC_OPERATION_OUTPUT_PORTGROUP_OUT1          (0x10U) /* 1 is output on event */
#define _20_ELC_OPERATION_OUTPUT_PORTGROUP_TOGGLE        (0x20U) /* The toggled value is output on event */
#define _30_ELC_OPERATION_OUTPUT_PORTGROUP_BUFFER        (0x30U) /* The buffer value is output on event */
#define _40_ELC_OPERATION_OUTPUT_PORTGROUP_ROTATE        (0x40U) /* Rotate the bit value (MSB to LSB)in the group */
#define _88_ELC_PGC_DEFAULT                              (0x88U) /* Default value */

/*
    Event Link Port Setting Register n (PELn)
*/
/* Port Number Specification (PSP[1:0]) */
#define _08_ELC_SINGLE_PORT_PORT_NUMBER_PORTB            (0x08U) /* Port B */
/* Event Link Specification (PSM[1:0]) */
#define _00_ELC_OPERATION_SINGLE_PORT_OUT0               (0x00U) /* 0 is output on event */
#define _20_ELC_OPERATION_SINGLE_PORT_OUT1               (0x20U) /* 1 is output on event */
#define _40_ELC_OPERATION_SINGLE_PORT_TOGGLE             (0x40U) /* The toggled value is output on event */
#define _00_ELC_SINGLE_PORT_EDGE_RISING                  (0x00U) /* Generate event upon rising edge */
#define _20_ELC_SINGLE_PORT_EDGE_FALLING                 (0x20U) /* Generate event upon falling edge */
#define _40_ELC_SINGLE_PORT_EDGE_BOTH                    (0x40U) /* Generate event upon both edges */
/* Bit Number Specification (PSB[2:0]) */
#define _00_ELC_SINGLE_PORT_PORT0                        (0x00U) /* Port pin 0 is selected */
#define _01_ELC_SINGLE_PORT_PORT1                        (0x01U) /* Port pin 1 is selected */
#define _02_ELC_SINGLE_PORT_PORT2                        (0x02U) /* Port pin 2 is selected */
#define _03_ELC_SINGLE_PORT_PORT3                        (0x03U) /* Port pin 3 is selected */
#define _04_ELC_SINGLE_PORT_PORT4                        (0x04U) /* Port pin 4 is selected */
#define _05_ELC_SINGLE_PORT_PORT5                        (0x05U) /* Port pin 5 is selected */
#define _06_ELC_SINGLE_PORT_PORT6                        (0x06U) /* Port pin 6 is selected */
#define _07_ELC_SINGLE_PORT_PORT7                        (0x07U) /* Port pin 7 is selected */
#define _80_ELC_PEL_DEFAULT                              (0x80U) /* Default value */

/* 
    Event Link Software Event Generation Register (ELSEGR)
*/
#define _3E_ELC_SOFTWARE_EVENT_GENERATION_UNLOCK         (0x3EU) /* Enable writing to WE bit */
#define _7E_ELC_SOFTWARE_EVENT_GENERATION_ENABLE         (0x7EU) /* Enable writing to SEG bit */
#define _7F_ELC_GENERATE_SOFTWARE_EVENT                  (0x7FU) /* Write this value to generate software event */

/*
    Interrupt Priority
*/
#define _00_ELC_PRIORITY_LEVEL0                          (0x00U) /* Level 0 (interrupt disabled) */
#define _01_ELC_PRIORITY_LEVEL1                          (0x01U) /* Level 1 */
#define _02_ELC_PRIORITY_LEVEL2                          (0x02U) /* Level 2 */
#define _03_ELC_PRIORITY_LEVEL3                          (0x03U) /* Level 3 */
#define _04_ELC_PRIORITY_LEVEL4                          (0x04U) /* Level 4 */
#define _05_ELC_PRIORITY_LEVEL5                          (0x05U) /* Level 5 */
#define _06_ELC_PRIORITY_LEVEL6                          (0x06U) /* Level 6 */
#define _07_ELC_PRIORITY_LEVEL7                          (0x07U) /* Level 7 */
#define _08_ELC_PRIORITY_LEVEL8                          (0x08U) /* Level 8 */
#define _09_ELC_PRIORITY_LEVEL9                          (0x09U) /* Level 9 */
#define _0A_ELC_PRIORITY_LEVEL10                         (0x0AU) /* Level 10 */
#define _0B_ELC_PRIORITY_LEVEL11                         (0x0BU) /* Level 11 */
#define _0C_ELC_PRIORITY_LEVEL12                         (0x0CU) /* Level 12 */
#define _0D_ELC_PRIORITY_LEVEL13                         (0x0DU) /* Level 13 */
#define _0E_ELC_PRIORITY_LEVEL14                         (0x0EU) /* Level 14 */
#define _0F_ELC_PRIORITY_LEVEL15                         (0x0FU) /* Level 15 (highest) */

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

