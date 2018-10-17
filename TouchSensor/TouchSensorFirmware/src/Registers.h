/*
 * Registers.h
 *
 *  Created on: 2018/10/17
 *      Author: Reiji
 */

#include "r_smc_entry.h"

#ifndef REGISTERS_H_
#define REGISTERS_H_

extern uint8_t reg_ReceivedData[3];

#define NUM_REGS 4

extern uint16_t regs[4];

#define REG_DUMMY		regs[0]
#define REG_CTSUSSDIV	regs[1]
#define REG_CTSUSO		regs[2]
#define REG_CTSUSDPA	regs[3]

#endif /* REGISTERS_H_ */
