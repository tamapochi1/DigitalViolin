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
* File Name    : r_cg_poe.h
* Version      : 1.0.0
* Device(s)    : R5F51303AxFN
* Description  : General header file for POE peripheral.
* Creation Date: 2018-10-21
***********************************************************************************************************************/

#ifndef POE_H
#define POE_H

/***********************************************************************************************************************
Macro definitions (Register bit)
***********************************************************************************************************************/
/*
    Input Level Control/Status Register 1 (ICSR1)
*/
/* POE0 Mode Select (POE0M) */
#define _0000_POE_POE0M_SEL_DEFAULT  (0x0000U) /* Accepts request on the falling edge of POE0# input */
#define _0001_POE_POE0M_SEL_8        (0x0001U) /* Accepts request when sampled 16 times at PCLK/8 and all are low */
#define _0002_POE_POE0M_SEL_16       (0x0002U) /* Accepts request when sampled 16 times at PCLK/16 and all are low */
#define _0003_POE_POE0M_SEL_128      (0x0003U) /* Accepts request when sampled 16 times at PCLK/128 and all are low */
/* POE1 Mode Select (POE1M) */
#define _0000_POE_POE1M_SEL_DEFAULT  (0x0000U) /* Accepts request on the falling edge of POE1# input */
#define _0004_POE_POE1M_SEL_8        (0x0004U) /* Accepts request when sampled 16 times at PCLK/8 and all are low */
#define _0008_POE_POE1M_SEL_16       (0x0008U) /* Accepts request when sampled 16 times at PCLK/16 and all are low */
#define _000C_POE_POE1M_SEL_128      (0x000CU) /* Accepts request when sampled 16 times at PCLK/128 and all are low */
/* POE2 Mode Select (POE2M) */
#define _0000_POE_POE2M_SEL_DEFAULT  (0x0000U) /* Accepts request on the falling edge of POE2# input */
#define _0010_POE_POE2M_SEL_8        (0x0010U) /* Accepts request when sampled 16 times at PCLK/8 and all are low */
#define _0020_POE_POE2M_SEL_16       (0x0020U) /* Accepts request when sampled 16 times at PCLK/16 and all are low */
#define _0030_POE_POE2M_SEL_128      (0x0030U) /* Accepts request when sampled 16 times at PCLK/128 and all are low */
/* POE3 Mode Select (POE3M) */
#define _0000_POE_POE3M_SEL_DEFAULT  (0x0000U) /* Accepts request on the falling edge of POE3# input */
#define _0040_POE_POE3M_SEL_8        (0x0040U) /* Accepts request when sampled 16 times at PCLK/8 and all are low */
#define _0080_POE_POE3M_SEL_16       (0x0080U) /* Accepts request when sampled 16 times at PCLK/16 and all are low */
#define _00C0_POE_POE3M_SEL_128      (0x00C0U) /* Accepts request when sampled 16 times at PCLK/128 and all are low */
/* Port Interrupt Enable 1 (PIE1) */
#define _0000_POE_PIE1_DISABLE       (0x0000U) /* OEI1 interrupt requests by the input level detection disabled */
#define _0100_POE_PIE1_ENABLE        (0x0100U) /* OEI1 interrupt requests by the input level detection enabled */

/*
    Output Level Control/Status Register 1 (OCSR1)
*/
/* Output Short Interrupt Enable 1 (OIE1) */
#define _0000_POE_OIE1_DISABLE       (0x0000U) /* OEI1 interrupt requests by the output level comparison disabled */
#define _0100_POE_OIE1_ENABLE        (0x0100U) /* OEI1 interrupt requests by the output level comparison enabled */
/* Output Short High-Impedance Enable 1 (OCE1) */
#define _0000_POE_OCE1_DISABLE       (0x0000U) /* Does not place the pins in high-impedance */
#define _0200_POE_OCE1_ENABLE        (0x0200U) /* Places the pins in high-impedance */

/*
    Input Level Control/Status Register 2 (ICSR2)
*/
/* POE8 Mode Select (POE8M) */
#define _0000_POE_POE8M_SEL_DEFAULT  (0x0000U) /* Accepts request on the falling edge of POE8# input */
#define _0001_POE_POE8M_SEL_8        (0x0001U) /* Accepts request when sampled 16 times at PCLK/8 and all are low */
#define _0002_POE_POE8M_SEL_16       (0x0002U) /* Accepts request when sampled 16 times at PCLK/16 and all are low */
#define _0003_POE_POE8M_SEL_128      (0x0003U) /* Accepts request when sampled 16 times at PCLK/128 and all are low */
/* Port Interrupt Enable 2 (PIE2) */
#define _0000_POE_PIE2_DISABLE       (0x0000U) /* OEI2 interrupt requests disabled */
#define _0100_POE_PIE2_ENABLE        (0x0100U) /* OEI2 interrupt requests enabled */
/* POE8 High-Impedance Enable (POE8E) */
#define _0000_POE_POE8E_DISABLE      (0x0000U) /* MTIOC0A, MTIOC0B, MTIOC0C, MTIOC0D pins high-impedance disabled */
#define _0200_POE_POE8E_ENABLE       (0x0200U) /* MTIOC0A, MTIOC0B, MTIOC0C, MTIOC0D pins high-impedance enabled */

