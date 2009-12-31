;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.9.0 #5416 (Mar 22 2009) (MINGW32)
; This file was generated Wed Dec 30 18:41:46 2009
;--------------------------------------------------------
	.module main_C8051F040
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _vTimer2ISR
	.globl _addTickCounter
	.globl _IsFull
	.globl _IsEmpty
	.globl _main
	.globl _P7_7
	.globl _P7_6
	.globl _P7_5
	.globl _P7_4
	.globl _P7_3
	.globl _P7_2
	.globl _P7_1
	.globl _P7_0
	.globl _CANTEST
	.globl _CANCCE
	.globl _CANDAR
	.globl _CANIF
	.globl _CANEIE
	.globl _CANSIE
	.globl _CANIE
	.globl _CANINIT
	.globl _SPIF
	.globl _WCOL
	.globl _MODF
	.globl _RXOVRN
	.globl _NSSMD1
	.globl _NSSMD0
	.globl _TXBMT
	.globl _SPIEN
	.globl _P6_7
	.globl _P6_6
	.globl _P6_5
	.globl _P6_4
	.globl _P6_3
	.globl _P6_2
	.globl _P6_1
	.globl _P6_0
	.globl _AD2EN
	.globl _AD2TM
	.globl _AD2INT
	.globl _AD2BUSY
	.globl _AD2CM2
	.globl _AD2CM1
	.globl _AD2CM0
	.globl _AD2WINT
	.globl _AD0EN
	.globl _AD0TM
	.globl _AD0INT
	.globl _AD0BUSY
	.globl _AD0CM1
	.globl _AD0CM0
	.globl _AD0WINT
	.globl _AD0LJST
	.globl _P5_7
	.globl _P5_6
	.globl _P5_5
	.globl _P5_4
	.globl _P5_3
	.globl _P5_2
	.globl _P5_1
	.globl _P5_0
	.globl _CF
	.globl _CR
	.globl _CCF5
	.globl _CCF4
	.globl _CCF3
	.globl _CCF2
	.globl _CCF1
	.globl _CCF0
	.globl _CY
	.globl _AC
	.globl _F0
	.globl _RS1
	.globl _RS0
	.globl _OV
	.globl _F1
	.globl _P
	.globl _P4_7
	.globl _P4_6
	.globl _P4_5
	.globl _P4_4
	.globl _P4_3
	.globl _P4_2
	.globl _P4_1
	.globl _P4_0
	.globl _TF4
	.globl _EXF4
	.globl _EXEN4
	.globl _TR4
	.globl _CT4
	.globl _CPRL4
	.globl _TF3
	.globl _EXF3
	.globl _EXEN3
	.globl _TR3
	.globl _CT3
	.globl _CPRL3
	.globl _TF2
	.globl _EXF2
	.globl _EXEN2
	.globl _TR2
	.globl _CT2
	.globl _CPRL2
	.globl _CANBOFF
	.globl _CANEWARN
	.globl _CANEPASS
	.globl _CANRXOK
	.globl _CANTXOK
	.globl _BUSY
	.globl _ENSMB
	.globl _STA
	.globl _STO
	.globl _SI
	.globl _AA
	.globl _SMBFTE
	.globl _SMBTOE
	.globl _PT2
	.globl _PS
	.globl _PS0
	.globl _PT1
	.globl _PX1
	.globl _PT0
	.globl _PX0
	.globl _P3_7
	.globl _P3_6
	.globl _P3_5
	.globl _P3_4
	.globl _P3_3
	.globl _P3_2
	.globl _P3_1
	.globl _P3_0
	.globl _EA
	.globl _ET2
	.globl _ES
	.globl _ES0
	.globl _ET1
	.globl _EX1
	.globl _ET0
	.globl _EX0
	.globl _P2_7
	.globl _P2_6
	.globl _P2_5
	.globl _P2_4
	.globl _P2_3
	.globl _P2_2
	.globl _P2_1
	.globl _P2_0
	.globl _S1MODE
	.globl _MCE1
	.globl _REN1
	.globl _TB81
	.globl _RB81
	.globl _TI1
	.globl _RI1
	.globl _SM00
	.globl _SM10
	.globl _SM20
	.globl _REN
	.globl _REN0
	.globl _TB80
	.globl _RB80
	.globl _TI
	.globl _TI0
	.globl _RI
	.globl _RI0
	.globl _P1_7
	.globl _P1_6
	.globl _P1_5
	.globl _P1_4
	.globl _P1_3
	.globl _P1_2
	.globl _P1_1
	.globl _P1_0
	.globl _CP2EN
	.globl _CP2OUT
	.globl _CP2RIF
	.globl _CP2FIF
	.globl _CP2HYP1
	.globl _CP2HYP0
	.globl _CP2HYN1
	.globl _CP2HYN0
	.globl _CP1EN
	.globl _CP1OUT
	.globl _CP1RIF
	.globl _CP1FIF
	.globl _CP1HYP1
	.globl _CP1HYP0
	.globl _CP1HYN1
	.globl _CP1HYN0
	.globl _CP0EN
	.globl _CP0OUT
	.globl _CP0RIF
	.globl _CP0FIF
	.globl _CP0HYP1
	.globl _CP0HYP0
	.globl _CP0HYN1
	.globl _CP0HYN0
	.globl _TF1
	.globl _TR1
	.globl _TF0
	.globl _TR0
	.globl _IE1
	.globl _IT1
	.globl _IE0
	.globl _IT0
	.globl _P0_7
	.globl _P0_6
	.globl _P0_5
	.globl _P0_4
	.globl _P0_3
	.globl _P0_2
	.globl _P0_1
	.globl _P0_0
	.globl _P7
	.globl _P6
	.globl _XBR3
	.globl _XBR2
	.globl _XBR1
	.globl _XBR0
	.globl _P5
	.globl _P4
	.globl _FLACL
	.globl _P3MDIN
	.globl _P2MDIN
	.globl _P1MDIN
	.globl _P3MDOUT
	.globl _P2MDOUT
	.globl _P1MDOUT
	.globl _P0MDOUT
	.globl _P7MDOUT
	.globl _P6MDOUT
	.globl _P5MDOUT
	.globl _P4MDOUT
	.globl _CLKSEL
	.globl _SFRPGCN
	.globl _OSCXCN
	.globl _OSCICL
	.globl _OSCICN
	.globl _CPT2MD
	.globl _CPT2CN
	.globl _ADC2CN
	.globl _TMR4H
	.globl _TMR4L
	.globl _RCAP4H
	.globl _RCAP4L
	.globl _TMR4CF
	.globl _TMR4CN
	.globl _ADC2LT
	.globl _ADC2GT
	.globl _ADC2
	.globl _ADC2CF
	.globl _AMX2SL
	.globl _AMX2CF
	.globl _CPT1MD
	.globl _CPT1CN
	.globl _CAN0CN
	.globl _CAN0TST
	.globl _CAN0ADR
	.globl _CAN0DATH
	.globl _CAN0DATL
	.globl _DAC1CN
	.globl _DAC1H
	.globl _DAC1L
	.globl _TMR3H
	.globl _TMR3L
	.globl _RCAP3H
	.globl _RCAP3L
	.globl _TMR3CF
	.globl _TMR3CN
	.globl _CAN0STA
	.globl _SBUF1
	.globl _SCON1
	.globl _CPT0MD
	.globl _CPT0CN
	.globl _PCA0CPH1
	.globl _PCA0CPL1
	.globl _PCA0CPH0
	.globl _PCA0CPL0
	.globl _PCA0H
	.globl _PCA0L
	.globl _SPI0CN
	.globl _RSTSRC
	.globl _PCA0CPH4
	.globl _PCA0CPL4
	.globl _PCA0CPH3
	.globl _PCA0CPL3
	.globl _PCA0CPH2
	.globl _PCA0CPL2
	.globl _ADC0CN
	.globl _PCA0CPH5
	.globl _PCA0CPL5
	.globl _PCA0CPM5
	.globl _PCA0CPM4
	.globl _PCA0CPM3
	.globl _PCA0CPM2
	.globl _PCA0CPM1
	.globl _PCA0CPM0
	.globl _PCA0MD
	.globl _PCA0CN
	.globl _HVA0CN
	.globl _DAC0CN
	.globl _DAC0H
	.globl _DAC0L
	.globl _REF0CN
	.globl _SMB0CR
	.globl _TH2
	.globl _TMR2H
	.globl _TL2
	.globl _TMR2L
	.globl _RCAP2H
	.globl _RCAP2L
	.globl _TMR2CF
	.globl _TMR2CN
	.globl _ADC0LTH
	.globl _ADC0LTL
	.globl _ADC0GTH
	.globl _ADC0GTL
	.globl _SMB0ADR
	.globl _SMB0DAT
	.globl _SMB0STA
	.globl _SMB0CN
	.globl _ADC0H
	.globl _ADC0L
	.globl _AMX0PRT
	.globl _ADC0CF
	.globl _AMX0SL
	.globl _AMX0CF
	.globl _SADEN0
	.globl _FLSCL
	.globl _SADDR0
	.globl _EMI0CF
	.globl __XPAGE
	.globl _EMI0CN
	.globl _EMI0TC
	.globl _SPI0CKR
	.globl _SPI0DAT
	.globl _SPI0CFG
	.globl _SBUF
	.globl _SBUF0
	.globl _SCON
	.globl _SCON0
	.globl _SSTA0
	.globl _PSCTL
	.globl _CKCON
	.globl _TH1
	.globl _TH0
	.globl _TL1
	.globl _TL0
	.globl _TMOD
	.globl _TCON
	.globl _WDTCN
	.globl _EIP2
	.globl _EIP1
	.globl _B
	.globl _EIE2
	.globl _EIE1
	.globl _ACC
	.globl _PSW
	.globl _IP
	.globl _P3
	.globl _IE
	.globl _P2
	.globl _P1
	.globl _PCON
	.globl _SFRLAST
	.globl _SFRNEXT
	.globl _SFRPAGE
	.globl _DPH
	.globl _DPL
	.globl _SP
	.globl _P0
	.globl _tickCounterToIncrement
	.globl _task_UART_gets_projectSpecific_PARM_3
	.globl _task_UART_gets_projectSpecific_PARM_2
	.globl _task_UART_puts_projectSpecific_PARM_2
	.globl _task_UART_putchar_projectSpecific_PARM_2
	.globl _Succ_PARM_2
	.globl _UARTtempBuffer
	.globl _pwm_setDutyCycleAsPercentage_projectSpecific_PARM_2
	.globl _pwm_adjustDutyCycle_projectSpecific_PARM_2
	.globl _pwm_setDutyCycle_projectSpecific_PARM_2
	.globl _taskSwitcherTickHook
	.globl _gpio_init_projectSpecific
	.globl _pwm_init_projectSpecific
	.globl _pwm_incrementDutyCycle_projectSpecific
	.globl _pwm_decrementDutyCycle_projectSpecific
	.globl _pwm_getDutyCycle_projectSpecific
	.globl _pwm_setDutyCycle_projectSpecific
	.globl _pwm_adjustDutyCycle_projectSpecific
	.globl _pwm_setDutyCycleAsPercentage_projectSpecific
	.globl _pwm_getDutyCycleAsPercentage_projectSpecific
	.globl _task_UART_init_projectSpecific
	.globl _task_UART_core_projectSpecific
	.globl _task_UART_putchar_projectSpecific
	.globl _task_UART_puts_projectSpecific
	.globl _task_UART_getchar_projectSpecific
	.globl _task_UART_gets_projectSpecific
	.globl _task_UART_isLineReady
	.globl _UART0_Init
	.globl _UART1_Init
	.globl _putchar
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (DATA)
_P0	=	0x0080
_SP	=	0x0081
_DPL	=	0x0082
_DPH	=	0x0083
_SFRPAGE	=	0x0084
_SFRNEXT	=	0x0085
_SFRLAST	=	0x0086
_PCON	=	0x0087
_P1	=	0x0090
_P2	=	0x00a0
_IE	=	0x00a8
_P3	=	0x00b0
_IP	=	0x00b8
_PSW	=	0x00d0
_ACC	=	0x00e0
_EIE1	=	0x00e6
_EIE2	=	0x00e7
_B	=	0x00f0
_EIP1	=	0x00f6
_EIP2	=	0x00f7
_WDTCN	=	0x00ff
_TCON	=	0x0088
_TMOD	=	0x0089
_TL0	=	0x008a
_TL1	=	0x008b
_TH0	=	0x008c
_TH1	=	0x008d
_CKCON	=	0x008e
_PSCTL	=	0x008f
_SSTA0	=	0x0091
_SCON0	=	0x0098
_SCON	=	0x0098
_SBUF0	=	0x0099
_SBUF	=	0x0099
_SPI0CFG	=	0x009a
_SPI0DAT	=	0x009b
_SPI0CKR	=	0x009d
_EMI0TC	=	0x00a1
_EMI0CN	=	0x00a2
__XPAGE	=	0x00a2
_EMI0CF	=	0x00a3
_SADDR0	=	0x00a9
_FLSCL	=	0x00b7
_SADEN0	=	0x00b9
_AMX0CF	=	0x00ba
_AMX0SL	=	0x00bb
_ADC0CF	=	0x00bc
_AMX0PRT	=	0x00bd
_ADC0L	=	0x00be
_ADC0H	=	0x00bf
_SMB0CN	=	0x00c0
_SMB0STA	=	0x00c1
_SMB0DAT	=	0x00c2
_SMB0ADR	=	0x00c3
_ADC0GTL	=	0x00c4
_ADC0GTH	=	0x00c5
_ADC0LTL	=	0x00c6
_ADC0LTH	=	0x00c7
_TMR2CN	=	0x00c8
_TMR2CF	=	0x00c9
_RCAP2L	=	0x00ca
_RCAP2H	=	0x00cb
_TMR2L	=	0x00cc
_TL2	=	0x00cc
_TMR2H	=	0x00cd
_TH2	=	0x00cd
_SMB0CR	=	0x00cf
_REF0CN	=	0x00d1
_DAC0L	=	0x00d2
_DAC0H	=	0x00d3
_DAC0CN	=	0x00d4
_HVA0CN	=	0x00d6
_PCA0CN	=	0x00d8
_PCA0MD	=	0x00d9
_PCA0CPM0	=	0x00da
_PCA0CPM1	=	0x00db
_PCA0CPM2	=	0x00dc
_PCA0CPM3	=	0x00dd
_PCA0CPM4	=	0x00de
_PCA0CPM5	=	0x00df
_PCA0CPL5	=	0x00e1
_PCA0CPH5	=	0x00e2
_ADC0CN	=	0x00e8
_PCA0CPL2	=	0x00e9
_PCA0CPH2	=	0x00ea
_PCA0CPL3	=	0x00eb
_PCA0CPH3	=	0x00ec
_PCA0CPL4	=	0x00ed
_PCA0CPH4	=	0x00ee
_RSTSRC	=	0x00ef
_SPI0CN	=	0x00f8
_PCA0L	=	0x00f9
_PCA0H	=	0x00fa
_PCA0CPL0	=	0x00fb
_PCA0CPH0	=	0x00fc
_PCA0CPL1	=	0x00fd
_PCA0CPH1	=	0x00fe
_CPT0CN	=	0x0088
_CPT0MD	=	0x0089
_SCON1	=	0x0098
_SBUF1	=	0x0099
_CAN0STA	=	0x00c0
_TMR3CN	=	0x00c8
_TMR3CF	=	0x00c9
_RCAP3L	=	0x00ca
_RCAP3H	=	0x00cb
_TMR3L	=	0x00cc
_TMR3H	=	0x00cd
_DAC1L	=	0x00d2
_DAC1H	=	0x00d3
_DAC1CN	=	0x00d4
_CAN0DATL	=	0x00d8
_CAN0DATH	=	0x00d9
_CAN0ADR	=	0x00da
_CAN0TST	=	0x00db
_CAN0CN	=	0x00f8
_CPT1CN	=	0x0088
_CPT1MD	=	0x0089
_AMX2CF	=	0x00ba
_AMX2SL	=	0x00bb
_ADC2CF	=	0x00bc
_ADC2	=	0x00be
_ADC2GT	=	0x00c4
_ADC2LT	=	0x00c6
_TMR4CN	=	0x00c8
_TMR4CF	=	0x00c9
_RCAP4L	=	0x00ca
_RCAP4H	=	0x00cb
_TMR4L	=	0x00cc
_TMR4H	=	0x00cd
_ADC2CN	=	0x00e8
_CPT2CN	=	0x0088
_CPT2MD	=	0x0089
_OSCICN	=	0x008a
_OSCICL	=	0x008b
_OSCXCN	=	0x008c
_SFRPGCN	=	0x0096
_CLKSEL	=	0x0097
_P4MDOUT	=	0x009c
_P5MDOUT	=	0x009d
_P6MDOUT	=	0x009e
_P7MDOUT	=	0x009f
_P0MDOUT	=	0x00a4
_P1MDOUT	=	0x00a5
_P2MDOUT	=	0x00a6
_P3MDOUT	=	0x00a7
_P1MDIN	=	0x00ad
_P2MDIN	=	0x00ae
_P3MDIN	=	0x00af
_FLACL	=	0x00b7
_P4	=	0x00c8
_P5	=	0x00d8
_XBR0	=	0x00e1
_XBR1	=	0x00e2
_XBR2	=	0x00e3
_XBR3	=	0x00e4
_P6	=	0x00e8
_P7	=	0x00f8
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (DATA)
_P0_0	=	0x0080
_P0_1	=	0x0081
_P0_2	=	0x0082
_P0_3	=	0x0083
_P0_4	=	0x0084
_P0_5	=	0x0085
_P0_6	=	0x0086
_P0_7	=	0x0087
_IT0	=	0x0088
_IE0	=	0x0089
_IT1	=	0x008a
_IE1	=	0x008b
_TR0	=	0x008c
_TF0	=	0x008d
_TR1	=	0x008e
_TF1	=	0x008f
_CP0HYN0	=	0x0088
_CP0HYN1	=	0x0089
_CP0HYP0	=	0x008a
_CP0HYP1	=	0x008b
_CP0FIF	=	0x008c
_CP0RIF	=	0x008d
_CP0OUT	=	0x008e
_CP0EN	=	0x008f
_CP1HYN0	=	0x0088
_CP1HYN1	=	0x0089
_CP1HYP0	=	0x008a
_CP1HYP1	=	0x008b
_CP1FIF	=	0x008c
_CP1RIF	=	0x008d
_CP1OUT	=	0x008e
_CP1EN	=	0x008f
_CP2HYN0	=	0x0088
_CP2HYN1	=	0x0089
_CP2HYP0	=	0x008a
_CP2HYP1	=	0x008b
_CP2FIF	=	0x008c
_CP2RIF	=	0x008d
_CP2OUT	=	0x008e
_CP2EN	=	0x008f
_P1_0	=	0x0090
_P1_1	=	0x0091
_P1_2	=	0x0092
_P1_3	=	0x0093
_P1_4	=	0x0094
_P1_5	=	0x0095
_P1_6	=	0x0096
_P1_7	=	0x0097
_RI0	=	0x0098
_RI	=	0x0098
_TI0	=	0x0099
_TI	=	0x0099
_RB80	=	0x009a
_TB80	=	0x009b
_REN0	=	0x009c
_REN	=	0x009c
_SM20	=	0x009d
_SM10	=	0x009e
_SM00	=	0x009f
_RI1	=	0x0098
_TI1	=	0x0099
_RB81	=	0x009a
_TB81	=	0x009b
_REN1	=	0x009c
_MCE1	=	0x009d
_S1MODE	=	0x009f
_P2_0	=	0x00a0
_P2_1	=	0x00a1
_P2_2	=	0x00a2
_P2_3	=	0x00a3
_P2_4	=	0x00a4
_P2_5	=	0x00a5
_P2_6	=	0x00a6
_P2_7	=	0x00a7
_EX0	=	0x00a8
_ET0	=	0x00a9
_EX1	=	0x00aa
_ET1	=	0x00ab
_ES0	=	0x00ac
_ES	=	0x00ac
_ET2	=	0x00ad
_EA	=	0x00af
_P3_0	=	0x00b0
_P3_1	=	0x00b1
_P3_2	=	0x00b2
_P3_3	=	0x00b3
_P3_4	=	0x00b4
_P3_5	=	0x00b5
_P3_6	=	0x00b6
_P3_7	=	0x00b7
_PX0	=	0x00b8
_PT0	=	0x00b9
_PX1	=	0x00ba
_PT1	=	0x00bb
_PS0	=	0x00bc
_PS	=	0x00bc
_PT2	=	0x00bd
_SMBTOE	=	0x00c0
_SMBFTE	=	0x00c1
_AA	=	0x00c2
_SI	=	0x00c3
_STO	=	0x00c4
_STA	=	0x00c5
_ENSMB	=	0x00c6
_BUSY	=	0x00c7
_CANTXOK	=	0x00c3
_CANRXOK	=	0x00c4
_CANEPASS	=	0x00c5
_CANEWARN	=	0x00c6
_CANBOFF	=	0x00c7
_CPRL2	=	0x00c8
_CT2	=	0x00c9
_TR2	=	0x00ca
_EXEN2	=	0x00cb
_EXF2	=	0x00ce
_TF2	=	0x00cf
_CPRL3	=	0x00c8
_CT3	=	0x00c9
_TR3	=	0x00ca
_EXEN3	=	0x00cb
_EXF3	=	0x00ce
_TF3	=	0x00cf
_CPRL4	=	0x00c8
_CT4	=	0x00c9
_TR4	=	0x00ca
_EXEN4	=	0x00cb
_EXF4	=	0x00ce
_TF4	=	0x00cf
_P4_0	=	0x00c8
_P4_1	=	0x00c9
_P4_2	=	0x00ca
_P4_3	=	0x00cb
_P4_4	=	0x00cc
_P4_5	=	0x00cd
_P4_6	=	0x00ce
_P4_7	=	0x00cf
_P	=	0x00d0
_F1	=	0x00d1
_OV	=	0x00d2
_RS0	=	0x00d3
_RS1	=	0x00d4
_F0	=	0x00d5
_AC	=	0x00d6
_CY	=	0x00d7
_CCF0	=	0x00d8
_CCF1	=	0x00d9
_CCF2	=	0x00da
_CCF3	=	0x00db
_CCF4	=	0x00dc
_CCF5	=	0x00dd
_CR	=	0x00de
_CF	=	0x00df
_P5_0	=	0x00d8
_P5_1	=	0x00d9
_P5_2	=	0x00da
_P5_3	=	0x00db
_P5_4	=	0x00dc
_P5_5	=	0x00dd
_P5_6	=	0x00de
_P5_7	=	0x00df
_AD0LJST	=	0x00e8
_AD0WINT	=	0x00e9
_AD0CM0	=	0x00ea
_AD0CM1	=	0x00eb
_AD0BUSY	=	0x00ec
_AD0INT	=	0x00ed
_AD0TM	=	0x00ee
_AD0EN	=	0x00ef
_AD2WINT	=	0x00e8
_AD2CM0	=	0x00e9
_AD2CM1	=	0x00ea
_AD2CM2	=	0x00eb
_AD2BUSY	=	0x00ec
_AD2INT	=	0x00ed
_AD2TM	=	0x00ee
_AD2EN	=	0x00ef
_P6_0	=	0x00e8
_P6_1	=	0x00e9
_P6_2	=	0x00ea
_P6_3	=	0x00eb
_P6_4	=	0x00ec
_P6_5	=	0x00ed
_P6_6	=	0x00ee
_P6_7	=	0x00ef
_SPIEN	=	0x00f8
_TXBMT	=	0x00f9
_NSSMD0	=	0x00fa
_NSSMD1	=	0x00fb
_RXOVRN	=	0x00fc
_MODF	=	0x00fd
_WCOL	=	0x00fe
_SPIF	=	0x00ff
_CANINIT	=	0x00f8
_CANIE	=	0x00f9
_CANSIE	=	0x00fa
_CANEIE	=	0x00fb
_CANIF	=	0x00fc
_CANDAR	=	0x00fd
_CANCCE	=	0x00fe
_CANTEST	=	0x00ff
_P7_0	=	0x00f8
_P7_1	=	0x00f9
_P7_2	=	0x00fa
_P7_3	=	0x00fb
_P7_4	=	0x00fc
_P7_5	=	0x00fd
_P7_6	=	0x00fe
_P7_7	=	0x00ff
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; overlayable bit register bank
;--------------------------------------------------------
	.area BIT_BANK	(REL,OVR,DATA)
