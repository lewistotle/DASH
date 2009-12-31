################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
ASM_SRCS += \
../__builds/_C8051F040_sdcc/_SoftwareLibraries/stateMachines_G4/StateMachine_G4_eventQueue.asm \
../__builds/_C8051F040_sdcc/_SoftwareLibraries/stateMachines_G4/stateMachine_G4.asm 

REL_SRCS += \
../__builds/_C8051F040_sdcc/_SoftwareLibraries/stateMachines_G4/StateMachine_G4_eventQueue.rel \
../__builds/_C8051F040_sdcc/_SoftwareLibraries/stateMachines_G4/stateMachine_G4.rel 

RELS += \
./__builds/_C8051F040_sdcc/_SoftwareLibraries/stateMachines_G4/StateMachine_G4_eventQueue.rel \
./__builds/_C8051F040_sdcc/_SoftwareLibraries/stateMachines_G4/stateMachine_G4.rel 


# Each subdirectory must supply rules for building sources it contributes
__builds/_C8051F040_sdcc/_SoftwareLibraries/stateMachines_G4/%.rel: ../__builds/_C8051F040_sdcc/_SoftwareLibraries/stateMachines_G4/%.asm
	@echo 'Building file: $<'
	@echo 'Invoking: SDCC Assembler'
	as51  -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


