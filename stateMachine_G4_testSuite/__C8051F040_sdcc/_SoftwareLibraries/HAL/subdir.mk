################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
D:/EiqEnergy/Projects/Software/_SoftwareLibraries/HardwareAbstractionLayer/cpu_specific/pwm_C8051F040.c \
D:/EiqEnergy/Projects/Software/_SoftwareLibraries/Common/task_UART.c 

C_DEPS += \
./_SoftwareLibraries/HAL/pwm_C8051F040.d \
./_SoftwareLibraries/HAL/task_UART.d 

RELS += \
./_SoftwareLibraries/HAL/pwm_C8051F040.rel \
./_SoftwareLibraries/HAL/task_UART.rel 


# Each subdirectory must supply rules for building sources it contributes
_SoftwareLibraries/HAL/pwm_C8051F040.rel: D:/EiqEnergy/Projects/Software/_SoftwareLibraries/HardwareAbstractionLayer/cpu_specific/pwm_C8051F040.c
	@echo 'Building file: $<'
	@echo 'Invoking: SDCC Compiler'
	sdcc -c -D__c8051f040__ -I"..\..\..\StateMachines" -I"..\..\..\_SoftwareLibraries\SDCC\include" -I"..\..\..\HardwareAbstractionLayer" -I"..\..\..\Common" -pedantic --model-large -o"$@" "$<" && \
	echo -n $(@:%.rel=%.d) $(dir $@) > $(@:%.rel=%.d) && \
	sdcc -c -MM -D__c8051f040__ -I"..\..\..\StateMachines" -I"..\..\..\_SoftwareLibraries\SDCC\include" -I"..\..\..\HardwareAbstractionLayer" -I"..\..\..\Common" -pedantic --model-large  "$<" >> $(@:%.rel=%.d)
	@echo 'Finished building: $<'
	@echo ' '

_SoftwareLibraries/HAL/task_UART.rel: D:/EiqEnergy/Projects/Software/_SoftwareLibraries/Common/task_UART.c
	@echo 'Building file: $<'
	@echo 'Invoking: SDCC Compiler'
	sdcc -c -D__c8051f040__ -I"..\..\..\StateMachines" -I"..\..\..\_SoftwareLibraries\SDCC\include" -I"..\..\..\HardwareAbstractionLayer" -I"..\..\..\Common" -pedantic --model-large -o"$@" "$<" && \
	echo -n $(@:%.rel=%.d) $(dir $@) > $(@:%.rel=%.d) && \
	sdcc -c -MM -D__c8051f040__ -I"..\..\..\StateMachines" -I"..\..\..\_SoftwareLibraries\SDCC\include" -I"..\..\..\HardwareAbstractionLayer" -I"..\..\..\Common" -pedantic --model-large  "$<" >> $(@:%.rel=%.d)
	@echo 'Finished building: $<'
	@echo ' '


