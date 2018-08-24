################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include makefile.init

RM := rm -rf *.sni *.dbg *.lst *.lis *.lpp *.map *.x *.lbp *.bls *.libelf *.rel *.lbk *.abs  *.obj *.p *.pp *.d *.asm 1st/*.obj 1st/*.d 1st/*.asm 1st/*.abs

# All of the sources participating in the build are defined here
-include sources.mk
-include src/smc_gen/r_bsp/board/generic_rx130/subdir.mk
-include src/smc_gen/r_bsp/mcu/rx130/subdir.mk
-include src/smc_gen/r_pincfg/subdir.mk
-include src/smc_gen/general/subdir.mk
-include src/subdir.mk
-include src/smc_gen/Config_CMT0/subdir.mk
-include src/smc_gen/Config_SCI6/subdir.mk
-include src/smc_gen/r_bsp/mcu/all/subdir.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif 
ifneq ($(strip $(C_UPPER_DEPS)),)
-include $(C_UPPER_DEPS)
endif 
ifneq ($(strip $(CPP_DEPS)),)
-include $(CPP_DEPS)
endif 
ifneq ($(strip $(CXX_DEPS)),)
-include $(CXX_DEPS)
endif 
ifneq ($(strip $(CC_DEPS)),)
-include $(CC_DEPS)
endif 
ifneq ($(strip $(C++_DEPS)),)
-include $(C++_DEPS)
endif 
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif 
ifneq ($(strip $(ASM_DEPS)),)
-include $(ASM_DEPS)
endif 
ifneq ($(strip $(JMP_DEPS)),)
-include $(JMP_DEPS)
endif 
ifneq ($(strip $(SRC_DEPS)),)
-include $(SRC_DEPS)
endif 
ifneq ($(strip $(PP_DEPS)),)
-include $(PP_DEPS)
endif 
ifneq ($(strip $(P_DEPS)),)
-include $(P_DEPS)
endif 
ifneq ($(strip $(FSY_DEPS)),)
-include $(FSY_DEPS)
endif 
endif

ifneq ($(strip $(SRC_UPPER_SRCS)),)
ALL_ASMS += $(SRC_UPPER_SRCS) 
endif
ifneq ($(strip $(SRC_SRCS)),)
ALL_ASMS += $(SRC_SRCS) 
endif
ifneq ($(strip $(S_UPPER_SRCS)),)
ALL_ASMS += $(S_UPPER_SRCS) 
endif
ifneq ($(strip $(S_SRCS)),)
ALL_ASMS += $(S_SRCS) 
endif


-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables
LINKER_OUTPUT_OUTPUTS += \
TouchSensorFirmware.abs \
TouchSensorFirmware.x

LIBRARY_GENERATOR_OUTPUTTYPE_OUTPUTS += \
TouchSensorFirmware.lib

OBJS := \
$(COMPILER_OBJS) \
$(INDIVIDUAL_COMPILER_OBJS) \
$(ASSEMBLER_OBJS) \
$(CUSTOM_OBJS)

# All Target
all: $(LINKER_OUTPUT_OUTPUTS) 
	@echo 'Build complete.'

TouchSensorFirmware.abs: $(OBJS)  $(ALL_ASMS) $(LIBRARY_GENERATOR_OUTPUTTYPE_OUTPUTS) 
	@echo 'Invoking: Linker'
	@echo 'Building target:'
	rlink -noprelink -subcommand="LinkerSubCommand.tmp"  -output="TouchSensorFirmware.abs" -form=absolute -nomessage -vect=_undefined_interrupt_source_isr -list=TouchSensorFirmware.map -nooptimize -rom=D=R,D_1=R_1,D_2=R_2 -nologo
	@echo 'Finished building target:'
	@echo.


TouchSensorFirmware.lib: 
	@echo 'Invoking: Library Generator'
	lbgrx -isa=rxv1 -nofpu -lang=c99 -head=runtime,stdio,stdlib,string,new -output="TouchSensorFirmware.lib" -nologo
	@echo 'Finished building:'
	@echo.

TouchSensorFirmware.x: TouchSensorFirmware.abs
		-C:\Renesas\e2_studio\eclipse\/../\Utilities\\ccrx\renesas_cc_converter.exe TouchSensorFirmware.abs TouchSensorFirmware.x

# Other Targets
clean:
	-$(RM) $(LINKER_OUTPUT_OUTPUTS) $(LIBRARY_GENERATOR_OUTPUTTYPE_OUTPUTS)
	-rm -rf src/smc_gen/r_bsp/board/generic_rx130/*.obj src/smc_gen/r_bsp/board/generic_rx130/*.d src/smc_gen/r_bsp/board/generic_rx130/*.asm src/smc_gen/r_bsp/board/generic_rx130/*.p src/smc_gen/r_bsp/board/generic_rx130/*.src src/smc_gen/r_bsp/board/generic_rx130/*.jmp src/smc_gen/r_bsp/board/generic_rx130/*.lst src/smc_gen/r_bsp/board/generic_rx130/*.prn 
	-rm -rf src/smc_gen/r_bsp/mcu/rx130/*.obj src/smc_gen/r_bsp/mcu/rx130/*.d src/smc_gen/r_bsp/mcu/rx130/*.asm src/smc_gen/r_bsp/mcu/rx130/*.p src/smc_gen/r_bsp/mcu/rx130/*.src src/smc_gen/r_bsp/mcu/rx130/*.jmp src/smc_gen/r_bsp/mcu/rx130/*.lst src/smc_gen/r_bsp/mcu/rx130/*.prn 
	-rm -rf src/smc_gen/r_pincfg/*.obj src/smc_gen/r_pincfg/*.d src/smc_gen/r_pincfg/*.asm src/smc_gen/r_pincfg/*.p src/smc_gen/r_pincfg/*.src src/smc_gen/r_pincfg/*.jmp src/smc_gen/r_pincfg/*.lst src/smc_gen/r_pincfg/*.prn 
	-rm -rf src/smc_gen/general/*.obj src/smc_gen/general/*.d src/smc_gen/general/*.asm src/smc_gen/general/*.p src/smc_gen/general/*.src src/smc_gen/general/*.jmp src/smc_gen/general/*.lst src/smc_gen/general/*.prn 
	-rm -rf src/*.obj src/*.d src/*.asm src/*.p src/*.src src/*.jmp src/*.lst src/*.prn 
	-rm -rf src/smc_gen/Config_CMT0/*.obj src/smc_gen/Config_CMT0/*.d src/smc_gen/Config_CMT0/*.asm src/smc_gen/Config_CMT0/*.p src/smc_gen/Config_CMT0/*.src src/smc_gen/Config_CMT0/*.jmp src/smc_gen/Config_CMT0/*.lst src/smc_gen/Config_CMT0/*.prn 
	-rm -rf src/smc_gen/Config_SCI6/*.obj src/smc_gen/Config_SCI6/*.d src/smc_gen/Config_SCI6/*.asm src/smc_gen/Config_SCI6/*.p src/smc_gen/Config_SCI6/*.src src/smc_gen/Config_SCI6/*.jmp src/smc_gen/Config_SCI6/*.lst src/smc_gen/Config_SCI6/*.prn 
	-rm -rf src/smc_gen/r_bsp/mcu/all/*.obj src/smc_gen/r_bsp/mcu/all/*.d src/smc_gen/r_bsp/mcu/all/*.asm src/smc_gen/r_bsp/mcu/all/*.p src/smc_gen/r_bsp/mcu/all/*.src src/smc_gen/r_bsp/mcu/all/*.jmp src/smc_gen/r_bsp/mcu/all/*.lst src/smc_gen/r_bsp/mcu/all/*.prn 
	@echo
	@echo 'Clean complete.'

.PHONY: all clean 
-include ../makefile.targets