/*
    Port Output Enable Control Register 1 (POECR1)
*/
/* MTIOC0A High-Impedance Enable (PE0ZE) */
#define _00_POE_PE0ZE_DISABLE        (0x00U)   /* Does not place the pin in high-impedance */
#define _01_POE_PE0ZE_ENABLE         (0x01U)   /* Places the pin in high-impedance */
/* MTIOC0B High-Impedance Enable (PE1ZE) */
#define _00_POE_PE1ZE_DISABLE        (0x00U)   /* Does not place the pin in high-impedance */
#define _02_POE_PE1ZE_ENABLE         (0x02U)   /* Places the pin in high-impedance */
/* MTIOC0C High-Impedance Enable (PE2ZE) */
#define _00_POE_PE2ZE_DISABLE        (0x00U)   /* Does not place the pin in high-impedance */
#define _04_POE_PE2ZE_ENABLE         (0x04U)   /* Places the pin in high-impedance */
/* MTIOC0D High-Impedance Enable (PE3ZE) */
#define _00_POE_PE3ZE_DISABLE        (0x00U)   /* Does not place the pin in high-impedance */
#define _08_POE_PE3ZE_ENABLE         (0x08U)   /* Places the pin in high-impedance */

/*
    Port Output Enable Control Register 2 (POECR2)
*/
/* MTU Port 3 High-Impedance Enable (P3CZEA) */
#define _00_POE_P3CZEA_DISABLE       (0x00U)   /* Output levels comparison and the pins high-impedance are disabled */
#define _10_POE_P3CZEA_ENABLE        (0x10U)   /* The pins are placed in the high-impedance */
/* MTU Port 2 High-Impedance Enable (P2CZEA) */
#define _00_POE_P2CZEA_DISABLE       (0x00U)   /* Output levels comparison and the pins high-impedance are disabled */
#define _20_POE_P2CZEA_ENABLE        (0x20U)   /* The pins are placed in the high-impedance */
/* MTU Port 1 High-Impedance Enable (P1CZEA) */
#define _00_POE_P1CZEA_DISABLE       (0x00U)   /* Output levels comparison and the pins high-impedance are disabled */
#define _40_POE_P1CZEA_ENABLE        (0x40U)   /* The pins are placed in the high-impedance */

/*
    Input Level Control/Status Register 3 (ICSR3)
*/
/* OSTST High-Impedance Enable (OSTSTE) */
#define _0000_POE_OSTSTE_DISABLE     (0x0000U) /* MTU0 and complementary PWM output pins high-impedance are disabled */
#define _0200_POE_OSTSTE_ENABLE      (0x0200U) /* MTU0 and complementary PWM output pins high-impedance are enabled */

/*
    Software Port Output Enable Register (SPOER)
*/
/* MTU3 and MTU4 Output High-Impedance Enable (CH34HIZ) */
#define _00_POE_CH34HIZ_DISABLE          (0x00U)   /* Does not place the pins in high-impedance */
#define _01_POE_CH34HIZ_ENABLE           (0x01U)   /* Places the pins in high-impedance */
/* MTU0 Output High-Impedance Enable (CH0HIZ) */
#define _00_POE_CH0HIZ_DISABLE           (0x00U)   /* Does not place the pins in high-impedance */
#define _02_POE_CH0HIZ_ENABLE            (0x02U)   /* Places the pins in high-impedance */

/*
    Interrupt Source Priority Register n (IPRn)
*/
/* Interrupt Priority Level Select (IPR[3:0]) */
#define _00_POE_PRIORITY_LEVEL0      (0x00U) /* Level 0 (interrupt disabled) */
#define _01_POE_PRIORITY_LEVEL1      (0x01U) /* Level 1 */
#define _02_POE_PRIORITY_LEVEL2      (0x02U) /* Level 2 */
#define _03_POE_PRIORITY_LEVEL3      (0x03U) /* Level 3 */
#define _04_POE_PRIORITY_LEVEL4      (0x04U) /* Level 4 */
#define _05_POE_PRIORITY_LEVEL5      (0x05U) /* Level 5 */
#define _06_POE_PRIORITY_LEVEL6      (0x06U) /* Level 6 */
#define _07_POE_PRIORITY_LEVEL7      (0x07U) /* Level 7 */
#define _08_POE_PRIORITY_LEVEL8      (0x08U) /* Level 8 */
#define _09_POE_PRIORITY_LEVEL9      (0x09U) /* Level 9 */
#define _0A_POE_PRIORITY_LEVEL10     (0x0AU) /* Level 10 */
#define _0B_POE_PRIORITY_LEVEL11     (0x0BU) /* Level 11 */
#define _0C_POE_PRIORITY_LEVEL12     (0x0CU) /* Level 12 */
#define _0D_POE_PRIORITY_LEVEL13     (0x0DU) /* Level 13 */
#define _0E_POE_PRIORITY_LEVEL14     (0x0EU) /* Level 14 */
#define _0F_POE_PRIORITY_LEVEL15     (0x0FU) /* Level 15 (highest) */

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
