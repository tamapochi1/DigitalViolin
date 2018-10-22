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
* File Name    : r_cg_remc.h
* Version      : 1.0.0
* Device(s)    : R5F51303AxFN
* Description  : General header file for REMC peripheral.
* Creation Date: 2018-10-21
***********************************************************************************************************************/

#ifndef REMC_H
#define REMC_H

/***********************************************************************************************************************
Macro definitions (Register bit)
***********************************************************************************************************************/
/*
    Function Select Register 0 (REMCON0)
*/
/* Input Signal Inversion (INV) */
#define _00_REMC_CON0_INV_NO            (0x00U) /* Not inverted */
#define _02_REMC_CON0_INV_YES           (0x02U) /* Inverted */
/* Digital Filter Enable/Disable Setting (FIL) */
#define _00_REMC_CON0_FIL_DISABLE       (0x00U) /* Disables the digital filter for matching three or two times. */
#define _04_REMC_CON0_FIL_ENABLE        (0x04U) /* Enables the digital filter for matching three or two times. */
/* Receive Error Capture Operation Select (EC) */
#define _00_REMC_CON0_EC_YES            (0x00U) /* Captures the data after an error pattern is received. */
#define _10_REMC_CON0_EC_NO             (0x10U) /* Does not capture the data after an error pattern is received. */
/* Digital Filter Function Select (FILSEL) */
#define _00_REMC_CON0_FILSEL_3          (0x00U) /* Digital filter for matching three times */
#define _40_REMC_CON0_FILSEL_2          (0x40U) /* Digital filter for matching two times */

/*
    Function Select Register 1 (REMCON1)
*/
/* Receive Mode Select (TYP[1:0]) */
#define _00_REMC_CON1_TYP_A             (0x00U) /* Format A Pattern Setting. */
#define _01_REMC_CON1_TYP_B             (0x01U) /* Format B Pattern Setting. */
#define _02_REMC_CON1_TYP_C             (0x02U) /* Format C Pattern Setting. */
/* Remote Control (EN) */
#define _00_REMC_CON1_EN_DISABLE        (0x00U) /* Operation disabled */
#define _04_REMC_CON1_EN_ENABLE         (0x04U) /* Operation enabled */
/* Count Source Clock Select (CSRC[3:0]) */
#define _00_REMC_CON1_CSRC_RCRILCLK     (0x00U) /* RCRILCLK */
#define _10_REMC_CON1_CSRC_TMR          (0x10U) /* TMR compare match output */
#define _20_REMC_CON1_CSRC_RCRSCLK      (0x20U) /* RCRSCLK */
#define _28_REMC_CON1_CSRC_RCRSCLK_512  (0x28U) /* RCRHCLK/512 */
#define _30_REMC_CON1_CSRC_PCLKB_64     (0x30U) /* PCLKB/64 */
#define _70_REMC_CON1_CSRC_PCLKB_512    (0x70U) /* PCLKB/512 */

/*
    Interrupt Control Register (REMINT)
*/
/* Compare Match Interrupt Enable (CPINT) */
#define _01_REMC_INT_CPINT_ENABLE       (0x01U) /* CPINT Enabled */
/* Receive Error Interrupt Enable (REINT) */
#define _02_REMC_INT_REINT_ENABLE       (0x02U) /* REINT Enabled */
/* Data Reception Complete Interrupt Enable (DRINT) */
#define _04_REMC_INT_DRINT_ENABLE       (0x04U) /* DRINT Enabled */
/* Receive Buffer Full Interrupt Enable (BFULINT) */
#define _08_REMC_INT_BFULINT_ENABLE     (0x08U) /* BFULINT Enabled */
/* Header Pattern Match Interrupt Enable (HDINT) */
#define _10_REMC_INT_HDINT_ENABLE       (0x10U) /* HDINT Enabled */
/* Data 0 Pattern or Data 0 Pattern Match Interrupt Enable (DINT) */
#define _20_REMC_INT_DINT_ENABLE        (0x20U) /* DINT Enabled */
/* Special Data Pattern Match Interrupt Enable (SDINT) */
#define _80_REMC_INT_SDINT_ENABLE       (0x80U) /* SDINT Enabled */

/*
    Compare Control Register (REMCPC)
*/
/* Compare Bit Count Specification (CPN[2:0]) */
#define _00_REMC_CPC_CPN_0              (0x00U) /* 0 Compare Bit Count Specified */
#define _01_REMC_CPC_CPN_1              (0x01U) /* 1 Compare Bit Count Specified */
#define _02_REMC_CPC_CPN_2              (0x02U) /* 2 Compare Bit Count Specified */
#define _03_REMC_CPC_CPN_3              (0x03U) /* 3 Compare Bit Count Specified */
#define _04_REMC_CPC_CPN_4              (0x04U) /* 4 Compare Bit Count Specified */
#define _05_REMC_CPC_CPN_5              (0x05U) /* 5 Compare Bit Count Specified */
#define _06_REMC_CPC_CPN_6              (0x06U) /* 6 Compare Bit Count Specified */
#define _07_REMC_CPC_CPN_7              (0x07U) /* 7 Compare Bit Count Specified */

/*
    Receiver Standby Control Register (REMSTC)
*/
/* Low Power Control Enable (LPCE) */
#define _00_REMC_STC_LPCE_DISABLE       (0x00U) /* The PCLK supply in software standby mode is disabled. */
#define _01_REMC_STC_LPCE_ENABLE        (0x01U) /* The PCLK supply in software standby mode is enabled. */
/* Digital Filter Clock Source Selection (DNFSL) */
#define _00_REMC_STC_DNFSL_RCR          (0x00U) /* REMC operating clock is selected as a sampling clock */
#define _02_REMC_STC_DNFSL_RCRILCLK     (0x02U) /* RCRILCLK is selected as a sampling clock */

/*
    Interrupt Source Priority Register n (IPRn)
*/
/* Interrupt Priority Level Select (IPR[3:0]) */
#define _00_REMC_PRIORITY_LEVEL0        (0x00U) /* Level 0 (interrupt disabled) */
#define _01_REMC_PRIORITY_LEVEL1        (0x01U) /* Level 1 */
#define _02_REMC_PRIORITY_LEVEL2        (0x02U) /* Level 2 */
#define _03_REMC_PRIORITY_LEVEL3        (0x03U) /* Level 3 */
#define _04_REMC_PRIORITY_LEVEL4        (0x04U) /* Level 4 */
#define _05_REMC_PRIORITY_LEVEL5        (0x05U) /* Level 5 */
#define _06_REMC_PRIORITY_LEVEL6        (0x06U) /* Level 6 */
#define _07_REMC_PRIORITY_LEVEL7        (0x07U) /* Level 7 */
#define _08_REMC_PRIORITY_LEVEL8        (0x08U) /* Level 8 */
#define _09_REMC_PRIORITY_LEVEL9        (0x09U) /* Level 9 */
#define _0A_REMC_PRIORITY_LEVEL10       (0x0AU) /* Level 10 */
#define _0B_REMC_PRIORITY_LEVEL11       (0x0BU) /* Level 11 */
#define _0C_REMC_PRIORITY_LEVEL12       (0x0CU) /* Level 12 */
#define _0D_REMC_PRIORITY_LEVEL13       (0x0DU) /* Level 13 */
#define _0E_REMC_PRIORITY_LEVEL14       (0x0EU) /* Level 14 */
#define _0F_REMC_PRIORITY_LEVEL15       (0x0FU) /* Level 15 (highest) */

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

