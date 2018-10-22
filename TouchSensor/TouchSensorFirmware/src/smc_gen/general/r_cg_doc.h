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
* File Name    : r_cg_doc.h
* Version      : 1.0.0
* Device(s)    : R5F51303AxFN
* Description  : General header file for DOC peripheral.
* Creation Date: 2018-10-21
***********************************************************************************************************************/

#ifndef DOC_H
#define DOC_H

/***********************************************************************************************************************
Macro definitions (Register bit)
***********************************************************************************************************************/
/*
    DOC Control Register (DOCR)
*/
/* Operating Mode Select (OMS[1:0]) */
#define _00_DOC_MODE_COMPARISON                                 (0x00U) /* Data comparison mode */
#define _01_DOC_MODE_ADDITION                                   (0x01U) /* Data addition mode */
#define _02_DOC_MODE_SUBTRACTION                                (0x02U) /* Data subtraction mode */
/* Detection Condition Select (DCSEL) */
#define _00_DOC_COMPARISON_DETECT_MISMATCH                      (0x00U) /* Data mismatch is detected */
#define _04_DOC_COMPARISON_DETECT_MATCH                         (0x04U) /* Data match is detected. */
/* Data Operation Circuit Interrupt Enable (DOPCIE) */
#define _00_DOC_DOPCF_INTERRUPT_DISABLE                         (0x00U) /* Disables interrupts 
                                                                       from the data operation circuit */
#define _10_DOC_DOPCF_INTERRUPT_ENABLE                          (0x10U) /* Enables interrupts 
                                                                       from the data operation circuit */
/* DOPCF Clear (DOPCFCL) */
#define _00_DOC_DOPCF_MAINTAIN                                  (0x00U) /* Maintains the DOPCF flag state */
#define _40_DOC_DOPCF_CLEAR                                     (0x40U) /* Clears the DOPCF flag */

/*
    Interrupt Priority
*/
#define _00_DOC_PRIORITY_LEVEL0                                 (0x00U) /* Level 0 (interrupt disabled) */
#define _01_DOC_PRIORITY_LEVEL1                                 (0x01U) /* Level 1 */
#define _02_DOC_PRIORITY_LEVEL2                                 (0x02U) /* Level 2 */
#define _03_DOC_PRIORITY_LEVEL3                                 (0x03U) /* Level 3 */
#define _04_DOC_PRIORITY_LEVEL4                                 (0x04U) /* Level 4 */
#define _05_DOC_PRIORITY_LEVEL5                                 (0x05U) /* Level 5 */
#define _06_DOC_PRIORITY_LEVEL6                                 (0x06U) /* Level 6 */
#define _07_DOC_PRIORITY_LEVEL7                                 (0x07U) /* Level 7 */
#define _08_DOC_PRIORITY_LEVEL8                                 (0x08U) /* Level 8 */
#define _09_DOC_PRIORITY_LEVEL9                                 (0x09U) /* Level 9 */
#define _0A_DOC_PRIORITY_LEVEL10                                (0x0AU) /* Level 10 */
#define _0B_DOC_PRIORITY_LEVEL11                                (0x0BU) /* Level 11 */
#define _0C_DOC_PRIORITY_LEVEL12                                (0x0CU) /* Level 12 */
#define _0D_DOC_PRIORITY_LEVEL13                                (0x0DU) /* Level 13 */
#define _0E_DOC_PRIORITY_LEVEL14                                (0x0EU) /* Level 14 */
#define _0F_DOC_PRIORITY_LEVEL15                                (0x0FU) /* Level 15 (highest) */

/***********************************************************************************************************************
Macro definitions
***********************************************************************************************************************/

/***********************************************************************************************************************
Typedef definitions
***********************************************************************************************************************/
typedef enum
{
    COMPARE_MATCH,
    COMPARE_MISMATCH,
    ADDITION,
    SUBTRACTION
} doc_mode_t;

/***********************************************************************************************************************
Global functions
***********************************************************************************************************************/
/* Start user code for function. Do not edit comment generated here */
/* End user code. Do not edit comment generated here */
#endif