bits:
	.ds 1
	b0 = bits[0]
	b1 = bits[1]
	b2 = bits[2]
	b3 = bits[3]
	b4 = bits[4]
	b5 = bits[5]
	b6 = bits[6]
	b7 = bits[7]
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_task_UART_core_projectSpecific_sloc0_1_0:
	.ds 1
_task_UART_core_projectSpecific_sloc1_1_0:
	.ds 3
_task_UART_core_projectSpecific_sloc2_1_0:
	.ds 2
_task_UART_core_projectSpecific_sloc3_1_0:
	.ds 3
_task_UART_getchar_projectSpecific_sloc0_1_0:
	.ds 3
_task_UART_getchar_projectSpecific_sloc1_1_0:
	.ds 2
_task_UART_getchar_projectSpecific_sloc2_1_0:
	.ds 3
_task_UART_gets_projectSpecific_sloc0_1_0:
	.ds 1
_task_UART_gets_projectSpecific_sloc1_1_0:
	.ds 2
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
_addTickCounter_sloc0_1_0::
	.ds 3
;--------------------------------------------------------
; Stack segment in internal ram 
;--------------------------------------------------------
	.area	SSEG	(DATA)
__start__stack:
	.ds	1

;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
_timeForTickProcessing:
	.ds 1
_main_processed_2_4:
	.ds 1
_pwm_init_projectSpecific_initialized_1_1:
	.ds 1
_task_UART_init_projectSpecific_timer1initialized_1_1:
	.ds 1
_task_UART_isLineReady_sloc0_1_0:
	.ds 1
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
_main_iterationMax_1_1:
	.ds 2
_pwm_init_projectSpecific_channelNumber_1_1:
	.ds 1
_pwm_setDutyCycle_projectSpecific_PARM_2:
	.ds 1
_pwm_adjustDutyCycle_projectSpecific_PARM_2:
	.ds 1
_pwm_setDutyCycleAsPercentage_projectSpecific_PARM_2:
	.ds 1
_UARTtempBuffer::
	.ds 1100
_IsEmpty_Q_1_1:
	.ds 3
_IsFull_Q_1_1:
	.ds 3
_Succ_PARM_2:
	.ds 3
_Succ_Value_1_1:
	.ds 2
_transmitBuffer:
	.ds 1101
_receiveBuffer:
	.ds 11
_transmitBuffers:
	.ds 11
_receiveBuffers:
	.ds 11
_charSent:
	.ds 1
_lineReady:
	.ds 1
_task_UART_init_projectSpecific_channelNumber_1_1:
	.ds 1
_task_UART_core_projectSpecific_channelNumber_1_1:
	.ds 1
_task_UART_core_projectSpecific_Q_4_4:
	.ds 3
_task_UART_putchar_projectSpecific_PARM_2:
	.ds 1
_task_UART_putchar_projectSpecific_channelNumber_1_1:
	.ds 1
_task_UART_putchar_projectSpecific_Q_2_2:
	.ds 3
_task_UART_puts_projectSpecific_PARM_2:
	.ds 3
_task_UART_puts_projectSpecific_channelNumber_1_1:
	.ds 1
_task_UART_getchar_projectSpecific_channelNumber_1_1:
	.ds 1
_task_UART_getchar_projectSpecific_Q_2_2:
	.ds 3
_task_UART_gets_projectSpecific_PARM_2:
	.ds 3
_task_UART_gets_projectSpecific_PARM_3:
	.ds 2
_task_UART_gets_projectSpecific_channelNumber_1_1:
	.ds 1
_task_UART_isLineReady_channelNumber_1_1:
	.ds 1
_putchar_c_1_1:
	.ds 1
_prvSetupTimerInterrupt_ucOriginalSFRPage_1_1:
	.ds 1
_tickCounterToIncrement::
	.ds 30
_addTickCounter_pointerToIncrement_1_1:
	.ds 3
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
_countdown:
	.ds 2
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; interrupt vector 
;--------------------------------------------------------
	.area HOME    (CODE)
