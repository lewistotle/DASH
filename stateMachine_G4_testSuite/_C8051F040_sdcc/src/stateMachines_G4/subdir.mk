################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c 

C_DEPS += \
./src/stateMachines_G4/stateMachine_G4.d 

RELS += \
./src/stateMachines_G4/stateMachine_G4.rel 


# Each subdirectory must supply rules for building sources it contributes
src/stateMachines_G4/stateMachine_G4.rel: D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c
	@echo 'Building file: $<'
	@echo 'Invoking: SDCC Compiler'
	sdcc -c -I"..\..\..\StateMachines" -I"..\..\..\_SoftwareLibraries\SDCC\include" --model-large -o"$@" "$<" && \
	echo -n $(@:%.rel=%.d) $(dir $@) > $(@:%.rel=%.d) && \
	sdcc -c -MM -I"..\..\..\StateMachines" -I"..\..\..\_SoftwareLibraries\SDCC\include" --model-large  "$<" >> $(@:%.rel=%.d)
	@echo 'Finished building: $<'
	@echo ' '


