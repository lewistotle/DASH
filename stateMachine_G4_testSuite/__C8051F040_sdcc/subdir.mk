################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../main.c \
../sm_test_calculator.c \
../sm_test_timeBomb.c \
../sm_test_toaster.c 

C_DEPS += \
./main.d \
./sm_test_calculator.d \
./sm_test_timeBomb.d \
./sm_test_toaster.d 

RELS += \
./main.rel \
./sm_test_calculator.rel \
./sm_test_timeBomb.rel \
./sm_test_toaster.rel 


# Each subdirectory must supply rules for building sources it contributes
%.rel: ../%.c
	@echo 'Building file: $<'
	@echo 'Invoking: SDCC Compiler'
	sdcc -c -D__c8051f040__ -I"..\..\..\StateMachines" -I"..\..\..\_SoftwareLibraries\SDCC\include" -I"..\..\..\HardwareAbstractionLayer" -I"..\..\..\Common" -pedantic --model-large -o"$@" "$<" && \
	echo -n $(@:%.rel=%.d) $(dir $@) > $(@:%.rel=%.d) && \
	sdcc -c -MM -D__c8051f040__ -I"..\..\..\StateMachines" -I"..\..\..\_SoftwareLibraries\SDCC\include" -I"..\..\..\HardwareAbstractionLayer" -I"..\..\..\Common" -pedantic --model-large  "$<" >> $(@:%.rel=%.d)
	@echo 'Finished building: $<'
	@echo ' '


