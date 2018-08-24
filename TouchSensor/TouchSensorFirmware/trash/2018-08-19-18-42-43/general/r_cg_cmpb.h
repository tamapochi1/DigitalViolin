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
* File Name    : r_cg_cmpb.h
* Version      : 1.0.0
* Device(s)    : R5F51303AxFN
* Description  : General header file for CMPB peripheral.
* Creation Date: 2018-08-19
***********************************************************************************************************************/

#ifndef CMPB_H
#define CMPB_H

/***********************************************************************************************************************
Macro definitions (Register bit)
***********************************************************************************************************************/
/*
    Comparator B Control Register 1 (CPBCNT1)
*/
/* Comparator B0 Power Enable (CPB0INI) */
#define _00_CMPB0_OPERATION_DISABLED    (0x00U) /* Disabled */
#define _01_CMPB0_OPERATION_ENABLED     (0x01U) /* Enabled */
/* Comparator B1 Power Enable (CPB1INI) */
#define _00_CMPB1_OPERATION_DISABLED    (0x00U) /* Disabled */
#define _10_CMPB1_OPERATION_ENABLED     (0x10U) /* Enabled */

/*
    Comparator B Control Register 2 (CPBCNT2)
*/
/* Comparator B0 Window Function Enable (CPB0WCP) */
#define _00_CMPB0_MODE_NORMAL           (0x00U) /* Disabled */
#define _01_CMPB0_MODE_WINDOWS          (0x01U) /* Enabled */
/* Comparator B1 Window Function Enable (CPB1WCP) */
#define _00_CMPB1_MODE_NORMAL           (0x00U) /* Disabled */
#define _10_CMPB1_MODE_WINDOWS          (0x10U) /* Enabled */

/*
    Comparator B Flag Register (CPBFLG)
*/
/* Comparator B0 Monitor Flag (CPB0OUT) */
#define _00_CMPB0_FLAG_LESS_OUT         (0x00U) /* CMPB0 < CVREFB0, CMPB0 < internal reference voltage or
                                                   CMPB0 < low-side reference, CMPB0 > high-sidereference */
#define _08_CMPB0_FLAG_MORE_IN          (0x08U) /* CMPB0 > CVREFB0, or CMPB0 > internal reference voltage or
                                                   Low-side reference < CMPB0 < high-side reference */
/* Comparator B1 Monitor Flag (CPB1OUT) */
#define _00_CMPB1_FLAG_LESS_OUT         (0x00U) /* CMPB1 < CVREFB1, CMPB1 < internal reference voltage  or
                                                   CMPB1 < low-side reference, CMPB1 > high-side reference */
#define _80_CMPB1_FLAG_MORE_IN          (0x80U) /* CMPB1 > CVREFB1, or CMPB1 > internal reference voltage or
                                                   Low-side reference < CMPB1 < high-side reference */

/*
    Comparator B Interrupt Control Register (CPBINT)
*/
/* Comparator B0 Interrupt Enable (CPB0INTEN) */
#define _00_CMPB0_INTERRUPT_DISABLE     (0x00U) /* Disable interrupt  */
#define _01_CMPB0_INTERRPUT_ENABLE      (0x01U) /* Enable interrupt  */
/* Comparator B0 Interrupt/ELC Edge Select (CPB0INTEG) */
#define _00_CMPB0_ONE_EDGE_INTERRUPT    (0x00U) /* Single edge */
#define _02_CMPB0_BOTH_EDGES_INTERRUPT  (0x02U) /* Both edges */
/* Comparator B0 Interrupt/ELC Edge Polarity Select (CPB0INTPL) */
#define _00_CMPB0_FALLING_INTERRUPT     (0x00U) /* Falling edge */
#define _04_CMPB0_RISING_INTERRUPT      (0x04U) /* Rising edge */
/* Comparator B1 Interrupt Enable (CPB1INTEN) */
#define _00_CMPB1_INTERRUPT_DISABLE     (0x00U) /* Disable interrupt  */
#define _10_CMPB1_INTERRPUT_ENABLE      (0x10U) /* Enable interrupt  */
/* Comparator B1 Interrupt/ELC Edge Select (CPB1INTEG) */
#define _00_CMPB1_ONE_EDGE_INTERRUPT    (0x00U) /* Single edge */
#define _20_CMPB1_BOTH_EDGES_INTERRUPT  (0x20U) /* Both edges */
/* Comparator B1 Interrupt/ELC Edge Polarity Select (CPB1INTPL) */
#define _00_CMPB1_FALLING_INTERRUPT     (0x00U) /* Falling edge */
#define _40_CMPB1_RISING_INTERRUPT      (0x40U) /* Rising edge */