__interrupt_vect:
	ljmp	__sdcc_gsinit_startup
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	ljmp	_vTimer2ISR
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
	.globl __sdcc_gsinit_startup
	.globl __sdcc_program_startup
	.globl __start__stack
	.globl __mcs51_genXINIT
	.globl __mcs51_genXRAMCLEAR
	.globl __mcs51_genRAMCLEAR
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;bomb                      Allocated with name '_main_bomb_1_1'
;calculator                Allocated with name '_main_calculator_1_1'
;iterationMax              Allocated with name '_main_iterationMax_1_1'
;------------------------------------------------------------
;	../src/main_C8051F040.c:32: static int iterationMax = 10 ;
	mov	dptr,#_main_iterationMax_1_1
	mov	a,#0x0A
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	../src/main_C8051F040.c:64: static bool processed = false ;
	clr	_main_processed_2_4
;------------------------------------------------------------
;Allocation info for local variables in function 'task_UART_init_projectSpecific'
;------------------------------------------------------------
;channelNumber             Allocated with name '_task_UART_init_projectSpecific_channelNumber_1_1'
;Q                         Allocated with name '_task_UART_init_projectSpecific_Q_1_1'
;SFRPAGE_SAVE              Allocated with name '_task_UART_init_projectSpecific_SFRPAGE_SAVE_3_3'
;------------------------------------------------------------
;	../src/projectSpecificHardwareInterface_C8051F040.c:323: static bool	timer1initialized = false ;
	clr	_task_UART_init_projectSpecific_timer1initialized_1_1
	.area GSFINAL (CODE)
	ljmp	__sdcc_program_startup
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
__sdcc_program_startup:
	lcall	_main
;	return from main will lock up
	sjmp .
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;bomb                      Allocated with name '_main_bomb_1_1'
;calculator                Allocated with name '_main_calculator_1_1'
;iterationMax              Allocated with name '_main_iterationMax_1_1'
;------------------------------------------------------------
;	../src/main_C8051F040.c:27: void main(	void)
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
;	../src/main_C8051F040.c:34: WDTCN = 0xDE ;	// Disable the watchdog timer
	mov	_WDTCN,#0xDE
;	../src/main_C8051F040.c:35: WDTCN = 0xAD ;
	mov	_WDTCN,#0xAD
;	../src/main_C8051F040.c:36: WDTCN = 0xFF ;	// Disable any future ability to modify the watchdog timer
	mov	_WDTCN,#0xFF
;	../src/main_C8051F040.c:38: prvSetupSystemClock() ;
	lcall	_prvSetupSystemClock
;	../src/main_C8051F040.c:39: gpio_init() ;
	lcall	_gpio_init_projectSpecific
;	../src/main_C8051F040.c:40: pwm_init(ioMapping_PWM_TO_TICK_SYNCHRONIZER_CHANNEL) ;
	mov	dpl,#0x00
	lcall	_pwm_init
;	../src/main_C8051F040.c:41: prvSetupTimerInterrupt() ;
	lcall	_prvSetupTimerInterrupt
;	../src/main_C8051F040.c:42: task_UART_init(0) ;
	mov	dpl,#0x00
	lcall	_task_UART_init
;	../src/main_C8051F040.c:44: portENABLE_INTERRUPTS() ;
	setb	_EA
;	../src/main_C8051F040.c:46: puts("4th Generation state machine test started.") ;
	mov	dptr,#__str_0
	mov	b,#0x80
	lcall	_puts
;	../src/main_C8051F040.c:48: bomb = STATE_MACHINE_CREATE_INSTANCE_OF(timeBomb) ;
	lcall	_timeBomb_getMachineSize
	mov	r2,dpl
	mov	r3,dph
	push	ar2
	push	ar3
	lcall	_timeBomb_getEventQueueDepth
	mov	r4,dpl
	mov	r5,dph
	pop	ar3
	pop	ar2
	mov	dptr,#_allocateStateMachineMemory_PARM_2
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
	mov	dptr,#_allocateStateMachineMemory_PARM_3
	mov	a,#_timeBomb_constructor
	movx	@dptr,a
	inc	dptr
	mov	a,#(_timeBomb_constructor >> 8)
	movx	@dptr,a
	mov	dpl,r2
	mov	dph,r3
	lcall	_allocateStateMachineMemory
;	../src/main_C8051F040.c:55: calculator = STATE_MACHINE_CREATE_INSTANCE_OF(calculator) ;
	lcall	_calculator_getMachineSize
	mov	r2,dpl
	mov	r3,dph
	push	ar2
	push	ar3
	lcall	_calculator_getEventQueueDepth
	mov	r4,dpl
	mov	r5,dph
	pop	ar3
	pop	ar2
	mov	dptr,#_allocateStateMachineMemory_PARM_2
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
	mov	dptr,#_allocateStateMachineMemory_PARM_3
	mov	a,#_calculator_constructor
	movx	@dptr,a
	inc	dptr
	mov	a,#(_calculator_constructor >> 8)
	movx	@dptr,a
	mov	dpl,r2
	mov	dph,r3
	lcall	_allocateStateMachineMemory
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
;	../src/main_C8051F040.c:57: if(calculator)
	mov	a,r2
	orl	a,r3
	orl	a,r4
	jz	00110$
;	../src/main_C8051F040.c:59: REGISTER_STATE_MACHINE(calculator) ;
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_registerStateMachine
;	../src/main_C8051F040.c:62: while(true)
00110$:
;	../src/main_C8051F040.c:66: if(timeForTickProcessing)
;	../src/main_C8051F040.c:68: timeForTickProcessing = false ;
	jbc	_timeForTickProcessing,00120$
	sjmp	00110$
00120$:
;	../src/main_C8051F040.c:72: if(!processed)
	jb	_main_processed_2_4,00110$
;	../src/main_C8051F040.c:76: if(iterationMax-- == 0)
	mov	dptr,#_main_iterationMax_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	a,r2
	add	a,#0xff
	mov	r4,a
	mov	a,r3
	addc	a,#0xff
	mov	r5,a
	mov	dptr,#_main_iterationMax_1_1
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
	mov	a,r2
	orl	a,r3
	jz	00112$
;	../src/main_C8051F040.c:81: puts("loop") ;
	mov	dptr,#__str_1
	mov	b,#0x80
	lcall	_puts
;	../src/main_C8051F040.c:83: ITERATE_ALL_STATE_MACHINES() ;
	lcall	_iterateAllStateMachines
	sjmp	00110$
00112$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'taskSwitcherTickHook'
;------------------------------------------------------------
;------------------------------------------------------------
;	../src/main_C8051F040.c:90: void taskSwitcherTickHook(	void)
;	-----------------------------------------
;	 function taskSwitcherTickHook
;	-----------------------------------------
_taskSwitcherTickHook:
;	../src/main_C8051F040.c:92: timeForTickProcessing = true ;
	setb	_timeForTickProcessing
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'gpio_init_projectSpecific'
;------------------------------------------------------------
;SFRPAGE_SAVE              Allocated with name '_gpio_init_projectSpecific_SFRPAGE_SAVE_1_1'
;------------------------------------------------------------
;	../src/projectSpecificHardwareInterface_C8051F040.c:17: void gpio_init_projectSpecific(	void)
;	-----------------------------------------
;	 function gpio_init_projectSpecific
;	-----------------------------------------
_gpio_init_projectSpecific:
;	../src/projectSpecificHardwareInterface_C8051F040.c:21: SFRPAGE_SAVE = SFRPAGE ;
	mov	r2,_SFRPAGE
;	../src/projectSpecificHardwareInterface_C8051F040.c:23: SFRPAGE	 = SPI0_PAGE ;
	mov	_SFRPAGE,#0x00
;	../src/projectSpecificHardwareInterface_C8051F040.c:24: SPI0CN	 = 0x00 ;	// Set the SPI module into 3 pin mode so NSS doesn't get assigned to a pin in the crossbar setup below
	mov	_SPI0CN,#0x00
;	../src/projectSpecificHardwareInterface_C8051F040.c:26: SFRPAGE	 = CONFIG_PAGE ;
	mov	_SFRPAGE,#0x0F
;	../src/projectSpecificHardwareInterface_C8051F040.c:27: XBR0	 = 0x00 ;	// Start with a clean slate
	mov	_XBR0,#0x00
;	../src/projectSpecificHardwareInterface_C8051F040.c:28: XBR1	 = 0x00 ;
	mov	_XBR1,#0x00
;	../src/projectSpecificHardwareInterface_C8051F040.c:29: XBR2	 = 0x00 ;
	mov	_XBR2,#0x00
;	../src/projectSpecificHardwareInterface_C8051F040.c:30: XBR3	 = 0x00 ;
	mov	_XBR3,#0x00
;	../src/projectSpecificHardwareInterface_C8051F040.c:32: XBR0	|= 0x04 ;	// Route UART0 to P0.0-P0.1
	orl	_XBR0,#0x04
;	../src/projectSpecificHardwareInterface_C8051F040.c:33: XBR0	|= 0x02 ;	// Route SPI0 to P0.2-P0.4
	orl	_XBR0,#0x02
;	../src/projectSpecificHardwareInterface_C8051F040.c:34: XBR0	|= 0x01 ;	// Route SMB0 to P0.5-P0.6
	orl	_XBR0,#0x01
;	../src/projectSpecificHardwareInterface_C8051F040.c:35: XBR2	|= 0x04 ;	// Route UART1 to P0.7-P1.0
	orl	_XBR2,#0x04
;	../src/projectSpecificHardwareInterface_C8051F040.c:36: XBR0	|= 0x30 ;	// Route CEXn to P1.1-P1.6
	orl	_XBR0,#0x30
;	../src/projectSpecificHardwareInterface_C8051F040.c:37: XBR0	|= 0x80 ;	// Route CP0 to P1.7
	orl	_XBR0,#0x80
;	../src/projectSpecificHardwareInterface_C8051F040.c:38: XBR3	|= 0x08 ;	// Route CP2 to P2.0
	orl	_XBR3,#0x08
;	../src/projectSpecificHardwareInterface_C8051F040.c:39: XBR1	|= 0x04 ;	// Route INT0# to P2.1
	orl	_XBR1,#0x04
;	../src/projectSpecificHardwareInterface_C8051F040.c:40: XBR1	|= 0x20 ;	// Route T2 from P2.2
	orl	_XBR1,#0x20
;	../src/projectSpecificHardwareInterface_C8051F040.c:41: XBR3	|= 0x01 ;	// Route T3 to P2.3
	orl	_XBR3,#0x01
;	../src/projectSpecificHardwareInterface_C8051F040.c:43: P0MDOUT |= 0x01 ;	// Set TX0 (P0.0) to push-pull
	orl	_P0MDOUT,#0x01
;	../src/projectSpecificHardwareInterface_C8051F040.c:45: P1MDOUT	|= 0x02 ;	// Set CEX0 (P1.1) to push-pull
	orl	_P1MDOUT,#0x02
;	../src/projectSpecificHardwareInterface_C8051F040.c:46: P1MDOUT	|= 0x04 ;	// Set CEX1 (P1.2) to push-pull
	orl	_P1MDOUT,#0x04
;	../src/projectSpecificHardwareInterface_C8051F040.c:47: P1MDOUT	|= 0x08 ;	// Set CEX2 (P1.3) to push-pull
	orl	_P1MDOUT,#0x08
;	../src/projectSpecificHardwareInterface_C8051F040.c:48: P1MDOUT	|= 0x10 ;	// Set CEX3 (P1.4) to push-pull
	orl	_P1MDOUT,#0x10
;	../src/projectSpecificHardwareInterface_C8051F040.c:49: P1MDOUT	|= 0x20 ;	// Set CEX4 (P1.5) to push-pull
	orl	_P1MDOUT,#0x20
;	../src/projectSpecificHardwareInterface_C8051F040.c:50: P1MDOUT |= 0x40 ;	// Set CEX5 (P1.6) to push-pull
	orl	_P1MDOUT,#0x40
;	../src/projectSpecificHardwareInterface_C8051F040.c:52: P1MDOUT |= 0x80 ;	// Set TX1 (P1.7) to push-pull
	orl	_P1MDOUT,#0x80
;	../src/projectSpecificHardwareInterface_C8051F040.c:53: P2MDOUT	&= ~0x02 ;	// Set INT0# (P2.1) to be a digital input
;	../src/projectSpecificHardwareInterface_C8051F040.c:54: P2MDOUT	&= ~0x04 ;	// Set T2 (P2.2) to be a digital input
	anl	_P2MDOUT,#(0xFD&0xFB)
;	../src/projectSpecificHardwareInterface_C8051F040.c:55: P2MDOUT	|= 0x08 ;	// Set P2.3 to be the Timer3 output pin
	orl	_P2MDOUT,#0x08
;	../src/projectSpecificHardwareInterface_C8051F040.c:57: P3MDIN	 = 0x00 ;	// Configure as analog inputs. This forces the weak pullup for these pins to be disconnected
	mov	_P3MDIN,#0x00
;	../src/projectSpecificHardwareInterface_C8051F040.c:58: P3MDOUT	 = 0x00 ;	// Force the output driver for these pins to open drain output mode
	mov	_P3MDOUT,#0x00
;	../src/projectSpecificHardwareInterface_C8051F040.c:59: P3		 = 0xFF ;	// Force the input driver for these pins to high impedance
	mov	_P3,#0xFF
;	../src/projectSpecificHardwareInterface_C8051F040.c:61: XBR3	|= 0x80 ;	// Configure CAN TX pin (CTX) as push-pull digital output
	orl	_XBR3,#0x80
;	../src/projectSpecificHardwareInterface_C8051F040.c:63: P4MDOUT	|= 0xFF ;	// Set LCD drive pins to push-pull
	mov	a,_P4MDOUT
	mov	_P4MDOUT,#0xFF
;	../src/projectSpecificHardwareInterface_C8051F040.c:64: P5MDOUT	|= 0xFF ;	// Set state machine debug pins to push-pull
	mov	a,_P5MDOUT
	mov	_P5MDOUT,#0xFF
;	../src/projectSpecificHardwareInterface_C8051F040.c:65: P6MDOUT	|= 0xFF ;	// Set general purpose debug pins to push-pull
	mov	a,_P6MDOUT
	mov	_P6MDOUT,#0xFF
;	../src/projectSpecificHardwareInterface_C8051F040.c:67: P4		 = 0x00 ;	// Set all debugging pins to low
	mov	_P4,#0x00
;	../src/projectSpecificHardwareInterface_C8051F040.c:68: P5		 = 0x00 ;
	mov	_P5,#0x00
;	../src/projectSpecificHardwareInterface_C8051F040.c:69: P6		 = 0x00 ;
	mov	_P6,#0x00
;	../src/projectSpecificHardwareInterface_C8051F040.c:71: P2MDIN	&= 0x0F ;	// set comparator analog inputs up as per Section 17.1.5 of the C8050F040 manual
	anl	_P2MDIN,#0x0F
