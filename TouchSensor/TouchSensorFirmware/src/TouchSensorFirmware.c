#include "r_smc_entry.h"
#include "CTSUa.h"

void main(void);

void main(void)
{
	CTSUa_Init();
	R_Config_SCI6_Start();
	R_Config_CMT0_Start();

	while(1)
	{

	}
}
