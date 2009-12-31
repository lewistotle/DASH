################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/StateMachine_G4_eventQueue.c \
D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c 

C_DEPS += \
./_SoftwareLibraries/stateMachines_G4/StateMachine_G4_eventQueue.d \
./_SoftwareLibraries/stateMachines_G4/stateMachine_G4.d 

RELS += \
./_SoftwareLibraries/stateMachines_G4/StateMachine_G4_eventQueue.rel \
./_SoftwareLibraries/stateMachines_G4/stateMachine_G4.rel 


# Each subdirectory must supply rules for building sources it contributes
_SoftwareLibraries/stateMachines_G4/StateMachine_G4_eventQueue.rel: D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/StateMachine_G4_eventQueue.c
	@echo 'Building file: $<'
	@echo 'Invoking: SDCC Compiler'
	sdcc -c -D__c8051f040__ -I"..\..\..\StateMachines" -I"..\..\..\_SoftwareLibraries\SDCC\include" -I"..\..\..\HardwareAbstractionLayer" -I"..\..\..\Common" -pedantic --model-large -o"$@" "$<" && \
	echo -n $(@:%.rel=%.d) $(dir $@) > $(@:%.rel=%.d) && \
	sdcc -c -MM -D__c8051f040__ -I"..\..\..\StateMachines" -I"..\..\..\_SoftwareLibraries\SDCC\include" -I"..\..\..\HardwareAbstractionLayer" -I"..\..\..\Common" -pedantic --model-large  "$<" >> $(@:%.rel=%.d)
	@echo 'Finished building: $<'
	@echo ' '

_SoftwareLibraries/stateMachines_G4/stateMachine_G4.rel: D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c
	@echo 'Building file: $<'
	@echo 'Invoking: SDCC Compiler'
	sdcc -c -D__c8051f040__ -I"..\..\..\StateMachines" -I"..\..\..\_SoftwareLibraries\SDCC\include" -I"..\..\..\HardwareAbstractionLayer" -I"..\..\..\Common" -pedantic --model-large -o"$@" "$<" && \
	echo -n $(@:%.rel=%.d) $(dir $@) > $(@:%.rel=%.d) && \
	sdcc -c -MM -D__c8051f040__ -I"..\..\..\StateMachines" -I"..\..\..\_SoftwareLibraries\SDCC\include" -I"..\..\..\HardwareAbstractionLayer" -I"..\..\..\Common" -pedantic --model-large  "$<" >> $(@:%.rel=%.d)
	@echo 'Finished building: $<'
	@echo ' '


