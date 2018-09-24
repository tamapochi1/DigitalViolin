#include "r_smc_entry.h"
#include "CTSUa.h"
#include "Pin.h"

void main(void);

void main(void)
{
	CTSUa_Init();
	R_Config_SCI6_Start();
	R_Config_CMT0_Start();
	R_Pins_Create();

	while(1)
	{

	}
}
