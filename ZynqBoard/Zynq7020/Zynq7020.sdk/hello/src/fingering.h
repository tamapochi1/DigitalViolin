/*
 * fingering.h
 *
 *  Created on: 2018/10/23
 *      Author: Reiji
 */

#include "xil_types.h"

#ifndef SRC_FINGERING_H_
#define SRC_FINGERING_H_

typedef enum _FINGERING_RESULT
{
	FINGERING_OK = 0,
	FINGERING_DATA_INDEX_FAILED = -1
}FINGERING_RESULT;

#define FINGERING_FILTER 4

s16 filterSensorData[112];

FINGERING_RESULT SetSensorData(u8 data[]);
FINGERING_RESULT GetFingerPosition(float* pos);
void ResetAverage();

#endif /* SRC_FINGERING_H_ */
