################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/main_C8051F040.c \
../src/sm_test_machine_a.c 

C_DEPS += \
./src/main_C8051F040.d \
./src/sm_test_machine_a.d 

RELS += \
./src/main_C8051F040.rel \
./src/sm_test_machine_a.rel 


# Each subdirectory must supply rules for building sources it contributes
src/%.rel: ../src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: SDCC Compiler'
	sdcc -c -I"..\..\..\StateMachines" -I"..\..\..\_SoftwareLibraries\SDCC\include" --model-large -o"$@" "$<" && \
	echo -n $(@:%.rel=%.d) $(dir $@) > $(@:%.rel=%.d) && \
	sdcc -c -MM -I"..\..\..\StateMachines" -I"..\..\..\_SoftwareLibraries\SDCC\include" --model-large  "$<" >> $(@:%.rel=%.d)
	@echo 'Finished building: $<'
	@echo ' '


