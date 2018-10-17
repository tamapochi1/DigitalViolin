/*
 * CTSUa.h
 *
 *  Created on: 2018/08/19
 *      Author: Reiji
 */

#include "r_smc_entry.h"

#ifndef CTSUA_H_
#define CTSUA_H_

extern uint16_t sensorDataBuffer[448];

void CTSUa_Init(void(*callback_end)(void));
void CTSUa_Measure(void);


#endif /* CTSUA_H_ */