;	../src/projectSpecificHardwareInterface_C8051F040.c:72: P2MDOUT	&= 0x0F ;
	anl	_P2MDOUT,#0x0F
;	../src/projectSpecificHardwareInterface_C8051F040.c:73: P2		|= 0xF0 ;
	orl	_P2,#0xF0
;	../src/projectSpecificHardwareInterface_C8051F040.c:78: XBR2	|= 0x40 ;	// Enable Crossbar/low ports and turn on global weak pullups
	orl	_XBR2,#0x40
;	../src/projectSpecificHardwareInterface_C8051F040.c:79: SFRPAGE	 = SFRPAGE_SAVE ;
	mov	_SFRPAGE,r2
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'pwm_init_projectSpecific'
;------------------------------------------------------------
;channelNumber             Allocated with name '_pwm_init_projectSpecific_channelNumber_1_1'
;SFRPAGE_save              Allocated with name '_pwm_init_projectSpecific_SFRPAGE_save_1_1'
;------------------------------------------------------------
;	../src/projectSpecificHardwareInterface_C8051F040.c:83: void pwm_init_projectSpecific(								unsigned char channelNumber)
;	-----------------------------------------
;	 function pwm_init_projectSpecific
;	-----------------------------------------
_pwm_init_projectSpecific:
	mov	a,dpl
	mov	dptr,#_pwm_init_projectSpecific_channelNumber_1_1
	movx	@dptr,a
;	../src/projectSpecificHardwareInterface_C8051F040.c:132: char		SFRPAGE_save = SFRPAGE ;	// Save current SFR Page
	mov	r2,_SFRPAGE
;	../src/projectSpecificHardwareInterface_C8051F040.c:134: SFRPAGE = PCA0_PAGE ;
	mov	_SFRPAGE,#0x00
;	../src/projectSpecificHardwareInterface_C8051F040.c:136: if(!initialized)
	jb	_pwm_init_projectSpecific_initialized_1_1,00102$
;	../src/projectSpecificHardwareInterface_C8051F040.c:138: PCA0CN = 0x00 ;				// Stop counter; clear all flags
	mov	_PCA0CN,#0x00
;	../src/projectSpecificHardwareInterface_C8051F040.c:139: PCA0MD = 0x08 ;				// Use SYSCLK as time base
	mov	_PCA0MD,#0x08
;	../src/projectSpecificHardwareInterface_C8051F040.c:141: PCA0CPM0 = 0x00 ;			// Module 0 = Off
	mov	_PCA0CPM0,#0x00
;	../src/projectSpecificHardwareInterface_C8051F040.c:142: PCA0CPH0 = 0x00 ;			// Configure initial PWM duty cycle = 100%. This will result in a continuously high output which, since it's active low, will disable any output.
	mov	_PCA0CPH0,#0x00
;	../src/projectSpecificHardwareInterface_C8051F040.c:144: PCA0CPM0 = 0x00 ;			// Module 1 = Off
	mov	_PCA0CPM0,#0x00
;	../src/projectSpecificHardwareInterface_C8051F040.c:145: PCA0CPH1 = 0x00 ;			// Configure initial PWM duty cycle = 100%. This will result in a continuously high output which, since it's active low, will disable any output.
	mov	_PCA0CPH1,#0x00
;	../src/projectSpecificHardwareInterface_C8051F040.c:147: PCA0CPM0 = 0x00 ;			// Module 2 = Off
	mov	_PCA0CPM0,#0x00
;	../src/projectSpecificHardwareInterface_C8051F040.c:148: PCA0CPH2 = 0x00 ;			// Configure initial PWM duty cycle = 100%. This will result in a continuously high output which, since it's active low, will disable any output.
	mov	_PCA0CPH2,#0x00
;	../src/projectSpecificHardwareInterface_C8051F040.c:150: PCA0CPM0 = 0x00 ;			// Module 3 = Off
	mov	_PCA0CPM0,#0x00
;	../src/projectSpecificHardwareInterface_C8051F040.c:151: PCA0CPH3 = 0x00 ;			// Configure initial PWM duty cycle = 100%. This will result in a continuously high output which, since it's active low, will disable any output.
	mov	_PCA0CPH3,#0x00
;	../src/projectSpecificHardwareInterface_C8051F040.c:153: PCA0CPM0 = 0x00 ;			// Module 4 = Off
	mov	_PCA0CPM0,#0x00
;	../src/projectSpecificHardwareInterface_C8051F040.c:154: PCA0CPH4 = 0x00 ;			// Configure initial PWM duty cycle = 100%. This will result in a continuously high output which, since it's active low, will disable any output.
	mov	_PCA0CPH4,#0x00
;	../src/projectSpecificHardwareInterface_C8051F040.c:156: PCA0CPM0 = 0x00 ;			// Module 5 = Off
	mov	_PCA0CPM0,#0x00
;	../src/projectSpecificHardwareInterface_C8051F040.c:157: PCA0CPH5 = 0x00 ;			// Configure initial PWM duty cycle = 100%. This will result in a continuously high output which, since it's active low, will disable any output.
	mov	_PCA0CPH5,#0x00
00102$:
;	../src/projectSpecificHardwareInterface_C8051F040.c:164: if(channelNumber == ioMapping_PWM_TO_TICK_SYNCHRONIZER_CHANNEL)
	mov	dptr,#_pwm_init_projectSpecific_channelNumber_1_1
	movx	a,@dptr
	mov	r3,a
	jnz	00104$
;	../src/projectSpecificHardwareInterface_C8051F040.c:170: PWM_B50_MODE		= 0x42 ;						// Module 1 = 8-bit PWM mode
	mov	_PCA0CPM0,#0x42
;	../src/projectSpecificHardwareInterface_C8051F040.c:171: PWM_B50_HIGH_BYTE	= FIFTY_PERCENT_DUTY_CYCLE ;	// Configure initial PWM duty cycle = 50%
	mov	_PCA0CPH0,#0x80
00104$:
;	../src/projectSpecificHardwareInterface_C8051F040.c:174: if(!initialized)
	jb	_pwm_init_projectSpecific_initialized_1_1,00106$
;	../src/projectSpecificHardwareInterface_C8051F040.c:176: initialized = true ;
	setb	_pwm_init_projectSpecific_initialized_1_1
;	../src/projectSpecificHardwareInterface_C8051F040.c:178: CR = 1 ;					// Start PCA counter
	setb	_CR
00106$:
;	../src/projectSpecificHardwareInterface_C8051F040.c:181: SFRPAGE = SFRPAGE_save ;
	mov	_SFRPAGE,r2
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'pwm_incrementDutyCycle_projectSpecific'
;------------------------------------------------------------
;channelNumber             Allocated with name '_pwm_incrementDutyCycle_projectSpecific_channelNumber_1_1'
;------------------------------------------------------------
;	../src/projectSpecificHardwareInterface_C8051F040.c:185: void pwm_incrementDutyCycle_projectSpecific(				unsigned char channelNumber)
;	-----------------------------------------
;	 function pwm_incrementDutyCycle_projectSpecific
;	-----------------------------------------
_pwm_incrementDutyCycle_projectSpecific:
;	../src/projectSpecificHardwareInterface_C8051F040.c:187: (void)channelNumber ;	// unused at this time
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'pwm_decrementDutyCycle_projectSpecific'
;------------------------------------------------------------
;channelNumber             Allocated with name '_pwm_decrementDutyCycle_projectSpecific_channelNumber_1_1'
;------------------------------------------------------------
;	../src/projectSpecificHardwareInterface_C8051F040.c:191: void pwm_decrementDutyCycle_projectSpecific(				unsigned char channelNumber)
;	-----------------------------------------
;	 function pwm_decrementDutyCycle_projectSpecific
;	-----------------------------------------
_pwm_decrementDutyCycle_projectSpecific:
;	../src/projectSpecificHardwareInterface_C8051F040.c:193: (void)channelNumber ;	// unused at this time
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'pwm_getDutyCycle_projectSpecific'
;------------------------------------------------------------
;channelNumber             Allocated with name '_pwm_getDutyCycle_projectSpecific_channelNumber_1_1'
;------------------------------------------------------------
;	../src/projectSpecificHardwareInterface_C8051F040.c:197: uint8_t pwm_getDutyCycle_projectSpecific(					unsigned char channelNumber)
;	-----------------------------------------
;	 function pwm_getDutyCycle_projectSpecific
;	-----------------------------------------
_pwm_getDutyCycle_projectSpecific:
;	../src/projectSpecificHardwareInterface_C8051F040.c:201: return 0 ;
	mov	dpl,#0x00
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'pwm_setDutyCycle_projectSpecific'
;------------------------------------------------------------
;newDutyCycle              Allocated with name '_pwm_setDutyCycle_projectSpecific_PARM_2'
;channelNumber             Allocated with name '_pwm_setDutyCycle_projectSpecific_channelNumber_1_1'
;------------------------------------------------------------
;	../src/projectSpecificHardwareInterface_C8051F040.c:205: void pwm_setDutyCycle_projectSpecific(						unsigned char channelNumber, uint8_t newDutyCycle)
;	-----------------------------------------
;	 function pwm_setDutyCycle_projectSpecific
;	-----------------------------------------
_pwm_setDutyCycle_projectSpecific:
;	../src/projectSpecificHardwareInterface_C8051F040.c:208: (void)newDutyCycle ;	// unused at this time
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'pwm_adjustDutyCycle_projectSpecific'
;------------------------------------------------------------
;dutyCycleAdjustment       Allocated with name '_pwm_adjustDutyCycle_projectSpecific_PARM_2'
;channelNumber             Allocated with name '_pwm_adjustDutyCycle_projectSpecific_channelNumber_1_1'
;------------------------------------------------------------
;	../src/projectSpecificHardwareInterface_C8051F040.c:212: void pwm_adjustDutyCycle_projectSpecific(					unsigned char channelNumber, int8_t dutyCycleAdjustment)
;	-----------------------------------------
;	 function pwm_adjustDutyCycle_projectSpecific
;	-----------------------------------------
_pwm_adjustDutyCycle_projectSpecific:
;	../src/projectSpecificHardwareInterface_C8051F040.c:215: (void)dutyCycleAdjustment ;	// unused at this time
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'pwm_setDutyCycleAsPercentage_projectSpecific'
;------------------------------------------------------------
;newDutyCycle              Allocated with name '_pwm_setDutyCycleAsPercentage_projectSpecific_PARM_2'
;channelNumber             Allocated with name '_pwm_setDutyCycleAsPercentage_projectSpecific_channelNumber_1_1'
;------------------------------------------------------------
;	../src/projectSpecificHardwareInterface_C8051F040.c:219: void pwm_setDutyCycleAsPercentage_projectSpecific(			unsigned char channelNumber, unsigned char newDutyCycle)
;	-----------------------------------------
;	 function pwm_setDutyCycleAsPercentage_projectSpecific
;	-----------------------------------------
_pwm_setDutyCycleAsPercentage_projectSpecific:
;	../src/projectSpecificHardwareInterface_C8051F040.c:222: (void)newDutyCycle ;		// unused at this time
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'pwm_getDutyCycleAsPercentage_projectSpecific'
;------------------------------------------------------------
;channelNumber             Allocated with name '_pwm_getDutyCycleAsPercentage_projectSpecific_channelNumber_1_1'
;currentPercentage         Allocated with name '_pwm_getDutyCycleAsPercentage_projectSpecific_currentPercentage_1_1'
;divisor                   Allocated with name '_pwm_getDutyCycleAsPercentage_projectSpecific_divisor_1_1'
;------------------------------------------------------------
;	../src/projectSpecificHardwareInterface_C8051F040.c:226: unsigned char pwm_getDutyCycleAsPercentage_projectSpecific(	unsigned char channelNumber)
;	-----------------------------------------
;	 function pwm_getDutyCycleAsPercentage_projectSpecific
;	-----------------------------------------
_pwm_getDutyCycleAsPercentage_projectSpecific:
;	../src/projectSpecificHardwareInterface_C8051F040.c:237: return (unsigned char)0 ;//min(currentPercentage, 100) ;
	mov	dpl,#0x00
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'IsEmpty'
;------------------------------------------------------------
;Q                         Allocated with name '_IsEmpty_Q_1_1'
;------------------------------------------------------------
;	../src/projectSpecificHardwareInterface_C8051F040.c:273: unsigned char IsEmpty(QUEUE_TYPE* Q)
;	-----------------------------------------
;	 function IsEmpty
;	-----------------------------------------
_IsEmpty:
	mov	r2,b
	mov	r3,dph
	mov	a,dpl
	mov	dptr,#_IsEmpty_Q_1_1
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r2
	movx	@dptr,a
;	../src/projectSpecificHardwareInterface_C8051F040.c:275: return Q->Size == 0 ;
	mov	dptr,#_IsEmpty_Q_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	a,#0x06
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	clr	a
	cjne	r2,#0x00,00103$
	cjne	r3,#0x00,00103$
	inc	a
00103$:
	mov	dpl,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'IsFull'
;------------------------------------------------------------
;Q                         Allocated with name '_IsFull_Q_1_1'
;------------------------------------------------------------
;	../src/projectSpecificHardwareInterface_C8051F040.c:278: unsigned char IsFull(QUEUE_TYPE* Q)
;	-----------------------------------------
;	 function IsFull
;	-----------------------------------------
_IsFull:
	mov	r2,b
	mov	r3,dph
	mov	a,dpl
	mov	dptr,#_IsFull_Q_1_1
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r2
	movx	@dptr,a
;	../src/projectSpecificHardwareInterface_C8051F040.c:280: return Q->Size == Q->Capacity ;
	mov	dptr,#_IsFull_Q_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	a,#0x06
	add	a,r2
	mov	r5,a
	clr	a
	addc	a,r3
	mov	r6,a
	mov	ar7,r4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	mov	a,r5
	cjne	a,ar2,00103$
	mov	a,r6
	cjne	a,ar3,00103$
	mov	a,#0x01
	sjmp	00104$
00103$:
	clr	a
00104$:
	mov	dpl,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Succ'
;------------------------------------------------------------
;Q                         Allocated with name '_Succ_PARM_2'
;Value                     Allocated with name '_Succ_Value_1_1'
;------------------------------------------------------------
;	../src/projectSpecificHardwareInterface_C8051F040.c:283: static unsigned short Succ(unsigned short Value, QUEUE_TYPE* Q)
;	-----------------------------------------
;	 function Succ
;	-----------------------------------------
_Succ:
	mov	r2,dph
	mov	a,dpl
	mov	dptr,#_Succ_Value_1_1
	movx	@dptr,a
	inc	dptr
	mov	a,r2
	movx	@dptr,a
