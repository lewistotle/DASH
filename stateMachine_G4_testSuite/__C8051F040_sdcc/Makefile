OUTFILE			= dash_sdcc
CC			= sdcc
CFLAGS			= -c -D__c8051f040__ -pedantic --model-large -I. -I../../ -I../../HAL
OUT_DIR			= .
OBJS			= main.rel stateMachine_G4.rel stateMachine_G4_eventQueue.rel

OUT_OBJS		= $(addprefix $(OUT_DIR)/,$(OBJS))


$(OUTFILE)		: $(OUT_OBJS)
					$(CC) --model-large --xram-size 4096 -MM --xram-loc 0x100  *.rel -o $@
					cp dash_sdcc /home/dolphinage/public_html/dash/

$(OUT_DIR)/hal_UART.rel : ../../HAL/hal_UART.c ../../HAL/*.h
					$(CC) $(CFLAGS) -c $< -o $@

$(OUT_DIR)/stateMachine_G4.rel : ../../stateMachine_G4.c ../../HAL/*.h 
					$(CC) $(CFLAGS) -c $< -o $@

$(OUT_DIR)/stateMachine_G4_eventQueue.rel : ../../stateMachine_G4_eventQueue.c ../../HAL/*.h
					$(CC) $(CFLAGS) -c $< -o $@

$(OUT_DIR)/main.rel	: ../main.c ../projectSpecificHardwareInterface_C8051F040.c ../../HAL/*.h
					$(CC) $(CFLAGS) -c $< -o $@

$(OUT_DIR)/%.rel	: ../%.c ../../HAL/*.h
					$(CC) $(CFLAGS) -c $< -o $@

clean			:
					rm -rf $(OUTFILE) $(OUT_DIR)/*.rel $(OUT_DIR)/*.asm $(OUT_DIR)/*.lst $(OUT_DIR)/*.sym $(OUT_DIR)/dash_sdcc.* $(OUT_DIR)/*.rst

