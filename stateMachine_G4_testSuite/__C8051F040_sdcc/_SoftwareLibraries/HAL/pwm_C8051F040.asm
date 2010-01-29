;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.9.0 #5416 (Mar 22 2009) (MINGW32)
; This file was generated Thu Jan 21 16:08:03 2010
;--------------------------------------------------------
	.module pwm_C8051F040
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
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
	.globl _pwm_setDutyCycleAsPercentage_PARM_2
	.globl _pwm_adjustDutyCycle_PARM_2
	.globl _pwm_setDutyCycle_PARM_2
	.globl _pwm_init
	.globl _pwm_incrementDutyCycle
	.globl _pwm_decrementDutyCycle
	.globl _pwm_getDutyCycle
	.globl _pwm_setDutyCycle
	.globl _pwm_adjustDutyCycle
	.globl _pwm_setDutyCycleAsPercentage
	.globl _pwm_getDutyCycleAsPercentage
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
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area OSEG    (OVR,DATA)
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
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
_pwm_init_channelNumber_1_1:
	.ds 1
_pwm_incrementDutyCycle_channelNumber_1_1:
	.ds 1
_pwm_decrementDutyCycle_channelNumber_1_1:
	.ds 1
_pwm_getDutyCycle_channelNumber_1_1:
	.ds 1
_pwm_setDutyCycle_PARM_2:
	.ds 1
_pwm_setDutyCycle_channelNumber_1_1:
	.ds 1
_pwm_adjustDutyCycle_PARM_2:
	.ds 1
_pwm_adjustDutyCycle_channelNumber_1_1:
	.ds 1
_pwm_setDutyCycleAsPercentage_PARM_2:
	.ds 1
_pwm_setDutyCycleAsPercentage_channelNumber_1_1:
	.ds 1
_pwm_getDutyCycleAsPercentage_channelNumber_1_1:
	.ds 1
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
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
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'pwm_init'
;------------------------------------------------------------
;channelNumber             Allocated with name '_pwm_init_channelNumber_1_1'
;------------------------------------------------------------
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/HardwareAbstractionLayer/cpu_specific/pwm_C8051F040.c:5: void pwm_init(								unsigned char channelNumber)
;	-----------------------------------------
;	 function pwm_init
;	-----------------------------------------
_pwm_init:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
	mov	a,dpl
	mov	dptr,#_pwm_init_channelNumber_1_1
	movx	@dptr,a
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/HardwareAbstractionLayer/cpu_specific/pwm_C8051F040.c:7: pwm_init_projectSpecific(channelNumber) ;
	mov	dptr,#_pwm_init_channelNumber_1_1
	movx	a,@dptr
	mov	dpl,a
	ljmp	_pwm_init_projectSpecific
;------------------------------------------------------------
;Allocation info for local variables in function 'pwm_incrementDutyCycle'
;------------------------------------------------------------
;channelNumber             Allocated with name '_pwm_incrementDutyCycle_channelNumber_1_1'
;------------------------------------------------------------
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/HardwareAbstractionLayer/cpu_specific/pwm_C8051F040.c:11: void pwm_incrementDutyCycle(				unsigned char channelNumber)
;	-----------------------------------------
;	 function pwm_incrementDutyCycle
;	-----------------------------------------
_pwm_incrementDutyCycle:
	mov	a,dpl
	mov	dptr,#_pwm_incrementDutyCycle_channelNumber_1_1
	movx	@dptr,a
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/HardwareAbstractionLayer/cpu_specific/pwm_C8051F040.c:13: pwm_incrementDutyCycle_projectSpecific(channelNumber) ;
	mov	dptr,#_pwm_incrementDutyCycle_channelNumber_1_1
	movx	a,@dptr
	mov	dpl,a
	ljmp	_pwm_incrementDutyCycle_projectSpecific