;	../src/projectSpecificHardwareInterface_C8051F040.c:285: if(++Value == Q->Capacity)
	mov	dptr,#_Succ_Value_1_1
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	movx	@dptr,a
	mov	dptr,#_Succ_PARM_2
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	mov	dptr,#_Succ_Value_1_1
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	a,r4
	cjne	a,ar2,00102$
	mov	a,r5
	cjne	a,ar3,00102$
;	../src/projectSpecificHardwareInterface_C8051F040.c:287: Value = 0 ;
	mov	dptr,#_Succ_Value_1_1
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
00102$:
;	../src/projectSpecificHardwareInterface_C8051F040.c:290: return Value ;
	mov	dptr,#_Succ_Value_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	dpl,r2
	mov	dph,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'task_UART_init_projectSpecific'
;------------------------------------------------------------
;channelNumber             Allocated with name '_task_UART_init_projectSpecific_channelNumber_1_1'
;Q                         Allocated with name '_task_UART_init_projectSpecific_Q_1_1'
;SFRPAGE_SAVE              Allocated with name '_task_UART_init_projectSpecific_SFRPAGE_SAVE_3_3'
;------------------------------------------------------------
;	../src/projectSpecificHardwareInterface_C8051F040.c:321: void task_UART_init_projectSpecific(	unsigned char channelNumber)
;	-----------------------------------------
;	 function task_UART_init_projectSpecific
;	-----------------------------------------
_task_UART_init_projectSpecific:
	mov	a,dpl
	mov	dptr,#_task_UART_init_projectSpecific_channelNumber_1_1
	movx	@dptr,a
;	../src/projectSpecificHardwareInterface_C8051F040.c:325: QUEUE_TYPE*	Q = &transmitBuffers[channelNumber] ;
	mov	dptr,#_task_UART_init_projectSpecific_channelNumber_1_1
	movx	a,@dptr
	mov	r2,a
	mov	b,#0x0B
	mul	ab
	mov	r3,a
	add	a,#_transmitBuffers
	mov	r4,a
	clr	a
	addc	a,#(_transmitBuffers >> 8)
	mov	r5,a
	mov	r6,#0x00
;	../src/projectSpecificHardwareInterface_C8051F040.c:327: Q->Capacity	= TRANSMIT_BUFFER_SIZE ;
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,#0x4C
	lcall	__gptrput
	inc	dptr
	mov	a,#0x04
	lcall	__gptrput
;	../src/projectSpecificHardwareInterface_C8051F040.c:328: Q->Size		= 0 ;
	mov	a,#0x06
	add	a,r4
	mov	r7,a
	clr	a
	addc	a,r5
	mov	r0,a
	mov	ar1,r6
	mov	dpl,r7
	mov	dph,r0
	mov	b,r1
	clr	a
	lcall	__gptrput
	inc	dptr
	clr	a
	lcall	__gptrput
;	../src/projectSpecificHardwareInterface_C8051F040.c:329: Q->Front	= 1 ;
	mov	a,#0x02
	add	a,r4
	mov	r7,a
	clr	a
	addc	a,r5
	mov	r0,a
	mov	ar1,r6
	mov	dpl,r7
	mov	dph,r0
	mov	b,r1
	mov	a,#0x01
	lcall	__gptrput
	inc	dptr
	clr	a
	lcall	__gptrput
;	../src/projectSpecificHardwareInterface_C8051F040.c:330: Q->Rear		= 0 ;
	mov	a,#0x04
	add	a,r4
	mov	r7,a
	clr	a
	addc	a,r5
	mov	r0,a
	mov	ar1,r6
	mov	dpl,r7
	mov	dph,r0
	mov	b,r1
	clr	a
	lcall	__gptrput
	inc	dptr
	clr	a
	lcall	__gptrput
;	../src/projectSpecificHardwareInterface_C8051F040.c:331: Q->Array	= transmitBuffer[0] ;
	mov	a,#0x08
	add	a,r4
	mov	r4,a
	clr	a
	addc	a,r5
	mov	r5,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,#_transmitBuffer
	lcall	__gptrput
	inc	dptr
	mov	a,#(_transmitBuffer >> 8)
	lcall	__gptrput
	inc	dptr
	clr	a
	lcall	__gptrput
;	../src/projectSpecificHardwareInterface_C8051F040.c:333: Q = &receiveBuffers[channelNumber] ;
	mov	a,r3
	add	a,#_receiveBuffers
	mov	r3,a
	clr	a
	addc	a,#(_receiveBuffers >> 8)
	mov	r4,a
	mov	r5,#0x00
;	../src/projectSpecificHardwareInterface_C8051F040.c:335: Q->Capacity	= RECEIVE_BUFFER_SIZE ;
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	mov	a,#0x0A
	lcall	__gptrput
	inc	dptr
	clr	a
	lcall	__gptrput
;	../src/projectSpecificHardwareInterface_C8051F040.c:336: Q->Size		= 0 ;
	mov	a,#0x06
	add	a,r3
	mov	r6,a
	clr	a
	addc	a,r4
	mov	r7,a
	mov	ar0,r5
	mov	dpl,r6
	mov	dph,r7
	mov	b,r0
	clr	a
	lcall	__gptrput
	inc	dptr
	clr	a
	lcall	__gptrput
;	../src/projectSpecificHardwareInterface_C8051F040.c:337: Q->Front	= 1 ;
	mov	a,#0x02
	add	a,r3
	mov	r6,a
	clr	a
	addc	a,r4
	mov	r7,a
	mov	ar0,r5
	mov	dpl,r6
	mov	dph,r7
	mov	b,r0
	mov	a,#0x01
	lcall	__gptrput
	inc	dptr
	clr	a
	lcall	__gptrput
;	../src/projectSpecificHardwareInterface_C8051F040.c:338: Q->Rear		= 0 ;
	mov	a,#0x04
	add	a,r3
	mov	r6,a
	clr	a
	addc	a,r4
	mov	r7,a
	mov	ar0,r5
	mov	dpl,r6
	mov	dph,r7
	mov	b,r0
	clr	a
	lcall	__gptrput
	inc	dptr
	clr	a
	lcall	__gptrput
;	../src/projectSpecificHardwareInterface_C8051F040.c:339: Q->Array	= receiveBuffer[0] ;
	mov	a,#0x08
	add	a,r3
	mov	r3,a
	clr	a
	addc	a,r4
	mov	r4,a
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	mov	a,#_receiveBuffer
	lcall	__gptrput
	inc	dptr
	mov	a,#(_receiveBuffer >> 8)
	lcall	__gptrput
	inc	dptr
	clr	a
	lcall	__gptrput
;	../src/projectSpecificHardwareInterface_C8051F040.c:341: charSent[channelNumber]		= false ;
	mov	a,r2
	add	a,#_charSent
	mov	dpl,a
	clr	a
	addc	a,#(_charSent >> 8)
	mov	dph,a
	clr	a
	movx	@dptr,a
;	../src/projectSpecificHardwareInterface_C8051F040.c:342: lineReady[channelNumber]	= false ;
	mov	a,r2
	add	a,#_lineReady
	mov	dpl,a
	clr	a
	addc	a,#(_lineReady >> 8)
	mov	dph,a
	clr	a
	movx	@dptr,a
;	../src/projectSpecificHardwareInterface_C8051F040.c:344: if(!timer1initialized)
	jb	_task_UART_init_projectSpecific_timer1initialized_1_1,00102$
;	../src/projectSpecificHardwareInterface_C8051F040.c:346: timer1initialized = true ;
	setb	_task_UART_init_projectSpecific_timer1initialized_1_1
;	../src/projectSpecificHardwareInterface_C8051F040.c:348: portSET_REGISTER_GROUP(TIMER01_PAGE)
	mov	r2,_SFRPAGE
	mov	_SFRPAGE,#0x00
;	../src/projectSpecificHardwareInterface_C8051F040.c:351: TMOD &= 0x08 ;
	anl	_TMOD,#0x08
;	../src/projectSpecificHardwareInterface_C8051F040.c:352: TMOD |= ser8BIT_WITH_RELOAD ;
	orl	_TMOD,#0x20
;	../src/projectSpecificHardwareInterface_C8051F040.c:353: SSTA0 |= serSMOD ;
	orl	_SSTA0,#0x10
;	../src/projectSpecificHardwareInterface_C8051F040.c:354: CKCON |= 0x10 ;
	orl	_CKCON,#0x10
;	../src/projectSpecificHardwareInterface_C8051F040.c:357: TL1 = ( unsigned char ) 0xB2 ;	// B8 = 9600 BAUD on unmoded eval boards, B2 = 9615 on 24MHz systems
	mov	_TL1,#0xB2
;	../src/projectSpecificHardwareInterface_C8051F040.c:358: TH1 = ( unsigned char ) 0xB2 ;
	mov	_TH1,#0xB2
;	../src/projectSpecificHardwareInterface_C8051F040.c:360: SCON = ser8_BIT_MODE | serRX_ENABLE ;	/* Setup the control register for standard n, 8, 1 - variable baud rate. */
	mov	_SCON,#0x50
;	../src/projectSpecificHardwareInterface_C8051F040.c:362: TR1 = 1 ;							/* Start the timer. */
	setb	_TR1
;	../src/projectSpecificHardwareInterface_C8051F040.c:364: portRESTORE_REGISTER_GROUP()
	mov	_SFRPAGE,r2
00102$:
;	../src/projectSpecificHardwareInterface_C8051F040.c:367: if(channelNumber == 0)
	mov	dptr,#_task_UART_init_projectSpecific_channelNumber_1_1
	movx	a,@dptr
	mov	r2,a
	jnz	00106$
;	../src/projectSpecificHardwareInterface_C8051F040.c:369: UART0_Init() ;
	ljmp	_UART0_Init
00106$:
;	../src/projectSpecificHardwareInterface_C8051F040.c:371: else if(channelNumber == 1)
	cjne	r2,#0x01,00108$
;	../src/projectSpecificHardwareInterface_C8051F040.c:373: UART1_Init() ;
	ljmp	_UART1_Init
00108$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'task_UART_core_projectSpecific'
;------------------------------------------------------------
;sloc0                     Allocated with name '_task_UART_core_projectSpecific_sloc0_1_0'
;sloc1                     Allocated with name '_task_UART_core_projectSpecific_sloc1_1_0'
;sloc2                     Allocated with name '_task_UART_core_projectSpecific_sloc2_1_0'
;sloc3                     Allocated with name '_task_UART_core_projectSpecific_sloc3_1_0'
;channelNumber             Allocated with name '_task_UART_core_projectSpecific_channelNumber_1_1'
;SFRPAGE_SAVE              Allocated with name '_task_UART_core_projectSpecific_SFRPAGE_SAVE_3_3'
;Q                         Allocated with name '_task_UART_core_projectSpecific_Q_4_4'
;charReceived              Allocated with name '_task_UART_core_projectSpecific_charReceived_6_6'
;byteToSend                Allocated with name '_task_UART_core_projectSpecific_byteToSend_5_10'
;------------------------------------------------------------
;	../src/projectSpecificHardwareInterface_C8051F040.c:382: void task_UART_core_projectSpecific(	unsigned char channelNumber)
;	-----------------------------------------
;	 function task_UART_core_projectSpecific
;	-----------------------------------------
_task_UART_core_projectSpecific:
	mov	a,dpl
	mov	dptr,#_task_UART_core_projectSpecific_channelNumber_1_1
	movx	@dptr,a
;	../src/projectSpecificHardwareInterface_C8051F040.c:384: if(channelNumber < NUMBER_OF_UARTS)
	mov	dptr,#_task_UART_core_projectSpecific_channelNumber_1_1
	movx	a,@dptr
	mov	r2,a
	cjne	r2,#0x01,00125$
00125$:
	jc	00126$
	ret
00126$:
;	../src/projectSpecificHardwareInterface_C8051F040.c:386: portSET_REGISTER_GROUP(UART0_PAGE)
	mov	r3,_SFRPAGE
	mov	_SFRPAGE,#0x00
;	../src/projectSpecificHardwareInterface_C8051F040.c:388: QUEUE_TYPE*	Q = &receiveBuffers[channelNumber] ;
	mov	a,r2
	mov	b,#0x0B
	mul	ab
	add	a,#_receiveBuffers
	mov	r4,a
	clr	a
	addc	a,#(_receiveBuffers >> 8)
	mov	r5,a
	mov	r6,#0x00
	mov	dptr,#_task_UART_core_projectSpecific_Q_4_4
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
	inc	dptr
	mov	a,r6
	movx	@dptr,a
;	../src/projectSpecificHardwareInterface_C8051F040.c:390: if(RI0)
	jb	_RI0,00127$
	ljmp	00106$
00127$:
;	../src/projectSpecificHardwareInterface_C8051F040.c:392: if(!IsFull(Q))
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	push	ar2
	push	ar3
	lcall	_IsFull
	mov	a,dpl
	pop	ar3
	pop	ar2
	jz	00128$
	ljmp	00104$
00128$:
;	../src/projectSpecificHardwareInterface_C8051F040.c:394: char	charReceived = SBUF0 ;
	push	ar3
	mov	_task_UART_core_projectSpecific_sloc0_1_0,_SBUF0
;	../src/projectSpecificHardwareInterface_C8051F040.c:396: Q->Size++ ;
	mov	dptr,#_task_UART_core_projectSpecific_Q_4_4
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x06
	add	a,r5
	mov	_task_UART_core_projectSpecific_sloc1_1_0,a
	clr	a
	addc	a,r6
	mov	(_task_UART_core_projectSpecific_sloc1_1_0 + 1),a
	mov	(_task_UART_core_projectSpecific_sloc1_1_0 + 2),r7
	mov	dpl,_task_UART_core_projectSpecific_sloc1_1_0
	mov	dph,(_task_UART_core_projectSpecific_sloc1_1_0 + 1)
	mov	b,(_task_UART_core_projectSpecific_sloc1_1_0 + 2)
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	r4
	cjne	r4,#0x00,00129$
	inc	r3
