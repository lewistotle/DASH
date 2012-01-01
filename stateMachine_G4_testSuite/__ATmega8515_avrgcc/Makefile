CC				= avr-gcc
CFLAGS			= -I. -I../../ -I../../HAL -Wall -g2 -gstabs -O0 -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -mmcu=atmega8515 -D__AVR__ -D__ATmega8515__ -DF_CPU=1000000UL -MMD -MP -MF"$(@:%.d=%.d)" -MT"$(@:%.d=%.d)" -c 
OUT_DIR			= .
OBJS			= main.d projectSpecificHardwareInterface_ATmega8515.d sm_test_calculator.d sm_test_fourLevelTest.d sm_test_timeBomb.d sm_test_toaster.d stateMachine_G4.d stateMachine_G4_eventQueue.d hal_UART.d
OUT_OBJS		= $(addprefix $(OUT_DIR)/,$(OBJS))


dash_atmega8515	: $(OUT_OBJS)
					@echo 'Building target: $@'
					@echo 'Invoking: AVR C Linker'
					avr-gcc -Wl,-Map,dash_atmega8515_map.txt -mmcu=atmega8515 -o"dash_atmega8515.elf" $(OBJS) $(USER_OBJS) $(LIBS) -lm
					@echo 'Finished building target: $@'
					@echo ' '

$(OUT_DIR)/hal_UART.d : ../../HAL/hal_UART.c ../../HAL/*.h
					$(CC) $(CFLAGS) -c $< -o $@

$(OUT_DIR)/stateMachine_G4.d : ../../stateMachine_G4.c ../../HAL/*.h 
					$(CC) $(CFLAGS) -c $< -o $@

$(OUT_DIR)/stateMachine_G4_eventQueue.d : ../../stateMachine_G4_eventQueue.c ../../HAL/*.h
					$(CC) $(CFLAGS) -c $< -o $@

$(OUT_DIR)/%.d	: ../%.c ../../HAL/*.h
					@echo 'Building file: $<'
					@echo 'Invoking: AVR Compiler'
					avr-gcc -I. -I../../ -I../../HAL -Wall -g2 -gstabs -O0 -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -mmcu=atmega8515 -D__AVR__ -D__ATmega8515__ -DF_CPU=1000000UL -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -c -o"$@" "$<"
					@echo 'Finished building: $<'
					@echo ' '

clean			:
					rm -rf dash_linux $(OUT_DIR)/*.d $(OUT_DIR)/*.elf $(OUT_DIR)/*.hex $(OUT_DIR)/*.lss $(OUT_DIR)/*_map*

