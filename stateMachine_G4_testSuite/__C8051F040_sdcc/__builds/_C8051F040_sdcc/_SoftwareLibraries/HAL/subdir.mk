################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
ASM_SRCS += \
../__builds/_C8051F040_sdcc/_SoftwareLibraries/HAL/pwm_C8051F040.asm \
../__builds/_C8051F040_sdcc/_SoftwareLibraries/HAL/task_UART.asm 

REL_SRCS += \
../__builds/_C8051F040_sdcc/_SoftwareLibraries/HAL/pwm_C8051F040.rel \
../__builds/_C8051F040_sdcc/_SoftwareLibraries/HAL/task_UART.rel 

RELS += \
./__builds/_C8051F040_sdcc/_SoftwareLibraries/HAL/pwm_C8051F040.rel \
./__builds/_C8051F040_sdcc/_SoftwareLibraries/HAL/task_UART.rel 


# Each subdirectory must supply rules for building sources it contributes
__builds/_C8051F040_sdcc/_SoftwareLibraries/HAL/%.rel: ../__builds/_C8051F040_sdcc/_SoftwareLibraries/HAL/%.asm
	@echo 'Building file: $<'
	@echo 'Invoking: SDCC Assembler'
	as51  -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


