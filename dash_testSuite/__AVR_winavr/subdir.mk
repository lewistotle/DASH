################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../main.c \
../sm_test_calculator.c \
../sm_test_timeBomb.c \
../sm_test_toaster.c 

OBJS += \
./main.o \
./sm_test_calculator.o \
./sm_test_timeBomb.o \
./sm_test_toaster.o 

C_DEPS += \
./main.d \
./sm_test_calculator.d \
./sm_test_timeBomb.d \
./sm_test_toaster.d 


# Each subdirectory must supply rules for building sources it contributes
%.o: ../%.c
	@echo 'Building file: $<'
	@echo 'Invoking: AVR Compiler'
	avr-gcc -I"../../" -Wall -g2 -gstabs -O0 -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -mmcu=atmega16 -DF_CPU=1000000UL -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -c -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