;------------------------------------------------------------
;Allocation info for local variables in function 'pwm_decrementDutyCycle'
;------------------------------------------------------------
;channelNumber             Allocated with name '_pwm_decrementDutyCycle_channelNumber_1_1'
;------------------------------------------------------------
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/HardwareAbstractionLayer/cpu_specific/pwm_C8051F040.c:17: void pwm_decrementDutyCycle(				unsigned char channelNumber)
;	-----------------------------------------
;	 function pwm_decrementDutyCycle
;	-----------------------------------------
_pwm_decrementDutyCycle:
	mov	a,dpl
	mov	dptr,#_pwm_decrementDutyCycle_channelNumber_1_1
	movx	@dptr,a
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/HardwareAbstractionLayer/cpu_specific/pwm_C8051F040.c:19: pwm_decrementDutyCycle_projectSpecific(channelNumber) ;
	mov	dptr,#_pwm_decrementDutyCycle_channelNumber_1_1
	movx	a,@dptr
	mov	dpl,a
	ljmp	_pwm_decrementDutyCycle_projectSpecific
;------------------------------------------------------------
;Allocation info for local variables in function 'pwm_getDutyCycle'
;------------------------------------------------------------
;channelNumber             Allocated with name '_pwm_getDutyCycle_channelNumber_1_1'
;------------------------------------------------------------
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/HardwareAbstractionLayer/cpu_specific/pwm_C8051F040.c:23: uint8_t pwm_getDutyCycle(					unsigned char channelNumber)
;	-----------------------------------------
;	 function pwm_getDutyCycle
;	-----------------------------------------
_pwm_getDutyCycle:
	mov	a,dpl
	mov	dptr,#_pwm_getDutyCycle_channelNumber_1_1
	movx	@dptr,a
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/HardwareAbstractionLayer/cpu_specific/pwm_C8051F040.c:25: return pwm_getDutyCycle_projectSpecific(channelNumber) ;
	mov	dptr,#_pwm_getDutyCycle_channelNumber_1_1
	movx	a,@dptr
	mov	dpl,a
	ljmp	_pwm_getDutyCycle_projectSpecific
;------------------------------------------------------------
;Allocation info for local variables in function 'pwm_setDutyCycle'
;------------------------------------------------------------
;newDutyCycle              Allocated with name '_pwm_setDutyCycle_PARM_2'
;channelNumber             Allocated with name '_pwm_setDutyCycle_channelNumber_1_1'
;------------------------------------------------------------
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/HardwareAbstractionLayer/cpu_specific/pwm_C8051F040.c:29: void pwm_setDutyCycle(						unsigned char channelNumber, uint8_t newDutyCycle)
;	-----------------------------------------
;	 function pwm_setDutyCycle
;	-----------------------------------------
_pwm_setDutyCycle:
	mov	a,dpl
	mov	dptr,#_pwm_setDutyCycle_channelNumber_1_1
	movx	@dptr,a
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/HardwareAbstractionLayer/cpu_specific/pwm_C8051F040.c:31: pwm_setDutyCycle_projectSpecific(channelNumber, newDutyCycle) ;
	mov	dptr,#_pwm_setDutyCycle_channelNumber_1_1
	movx	a,@dptr
	mov	r2,a
	mov	dptr,#_pwm_setDutyCycle_PARM_2
	movx	a,@dptr
	mov	dptr,#_pwm_setDutyCycle_projectSpecific_PARM_2
	movx	@dptr,a
	mov	dpl,r2
	ljmp	_pwm_setDutyCycle_projectSpecific
