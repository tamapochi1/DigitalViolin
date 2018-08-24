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
* File Name    : r_cg_bsc.h
* Version      : 1.0.0
* Device(s)    : R5F51303AxFN
* Description  : General header file for BUSES peripheral.
* Creation Date: 2018-08-19
***********************************************************************************************************************/

#ifndef BSC_H
#define BSC_H

/***********************************************************************************************************************
Macro definitions (Register bit)
***********************************************************************************************************************/
/*
    Bus Error Monitoring Enable Register (BEREN)
*/
/* Illegal Address Access Detection Enable (IGAEN) */
#define _00_BSC_IGAEN_DISABLE        (0x00U) /* Illegal address access detection is disabled */
#define _01_BSC_IGAEN_ENABLE         (0x01U) /* Illegal address access detection is enabled */
/* Timeout Detection Enable (TOEN) */
#define _00_BSC_TOEN_DISABLE         (0x00U) /* Bus timeout detection is disabled */
#define _02_BSC_TOEN_ENABLE          (0x02U) /* Bus timeout detection is enabled */

/*
    Bus Priority Control Register (BUSPRI)
*/
/* Memory Bus 1 (RAM) Priority Control (BPRA[1:0]) */
#define _0000_BSC_BPRA_FIX           (0x0000U) /* The order of priority is fixed */
#define _0001_BSC_BPRA_TOGGLE        (0x0001U) /* The order of priority is toggled */
/* Memory Bus 2 (ROM) Priority Control (BPRO[1:0]) */
#define _0000_BSC_BPRO_FIX           (0x0000U) /* The order of priority is fixed */
#define _0004_BSC_BPRO_TOGGLE        (0x0004U) /* The order of priority is toggled */
/* Internal Peripheral Bus 1 Priority Control (BPIB[1:0]) */
#define _0000_BSC_BPIB_FIX           (0x0000U) /* The order of priority is fixed */
#define _0010_BSC_BPIB_TOGGLE        (0x0010U) /* The order of priority is toggled */
/* Internal Peripheral Bus 2 and 3 Priority Control (BPGB[1:0]) */
#define _0000_BSC_BPGB_FIX           (0x0000U) /* The order of priority is fixed */
#define _0040_BSC_BPGB_TOGGLE        (0x0040U) /* The order of priority is toggled */
/* Internal Peripheral Bus 6 Priority Control (BPFB[1:0]) */
#define _0000_BSC_BPFB_FIX           (0x0000U) /* The order of priority is fixed */
#define _0400_BSC_BPFB_TOGGLE        (0x0400U) /* The order of priority is toggled */

/*
    Interrupt Source Priority Register n (IPRn)
*/
/* Interrupt Priority Level Select (IPR[3:0]) */
#define _00_BSC_PRIORITY_LEVEL0      (0x00U) /* Level 0 (interrupt disabled) */
#define _01_BSC_PRIORITY_LEVEL1      (0x01U) /* Level 1 */
#define _02_BSC_PRIORITY_LEVEL2      (0x02U) /* Level 2 */
#define _03_BSC_PRIORITY_LEVEL3      (0x03U) /* Level 3 */
#define _04_BSC_PRIORITY_LEVEL4      (0x04U) /* Level 4 */
#define _05_BSC_PRIORITY_LEVEL5      (0x05U) /* Level 5 */
#define _06_BSC_PRIORITY_LEVEL6      (0x06U) /* Level 6 */
#define _07_BSC_PRIORITY_LEVEL7      (0x07U) /* Level 7 */
#define _08_BSC_PRIORITY_LEVEL8      (0x08U) /* Level 8 */
#define _09_BSC_PRIORITY_LEVEL9      (0x09U) /* Level 9 */
#define _0A_BSC_PRIORITY_LEVEL10     (0x0AU) /* Level 10 */
#define _0B_BSC_PRIORITY_LEVEL11     (0x0BU) /* Level 11 */
#define _0C_BSC_PRIORITY_LEVEL12     (0x0CU) /* Level 12 */
#define _0D_BSC_PRIORITY_LEVEL13     (0x0DU) /* Level 13 */
#define _0E_BSC_PRIORITY_LEVEL14     (0x0EU) /* Level 14 */
#define _0F_BSC_PRIORITY_LEVEL15     (0x0FU) /* Level 15 (highest) */

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

