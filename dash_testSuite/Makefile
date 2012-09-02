DIRS	= __arm_linux __ATmega16_avrgcc __ATmega8515_avrgcc __AVR_winavr __C8051F040_sdcc __linux __windows_minGW

all :
	-for d in $(DIRS); do (cd $$d; make ); done

clean :
	echo cleaning up in .
	-for d in $(DIRS); do (cd $$d; make clean ); done