;------------------------------------------------------------
;Allocation info for local variables in function 'pwm_adjustDutyCycle'
;------------------------------------------------------------
;dutyCycleAdjustment       Allocated with name '_pwm_adjustDutyCycle_PARM_2'
;channelNumber             Allocated with name '_pwm_adjustDutyCycle_channelNumber_1_1'
;------------------------------------------------------------
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/HardwareAbstractionLayer/cpu_specific/pwm_C8051F040.c:35: void pwm_adjustDutyCycle(					unsigned char channelNumber, int8_t dutyCycleAdjustment)
;	-----------------------------------------
;	 function pwm_adjustDutyCycle
;	-----------------------------------------
_pwm_adjustDutyCycle:
	mov	a,dpl
	mov	dptr,#_pwm_adjustDutyCycle_channelNumber_1_1
	movx	@dptr,a
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/HardwareAbstractionLayer/cpu_specific/pwm_C8051F040.c:37: pwm_adjustDutyCycle_projectSpecific(channelNumber, dutyCycleAdjustment) ;
	mov	dptr,#_pwm_adjustDutyCycle_channelNumber_1_1
	movx	a,@dptr
	mov	r2,a
	mov	dptr,#_pwm_adjustDutyCycle_PARM_2
	movx	a,@dptr
	mov	dptr,#_pwm_adjustDutyCycle_projectSpecific_PARM_2
	movx	@dptr,a
	mov	dpl,r2
	ljmp	_pwm_adjustDutyCycle_projectSpecific
;------------------------------------------------------------
;Allocation info for local variables in function 'pwm_setDutyCycleAsPercentage'
;------------------------------------------------------------
;newDutyCycle              Allocated with name '_pwm_setDutyCycleAsPercentage_PARM_2'
;channelNumber             Allocated with name '_pwm_setDutyCycleAsPercentage_channelNumber_1_1'
;------------------------------------------------------------
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/HardwareAbstractionLayer/cpu_specific/pwm_C8051F040.c:41: void pwm_setDutyCycleAsPercentage(			unsigned char channelNumber, unsigned char newDutyCycle)
;	-----------------------------------------
;	 function pwm_setDutyCycleAsPercentage
;	-----------------------------------------
_pwm_setDutyCycleAsPercentage:
	mov	a,dpl
	mov	dptr,#_pwm_setDutyCycleAsPercentage_channelNumber_1_1
	movx	@dptr,a
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/HardwareAbstractionLayer/cpu_specific/pwm_C8051F040.c:43: pwm_setDutyCycleAsPercentage_projectSpecific(channelNumber, newDutyCycle) ;
	mov	dptr,#_pwm_setDutyCycleAsPercentage_channelNumber_1_1
	movx	a,@dptr
	mov	r2,a
	mov	dptr,#_pwm_setDutyCycleAsPercentage_PARM_2
	movx	a,@dptr
	mov	dptr,#_pwm_setDutyCycleAsPercentage_projectSpecific_PARM_2
	movx	@dptr,a
	mov	dpl,r2
	ljmp	_pwm_setDutyCycleAsPercentage_projectSpecific
;------------------------------------------------------------
;Allocation info for local variables in function 'pwm_getDutyCycleAsPercentage'
;------------------------------------------------------------
;channelNumber             Allocated with name '_pwm_getDutyCycleAsPercentage_channelNumber_1_1'
;------------------------------------------------------------
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/HardwareAbstractionLayer/cpu_specific/pwm_C8051F040.c:47: unsigned char pwm_getDutyCycleAsPercentage(	unsigned char channelNumber)
;	-----------------------------------------
;	 function pwm_getDutyCycleAsPercentage
;	-----------------------------------------
_pwm_getDutyCycleAsPercentage:
	mov	a,dpl
	mov	dptr,#_pwm_getDutyCycleAsPercentage_channelNumber_1_1
	movx	@dptr,a
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/HardwareAbstractionLayer/cpu_specific/pwm_C8051F040.c:49: return pwm_getDutyCycleAsPercentage_projectSpecific(channelNumber) ;
	mov	dptr,#_pwm_getDutyCycleAsPercentage_channelNumber_1_1
	movx	a,@dptr
	mov	dpl,a
	ljmp	_pwm_getDutyCycleAsPercentage_projectSpecific
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
