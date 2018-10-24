################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables
C_SRCS += \
../src/smc_gen/r_bsp/mcu/rx130/cpu.c \
../src/smc_gen/r_bsp/mcu/rx130/locking.c \
../src/smc_gen/r_bsp/mcu/rx130/mcu_clocks.c \
../src/smc_gen/r_bsp/mcu/rx130/mcu_init.c \
../src/smc_gen/r_bsp/mcu/rx130/mcu_interrupts.c \
../src/smc_gen/r_bsp/mcu/rx130/mcu_locks.c 

COMPILER_OBJS += \
src/smc_gen/r_bsp/mcu/rx130/cpu.obj \
src/smc_gen/r_bsp/mcu/rx130/locking.obj \
src/smc_gen/r_bsp/mcu/rx130/mcu_clocks.obj \
src/smc_gen/r_bsp/mcu/rx130/mcu_init.obj \
src/smc_gen/r_bsp/mcu/rx130/mcu_interrupts.obj \
src/smc_gen/r_bsp/mcu/rx130/mcu_locks.obj 

C_DEPS += \
src/smc_gen/r_bsp/mcu/rx130/cpu.d \
src/smc_gen/r_bsp/mcu/rx130/locking.d \
src/smc_gen/r_bsp/mcu/rx130/mcu_clocks.d \
src/smc_gen/r_bsp/mcu/rx130/mcu_init.d \
src/smc_gen/r_bsp/mcu/rx130/mcu_interrupts.d \
src/smc_gen/r_bsp/mcu/rx130/mcu_locks.d 

# Each subdirectory must supply rules for building sources it contributes
src/smc_gen/r_bsp/mcu/rx130/%.obj: ../src/smc_gen/r_bsp/mcu/rx130/%.c src/smc_gen/r_bsp/mcu/rx130/Compiler.sub
	@echo 'Scanning and building file: $<'
	@echo 'Invoking: Scanner and Compiler'
	ccrx -MM -MP -output=dep="$(@:%.obj=%.d)"  -MT="$(@:%.d=%.obj)"  -MT="$(@:%.obj=%.d)" -isa=rxv1 -nofpu -include="C:\Program Files (x86)\Renesas\RX\2_7_0\include","F:\Git\DigitalViolin\TouchSensor\TouchSensorFirmware\src\smc_gen\r_bsp","F:\Git\DigitalViolin\TouchSensor\TouchSensorFirmware\src\smc_gen\r_config","F:\Git\DigitalViolin\TouchSensor\TouchSensorFirmware\src\smc_gen\Config_SCI6","F:\Git\DigitalViolin\TouchSensor\TouchSensorFirmware\src\smc_gen\Config_CMT0","F:\Git\DigitalViolin\TouchSensor\TouchSensorFirmware\src\smc_gen\general","F:\Git\DigitalViolin\TouchSensor\TouchSensorFirmware\src\smc_gen\r_pincfg" -lang=c99 -nomessage -debug -optimize=0 -nologo  "$<"
	ccrx -isa=rxv1 -nofpu -include="C:\Program Files (x86)\Renesas\RX\2_7_0\include","F:\Git\DigitalViolin\TouchSensor\TouchSensorFirmware\src\smc_gen\r_bsp","F:\Git\DigitalViolin\TouchSensor\TouchSensorFirmware\src\smc_gen\r_config","F:\Git\DigitalViolin\TouchSensor\TouchSensorFirmware\src\smc_gen\Config_SCI6","F:\Git\DigitalViolin\TouchSensor\TouchSensorFirmware\src\smc_gen\Config_CMT0","F:\Git\DigitalViolin\TouchSensor\TouchSensorFirmware\src\smc_gen\general","F:\Git\DigitalViolin\TouchSensor\TouchSensorFirmware\src\smc_gen\r_pincfg" -lang=c99 -nomessage -output=obj -obj_path="src/smc_gen/r_bsp/mcu/rx130" -debug -optimize=0 -nologo "$<"
	@echo 'Finished Scanning and building: $<'
	@echo.

