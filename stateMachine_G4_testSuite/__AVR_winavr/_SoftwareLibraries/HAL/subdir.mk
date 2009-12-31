################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
D:/EiqEnergy/Projects/Software/_SoftwareLibraries/HardwareAbstractionLayer/cpu_specific/pwm_C8051F040.c \
D:/EiqEnergy/Projects/Software/_SoftwareLibraries/Common/task_UART.c 

OBJS += \
./_SoftwareLibraries/HAL/pwm_C8051F040.o \
./_SoftwareLibraries/HAL/task_UART.o 

C_DEPS += \
./_SoftwareLibraries/HAL/pwm_C8051F040.d \
./_SoftwareLibraries/HAL/task_UART.d 


# Each subdirectory must supply rules for building sources it contributes
_SoftwareLibraries/HAL/pwm_C8051F040.o: D:/EiqEnergy/Projects/Software/_SoftwareLibraries/HardwareAbstractionLayer/cpu_specific/pwm_C8051F040.c
	@echo 'Building file: $<'
	@echo 'Invoking: AVR Compiler'
	avr-gcc -I"../../" -Wall -g2 -gstabs -O0 -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -mmcu=atmega16 -DF_CPU=1000000UL -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -c -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

_SoftwareLibraries/HAL/task_UART.o: D:/EiqEnergy/Projects/Software/_SoftwareLibraries/Common/task_UART.c
	@echo 'Building file: $<'
	@echo 'Invoking: AVR Compiler'
	avr-gcc -I"../../" -Wall -g2 -gstabs -O0 -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -mmcu=atmega16 -DF_CPU=1000000UL -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -c -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