00129$:
	mov	dpl,_task_UART_core_projectSpecific_sloc1_1_0
	mov	dph,(_task_UART_core_projectSpecific_sloc1_1_0 + 1)
	mov	b,(_task_UART_core_projectSpecific_sloc1_1_0 + 2)
	mov	a,r4
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
;	../src/projectSpecificHardwareInterface_C8051F040.c:397: Q->Rear = Succ(Q->Rear, Q) ;
	mov	a,#0x04
	add	a,r5
	mov	_task_UART_core_projectSpecific_sloc1_1_0,a
	clr	a
	addc	a,r6
	mov	(_task_UART_core_projectSpecific_sloc1_1_0 + 1),a
	mov	(_task_UART_core_projectSpecific_sloc1_1_0 + 2),r7
	mov	dpl,_task_UART_core_projectSpecific_sloc1_1_0
	mov	dph,(_task_UART_core_projectSpecific_sloc1_1_0 + 1)
	mov	b,(_task_UART_core_projectSpecific_sloc1_1_0 + 2)
	lcall	__gptrget
	mov	r1,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	mov	dptr,#_Succ_PARM_2
	mov	a,r5
	movx	@dptr,a
	inc	dptr
	mov	a,r6
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
	mov	dpl,r1
	mov	dph,r3
	push	ar2
	lcall	_Succ
	mov	r3,dpl
	mov	r4,dph
	pop	ar2
	mov	dpl,_task_UART_core_projectSpecific_sloc1_1_0
	mov	dph,(_task_UART_core_projectSpecific_sloc1_1_0 + 1)
	mov	b,(_task_UART_core_projectSpecific_sloc1_1_0 + 2)
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
;	../src/projectSpecificHardwareInterface_C8051F040.c:398: Q->Array[Q->Rear] = charReceived ;
	mov	dptr,#_task_UART_core_projectSpecific_Q_4_4
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	a,#0x08
	add	a,r3
	mov	r6,a
	clr	a
	addc	a,r4
	mov	r7,a
	mov	ar0,r5
	mov	dpl,r6
	mov	dph,r7
	mov	b,r0
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	inc	dptr
	lcall	__gptrget
	mov	r0,a
	mov	a,#0x04
	add	a,r3
	mov	r3,a
	clr	a
	addc	a,r4
	mov	r4,a
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	a,r3
	add	a,r6
	mov	r6,a
	mov	a,r4
	addc	a,r7
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	mov	b,r0
	mov	a,_task_UART_core_projectSpecific_sloc0_1_0
	lcall	__gptrput
;	../src/projectSpecificHardwareInterface_C8051F040.c:400: if(charReceived == '\n')
	mov	a,#0x0A
	cjne	a,_task_UART_core_projectSpecific_sloc0_1_0,00130$
	sjmp	00131$
00130$:
	pop	ar3
	sjmp	00104$
00131$:
	pop	ar3
;	../src/projectSpecificHardwareInterface_C8051F040.c:402: lineReady[channelNumber] = true ;
	mov	a,r2
	add	a,#_lineReady
	mov	dpl,a
	clr	a
	addc	a,#(_lineReady >> 8)
	mov	dph,a
	mov	a,#0x01
	movx	@dptr,a
00104$:
;	../src/projectSpecificHardwareInterface_C8051F040.c:406: RI0 = 0 ;
	clr	_RI0
00106$:
;	../src/projectSpecificHardwareInterface_C8051F040.c:409: Q = &transmitBuffers[channelNumber] ;
	mov	dptr,#_task_UART_core_projectSpecific_channelNumber_1_1
	movx	a,@dptr
	mov	r2,a
	mov	b,#0x0B
	mul	ab
	add	a,#_transmitBuffers
	mov	r4,a
	clr	a
	addc	a,#(_transmitBuffers >> 8)
	mov	r5,a
	mov	r6,#0x00
	mov	dptr,#_task_UART_core_projectSpecific_Q_4_4
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
	inc	dptr
	mov	a,r6
	movx	@dptr,a
;	../src/projectSpecificHardwareInterface_C8051F040.c:411: if(charSent[channelNumber] == true)
	mov	a,r2
	add	a,#_charSent
	mov	r2,a
	clr	a
	addc	a,#(_charSent >> 8)
	mov	r7,a
	mov	dpl,r2
	mov	dph,r7
	movx	a,@dptr
	mov	r0,a
	cjne	r0,#0x01,00111$
;	../src/projectSpecificHardwareInterface_C8051F040.c:413: charSent[channelNumber] = false ;
	mov	dpl,r2
	mov	dph,r7
	clr	a
	movx	@dptr,a
;	../src/projectSpecificHardwareInterface_C8051F040.c:417: while(TI0 == 0) { /* empty loop */} ;
00107$:
	jnb	_TI0,00107$
00111$:
;	../src/projectSpecificHardwareInterface_C8051F040.c:420: if(!IsEmpty(Q))
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	push	ar3
	lcall	_IsEmpty
	mov	a,dpl
	pop	ar3
	jz	00135$
	ljmp	00113$
00135$:
;	../src/projectSpecificHardwareInterface_C8051F040.c:422: unsigned char byteToSend = Q->Array[Q->Front] ;
	push	ar3
	mov	dptr,#_task_UART_core_projectSpecific_Q_4_4
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	a,#0x08
	add	a,r2
	mov	r6,a
	clr	a
	addc	a,r4
	mov	r7,a
	mov	ar0,r5
	mov	dpl,r6
	mov	dph,r7
	mov	b,r0
	lcall	__gptrget
	mov	_task_UART_core_projectSpecific_sloc1_1_0,a
	inc	dptr
	lcall	__gptrget
	mov	(_task_UART_core_projectSpecific_sloc1_1_0 + 1),a
	inc	dptr
	lcall	__gptrget
	mov	(_task_UART_core_projectSpecific_sloc1_1_0 + 2),a
	mov	a,#0x02
	add	a,r2
	mov	_task_UART_core_projectSpecific_sloc3_1_0,a
	clr	a
	addc	a,r4
	mov	(_task_UART_core_projectSpecific_sloc3_1_0 + 1),a
	mov	(_task_UART_core_projectSpecific_sloc3_1_0 + 2),r5
	mov	dpl,_task_UART_core_projectSpecific_sloc3_1_0
	mov	dph,(_task_UART_core_projectSpecific_sloc3_1_0 + 1)
	mov	b,(_task_UART_core_projectSpecific_sloc3_1_0 + 2)
	lcall	__gptrget
	mov	_task_UART_core_projectSpecific_sloc2_1_0,a
	inc	dptr
	lcall	__gptrget
	mov	(_task_UART_core_projectSpecific_sloc2_1_0 + 1),a
	mov	a,_task_UART_core_projectSpecific_sloc2_1_0
	add	a,_task_UART_core_projectSpecific_sloc1_1_0
	mov	r7,a
	mov	a,(_task_UART_core_projectSpecific_sloc2_1_0 + 1)
	addc	a,(_task_UART_core_projectSpecific_sloc1_1_0 + 1)
	mov	r0,a
	mov	r3,(_task_UART_core_projectSpecific_sloc1_1_0 + 2)
	mov	dpl,r7
	mov	dph,r0
	mov	b,r3
	lcall	__gptrget
	mov	_task_UART_core_projectSpecific_sloc1_1_0,a
;	../src/projectSpecificHardwareInterface_C8051F040.c:424: Q->Size-- ;
	mov	a,#0x06
	add	a,r2
	mov	r3,a
	clr	a
	addc	a,r4
	mov	r6,a
	mov	ar0,r5
	mov	dpl,r3
	mov	dph,r6
	mov	b,r0
	lcall	__gptrget
	mov	r1,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	dec	r1
	cjne	r1,#0xff,00136$
	dec	r7
00136$:
	mov	dpl,r3
	mov	dph,r6
	mov	b,r0
	mov	a,r1
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
;	../src/projectSpecificHardwareInterface_C8051F040.c:425: Q->Front = Succ(Q->Front, Q) ;
	mov	dptr,#_Succ_PARM_2
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
	mov	dpl,_task_UART_core_projectSpecific_sloc2_1_0
	mov	dph,(_task_UART_core_projectSpecific_sloc2_1_0 + 1)
	lcall	_Succ
	mov	r2,dpl
	mov	r3,dph
	mov	dpl,_task_UART_core_projectSpecific_sloc3_1_0
	mov	dph,(_task_UART_core_projectSpecific_sloc3_1_0 + 1)
	mov	b,(_task_UART_core_projectSpecific_sloc3_1_0 + 2)
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
;	../src/projectSpecificHardwareInterface_C8051F040.c:427: TI0 = 0 ;	// clear it and send the next character
	clr	_TI0
;	../src/projectSpecificHardwareInterface_C8051F040.c:429: SBUF0 = byteToSend ;
	mov	_SBUF0,_task_UART_core_projectSpecific_sloc1_1_0
;	../src/projectSpecificHardwareInterface_C8051F040.c:431: charSent[channelNumber] = true ;
	mov	dptr,#_task_UART_core_projectSpecific_channelNumber_1_1
	movx	a,@dptr
	mov	r2,a
	add	a,#_charSent
	mov	dpl,a
	clr	a
	addc	a,#(_charSent >> 8)
	mov	dph,a
	mov	a,#0x01
	movx	@dptr,a
;	../src/projectSpecificHardwareInterface_C8051F040.c:434: portRESTORE_REGISTER_GROUP()
	pop	ar3
;	../src/projectSpecificHardwareInterface_C8051F040.c:431: charSent[channelNumber] = true ;
00113$:
;	../src/projectSpecificHardwareInterface_C8051F040.c:434: portRESTORE_REGISTER_GROUP()
	mov	_SFRPAGE,r3
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'task_UART_putchar_projectSpecific'
;------------------------------------------------------------
;charToSend                Allocated with name '_task_UART_putchar_projectSpecific_PARM_2'
;channelNumber             Allocated with name '_task_UART_putchar_projectSpecific_channelNumber_1_1'
;Q                         Allocated with name '_task_UART_putchar_projectSpecific_Q_2_2'
;------------------------------------------------------------
;	../src/projectSpecificHardwareInterface_C8051F040.c:439: bool task_UART_putchar_projectSpecific(	unsigned char channelNumber, char charToSend)
;	-----------------------------------------
;	 function task_UART_putchar_projectSpecific
;	-----------------------------------------
_task_UART_putchar_projectSpecific:
	mov	a,dpl
	mov	dptr,#_task_UART_putchar_projectSpecific_channelNumber_1_1
	movx	@dptr,a
;	../src/projectSpecificHardwareInterface_C8051F040.c:441: task_UART_core(0) ;
	mov	dpl,#0x00
	lcall	_task_UART_core
;	../src/projectSpecificHardwareInterface_C8051F040.c:443: portDISABLE_INTERRUPTS() ;
	clr	_EA
;	../src/projectSpecificHardwareInterface_C8051F040.c:445: if(channelNumber < NUMBER_OF_UARTS)
	mov	dptr,#_task_UART_putchar_projectSpecific_channelNumber_1_1
	movx	a,@dptr
	mov	r2,a
	cjne	r2,#0x01,00109$
00109$:
	jc	00110$
	ljmp	00104$
00110$:
;	../src/projectSpecificHardwareInterface_C8051F040.c:447: QUEUE_TYPE*	Q = &transmitBuffers[channelNumber] ;
	mov	a,r2
	mov	b,#0x0B
	mul	ab
	add	a,#_transmitBuffers
	mov	r2,a
	clr	a
	addc	a,#(_transmitBuffers >> 8)
	mov	r3,a
	mov	r4,#0x00
	mov	dptr,#_task_UART_putchar_projectSpecific_Q_2_2
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r4
	movx	@dptr,a
;	../src/projectSpecificHardwareInterface_C8051F040.c:449: if(!IsFull(Q))
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_IsFull
	mov	a,dpl
	jz	00111$
	ljmp	00104$
00111$:
;	../src/projectSpecificHardwareInterface_C8051F040.c:451: Q->Size++ ;
	mov	dptr,#_task_UART_putchar_projectSpecific_Q_2_2
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	a,#0x06
	add	a,r2
	mov	r5,a
	clr	a
	addc	a,r3
	mov	r6,a
	mov	ar7,r4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r0,a
	inc	dptr
	lcall	__gptrget
	mov	r1,a
	inc	r0
	cjne	r0,#0x00,00112$
	inc	r1
00112$:
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r0
	lcall	__gptrput
	inc	dptr
	mov	a,r1
	lcall	__gptrput
;	../src/projectSpecificHardwareInterface_C8051F040.c:452: Q->Rear = Succ(Q->Rear, Q) ;
	mov	a,#0x04
	add	a,r2
	mov	r5,a
	clr	a
	addc	a,r3
	mov	r6,a
	mov	ar7,r4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r0,a
	inc	dptr
	lcall	__gptrget
	mov	r1,a
	mov	dptr,#_Succ_PARM_2
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r4
	movx	@dptr,a
	mov	dpl,r0
	mov	dph,r1
	push	ar5
	push	ar6
	push	ar7
	lcall	_Succ
	mov	r2,dpl
	mov	r3,dph
	pop	ar7
	pop	ar6
	pop	ar5
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
;	../src/projectSpecificHardwareInterface_C8051F040.c:453: Q->Array[Q->Rear] = charToSend ;
	mov	dptr,#_task_UART_putchar_projectSpecific_Q_2_2
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	a,#0x08
	add	a,r2
	mov	r5,a
	clr	a
	addc	a,r3
	mov	r6,a
	mov	ar7,r4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	a,#0x04
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	mov	a,r2
	add	a,r5
	mov	r5,a
	mov	a,r3
	addc	a,r6
	mov	r6,a
	mov	dptr,#_task_UART_putchar_projectSpecific_PARM_2
	movx	a,@dptr
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrput
;	../src/projectSpecificHardwareInterface_C8051F040.c:455: portENABLE_INTERRUPTS() ;
	setb	_EA
;	../src/projectSpecificHardwareInterface_C8051F040.c:457: return true ;
	setb	c
	ret
00104$:
;	../src/projectSpecificHardwareInterface_C8051F040.c:461: portENABLE_INTERRUPTS() ;
	setb	_EA
;	../src/projectSpecificHardwareInterface_C8051F040.c:465: return false ;
	clr	c
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'task_UART_puts_projectSpecific'
;------------------------------------------------------------
;buffer                    Allocated with name '_task_UART_puts_projectSpecific_PARM_2'
;channelNumber             Allocated with name '_task_UART_puts_projectSpecific_channelNumber_1_1'
;myBuffer                  Allocated with name '_task_UART_puts_projectSpecific_myBuffer_2_2'
;------------------------------------------------------------
;	../src/projectSpecificHardwareInterface_C8051F040.c:469: void task_UART_puts_projectSpecific(	unsigned char channelNumber, const char *buffer)
;	-----------------------------------------
;	 function task_UART_puts_projectSpecific
;	-----------------------------------------
_task_UART_puts_projectSpecific:
	mov	a,dpl
	mov	dptr,#_task_UART_puts_projectSpecific_channelNumber_1_1
	movx	@dptr,a
