################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/StateMachine_G4_eventQueue.c \
D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c 

OBJS += \
./_SoftwareLibraries/stateMachines_G4/StateMachine_G4_eventQueue.o \
./_SoftwareLibraries/stateMachines_G4/stateMachine_G4.o 

C_DEPS += \
./_SoftwareLibraries/stateMachines_G4/StateMachine_G4_eventQueue.d \
./_SoftwareLibraries/stateMachines_G4/stateMachine_G4.d 


# Each subdirectory must supply rules for building sources it contributes
_SoftwareLibraries/stateMachines_G4/StateMachine_G4_eventQueue.o: D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/StateMachine_G4_eventQueue.c
	@echo 'Building file: $<'
	@echo 'Invoking: AVR Compiler'
	avr-gcc -I"../../" -Wall -g2 -gstabs -O0 -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -mmcu=atmega16 -DF_CPU=1000000UL -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -c -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

_SoftwareLibraries/stateMachines_G4/stateMachine_G4.o: D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c
	@echo 'Building file: $<'
	@echo 'Invoking: AVR Compiler'
	avr-gcc -I"../../" -Wall -g2 -gstabs -O0 -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -mmcu=atmega16 -DF_CPU=1000000UL -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -c -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


