/*
 * fingering.c
 *
 *  Created on: 2018/10/23
 *      Author: Reiji
 */

#include "fingering.h"

u16 sensorData[FINGERING_FILTER][112];
u8 sensorDataOffset = 0;

s16 filterSensorData[112];

s32 sensorDataAverage[112];
u8 sensorDataAverageCount = 0;
#define SENSOR_DATA_AVERAGE_VALID (sensorDataAverageCount == 16)

FINGERING_RESULT SetSensorData(u8 data[])
{
	u8 i, j;
	s32 data1st, data2nd;
	u32 dataIndex = 0;
	s32 sum;

	for(i = 0; i < 112; i++)
	{
		if(data[dataIndex] != i * 2)
		{
//			return FINGERING_DATA_INDEX_FAILED;
		}

		j = dataIndex;

		data1st = (data[dataIndex + 2] << 8) + data[dataIndex + 1];
		data2nd = (data[dataIndex + 5] << 8) + data[dataIndex + 4];

		sensorData[sensorDataOffset][i] = data2nd > data1st ? data2nd - data1st : 0;
		dataIndex += 6;
	}

	if(sensorDataAverageCount < 16)
	{
		for(i = 0; i < 112; i++)
		{
			sensorDataAverage[i] += sensorData[sensorDataOffset][i];
		}

		sensorDataAverageCount++;

		if(sensorDataAverageCount == 16)
		{
			for(i = 0; i < 112; i++)
			{
				sensorDataAverage[i] = sensorDataAverage[i] / 16;
			}
		}
	}

	for(i = 0; i < 112; i++)
	{
		sum = 0;

		for(j = 0; j < FINGERING_FILTER; j++)
		{
			sum += sensorData[j][i];
		}

		if(SENSOR_DATA_AVERAGE_VALID)
		{
			filterSensorData[i] = sum / FINGERING_FILTER - sensorDataAverage[i];
		}
		else
		{
			filterSensorData[i] = 0;
		}
	}

	if(sensorDataOffset == FINGERING_FILTER - 1)
	{
		sensorDataOffset = 0;
	}
	else
	{
		sensorDataOffset++;
	}

	return FINGERING_OK;
}

FINGERING_RESULT GetFingerPosition(float* pos)
{
	u32 i, indexString, indexPos, actualyPressed;
	float x1, x2, x3, m1, m2, m3;

	for(i = 0; i < 4; i++)
	{
		pos[i] = 0.0f;
	}

    for(indexString = 0; indexString < 4; indexString++)
    {
        for(indexPos = 9; indexPos > 0; indexPos--)
        {
            if(filterSensorData[indexString + indexPos * 4] < -250)
            {
                actualyPressed = TRUE;

                for(int otherString = 0; otherString < 4; otherString++)
                {
                    if(otherString != indexString &&
                       filterSensorData[otherString + indexPos * 4] - filterSensorData[indexString + indexPos * 4] < -50)
                    {
                        actualyPressed = FALSE;
                    }
                }

                if(actualyPressed)
                {
                    x1 = (indexPos + 1) + 0.5f;
                    x2 = (indexPos) + 0.5f;
                    x3 = (indexPos - 1) + 0.5f;
                    m1 = -filterSensorData[indexString + (indexPos + 1) * 4];
                    m2 = -filterSensorData[indexString + (indexPos) * 4];
                    m3 = -filterSensorData[indexString + (indexPos - 1) * 4];
                    if (m1 + m2 + m3 != 0.0)
                    {
                        pos[indexString] = (m1 * x1 + m2 * x2 + m3 * x3) / (m1 + m2 + m3);
                    }
                    else
                    {
                        pos[indexString] = 0.0f;
                    }
                    break;
                }
            }
        }
    }

    return FINGERING_OK;
}

void ResetAverage()
{
	u8 i;

	sensorDataAverageCount = 0;

	for(i = 0; i < 112; i++)
	{
		sensorDataAverage[i] = 0;
	}
}