;	../src/projectSpecificHardwareInterface_C8051F040.c:471: if(channelNumber < NUMBER_OF_UARTS)
	mov	dptr,#_task_UART_puts_projectSpecific_channelNumber_1_1
	movx	a,@dptr
	mov	r2,a
	cjne	r2,#0x01,00119$
00119$:
	jnc	00112$
;	../src/projectSpecificHardwareInterface_C8051F040.c:473: unsigned char* myBuffer = buffer ;
	mov	dptr,#_task_UART_puts_projectSpecific_PARM_2
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
;	../src/projectSpecificHardwareInterface_C8051F040.c:475: while(*myBuffer)
	mov	ar6,r2
00107$:
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	__gptrget
	mov	r7,a
	jz	00112$
;	../src/projectSpecificHardwareInterface_C8051F040.c:477: if((*myBuffer) == '\n')
	cjne	r7,#0x0A,00104$
;	../src/projectSpecificHardwareInterface_C8051F040.c:479: if(!task_UART_putchar(channelNumber, '\r'))
	mov	dptr,#_task_UART_putchar_PARM_2
	mov	a,#0x0D
	movx	@dptr,a
	mov	dpl,r6
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	push	ar6
	lcall	_task_UART_putchar
	pop	ar6
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
	jnc	00112$
;	../src/projectSpecificHardwareInterface_C8051F040.c:481: break ;
00104$:
;	../src/projectSpecificHardwareInterface_C8051F040.c:485: if(!task_UART_putchar(channelNumber, *myBuffer++))
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	__gptrget
	mov	r7,a
	inc	dptr
	mov	r3,dpl
	mov	r4,dph
	mov	dptr,#_task_UART_putchar_PARM_2
	mov	a,r7
	movx	@dptr,a
	mov	dpl,r2
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	push	ar6
	lcall	_task_UART_putchar
	pop	ar6
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
	jc	00107$
;	../src/projectSpecificHardwareInterface_C8051F040.c:487: break ;
00112$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'task_UART_getchar_projectSpecific'
;------------------------------------------------------------
;sloc0                     Allocated with name '_task_UART_getchar_projectSpecific_sloc0_1_0'
;sloc1                     Allocated with name '_task_UART_getchar_projectSpecific_sloc1_1_0'
;sloc2                     Allocated with name '_task_UART_getchar_projectSpecific_sloc2_1_0'
;channelNumber             Allocated with name '_task_UART_getchar_projectSpecific_channelNumber_1_1'
;Q                         Allocated with name '_task_UART_getchar_projectSpecific_Q_2_2'
;byteReceived              Allocated with name '_task_UART_getchar_projectSpecific_byteReceived_3_3'
;------------------------------------------------------------
;	../src/projectSpecificHardwareInterface_C8051F040.c:494: char task_UART_getchar_projectSpecific(	unsigned char channelNumber)
;	-----------------------------------------
;	 function task_UART_getchar_projectSpecific
;	-----------------------------------------
_task_UART_getchar_projectSpecific:
	mov	a,dpl
	mov	dptr,#_task_UART_getchar_projectSpecific_channelNumber_1_1
	movx	@dptr,a
;	../src/projectSpecificHardwareInterface_C8051F040.c:496: if(channelNumber < NUMBER_OF_UARTS)
	mov	dptr,#_task_UART_getchar_projectSpecific_channelNumber_1_1
	movx	a,@dptr
	mov	r2,a
	cjne	r2,#0x01,00109$
00109$:
	jc	00110$
	ljmp	00104$
00110$:
;	../src/projectSpecificHardwareInterface_C8051F040.c:498: QUEUE_TYPE*	Q = &receiveBuffers[channelNumber] ;
	mov	a,r2
	mov	b,#0x0B
	mul	ab
	add	a,#_receiveBuffers
	mov	r2,a
	clr	a
	addc	a,#(_receiveBuffers >> 8)
	mov	r3,a
	mov	r4,#0x00
	mov	dptr,#_task_UART_getchar_projectSpecific_Q_2_2
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r4
	movx	@dptr,a
;	../src/projectSpecificHardwareInterface_C8051F040.c:500: if(!IsEmpty(Q))
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_IsEmpty
	mov	a,dpl
	jz	00111$
	ljmp	00104$
00111$:
;	../src/projectSpecificHardwareInterface_C8051F040.c:502: unsigned char byteReceived = Q->Array[Q->Front] ;
	mov	dptr,#_task_UART_getchar_projectSpecific_Q_2_2
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	a,#0x08
	add	a,r2
	mov	r5,a
	clr	a
	addc	a,r3
	mov	r6,a
	mov	ar7,r4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	_task_UART_getchar_projectSpecific_sloc0_1_0,a
	inc	dptr
	lcall	__gptrget
	mov	(_task_UART_getchar_projectSpecific_sloc0_1_0 + 1),a
	inc	dptr
	lcall	__gptrget
	mov	(_task_UART_getchar_projectSpecific_sloc0_1_0 + 2),a
	mov	a,#0x02
	add	a,r2
	mov	_task_UART_getchar_projectSpecific_sloc2_1_0,a
	clr	a
	addc	a,r3
	mov	(_task_UART_getchar_projectSpecific_sloc2_1_0 + 1),a
	mov	(_task_UART_getchar_projectSpecific_sloc2_1_0 + 2),r4
	mov	dpl,_task_UART_getchar_projectSpecific_sloc2_1_0
	mov	dph,(_task_UART_getchar_projectSpecific_sloc2_1_0 + 1)
	mov	b,(_task_UART_getchar_projectSpecific_sloc2_1_0 + 2)
	lcall	__gptrget
	mov	_task_UART_getchar_projectSpecific_sloc1_1_0,a
	inc	dptr
	lcall	__gptrget
	mov	(_task_UART_getchar_projectSpecific_sloc1_1_0 + 1),a
	mov	a,_task_UART_getchar_projectSpecific_sloc1_1_0
	add	a,_task_UART_getchar_projectSpecific_sloc0_1_0
	mov	r6,a
	mov	a,(_task_UART_getchar_projectSpecific_sloc1_1_0 + 1)
	addc	a,(_task_UART_getchar_projectSpecific_sloc0_1_0 + 1)
	mov	r7,a
	mov	r5,(_task_UART_getchar_projectSpecific_sloc0_1_0 + 2)
	mov	dpl,r6
	mov	dph,r7
	mov	b,r5
	lcall	__gptrget
	mov	_task_UART_getchar_projectSpecific_sloc0_1_0,a
;	../src/projectSpecificHardwareInterface_C8051F040.c:504: Q->Size-- ;
	mov	a,#0x06
	add	a,r2
	mov	r5,a
	clr	a
	addc	a,r3
	mov	r7,a
	mov	ar0,r4
	mov	dpl,r5
	mov	dph,r7
	mov	b,r0
	lcall	__gptrget
	mov	r1,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	dec	r1
	cjne	r1,#0xff,00112$
	dec	r6
00112$:
	mov	dpl,r5
	mov	dph,r7
	mov	b,r0
	mov	a,r1
	lcall	__gptrput
	inc	dptr
	mov	a,r6
	lcall	__gptrput
;	../src/projectSpecificHardwareInterface_C8051F040.c:505: Q->Front = Succ(Q->Front, Q) ;
	mov	dptr,#_Succ_PARM_2
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r4
	movx	@dptr,a
	mov	dpl,_task_UART_getchar_projectSpecific_sloc1_1_0
	mov	dph,(_task_UART_getchar_projectSpecific_sloc1_1_0 + 1)
	lcall	_Succ
	mov	r2,dpl
	mov	r3,dph
	mov	dpl,_task_UART_getchar_projectSpecific_sloc2_1_0
	mov	dph,(_task_UART_getchar_projectSpecific_sloc2_1_0 + 1)
	mov	b,(_task_UART_getchar_projectSpecific_sloc2_1_0 + 2)
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
;	../src/projectSpecificHardwareInterface_C8051F040.c:507: return byteReceived ;
	mov	dpl,_task_UART_getchar_projectSpecific_sloc0_1_0
;	../src/projectSpecificHardwareInterface_C8051F040.c:511: return -1 ;
	ret
00104$:
	mov	dpl,#0xFF
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'task_UART_gets_projectSpecific'
;------------------------------------------------------------
;sloc0                     Allocated with name '_task_UART_gets_projectSpecific_sloc0_1_0'
;sloc1                     Allocated with name '_task_UART_gets_projectSpecific_sloc1_1_0'
;buffer                    Allocated with name '_task_UART_gets_projectSpecific_PARM_2'
;maxBufferLength           Allocated with name '_task_UART_gets_projectSpecific_PARM_3'
;channelNumber             Allocated with name '_task_UART_gets_projectSpecific_channelNumber_1_1'
;charsReturned             Allocated with name '_task_UART_gets_projectSpecific_charsReturned_2_2'
;latestCharInBuffer        Allocated with name '_task_UART_gets_projectSpecific_latestCharInBuffer_3_3'
;------------------------------------------------------------
;	../src/projectSpecificHardwareInterface_C8051F040.c:515: char* task_UART_gets_projectSpecific(	unsigned char channelNumber, char* buffer, unsigned short maxBufferLength)
;	-----------------------------------------
;	 function task_UART_gets_projectSpecific
;	-----------------------------------------
_task_UART_gets_projectSpecific:
	mov	a,dpl
	mov	dptr,#_task_UART_gets_projectSpecific_channelNumber_1_1
	movx	@dptr,a
;	../src/projectSpecificHardwareInterface_C8051F040.c:517: if(channelNumber < NUMBER_OF_UARTS)
	mov	dptr,#_task_UART_gets_projectSpecific_channelNumber_1_1
	movx	a,@dptr
	mov	r2,a
	cjne	r2,#0x01,00119$
00119$:
	jnc	00110$
;	../src/projectSpecificHardwareInterface_C8051F040.c:521: while(charsReturned < maxBufferLength)
	mov	dptr,#_task_UART_gets_projectSpecific_PARM_3
	movx	a,@dptr
	mov	_task_UART_gets_projectSpecific_sloc1_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_task_UART_gets_projectSpecific_sloc1_1_0 + 1),a
	mov	dptr,#_task_UART_gets_projectSpecific_PARM_2
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	r0,#0x00
	mov	r1,#0x00
00106$:
	clr	c
	mov	a,r0
	subb	a,_task_UART_gets_projectSpecific_sloc1_1_0
	mov	a,r1
	subb	a,(_task_UART_gets_projectSpecific_sloc1_1_0 + 1)
	jnc	00110$
;	../src/projectSpecificHardwareInterface_C8051F040.c:523: char latestCharInBuffer = task_UART_getchar(channelNumber) ;
	mov	dpl,r2
	push	ar2
	push	ar5
	push	ar6
	push	ar7
	push	ar0
	push	ar1
	lcall	_task_UART_getchar
	mov	_task_UART_gets_projectSpecific_sloc0_1_0,dpl
	pop	ar1
	pop	ar0
	pop	ar7
	pop	ar6
	pop	ar5
	pop	ar2
;	../src/projectSpecificHardwareInterface_C8051F040.c:525: if(latestCharInBuffer <= 0)	// break on a NULL or a -1
	clr	c
	mov	a,#(0x00 ^ 0x80)
	mov	b,_task_UART_gets_projectSpecific_sloc0_1_0
	xrl	b,#0x80
	subb	a,b
	jnc	00110$
;	../src/projectSpecificHardwareInterface_C8051F040.c:529: else if(latestCharInBuffer == '\r')	// Skip carriage returns
	mov	a,#0x0D
	cjne	a,_task_UART_gets_projectSpecific_sloc0_1_0,00123$
	sjmp	00106$
00123$:
;	../src/projectSpecificHardwareInterface_C8051F040.c:534: buffer[charsReturned] = latestCharInBuffer ;
	push	ar2
	mov	a,r0
	add	a,r5
	mov	r2,a
	mov	a,r1
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,_task_UART_gets_projectSpecific_sloc0_1_0
	lcall	__gptrput
;	../src/projectSpecificHardwareInterface_C8051F040.c:536: charsReturned++ ;
	inc	r0
	cjne	r0,#0x00,00124$
	inc	r1
00124$:
	pop	ar2
	sjmp	00106$
00110$:
;	../src/projectSpecificHardwareInterface_C8051F040.c:540: return 0 ;
	mov	dptr,#0x0000
	mov	b,#0x00
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'task_UART_isLineReady'
;------------------------------------------------------------
;channelNumber             Allocated with name '_task_UART_isLineReady_channelNumber_1_1'
;------------------------------------------------------------
;	../src/projectSpecificHardwareInterface_C8051F040.c:544: bool task_UART_isLineReady(	unsigned char channelNumber)
;	-----------------------------------------
;	 function task_UART_isLineReady
;	-----------------------------------------
_task_UART_isLineReady:
	mov	a,dpl
	mov	dptr,#_task_UART_isLineReady_channelNumber_1_1
	movx	@dptr,a
;	../src/projectSpecificHardwareInterface_C8051F040.c:546: return lineReady[channelNumber] ;
	mov	dptr,#_task_UART_isLineReady_channelNumber_1_1
	movx	a,@dptr
	add	a,#_lineReady
	mov	dpl,a
	clr	a
	addc	a,#(_lineReady >> 8)
	mov	dph,a
	movx	a,@dptr
	add	a,#0xff
	mov  _task_UART_isLineReady_sloc0_1_0,c
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'UART0_Init'
;------------------------------------------------------------
;SFRPAGE_SAVE              Allocated with name '_UART0_Init_SFRPAGE_SAVE_1_1'
;------------------------------------------------------------
;	../src/projectSpecificHardwareInterface_C8051F040.c:550: void UART0_Init(void)
;	-----------------------------------------
;	 function UART0_Init
;	-----------------------------------------
_UART0_Init:
;	../src/projectSpecificHardwareInterface_C8051F040.c:554: SFRPAGE_SAVE = SFRPAGE;             // Preserve SFRPAGE
	mov	r2,_SFRPAGE
;	../src/projectSpecificHardwareInterface_C8051F040.c:556: SFRPAGE = UART0_PAGE;
	mov	_SFRPAGE,#0x00
