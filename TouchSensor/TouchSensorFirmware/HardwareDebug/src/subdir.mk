################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables
C_SRCS += \
../src/CTSUa.c \
../src/Registers.c \
../src/TouchSensorFirmware.c 

COMPILER_OBJS += \
src/CTSUa.obj \
src/Registers.obj \
src/TouchSensorFirmware.obj 

C_DEPS += \
src/CTSUa.d \
src/Registers.d \
src/TouchSensorFirmware.d 

# Each subdirectory must supply rules for building sources it contributes
src/%.obj: ../src/%.c src/Compiler.sub
	@echo 'Scanning and building file: $<'
	@echo 'Invoking: Scanner and Compiler'
	ccrx -MM -MP -output=dep="$(@:%.obj=%.d)"  -MT="$(@:%.d=%.obj)"  -MT="$(@:%.obj=%.d)" -isa=rxv1 -nofpu -include="C:\Program Files (x86)\Renesas\RX\2_7_0\include","F:\Git\DigitalViolin\TouchSensor\TouchSensorFirmware\src\smc_gen\r_bsp","F:\Git\DigitalViolin\TouchSensor\TouchSensorFirmware\src\smc_gen\r_config","F:\Git\DigitalViolin\TouchSensor\TouchSensorFirmware\src\smc_gen\Config_SCI6","F:\Git\DigitalViolin\TouchSensor\TouchSensorFirmware\src\smc_gen\Config_CMT0","F:\Git\DigitalViolin\TouchSensor\TouchSensorFirmware\src\smc_gen\general","F:\Git\DigitalViolin\TouchSensor\TouchSensorFirmware\src\smc_gen\r_pincfg" -lang=c99 -nomessage -debug -optimize=0 -nologo  "$<"
	ccrx -isa=rxv1 -nofpu -include="C:\Program Files (x86)\Renesas\RX\2_7_0\include","F:\Git\DigitalViolin\TouchSensor\TouchSensorFirmware\src\smc_gen\r_bsp","F:\Git\DigitalViolin\TouchSensor\TouchSensorFirmware\src\smc_gen\r_config","F:\Git\DigitalViolin\TouchSensor\TouchSensorFirmware\src\smc_gen\Config_SCI6","F:\Git\DigitalViolin\TouchSensor\TouchSensorFirmware\src\smc_gen\Config_CMT0","F:\Git\DigitalViolin\TouchSensor\TouchSensorFirmware\src\smc_gen\general","F:\Git\DigitalViolin\TouchSensor\TouchSensorFirmware\src\smc_gen\r_pincfg" -lang=c99 -nomessage -output=obj -obj_path="src" -debug -optimize=0 -nologo "$<"
	@echo 'Finished Scanning and building: $<'
	@echo.

