################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
ASM_SRCS += \
../__builds/_C8051F040_sdcc/sm_test_calculator.asm \
../__builds/_C8051F040_sdcc/sm_test_timeBomb.asm \
../__builds/_C8051F040_sdcc/sm_test_toaster.asm 

REL_SRCS += \
../__builds/_C8051F040_sdcc/sm_test_calculator.rel \
../__builds/_C8051F040_sdcc/sm_test_timeBomb.rel \
../__builds/_C8051F040_sdcc/sm_test_toaster.rel 

RELS += \
./__builds/_C8051F040_sdcc/sm_test_calculator.rel \
./__builds/_C8051F040_sdcc/sm_test_timeBomb.rel \
./__builds/_C8051F040_sdcc/sm_test_toaster.rel 


# Each subdirectory must supply rules for building sources it contributes
__builds/_C8051F040_sdcc/%.rel: ../__builds/_C8051F040_sdcc/%.asm
	@echo 'Building file: $<'
	@echo 'Invoking: SDCC Assembler'
	as51  -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