/*
    Comparator B Filter Select Register (CPBF)
*/
/* Comparator B0 Filter Enable/Disable Select (CPB0FEN) */
#define _00_CMPB0_FILTER_DISABLE        (0x00U) /* Disable comparator B0 filter */
#define _01_CMPB0_FILTER_ENABLE         (0x01U) /* Enable comparator B0 filter */
/* Comparator B0 Filter Select (CPB0F[1:0]) */
#define _00_CMPB0_FILTER_PCLK           (0x00U) /* Sample with PCLK */
#define _01_CMPB0_FILTER_PCLK_8         (0x01U) /* Sample with PCLK/8 */
#define _02_CMPB0_FILTER_PCLK_32        (0x02U) /* Sample with PCLK/32 */
#define _03_CMPB0_FILTER_PCLK_64        (0x03U) /* Sample with PCLK/64 */
/* Comparator B1 Filter Enable/Disable Select (CPB1FEN) */
#define _00_CMPB1_FILTER_DISABLE        (0x00U) /* Disable comparator B1 filter */
#define _10_CMPB1_FILTER_ENABLE         (0x10U) /* Enable comparator B1 filter */
/* Comparator B1 Filter Select (CPB1F[1:0]) */
#define _00_CMPB1_FILTER_PCLK           (0x00U) /* Sample with PCLK */
#define _01_CMPB1_FILTER_PCLK_8         (0x01U) /* Sample with PCLK/8 */
#define _02_CMPB1_FILTER_PCLK_32        (0x02U) /* Sample with PCLK/32 */
#define _03_CMPB1_FILTER_PCLK_64        (0x03U) /* Sample with PCLK/64 */

/*
    Comparator B Mode Select Register (CPBMD)
*/
/* Comparator B Speed Select (CPBSPDMD) */
#define _00_CMPB_SPEED_HIGH             (0x00U) /* High speed */
#define _01_CMPB_SPEED_LOW              (0x01U) /* Low speed */

/*
    Comparator B Reference Input Voltage Select Register (CPBREF)
*/
/* Comparator B0 Reference Input Voltage Select (CPB0VRF) */
#define _00_CMPB0_REF_VOLTAGE_CVREF0    (0x00U) /* CVREFB0 input */
#define _01_CMPB0_REF_VOLTAGE_IVREF0    (0x01U) /* Internal reference voltage */
/* Comparator B1 Reference Input Voltage Select (CPB1VRF) */
#define _00_CMPB1_REF_VOLTAGE_CVREF1    (0x00U) /* CVREFB1 input */
#define _10_CMPB1_REF_VOLTAGE_IVREF1    (0x10U) /* Internal reference voltage */

/*
    Comparator B Output Control Register (CPBOCR)
*/
/* CMPOB0 Pin Output Enable (CPB0OE) */
#define _00_CMPB0_CPB0OE_DISABLE        (0x00U) /* Disable CMPOB0 output */
#define _01_CMPB0_CPB0OE_ENABLE         (0x01U) /* Enable CMPOB0 output */
/* CMPOB0 Output Polarity Select (CPB0OP) */
#define _00_CMPB0_CPB0OP_NORMAL         (0x00U) /* Normal output to CMPOB0 */
#define _02_CMPB0_CPB0OP_INVERTED       (0x02U) /* Inverted output to CMPOB0 */
/* CMPOB1 Pin Output Enable (CPB1OE) */
#define _00_CMPB1_CPB1OE_DISABLE        (0x00U) /* Disable CMPOB1 output */
#define _10_CMPB1_CPB1OE_ENABLE         (0x10U) /* Enable CMPOB1 output */
/* CMPOB1 Output Polarity Select (CPB1OP) */
#define _00_CMPB1_CPB1OP_NORMAL         (0x00U) /* Normal output to CMPOB1 */
#define _20_CMPB1_CPB1OP_INVERTED       (0x20U) /* Inverted output to CMPOB1 */

/*
    Interrupt Source Priority Register n (IPRn)
*/
/* Interrupt Priority Level Select (IPR[3:0]) */
#define _00_CMPB_PRIORITY_LEVEL0        (0x00U) /* Level 0 (interrupt disabled) */
#define _01_CMPB_PRIORITY_LEVEL1        (0x01U) /* Level 1 */
#define _02_CMPB_PRIORITY_LEVEL2        (0x02U) /* Level 2 */
#define _03_CMPB_PRIORITY_LEVEL3        (0x03U) /* Level 3 */
#define _04_CMPB_PRIORITY_LEVEL4        (0x04U) /* Level 4 */
#define _05_CMPB_PRIORITY_LEVEL5        (0x05U) /* Level 5 */
#define _06_CMPB_PRIORITY_LEVEL6        (0x06U) /* Level 6 */
#define _07_CMPB_PRIORITY_LEVEL7        (0x07U) /* Level 7 */
#define _08_CMPB_PRIORITY_LEVEL8        (0x08U) /* Level 8 */
#define _09_CMPB_PRIORITY_LEVEL9        (0x09U) /* Level 9 */
#define _0A_CMPB_PRIORITY_LEVEL10       (0x0AU) /* Level 10 */
#define _0B_CMPB_PRIORITY_LEVEL11       (0x0BU) /* Level 11 */
#define _0C_CMPB_PRIORITY_LEVEL12       (0x0CU) /* Level 12 */
#define _0D_CMPB_PRIORITY_LEVEL13       (0x0DU) /* Level 13 */
#define _0E_CMPB_PRIORITY_LEVEL14       (0x0EU) /* Level 14 */
#define _0F_CMPB_PRIORITY_LEVEL15       (0x0FU) /* Level 15 (highest) */

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

