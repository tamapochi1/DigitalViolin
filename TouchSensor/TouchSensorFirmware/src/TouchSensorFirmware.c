#include "r_smc_entry.h"
#include "CTSUa.h"
#include "Registers.h"
#include "Pin.h"

uint8_t CTSUa_dataValid = 0;

void main(void);
static void CTSUa_csllbsck();

void main(void)
{
	uint8_t txData[3];
	uint8_t index;
	uint32_t counter = 0;

	CTSUa_Init(CTSUa_csllbsck);
	R_Config_SCI6_Start();
	R_Config_CMT0_Start();
	R_Pins_Create();

	while(1)
	{
		if(CTSUa_dataValid && !overrun)
		{
			for(index = 0; index < 224; index++)
			{
				while(SCI6_Busy());

				txData[0] = index;
				txData[1] = (uint8_t)(sensorDataBuffer[index * 2]);
				txData[2] = (uint8_t)(sensorDataBuffer[index * 2] >> 8);

				R_Config_SCI6_Serial_Send_Receive(txData, 3, reg_ReceivedData, 3);
			}

			CTSUa_dataValid = 0;
		}
	}
}

static void CTSUa_csllbsck()
{
	if(CTSUa_dataValid)
	{
		CTSUa_dataValid = 0;
	}
	else
	{
		CTSUa_dataValid = 1;
	}
}