;	../src/projectSpecificHardwareInterface_C8051F040.c:558: SCON0 = 0x52;                       // 8-bit variable baud rate;
	mov	_SCON0,#0x52
;	../src/projectSpecificHardwareInterface_C8051F040.c:561: SSTA0 = 0x10;                       // Clear all flags; enable baud rate
	mov	_SSTA0,#0x10
;	../src/projectSpecificHardwareInterface_C8051F040.c:568: SFRPAGE = SFRPAGE_SAVE;
	mov	_SFRPAGE,r2
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'UART1_Init'
;------------------------------------------------------------
;SFRPAGE_SAVE              Allocated with name '_UART1_Init_SFRPAGE_SAVE_2_2'
;------------------------------------------------------------
;	../src/projectSpecificHardwareInterface_C8051F040.c:589: void UART1_Init(void)
;	-----------------------------------------
;	 function UART1_Init
;	-----------------------------------------
_UART1_Init:
;	../src/projectSpecificHardwareInterface_C8051F040.c:591: portSET_REGISTER_GROUP(UART1_PAGE)
	mov	r2,_SFRPAGE
	mov	_SFRPAGE,#0x01
;	../src/projectSpecificHardwareInterface_C8051F040.c:593: SCON1 = 0x10 ;	// 8-bit variable baud rate;
	mov	_SCON1,#0x10
;	../src/projectSpecificHardwareInterface_C8051F040.c:599: portRESTORE_REGISTER_GROUP()
	mov	_SFRPAGE,r2
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'putchar'
;------------------------------------------------------------
;c                         Allocated with name '_putchar_c_1_1'
;------------------------------------------------------------
;	../src/projectSpecificHardwareInterface_C8051F040.c:603: void putchar(char c)
;	-----------------------------------------
;	 function putchar
;	-----------------------------------------
_putchar:
	mov	a,dpl
	mov	dptr,#_putchar_c_1_1
	movx	@dptr,a
;	../src/projectSpecificHardwareInterface_C8051F040.c:605: if(c == '\n')
	mov	dptr,#_putchar_c_1_1
	movx	a,@dptr
	mov	r2,a
	cjne	r2,#0x0A,00102$
;	../src/projectSpecificHardwareInterface_C8051F040.c:607: task_UART_putchar(0, '\r') ;
	mov	dptr,#_task_UART_putchar_PARM_2
	mov	a,#0x0D
	movx	@dptr,a
	mov	dpl,#0x00
	lcall	_task_UART_putchar
00102$:
;	../src/projectSpecificHardwareInterface_C8051F040.c:610: task_UART_putchar(0, c) ;
	mov	dptr,#_putchar_c_1_1
	movx	a,@dptr
	mov	dptr,#_task_UART_putchar_PARM_2
	movx	@dptr,a
	mov	dpl,#0x00
	ljmp	_task_UART_putchar
;------------------------------------------------------------
;Allocation info for local variables in function 'prvSetupSystemClock'
;------------------------------------------------------------
;n                         Allocated with name '_prvSetupSystemClock_n_1_1'
;------------------------------------------------------------
;	../src/projectSpecificHardwareInterface_C8051F040.c:632: static void prvSetupSystemClock( void )
;	-----------------------------------------
;	 function prvSetupSystemClock
;	-----------------------------------------
_prvSetupSystemClock:
;	../src/projectSpecificHardwareInterface_C8051F040.c:635: SFRPAGE = CONFIG_PAGE ;			// switch to config page to config oscillator
	mov	_SFRPAGE,#0x0F
;	../src/projectSpecificHardwareInterface_C8051F040.c:637: OSCXCN = 0x77 ;					// start external oscillator; 24 MHz Crystal
	mov	_OSCXCN,#0x77
;	../src/projectSpecificHardwareInterface_C8051F040.c:641: for( n = 0 ; n < 255 ; n++ ) ;	// delay about 1ms
	mov	r2,#0xFF
	mov	r3,#0x00
00106$:
	dec	r2
	cjne	r2,#0xff,00114$
	dec	r3
00114$:
	mov	a,r2
	orl	a,r3
	jnz	00106$
;	../src/projectSpecificHardwareInterface_C8051F040.c:642: while((OSCXCN & 0x80) == 0) ;	// wait for oscillator to stabilize
00101$:
	mov	a,_OSCXCN
	jnb	acc.7,00101$
;	../src/projectSpecificHardwareInterface_C8051F040.c:644: CLKSEL |= 0x01 ;				// switch to external oscillator
	orl	_CLKSEL,#0x01
;	../src/projectSpecificHardwareInterface_C8051F040.c:646: OSCICN = 0xC2 ;					// Turn off the internal oscillator to save a little power
	mov	_OSCICN,#0xC2
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'prvSetupTimerInterrupt'
;------------------------------------------------------------
;ucOriginalSFRPage         Allocated with name '_prvSetupTimerInterrupt_ucOriginalSFRPage_1_1'
;ulTicksPerSecond          Allocated with name '_prvSetupTimerInterrupt_ulTicksPerSecond_1_1'
;ulCaptureTime             Allocated with name '_prvSetupTimerInterrupt_ulCaptureTime_1_1'
;ulCaptureValue            Allocated with name '_prvSetupTimerInterrupt_ulCaptureValue_1_1'
;ucLowCaptureByte          Allocated with name '_prvSetupTimerInterrupt_ucLowCaptureByte_1_1'
;ucHighCaptureByte         Allocated with name '_prvSetupTimerInterrupt_ucHighCaptureByte_1_1'
;------------------------------------------------------------
;	../src/projectSpecificHardwareInterface_C8051F040.c:650: static void prvSetupTimerInterrupt( void )
;	-----------------------------------------
;	 function prvSetupTimerInterrupt
;	-----------------------------------------
_prvSetupTimerInterrupt:
;	../src/projectSpecificHardwareInterface_C8051F040.c:664: ucOriginalSFRPage = SFRPAGE;
	mov	dptr,#_prvSetupTimerInterrupt_ucOriginalSFRPage_1_1
	mov	a,_SFRPAGE
	movx	@dptr,a
;	../src/projectSpecificHardwareInterface_C8051F040.c:665: SFRPAGE = 0;
	mov	_SFRPAGE,#0x00
;	../src/projectSpecificHardwareInterface_C8051F040.c:668: TMR2CF = ( unsigned char ) 0;
	mov	_TMR2CF,#0x00
;	../src/projectSpecificHardwareInterface_C8051F040.c:671: RCAP2L = ucLowCaptureByte;
	mov	_RCAP2L,#0xD1
;	../src/projectSpecificHardwareInterface_C8051F040.c:672: RCAP2H = ucHighCaptureByte;
	mov	_RCAP2H,#0xFF
;	../src/projectSpecificHardwareInterface_C8051F040.c:675: TMR2L = ucLowCaptureByte;
	mov	_TMR2L,#0xD1
;	../src/projectSpecificHardwareInterface_C8051F040.c:676: TMR2H = ucHighCaptureByte;
	mov	_TMR2H,#0xFF
;	../src/projectSpecificHardwareInterface_C8051F040.c:679: IE |= portTIMER_2_INTERRUPT_ENABLE;
	orl	_IE,#0x20
;	../src/projectSpecificHardwareInterface_C8051F040.c:682: TMR2CN = portENABLE_TIMER ;
	mov	_TMR2CN,#0x06
;	../src/projectSpecificHardwareInterface_C8051F040.c:685: SFRPAGE	= 1 ;
	mov	_SFRPAGE,#0x01
;	../src/projectSpecificHardwareInterface_C8051F040.c:686: TMR3CF	= 0x0A ;
	mov	_TMR3CF,#0x0A
;	../src/projectSpecificHardwareInterface_C8051F040.c:688: RCAP3L	= 0xCE ;	// 120kHz on boost boards
	mov	_RCAP3L,#0xCE
;	../src/projectSpecificHardwareInterface_C8051F040.c:689: RCAP3H	= 0xFF ;	// 120kHz on boost boards
	mov	_RCAP3H,#0xFF
;	../src/projectSpecificHardwareInterface_C8051F040.c:691: TMR3L	= 0xF0 ;
	mov	_TMR3L,#0xF0
;	../src/projectSpecificHardwareInterface_C8051F040.c:692: TMR3H	= 0xFF ;
	mov	_TMR3H,#0xFF
;	../src/projectSpecificHardwareInterface_C8051F040.c:693: TMR3CN	= 0x04 ;
	mov	_TMR3CN,#0x04
;	../src/projectSpecificHardwareInterface_C8051F040.c:697: SFRPAGE = ucOriginalSFRPage;
	mov	dptr,#_prvSetupTimerInterrupt_ucOriginalSFRPage_1_1
	movx	a,@dptr
	mov	_SFRPAGE,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'addTickCounter'
;------------------------------------------------------------
;pointerToIncrement        Allocated with name '_addTickCounter_pointerToIncrement_1_1'
;i                         Allocated with name '_addTickCounter_i_1_1'
;sloc0                     Allocated with name '_addTickCounter_sloc0_1_0'
;------------------------------------------------------------
;	../src/projectSpecificHardwareInterface_C8051F040.c:705: void addTickCounter(							unsigned short* pointerToIncrement)
;	-----------------------------------------
;	 function addTickCounter
;	-----------------------------------------
_addTickCounter:
	mov	r2,b
	mov	r3,dph
	mov	a,dpl
	mov	dptr,#_addTickCounter_pointerToIncrement_1_1
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r2
	movx	@dptr,a
;	../src/projectSpecificHardwareInterface_C8051F040.c:709: for( i = 0 ; i < configNUMBER_OF_TICK_COUNTERS ; i++ )
	mov	r2,#0x00
00105$:
	cjne	r2,#0x0A,00115$
00115$:
	jnc	00109$
;	../src/projectSpecificHardwareInterface_C8051F040.c:713: if(tickCounterToIncrement[i] == pointerToIncrement)
	mov	a,r2
	mov	b,#0x03
	mul	ab
	add	a,#_tickCounterToIncrement
	mov	r3,a
	clr	a
	addc	a,#(_tickCounterToIncrement >> 8)
	mov	r4,a
	mov	dpl,r3
	mov	dph,r4
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_addTickCounter_pointerToIncrement_1_1
	movx	a,@dptr
	mov	_addTickCounter_sloc0_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_addTickCounter_sloc0_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_addTickCounter_sloc0_1_0 + 2),a
	mov	a,r5
	cjne	a,_addTickCounter_sloc0_1_0,00117$
	mov	a,r6
	cjne	a,(_addTickCounter_sloc0_1_0 + 1),00117$
	mov	a,r7
	cjne	a,(_addTickCounter_sloc0_1_0 + 2),00117$
	ret
00117$:
;	../src/projectSpecificHardwareInterface_C8051F040.c:718: if(tickCounterToIncrement[i] == 0)
	mov	a,r5
	orl	a,r6
	orl	a,r7
	jnz	00107$
;	../src/projectSpecificHardwareInterface_C8051F040.c:720: tickCounterToIncrement[i] = pointerToIncrement ;
	mov	dpl,r3
	mov	dph,r4
	mov	a,_addTickCounter_sloc0_1_0
	movx	@dptr,a
	inc	dptr
	mov	a,(_addTickCounter_sloc0_1_0 + 1)
	movx	@dptr,a
	inc	dptr
	mov	a,(_addTickCounter_sloc0_1_0 + 2)
	movx	@dptr,a
;	../src/projectSpecificHardwareInterface_C8051F040.c:722: break ;
	ret
00107$:
;	../src/projectSpecificHardwareInterface_C8051F040.c:709: for( i = 0 ; i < configNUMBER_OF_TICK_COUNTERS ; i++ )
	inc	r2
	sjmp	00105$
00109$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'vTimer2ISR'
;------------------------------------------------------------
;i                         Allocated with name '_vTimer2ISR_i_1_1'
;------------------------------------------------------------
;	../src/projectSpecificHardwareInterface_C8051F040.c:731: void vTimer2ISR( void ) interrupt 5
;	-----------------------------------------
;	 function vTimer2ISR
;	-----------------------------------------
_vTimer2ISR:
	push	bits
	push	acc
	push	b
	push	dpl
	push	dph
	push	(0+2)
	push	(0+3)
	push	(0+4)
	push	(0+5)
	push	(0+6)
	push	(0+7)
	push	(0+0)
	push	(0+1)
	push	psw
	mov	psw,#0x00
;	../src/projectSpecificHardwareInterface_C8051F040.c:735: for( i = 0 ; i < configNUMBER_OF_TICK_COUNTERS ; i++ )
	mov	r2,#0x00
00103$:
	cjne	r2,#0x0A,00113$
00113$:
	jnc	00106$
;	../src/projectSpecificHardwareInterface_C8051F040.c:737: if(tickCounterToIncrement[i])
	mov	a,r2
	mov	b,#0x03
	mul	ab
	add	a,#_tickCounterToIncrement
	mov	dpl,a
	clr	a
	addc	a,#(_tickCounterToIncrement >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	a,r3
	orl	a,r4
	orl	a,r5
	jz	00105$
;	../src/projectSpecificHardwareInterface_C8051F040.c:739: *tickCounterToIncrement[i] += 1 ;
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	inc	r6
	cjne	r6,#0x00,00116$
	inc	r7
00116$:
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	mov	a,r6
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
00105$:
;	../src/projectSpecificHardwareInterface_C8051F040.c:735: for( i = 0 ; i < configNUMBER_OF_TICK_COUNTERS ; i++ )
	inc	r2
	sjmp	00103$
00106$:
;	../src/projectSpecificHardwareInterface_C8051F040.c:743: taskSwitcherTickHook() ;
	lcall	_taskSwitcherTickHook
;	../src/projectSpecificHardwareInterface_C8051F040.c:745: portCLEAR_INTERRUPT_FLAG() ;
	anl	_TMR2CN,#0x7F
	pop	psw
	pop	(0+1)
	pop	(0+0)
	pop	(0+7)
	pop	(0+6)
	pop	(0+5)
	pop	(0+4)
	pop	(0+3)
	pop	(0+2)
	pop	dph
	pop	dpl
	pop	b
	pop	acc
	pop	bits
	reti
	.area CSEG    (CODE)
	.area CONST   (CODE)
__str_0:
	.ascii "4th Generation state machine test started."
	.db 0x00
__str_1:
	.ascii "loop"
	.db 0x00
	.area XINIT   (CODE)
__xinit__countdown:
	.byte #0x05,#0x00
	.area CABS    (ABS,CODE)
