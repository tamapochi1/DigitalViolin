################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables
C_SRCS += \
../src/smc_gen/r_bsp/mcu/all/r_bsp_common.c 

COMPILER_OBJS += \
src/smc_gen/r_bsp/mcu/all/r_bsp_common.obj 

C_DEPS += \
src/smc_gen/r_bsp/mcu/all/r_bsp_common.d 

# Each subdirectory must supply rules for building sources it contributes
src/smc_gen/r_bsp/mcu/all/%.obj: ../src/smc_gen/r_bsp/mcu/all/%.c 
	@echo 'Scanning and building file: $<'
	@echo 'Invoking: Scanner and Compiler'
	ccrx -MM -MP -output=dep="$(@:%.obj=%.d)"  -MT="$(@:%.d=%.obj)"  -MT="$(@:%.obj=%.d)" -isa=rxv1 -nofpu -include="C:\Program Files (x86)\Renesas\RX\2_7_0\include","C:\Users\Reiji\Documents\GitHub\DigitalViolin\TouchSensor\TouchSensorFirmware\src\smc_gen\r_bsp","C:\Users\Reiji\Documents\GitHub\DigitalViolin\TouchSensor\TouchSensorFirmware\src\smc_gen\r_config","C:\Users\Reiji\Documents\GitHub\DigitalViolin\TouchSensor\TouchSensorFirmware\src\smc_gen\Config_SCI6","C:\Users\Reiji\Documents\GitHub\DigitalViolin\TouchSensor\TouchSensorFirmware\src\smc_gen\Config_CMT0","C:\Users\Reiji\Documents\GitHub\DigitalViolin\TouchSensor\TouchSensorFirmware\src\smc_gen\general","C:\Users\Reiji\Documents\GitHub\DigitalViolin\TouchSensor\TouchSensorFirmware\src\smc_gen\r_pincfg" -lang=c99 -nomessage -debug -optimize=0 -nologo  "$<"
	ccrx -isa=rxv1 -nofpu -include="C:\Program Files (x86)\Renesas\RX\2_7_0\include","C:\Users\Reiji\Documents\GitHub\DigitalViolin\TouchSensor\TouchSensorFirmware\src\smc_gen\r_bsp","C:\Users\Reiji\Documents\GitHub\DigitalViolin\TouchSensor\TouchSensorFirmware\src\smc_gen\r_config","C:\Users\Reiji\Documents\GitHub\DigitalViolin\TouchSensor\TouchSensorFirmware\src\smc_gen\Config_SCI6","C:\Users\Reiji\Documents\GitHub\DigitalViolin\TouchSensor\TouchSensorFirmware\src\smc_gen\Config_CMT0","C:\Users\Reiji\Documents\GitHub\DigitalViolin\TouchSensor\TouchSensorFirmware\src\smc_gen\general","C:\Users\Reiji\Documents\GitHub\DigitalViolin\TouchSensor\TouchSensorFirmware\src\smc_gen\r_pincfg" -lang=c99 -nomessage -output=obj -obj_path="src/smc_gen/r_bsp/mcu/all" -debug -optimize=0 -nologo "$<"
	@echo 'Finished Scanning and building: $<'
	@echo.

