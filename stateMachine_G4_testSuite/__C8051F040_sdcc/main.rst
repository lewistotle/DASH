                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 2.9.0 #5416 (Mar 22 2009) (MINGW32)
                              4 ; This file was generated Sat Jan 02 19:24:42 2010
                              5 ;--------------------------------------------------------
                              6 	.module main
                              7 	.optsdcc -mmcs51 --model-large
                              8 	
                              9 ;--------------------------------------------------------
                             10 ; Public variables in this module
                             11 ;--------------------------------------------------------
                             12 	.globl _vTimer2ISR
                             13 	.globl _addTickCounter
                             14 	.globl _IsFull
                             15 	.globl _IsEmpty
                             16 	.globl _main
                             17 	.globl _P7_7
                             18 	.globl _P7_6
                             19 	.globl _P7_5
                             20 	.globl _P7_4
                             21 	.globl _P7_3
                             22 	.globl _P7_2
                             23 	.globl _P7_1
                             24 	.globl _P7_0
                             25 	.globl _CANTEST
                             26 	.globl _CANCCE
                             27 	.globl _CANDAR
                             28 	.globl _CANIF
                             29 	.globl _CANEIE
                             30 	.globl _CANSIE
                             31 	.globl _CANIE
                             32 	.globl _CANINIT
                             33 	.globl _SPIF
                             34 	.globl _WCOL
                             35 	.globl _MODF
                             36 	.globl _RXOVRN
                             37 	.globl _NSSMD1
                             38 	.globl _NSSMD0
                             39 	.globl _TXBMT
                             40 	.globl _SPIEN
                             41 	.globl _P6_7
                             42 	.globl _P6_6
                             43 	.globl _P6_5
                             44 	.globl _P6_4
                             45 	.globl _P6_3
                             46 	.globl _P6_2
                             47 	.globl _P6_1
                             48 	.globl _P6_0
                             49 	.globl _AD2EN
                             50 	.globl _AD2TM
                             51 	.globl _AD2INT
                             52 	.globl _AD2BUSY
                             53 	.globl _AD2CM2
                             54 	.globl _AD2CM1
                             55 	.globl _AD2CM0
                             56 	.globl _AD2WINT
                             57 	.globl _AD0EN
                             58 	.globl _AD0TM
                             59 	.globl _AD0INT
                             60 	.globl _AD0BUSY
                             61 	.globl _AD0CM1
                             62 	.globl _AD0CM0
                             63 	.globl _AD0WINT
                             64 	.globl _AD0LJST
                             65 	.globl _P5_7
                             66 	.globl _P5_6
                             67 	.globl _P5_5
                             68 	.globl _P5_4
                             69 	.globl _P5_3
                             70 	.globl _P5_2
                             71 	.globl _P5_1
                             72 	.globl _P5_0
                             73 	.globl _CF
                             74 	.globl _CR
                             75 	.globl _CCF5
                             76 	.globl _CCF4
                             77 	.globl _CCF3
                             78 	.globl _CCF2
                             79 	.globl _CCF1
                             80 	.globl _CCF0
                             81 	.globl _CY
                             82 	.globl _AC
                             83 	.globl _F0
                             84 	.globl _RS1
                             85 	.globl _RS0
                             86 	.globl _OV
                             87 	.globl _F1
                             88 	.globl _P
                             89 	.globl _P4_7
                             90 	.globl _P4_6
                             91 	.globl _P4_5
                             92 	.globl _P4_4
                             93 	.globl _P4_3
                             94 	.globl _P4_2
                             95 	.globl _P4_1
                             96 	.globl _P4_0
                             97 	.globl _TF4
                             98 	.globl _EXF4
                             99 	.globl _EXEN4
                            100 	.globl _TR4
                            101 	.globl _CT4
                            102 	.globl _CPRL4
                            103 	.globl _TF3
                            104 	.globl _EXF3
                            105 	.globl _EXEN3
                            106 	.globl _TR3
                            107 	.globl _CT3
                            108 	.globl _CPRL3
                            109 	.globl _TF2
                            110 	.globl _EXF2
                            111 	.globl _EXEN2
                            112 	.globl _TR2
                            113 	.globl _CT2
                            114 	.globl _CPRL2
                            115 	.globl _CANBOFF
                            116 	.globl _CANEWARN
                            117 	.globl _CANEPASS
                            118 	.globl _CANRXOK
                            119 	.globl _CANTXOK
                            120 	.globl _BUSY
                            121 	.globl _ENSMB
                            122 	.globl _STA
                            123 	.globl _STO
                            124 	.globl _SI
                            125 	.globl _AA
                            126 	.globl _SMBFTE
                            127 	.globl _SMBTOE
                            128 	.globl _PT2
                            129 	.globl _PS
                            130 	.globl _PS0
                            131 	.globl _PT1
                            132 	.globl _PX1
                            133 	.globl _PT0
                            134 	.globl _PX0
                            135 	.globl _P3_7
                            136 	.globl _P3_6
                            137 	.globl _P3_5
                            138 	.globl _P3_4
                            139 	.globl _P3_3
                            140 	.globl _P3_2
                            141 	.globl _P3_1
                            142 	.globl _P3_0
                            143 	.globl _EA
                            144 	.globl _ET2
                            145 	.globl _ES
                            146 	.globl _ES0
                            147 	.globl _ET1
                            148 	.globl _EX1
                            149 	.globl _ET0
                            150 	.globl _EX0
                            151 	.globl _P2_7
                            152 	.globl _P2_6
                            153 	.globl _P2_5
                            154 	.globl _P2_4
                            155 	.globl _P2_3
                            156 	.globl _P2_2
                            157 	.globl _P2_1
                            158 	.globl _P2_0
                            159 	.globl _S1MODE
                            160 	.globl _MCE1
                            161 	.globl _REN1
                            162 	.globl _TB81
                            163 	.globl _RB81
                            164 	.globl _TI1
                            165 	.globl _RI1
                            166 	.globl _SM00
                            167 	.globl _SM10
                            168 	.globl _SM20
                            169 	.globl _REN
                            170 	.globl _REN0
                            171 	.globl _TB80
                            172 	.globl _RB80
                            173 	.globl _TI
                            174 	.globl _TI0
                            175 	.globl _RI
                            176 	.globl _RI0
                            177 	.globl _P1_7
                            178 	.globl _P1_6
                            179 	.globl _P1_5
                            180 	.globl _P1_4
                            181 	.globl _P1_3
                            182 	.globl _P1_2
                            183 	.globl _P1_1
                            184 	.globl _P1_0
                            185 	.globl _CP2EN
                            186 	.globl _CP2OUT
                            187 	.globl _CP2RIF
                            188 	.globl _CP2FIF
                            189 	.globl _CP2HYP1
                            190 	.globl _CP2HYP0
                            191 	.globl _CP2HYN1
                            192 	.globl _CP2HYN0
                            193 	.globl _CP1EN
                            194 	.globl _CP1OUT
                            195 	.globl _CP1RIF
                            196 	.globl _CP1FIF
                            197 	.globl _CP1HYP1
                            198 	.globl _CP1HYP0
                            199 	.globl _CP1HYN1
                            200 	.globl _CP1HYN0
                            201 	.globl _CP0EN
                            202 	.globl _CP0OUT
                            203 	.globl _CP0RIF
                            204 	.globl _CP0FIF
                            205 	.globl _CP0HYP1
                            206 	.globl _CP0HYP0
                            207 	.globl _CP0HYN1
                            208 	.globl _CP0HYN0
                            209 	.globl _TF1
                            210 	.globl _TR1
                            211 	.globl _TF0
                            212 	.globl _TR0
                            213 	.globl _IE1
                            214 	.globl _IT1
                            215 	.globl _IE0
                            216 	.globl _IT0
                            217 	.globl _P0_7
                            218 	.globl _P0_6
                            219 	.globl _P0_5
                            220 	.globl _P0_4
                            221 	.globl _P0_3
                            222 	.globl _P0_2
                            223 	.globl _P0_1
                            224 	.globl _P0_0
                            225 	.globl _P7
                            226 	.globl _P6
                            227 	.globl _XBR3
                            228 	.globl _XBR2
                            229 	.globl _XBR1
                            230 	.globl _XBR0
                            231 	.globl _P5
                            232 	.globl _P4
                            233 	.globl _FLACL
                            234 	.globl _P3MDIN
                            235 	.globl _P2MDIN
                            236 	.globl _P1MDIN
                            237 	.globl _P3MDOUT
                            238 	.globl _P2MDOUT
                            239 	.globl _P1MDOUT
                            240 	.globl _P0MDOUT
                            241 	.globl _P7MDOUT
                            242 	.globl _P6MDOUT
                            243 	.globl _P5MDOUT
                            244 	.globl _P4MDOUT
                            245 	.globl _CLKSEL
                            246 	.globl _SFRPGCN
                            247 	.globl _OSCXCN
                            248 	.globl _OSCICL
                            249 	.globl _OSCICN
                            250 	.globl _CPT2MD
                            251 	.globl _CPT2CN
                            252 	.globl _ADC2CN
                            253 	.globl _TMR4H
                            254 	.globl _TMR4L
                            255 	.globl _RCAP4H
                            256 	.globl _RCAP4L
                            257 	.globl _TMR4CF
                            258 	.globl _TMR4CN
                            259 	.globl _ADC2LT
                            260 	.globl _ADC2GT
                            261 	.globl _ADC2
                            262 	.globl _ADC2CF
                            263 	.globl _AMX2SL
                            264 	.globl _AMX2CF
                            265 	.globl _CPT1MD
                            266 	.globl _CPT1CN
                            267 	.globl _CAN0CN
                            268 	.globl _CAN0TST
                            269 	.globl _CAN0ADR
                            270 	.globl _CAN0DATH
                            271 	.globl _CAN0DATL
                            272 	.globl _DAC1CN
                            273 	.globl _DAC1H
                            274 	.globl _DAC1L
                            275 	.globl _TMR3H
                            276 	.globl _TMR3L
                            277 	.globl _RCAP3H
                            278 	.globl _RCAP3L
                            279 	.globl _TMR3CF
                            280 	.globl _TMR3CN
                            281 	.globl _CAN0STA
                            282 	.globl _SBUF1
                            283 	.globl _SCON1
                            284 	.globl _CPT0MD
                            285 	.globl _CPT0CN
                            286 	.globl _PCA0CPH1
                            287 	.globl _PCA0CPL1
                            288 	.globl _PCA0CPH0
                            289 	.globl _PCA0CPL0
                            290 	.globl _PCA0H
                            291 	.globl _PCA0L
                            292 	.globl _SPI0CN
                            293 	.globl _RSTSRC
                            294 	.globl _PCA0CPH4
                            295 	.globl _PCA0CPL4
                            296 	.globl _PCA0CPH3
                            297 	.globl _PCA0CPL3
                            298 	.globl _PCA0CPH2
                            299 	.globl _PCA0CPL2
                            300 	.globl _ADC0CN
                            301 	.globl _PCA0CPH5
                            302 	.globl _PCA0CPL5
                            303 	.globl _PCA0CPM5
                            304 	.globl _PCA0CPM4
                            305 	.globl _PCA0CPM3
                            306 	.globl _PCA0CPM2
                            307 	.globl _PCA0CPM1
                            308 	.globl _PCA0CPM0
                            309 	.globl _PCA0MD
                            310 	.globl _PCA0CN
                            311 	.globl _HVA0CN
                            312 	.globl _DAC0CN
                            313 	.globl _DAC0H
                            314 	.globl _DAC0L
                            315 	.globl _REF0CN
                            316 	.globl _SMB0CR
                            317 	.globl _TH2
                            318 	.globl _TMR2H
                            319 	.globl _TL2
                            320 	.globl _TMR2L
                            321 	.globl _RCAP2H
                            322 	.globl _RCAP2L
                            323 	.globl _TMR2CF
                            324 	.globl _TMR2CN
                            325 	.globl _ADC0LTH
                            326 	.globl _ADC0LTL
                            327 	.globl _ADC0GTH
                            328 	.globl _ADC0GTL
                            329 	.globl _SMB0ADR
                            330 	.globl _SMB0DAT
                            331 	.globl _SMB0STA
                            332 	.globl _SMB0CN
                            333 	.globl _ADC0H
                            334 	.globl _ADC0L
                            335 	.globl _AMX0PRT
                            336 	.globl _ADC0CF
                            337 	.globl _AMX0SL
                            338 	.globl _AMX0CF
                            339 	.globl _SADEN0
                            340 	.globl _FLSCL
                            341 	.globl _SADDR0
                            342 	.globl _EMI0CF
                            343 	.globl __XPAGE
                            344 	.globl _EMI0CN
                            345 	.globl _EMI0TC
                            346 	.globl _SPI0CKR
                            347 	.globl _SPI0DAT
                            348 	.globl _SPI0CFG
                            349 	.globl _SBUF
                            350 	.globl _SBUF0
                            351 	.globl _SCON
                            352 	.globl _SCON0
                            353 	.globl _SSTA0
                            354 	.globl _PSCTL
                            355 	.globl _CKCON
                            356 	.globl _TH1
                            357 	.globl _TH0
                            358 	.globl _TL1
                            359 	.globl _TL0
                            360 	.globl _TMOD
                            361 	.globl _TCON
                            362 	.globl _WDTCN
                            363 	.globl _EIP2
                            364 	.globl _EIP1
                            365 	.globl _B
                            366 	.globl _EIE2
                            367 	.globl _EIE1
                            368 	.globl _ACC
                            369 	.globl _PSW
                            370 	.globl _IP
                            371 	.globl _P3
                            372 	.globl _IE
                            373 	.globl _P2
                            374 	.globl _P1
                            375 	.globl _PCON
                            376 	.globl _SFRLAST
                            377 	.globl _SFRNEXT
                            378 	.globl _SFRPAGE
                            379 	.globl _DPH
                            380 	.globl _DPL
                            381 	.globl _SP
                            382 	.globl _P0
                            383 	.globl _tickCounterToIncrement
                            384 	.globl _task_UART_gets_projectSpecific_PARM_3
                            385 	.globl _task_UART_gets_projectSpecific_PARM_2
                            386 	.globl _task_UART_puts_projectSpecific_PARM_2
                            387 	.globl _task_UART_putchar_projectSpecific_PARM_2
                            388 	.globl _Succ_PARM_2
                            389 	.globl _UARTtempBuffer
                            390 	.globl _pwm_setDutyCycleAsPercentage_projectSpecific_PARM_2
                            391 	.globl _pwm_adjustDutyCycle_projectSpecific_PARM_2
                            392 	.globl _pwm_setDutyCycle_projectSpecific_PARM_2
                            393 	.globl _taskSwitcherTickHook
                            394 	.globl _gpio_init_projectSpecific
                            395 	.globl _pwm_init_projectSpecific
                            396 	.globl _pwm_incrementDutyCycle_projectSpecific
                            397 	.globl _pwm_decrementDutyCycle_projectSpecific
                            398 	.globl _pwm_getDutyCycle_projectSpecific
                            399 	.globl _pwm_setDutyCycle_projectSpecific
                            400 	.globl _pwm_adjustDutyCycle_projectSpecific
                            401 	.globl _pwm_setDutyCycleAsPercentage_projectSpecific
                            402 	.globl _pwm_getDutyCycleAsPercentage_projectSpecific
                            403 	.globl _task_UART_init_projectSpecific
                            404 	.globl _task_UART_core_projectSpecific
                            405 	.globl _task_UART_putchar_projectSpecific
                            406 	.globl _task_UART_puts_projectSpecific
                            407 	.globl _task_UART_getchar_projectSpecific
                            408 	.globl _task_UART_gets_projectSpecific
                            409 	.globl _task_UART_isLineReady
                            410 	.globl _UART0_Init
                            411 	.globl _UART1_Init
                            412 	.globl _putchar
                            413 ;--------------------------------------------------------
                            414 ; special function registers
                            415 ;--------------------------------------------------------
                            416 	.area RSEG    (DATA)
                    0080    417 _P0	=	0x0080
                    0081    418 _SP	=	0x0081
                    0082    419 _DPL	=	0x0082
                    0083    420 _DPH	=	0x0083
                    0084    421 _SFRPAGE	=	0x0084
                    0085    422 _SFRNEXT	=	0x0085
                    0086    423 _SFRLAST	=	0x0086
                    0087    424 _PCON	=	0x0087
                    0090    425 _P1	=	0x0090
                    00A0    426 _P2	=	0x00a0
                    00A8    427 _IE	=	0x00a8
                    00B0    428 _P3	=	0x00b0
                    00B8    429 _IP	=	0x00b8
                    00D0    430 _PSW	=	0x00d0
                    00E0    431 _ACC	=	0x00e0
                    00E6    432 _EIE1	=	0x00e6
                    00E7    433 _EIE2	=	0x00e7
                    00F0    434 _B	=	0x00f0
                    00F6    435 _EIP1	=	0x00f6
                    00F7    436 _EIP2	=	0x00f7
                    00FF    437 _WDTCN	=	0x00ff
                    0088    438 _TCON	=	0x0088
                    0089    439 _TMOD	=	0x0089
                    008A    440 _TL0	=	0x008a
                    008B    441 _TL1	=	0x008b
                    008C    442 _TH0	=	0x008c
                    008D    443 _TH1	=	0x008d
                    008E    444 _CKCON	=	0x008e
                    008F    445 _PSCTL	=	0x008f
                    0091    446 _SSTA0	=	0x0091
                    0098    447 _SCON0	=	0x0098
                    0098    448 _SCON	=	0x0098
                    0099    449 _SBUF0	=	0x0099
                    0099    450 _SBUF	=	0x0099
                    009A    451 _SPI0CFG	=	0x009a
                    009B    452 _SPI0DAT	=	0x009b
                    009D    453 _SPI0CKR	=	0x009d
                    00A1    454 _EMI0TC	=	0x00a1
                    00A2    455 _EMI0CN	=	0x00a2
                    00A2    456 __XPAGE	=	0x00a2
                    00A3    457 _EMI0CF	=	0x00a3
                    00A9    458 _SADDR0	=	0x00a9
                    00B7    459 _FLSCL	=	0x00b7
                    00B9    460 _SADEN0	=	0x00b9
                    00BA    461 _AMX0CF	=	0x00ba
                    00BB    462 _AMX0SL	=	0x00bb
                    00BC    463 _ADC0CF	=	0x00bc
                    00BD    464 _AMX0PRT	=	0x00bd
                    00BE    465 _ADC0L	=	0x00be
                    00BF    466 _ADC0H	=	0x00bf
                    00C0    467 _SMB0CN	=	0x00c0
                    00C1    468 _SMB0STA	=	0x00c1
                    00C2    469 _SMB0DAT	=	0x00c2
                    00C3    470 _SMB0ADR	=	0x00c3
                    00C4    471 _ADC0GTL	=	0x00c4
                    00C5    472 _ADC0GTH	=	0x00c5
                    00C6    473 _ADC0LTL	=	0x00c6
                    00C7    474 _ADC0LTH	=	0x00c7
                    00C8    475 _TMR2CN	=	0x00c8
                    00C9    476 _TMR2CF	=	0x00c9
                    00CA    477 _RCAP2L	=	0x00ca
                    00CB    478 _RCAP2H	=	0x00cb
                    00CC    479 _TMR2L	=	0x00cc
                    00CC    480 _TL2	=	0x00cc
                    00CD    481 _TMR2H	=	0x00cd
                    00CD    482 _TH2	=	0x00cd
                    00CF    483 _SMB0CR	=	0x00cf
                    00D1    484 _REF0CN	=	0x00d1
                    00D2    485 _DAC0L	=	0x00d2
                    00D3    486 _DAC0H	=	0x00d3
                    00D4    487 _DAC0CN	=	0x00d4
                    00D6    488 _HVA0CN	=	0x00d6
                    00D8    489 _PCA0CN	=	0x00d8
                    00D9    490 _PCA0MD	=	0x00d9
                    00DA    491 _PCA0CPM0	=	0x00da
                    00DB    492 _PCA0CPM1	=	0x00db
                    00DC    493 _PCA0CPM2	=	0x00dc
                    00DD    494 _PCA0CPM3	=	0x00dd
                    00DE    495 _PCA0CPM4	=	0x00de
                    00DF    496 _PCA0CPM5	=	0x00df
                    00E1    497 _PCA0CPL5	=	0x00e1
                    00E2    498 _PCA0CPH5	=	0x00e2
                    00E8    499 _ADC0CN	=	0x00e8
                    00E9    500 _PCA0CPL2	=	0x00e9
                    00EA    501 _PCA0CPH2	=	0x00ea
                    00EB    502 _PCA0CPL3	=	0x00eb
                    00EC    503 _PCA0CPH3	=	0x00ec
                    00ED    504 _PCA0CPL4	=	0x00ed
                    00EE    505 _PCA0CPH4	=	0x00ee
                    00EF    506 _RSTSRC	=	0x00ef
                    00F8    507 _SPI0CN	=	0x00f8
                    00F9    508 _PCA0L	=	0x00f9
                    00FA    509 _PCA0H	=	0x00fa
                    00FB    510 _PCA0CPL0	=	0x00fb
                    00FC    511 _PCA0CPH0	=	0x00fc
                    00FD    512 _PCA0CPL1	=	0x00fd
                    00FE    513 _PCA0CPH1	=	0x00fe
                    0088    514 _CPT0CN	=	0x0088
                    0089    515 _CPT0MD	=	0x0089
                    0098    516 _SCON1	=	0x0098
                    0099    517 _SBUF1	=	0x0099
                    00C0    518 _CAN0STA	=	0x00c0
                    00C8    519 _TMR3CN	=	0x00c8
                    00C9    520 _TMR3CF	=	0x00c9
                    00CA    521 _RCAP3L	=	0x00ca
                    00CB    522 _RCAP3H	=	0x00cb
                    00CC    523 _TMR3L	=	0x00cc
                    00CD    524 _TMR3H	=	0x00cd
                    00D2    525 _DAC1L	=	0x00d2
                    00D3    526 _DAC1H	=	0x00d3
                    00D4    527 _DAC1CN	=	0x00d4
                    00D8    528 _CAN0DATL	=	0x00d8
                    00D9    529 _CAN0DATH	=	0x00d9
                    00DA    530 _CAN0ADR	=	0x00da
                    00DB    531 _CAN0TST	=	0x00db
                    00F8    532 _CAN0CN	=	0x00f8
                    0088    533 _CPT1CN	=	0x0088
                    0089    534 _CPT1MD	=	0x0089
                    00BA    535 _AMX2CF	=	0x00ba
                    00BB    536 _AMX2SL	=	0x00bb
                    00BC    537 _ADC2CF	=	0x00bc
                    00BE    538 _ADC2	=	0x00be
                    00C4    539 _ADC2GT	=	0x00c4
                    00C6    540 _ADC2LT	=	0x00c6
                    00C8    541 _TMR4CN	=	0x00c8
                    00C9    542 _TMR4CF	=	0x00c9
                    00CA    543 _RCAP4L	=	0x00ca
                    00CB    544 _RCAP4H	=	0x00cb
                    00CC    545 _TMR4L	=	0x00cc
                    00CD    546 _TMR4H	=	0x00cd
                    00E8    547 _ADC2CN	=	0x00e8
                    0088    548 _CPT2CN	=	0x0088
                    0089    549 _CPT2MD	=	0x0089
                    008A    550 _OSCICN	=	0x008a
                    008B    551 _OSCICL	=	0x008b
                    008C    552 _OSCXCN	=	0x008c
                    0096    553 _SFRPGCN	=	0x0096
                    0097    554 _CLKSEL	=	0x0097
                    009C    555 _P4MDOUT	=	0x009c
                    009D    556 _P5MDOUT	=	0x009d
                    009E    557 _P6MDOUT	=	0x009e
                    009F    558 _P7MDOUT	=	0x009f
                    00A4    559 _P0MDOUT	=	0x00a4
                    00A5    560 _P1MDOUT	=	0x00a5
                    00A6    561 _P2MDOUT	=	0x00a6
                    00A7    562 _P3MDOUT	=	0x00a7
                    00AD    563 _P1MDIN	=	0x00ad
                    00AE    564 _P2MDIN	=	0x00ae
                    00AF    565 _P3MDIN	=	0x00af
                    00B7    566 _FLACL	=	0x00b7
                    00C8    567 _P4	=	0x00c8
                    00D8    568 _P5	=	0x00d8
                    00E1    569 _XBR0	=	0x00e1
                    00E2    570 _XBR1	=	0x00e2
                    00E3    571 _XBR2	=	0x00e3
                    00E4    572 _XBR3	=	0x00e4
                    00E8    573 _P6	=	0x00e8
                    00F8    574 _P7	=	0x00f8
                            575 ;--------------------------------------------------------
                            576 ; special function bits
                            577 ;--------------------------------------------------------
                            578 	.area RSEG    (DATA)
                    0080    579 _P0_0	=	0x0080
                    0081    580 _P0_1	=	0x0081
                    0082    581 _P0_2	=	0x0082
                    0083    582 _P0_3	=	0x0083
                    0084    583 _P0_4	=	0x0084
                    0085    584 _P0_5	=	0x0085
                    0086    585 _P0_6	=	0x0086
                    0087    586 _P0_7	=	0x0087
                    0088    587 _IT0	=	0x0088
                    0089    588 _IE0	=	0x0089
                    008A    589 _IT1	=	0x008a
                    008B    590 _IE1	=	0x008b
                    008C    591 _TR0	=	0x008c
                    008D    592 _TF0	=	0x008d
                    008E    593 _TR1	=	0x008e
                    008F    594 _TF1	=	0x008f
                    0088    595 _CP0HYN0	=	0x0088
                    0089    596 _CP0HYN1	=	0x0089
                    008A    597 _CP0HYP0	=	0x008a
                    008B    598 _CP0HYP1	=	0x008b
                    008C    599 _CP0FIF	=	0x008c
                    008D    600 _CP0RIF	=	0x008d
                    008E    601 _CP0OUT	=	0x008e
                    008F    602 _CP0EN	=	0x008f
                    0088    603 _CP1HYN0	=	0x0088
                    0089    604 _CP1HYN1	=	0x0089
                    008A    605 _CP1HYP0	=	0x008a
                    008B    606 _CP1HYP1	=	0x008b
                    008C    607 _CP1FIF	=	0x008c
                    008D    608 _CP1RIF	=	0x008d
                    008E    609 _CP1OUT	=	0x008e
                    008F    610 _CP1EN	=	0x008f
                    0088    611 _CP2HYN0	=	0x0088
                    0089    612 _CP2HYN1	=	0x0089
                    008A    613 _CP2HYP0	=	0x008a
                    008B    614 _CP2HYP1	=	0x008b
                    008C    615 _CP2FIF	=	0x008c
                    008D    616 _CP2RIF	=	0x008d
                    008E    617 _CP2OUT	=	0x008e
                    008F    618 _CP2EN	=	0x008f
                    0090    619 _P1_0	=	0x0090
                    0091    620 _P1_1	=	0x0091
                    0092    621 _P1_2	=	0x0092
                    0093    622 _P1_3	=	0x0093
                    0094    623 _P1_4	=	0x0094
                    0095    624 _P1_5	=	0x0095
                    0096    625 _P1_6	=	0x0096
                    0097    626 _P1_7	=	0x0097
                    0098    627 _RI0	=	0x0098
                    0098    628 _RI	=	0x0098
                    0099    629 _TI0	=	0x0099
                    0099    630 _TI	=	0x0099
                    009A    631 _RB80	=	0x009a
                    009B    632 _TB80	=	0x009b
                    009C    633 _REN0	=	0x009c
                    009C    634 _REN	=	0x009c
                    009D    635 _SM20	=	0x009d
                    009E    636 _SM10	=	0x009e
                    009F    637 _SM00	=	0x009f
                    0098    638 _RI1	=	0x0098
                    0099    639 _TI1	=	0x0099
                    009A    640 _RB81	=	0x009a
                    009B    641 _TB81	=	0x009b
                    009C    642 _REN1	=	0x009c
                    009D    643 _MCE1	=	0x009d
                    009F    644 _S1MODE	=	0x009f
                    00A0    645 _P2_0	=	0x00a0
                    00A1    646 _P2_1	=	0x00a1
                    00A2    647 _P2_2	=	0x00a2
                    00A3    648 _P2_3	=	0x00a3
                    00A4    649 _P2_4	=	0x00a4
                    00A5    650 _P2_5	=	0x00a5
                    00A6    651 _P2_6	=	0x00a6
                    00A7    652 _P2_7	=	0x00a7
                    00A8    653 _EX0	=	0x00a8
                    00A9    654 _ET0	=	0x00a9
                    00AA    655 _EX1	=	0x00aa
                    00AB    656 _ET1	=	0x00ab
                    00AC    657 _ES0	=	0x00ac
                    00AC    658 _ES	=	0x00ac
                    00AD    659 _ET2	=	0x00ad
                    00AF    660 _EA	=	0x00af
                    00B0    661 _P3_0	=	0x00b0
                    00B1    662 _P3_1	=	0x00b1
                    00B2    663 _P3_2	=	0x00b2
                    00B3    664 _P3_3	=	0x00b3
                    00B4    665 _P3_4	=	0x00b4
                    00B5    666 _P3_5	=	0x00b5
                    00B6    667 _P3_6	=	0x00b6
                    00B7    668 _P3_7	=	0x00b7
                    00B8    669 _PX0	=	0x00b8
                    00B9    670 _PT0	=	0x00b9
                    00BA    671 _PX1	=	0x00ba
                    00BB    672 _PT1	=	0x00bb
                    00BC    673 _PS0	=	0x00bc
                    00BC    674 _PS	=	0x00bc
                    00BD    675 _PT2	=	0x00bd
                    00C0    676 _SMBTOE	=	0x00c0
                    00C1    677 _SMBFTE	=	0x00c1
                    00C2    678 _AA	=	0x00c2
                    00C3    679 _SI	=	0x00c3
                    00C4    680 _STO	=	0x00c4
                    00C5    681 _STA	=	0x00c5
                    00C6    682 _ENSMB	=	0x00c6
                    00C7    683 _BUSY	=	0x00c7
                    00C3    684 _CANTXOK	=	0x00c3
                    00C4    685 _CANRXOK	=	0x00c4
                    00C5    686 _CANEPASS	=	0x00c5
                    00C6    687 _CANEWARN	=	0x00c6
                    00C7    688 _CANBOFF	=	0x00c7
                    00C8    689 _CPRL2	=	0x00c8
                    00C9    690 _CT2	=	0x00c9
                    00CA    691 _TR2	=	0x00ca
                    00CB    692 _EXEN2	=	0x00cb
                    00CE    693 _EXF2	=	0x00ce
                    00CF    694 _TF2	=	0x00cf
                    00C8    695 _CPRL3	=	0x00c8
                    00C9    696 _CT3	=	0x00c9
                    00CA    697 _TR3	=	0x00ca
                    00CB    698 _EXEN3	=	0x00cb
                    00CE    699 _EXF3	=	0x00ce
                    00CF    700 _TF3	=	0x00cf
                    00C8    701 _CPRL4	=	0x00c8
                    00C9    702 _CT4	=	0x00c9
                    00CA    703 _TR4	=	0x00ca
                    00CB    704 _EXEN4	=	0x00cb
                    00CE    705 _EXF4	=	0x00ce
                    00CF    706 _TF4	=	0x00cf
                    00C8    707 _P4_0	=	0x00c8
                    00C9    708 _P4_1	=	0x00c9
                    00CA    709 _P4_2	=	0x00ca
                    00CB    710 _P4_3	=	0x00cb
                    00CC    711 _P4_4	=	0x00cc
                    00CD    712 _P4_5	=	0x00cd
                    00CE    713 _P4_6	=	0x00ce
                    00CF    714 _P4_7	=	0x00cf
                    00D0    715 _P	=	0x00d0
                    00D1    716 _F1	=	0x00d1
                    00D2    717 _OV	=	0x00d2
                    00D3    718 _RS0	=	0x00d3
                    00D4    719 _RS1	=	0x00d4
                    00D5    720 _F0	=	0x00d5
                    00D6    721 _AC	=	0x00d6
                    00D7    722 _CY	=	0x00d7
                    00D8    723 _CCF0	=	0x00d8
                    00D9    724 _CCF1	=	0x00d9
                    00DA    725 _CCF2	=	0x00da
                    00DB    726 _CCF3	=	0x00db
                    00DC    727 _CCF4	=	0x00dc
                    00DD    728 _CCF5	=	0x00dd
                    00DE    729 _CR	=	0x00de
                    00DF    730 _CF	=	0x00df
                    00D8    731 _P5_0	=	0x00d8
                    00D9    732 _P5_1	=	0x00d9
                    00DA    733 _P5_2	=	0x00da
                    00DB    734 _P5_3	=	0x00db
                    00DC    735 _P5_4	=	0x00dc
                    00DD    736 _P5_5	=	0x00dd
                    00DE    737 _P5_6	=	0x00de
                    00DF    738 _P5_7	=	0x00df
                    00E8    739 _AD0LJST	=	0x00e8
                    00E9    740 _AD0WINT	=	0x00e9
                    00EA    741 _AD0CM0	=	0x00ea
                    00EB    742 _AD0CM1	=	0x00eb
                    00EC    743 _AD0BUSY	=	0x00ec
                    00ED    744 _AD0INT	=	0x00ed
                    00EE    745 _AD0TM	=	0x00ee
                    00EF    746 _AD0EN	=	0x00ef
                    00E8    747 _AD2WINT	=	0x00e8
                    00E9    748 _AD2CM0	=	0x00e9
                    00EA    749 _AD2CM1	=	0x00ea
                    00EB    750 _AD2CM2	=	0x00eb
                    00EC    751 _AD2BUSY	=	0x00ec
                    00ED    752 _AD2INT	=	0x00ed
                    00EE    753 _AD2TM	=	0x00ee
                    00EF    754 _AD2EN	=	0x00ef
                    00E8    755 _P6_0	=	0x00e8
                    00E9    756 _P6_1	=	0x00e9
                    00EA    757 _P6_2	=	0x00ea
                    00EB    758 _P6_3	=	0x00eb
                    00EC    759 _P6_4	=	0x00ec
                    00ED    760 _P6_5	=	0x00ed
                    00EE    761 _P6_6	=	0x00ee
                    00EF    762 _P6_7	=	0x00ef
                    00F8    763 _SPIEN	=	0x00f8
                    00F9    764 _TXBMT	=	0x00f9
                    00FA    765 _NSSMD0	=	0x00fa
                    00FB    766 _NSSMD1	=	0x00fb
                    00FC    767 _RXOVRN	=	0x00fc
                    00FD    768 _MODF	=	0x00fd
                    00FE    769 _WCOL	=	0x00fe
                    00FF    770 _SPIF	=	0x00ff
                    00F8    771 _CANINIT	=	0x00f8
                    00F9    772 _CANIE	=	0x00f9
                    00FA    773 _CANSIE	=	0x00fa
                    00FB    774 _CANEIE	=	0x00fb
                    00FC    775 _CANIF	=	0x00fc
                    00FD    776 _CANDAR	=	0x00fd
                    00FE    777 _CANCCE	=	0x00fe
                    00FF    778 _CANTEST	=	0x00ff
                    00F8    779 _P7_0	=	0x00f8
                    00F9    780 _P7_1	=	0x00f9
                    00FA    781 _P7_2	=	0x00fa
                    00FB    782 _P7_3	=	0x00fb
                    00FC    783 _P7_4	=	0x00fc
                    00FD    784 _P7_5	=	0x00fd
                    00FE    785 _P7_6	=	0x00fe
                    00FF    786 _P7_7	=	0x00ff
                            787 ;--------------------------------------------------------
                            788 ; overlayable register banks
                            789 ;--------------------------------------------------------
                            790 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                     791 	.ds 8
                            792 ;--------------------------------------------------------
                            793 ; overlayable bit register bank
                            794 ;--------------------------------------------------------
                            795 	.area BIT_BANK	(REL,OVR,DATA)
   0023                     796 bits:
   0023                     797 	.ds 1
                    8000    798 	b0 = bits[0]
                    8100    799 	b1 = bits[1]
                    8200    800 	b2 = bits[2]
                    8300    801 	b3 = bits[3]
                    8400    802 	b4 = bits[4]
                    8500    803 	b5 = bits[5]
                    8600    804 	b6 = bits[6]
                    8700    805 	b7 = bits[7]
                            806 ;--------------------------------------------------------
                            807 ; internal ram data
                            808 ;--------------------------------------------------------
                            809 	.area DSEG    (DATA)
   0008                     810 _task_UART_core_projectSpecific_sloc0_1_0:
   0008                     811 	.ds 1
   0009                     812 _task_UART_core_projectSpecific_sloc1_1_0:
   0009                     813 	.ds 3
   000C                     814 _task_UART_core_projectSpecific_sloc2_1_0:
   000C                     815 	.ds 2
   000E                     816 _task_UART_core_projectSpecific_sloc3_1_0:
   000E                     817 	.ds 3
   0011                     818 _task_UART_getchar_projectSpecific_sloc0_1_0:
   0011                     819 	.ds 3
   0014                     820 _task_UART_getchar_projectSpecific_sloc1_1_0:
   0014                     821 	.ds 2
   0016                     822 _task_UART_getchar_projectSpecific_sloc2_1_0:
   0016                     823 	.ds 3
   0019                     824 _task_UART_gets_projectSpecific_sloc0_1_0:
   0019                     825 	.ds 1
   001A                     826 _task_UART_gets_projectSpecific_sloc1_1_0:
   001A                     827 	.ds 2
                            828 ;--------------------------------------------------------
                            829 ; overlayable items in internal ram 
                            830 ;--------------------------------------------------------
                            831 	.area	OSEG    (OVR,DATA)
   0060                     832 _addTickCounter_sloc0_1_0::
   0060                     833 	.ds 3
                            834 ;--------------------------------------------------------
                            835 ; Stack segment in internal ram 
                            836 ;--------------------------------------------------------
                            837 	.area	SSEG	(DATA)
   0063                     838 __start__stack:
   0063                     839 	.ds	1
                            840 
                            841 ;--------------------------------------------------------
                            842 ; indirectly addressable internal ram data
                            843 ;--------------------------------------------------------
                            844 	.area ISEG    (DATA)
                            845 ;--------------------------------------------------------
                            846 ; absolute internal ram data
                            847 ;--------------------------------------------------------
                            848 	.area IABS    (ABS,DATA)
                            849 	.area IABS    (ABS,DATA)
                            850 ;--------------------------------------------------------
                            851 ; bit data
                            852 ;--------------------------------------------------------
                            853 	.area BSEG    (BIT)
   0000                     854 _timeForTickProcessing:
   0000                     855 	.ds 1
   0001                     856 _main_ok_1_1:
   0001                     857 	.ds 1
   0002                     858 _pwm_init_projectSpecific_initialized_1_1:
   0002                     859 	.ds 1
   0003                     860 _task_UART_init_projectSpecific_timer1initialized_1_1:
   0003                     861 	.ds 1
   0004                     862 _task_UART_isLineReady_sloc0_1_0:
   0004                     863 	.ds 1
                            864 ;--------------------------------------------------------
                            865 ; paged external ram data
                            866 ;--------------------------------------------------------
                            867 	.area PSEG    (PAG,XDATA)
                            868 ;--------------------------------------------------------
                            869 ; external ram data
                            870 ;--------------------------------------------------------
                            871 	.area XSEG    (XDATA)
   0000                     872 _main_iterationMax_1_1:
   0000                     873 	.ds 2
   0002                     874 _pwm_init_projectSpecific_channelNumber_1_1:
   0002                     875 	.ds 1
   0003                     876 _pwm_setDutyCycle_projectSpecific_PARM_2:
   0003                     877 	.ds 1
   0004                     878 _pwm_adjustDutyCycle_projectSpecific_PARM_2:
   0004                     879 	.ds 1
   0005                     880 _pwm_setDutyCycleAsPercentage_projectSpecific_PARM_2:
   0005                     881 	.ds 1
   0006                     882 _UARTtempBuffer::
   0006                     883 	.ds 1100
   0452                     884 _IsEmpty_Q_1_1:
   0452                     885 	.ds 3
   0455                     886 _IsFull_Q_1_1:
   0455                     887 	.ds 3
   0458                     888 _Succ_PARM_2:
   0458                     889 	.ds 3
   045B                     890 _Succ_Value_1_1:
   045B                     891 	.ds 2
   045D                     892 _transmitBuffer:
   045D                     893 	.ds 1101
   08AA                     894 _receiveBuffer:
   08AA                     895 	.ds 11
   08B5                     896 _transmitBuffers:
   08B5                     897 	.ds 11
   08C0                     898 _receiveBuffers:
   08C0                     899 	.ds 11
   08CB                     900 _charSent:
   08CB                     901 	.ds 1
   08CC                     902 _lineReady:
   08CC                     903 	.ds 1
   08CD                     904 _task_UART_init_projectSpecific_channelNumber_1_1:
   08CD                     905 	.ds 1
   08CE                     906 _task_UART_core_projectSpecific_channelNumber_1_1:
   08CE                     907 	.ds 1
   08CF                     908 _task_UART_core_projectSpecific_Q_4_4:
   08CF                     909 	.ds 3
   08D2                     910 _task_UART_putchar_projectSpecific_PARM_2:
   08D2                     911 	.ds 1
   08D3                     912 _task_UART_putchar_projectSpecific_channelNumber_1_1:
   08D3                     913 	.ds 1
   08D4                     914 _task_UART_putchar_projectSpecific_Q_2_2:
   08D4                     915 	.ds 3
   08D7                     916 _task_UART_puts_projectSpecific_PARM_2:
   08D7                     917 	.ds 3
   08DA                     918 _task_UART_puts_projectSpecific_channelNumber_1_1:
   08DA                     919 	.ds 1
   08DB                     920 _task_UART_getchar_projectSpecific_channelNumber_1_1:
   08DB                     921 	.ds 1
   08DC                     922 _task_UART_getchar_projectSpecific_Q_2_2:
   08DC                     923 	.ds 3
   08DF                     924 _task_UART_gets_projectSpecific_PARM_2:
   08DF                     925 	.ds 3
   08E2                     926 _task_UART_gets_projectSpecific_PARM_3:
   08E2                     927 	.ds 2
   08E4                     928 _task_UART_gets_projectSpecific_channelNumber_1_1:
   08E4                     929 	.ds 1
   08E5                     930 _task_UART_isLineReady_channelNumber_1_1:
   08E5                     931 	.ds 1
   08E6                     932 _putchar_c_1_1:
   08E6                     933 	.ds 1
   08E7                     934 _prvSetupTimerInterrupt_ucOriginalSFRPage_1_1:
   08E7                     935 	.ds 1
   08E8                     936 _tickCounterToIncrement::
   08E8                     937 	.ds 30
   0906                     938 _addTickCounter_pointerToIncrement_1_1:
   0906                     939 	.ds 3
                            940 ;--------------------------------------------------------
                            941 ; absolute external ram data
                            942 ;--------------------------------------------------------
                            943 	.area XABS    (ABS,XDATA)
                            944 ;--------------------------------------------------------
                            945 ; external initialized ram data
                            946 ;--------------------------------------------------------
                            947 	.area XISEG   (XDATA)
   0EE4                     948 _countdown:
   0EE4                     949 	.ds 2
                            950 	.area HOME    (CODE)
                            951 	.area GSINIT0 (CODE)
                            952 	.area GSINIT1 (CODE)
                            953 	.area GSINIT2 (CODE)
                            954 	.area GSINIT3 (CODE)
                            955 	.area GSINIT4 (CODE)
                            956 	.area GSINIT5 (CODE)
                            957 	.area GSINIT  (CODE)
                            958 	.area GSFINAL (CODE)
                            959 	.area CSEG    (CODE)
                            960 ;--------------------------------------------------------
                            961 ; interrupt vector 
                            962 ;--------------------------------------------------------
                            963 	.area HOME    (CODE)
   0000                     964 __interrupt_vect:
   0000 02 00 33            965 	ljmp	__sdcc_gsinit_startup
   0003 32                  966 	reti
   0004                     967 	.ds	7
   000B 32                  968 	reti
   000C                     969 	.ds	7
   0013 32                  970 	reti
   0014                     971 	.ds	7
   001B 32                  972 	reti
   001C                     973 	.ds	7
   0023 32                  974 	reti
   0024                     975 	.ds	7
   002B 02 0B FA            976 	ljmp	_vTimer2ISR
                            977 ;--------------------------------------------------------
                            978 ; global & static initialisations
                            979 ;--------------------------------------------------------
                            980 	.area HOME    (CODE)
                            981 	.area GSINIT  (CODE)
                            982 	.area GSFINAL (CODE)
                            983 	.area GSINIT  (CODE)
                            984 	.globl __sdcc_gsinit_startup
                            985 	.globl __sdcc_program_startup
                            986 	.globl __start__stack
                            987 	.globl __mcs51_genXINIT
                            988 	.globl __mcs51_genXRAMCLEAR
                            989 	.globl __mcs51_genRAMCLEAR
                            990 ;------------------------------------------------------------
                            991 ;Allocation info for local variables in function 'main'
                            992 ;------------------------------------------------------------
                            993 ;bomb                      Allocated with name '_main_bomb_1_1'
                            994 ;calculator                Allocated with name '_main_calculator_1_1'
                            995 ;iterationMax              Allocated with name '_main_iterationMax_1_1'
                            996 ;------------------------------------------------------------
                            997 ;	../main.c:94: static int iterationMax = 10 ;
   008C 90 00 00            998 	mov	dptr,#_main_iterationMax_1_1
   008F 74 0A               999 	mov	a,#0x0A
   0091 F0                 1000 	movx	@dptr,a
   0092 E4                 1001 	clr	a
   0093 A3                 1002 	inc	dptr
   0094 F0                 1003 	movx	@dptr,a
                           1004 ;------------------------------------------------------------
                           1005 ;Allocation info for local variables in function 'task_UART_init_projectSpecific'
                           1006 ;------------------------------------------------------------
                           1007 ;channelNumber             Allocated with name '_task_UART_init_projectSpecific_channelNumber_1_1'
                           1008 ;Q                         Allocated with name '_task_UART_init_projectSpecific_Q_1_1'
                           1009 ;SFRPAGE_SAVE              Allocated with name '_task_UART_init_projectSpecific_SFRPAGE_SAVE_3_3'
                           1010 ;------------------------------------------------------------
                           1011 ;	../projectSpecificHardwareInterface_C8051F040.c:323: static bool	timer1initialized = false ;
   0095 C2 03              1012 	clr	_task_UART_init_projectSpecific_timer1initialized_1_1
                           1013 	.area GSFINAL (CODE)
   0097 02 00 2E           1014 	ljmp	__sdcc_program_startup
                           1015 ;--------------------------------------------------------
                           1016 ; Home
                           1017 ;--------------------------------------------------------
                           1018 	.area HOME    (CODE)
                           1019 	.area HOME    (CODE)
   002E                    1020 __sdcc_program_startup:
   002E 12 00 9A           1021 	lcall	_main
                           1022 ;	return from main will lock up
   0031 80 FE              1023 	sjmp .
                           1024 ;--------------------------------------------------------
                           1025 ; code
                           1026 ;--------------------------------------------------------
                           1027 	.area CSEG    (CODE)
                           1028 ;------------------------------------------------------------
                           1029 ;Allocation info for local variables in function 'main'
                           1030 ;------------------------------------------------------------
                           1031 ;bomb                      Allocated with name '_main_bomb_1_1'
                           1032 ;calculator                Allocated with name '_main_calculator_1_1'
                           1033 ;iterationMax              Allocated with name '_main_iterationMax_1_1'
                           1034 ;------------------------------------------------------------
                           1035 ;	../main.c:83: void main(	void)
                           1036 ;	-----------------------------------------
                           1037 ;	 function main
                           1038 ;	-----------------------------------------
   009A                    1039 _main:
                    0002   1040 	ar2 = 0x02
                    0003   1041 	ar3 = 0x03
                    0004   1042 	ar4 = 0x04
                    0005   1043 	ar5 = 0x05
                    0006   1044 	ar6 = 0x06
                    0007   1045 	ar7 = 0x07
                    0000   1046 	ar0 = 0x00
                    0001   1047 	ar1 = 0x01
                           1048 ;	../main.c:91: bool			ok = true ;
   009A D2 01              1049 	setb	_main_ok_1_1
                           1050 ;	../main.c:96: puts("4th Generation state machine test started.") ;
   009C 90 4D 5C           1051 	mov	dptr,#__str_0
   009F 75 F0 80           1052 	mov	b,#0x80
   00A2 12 44 28           1053 	lcall	_puts
                           1054 ;	../main.c:109: WDTCN = 0xDE ;	/* Disable the watchdog timer */
   00A5 75 FF DE           1055 	mov	_WDTCN,#0xDE
                           1056 ;	../main.c:110: WDTCN = 0xAD ;
   00A8 75 FF AD           1057 	mov	_WDTCN,#0xAD
                           1058 ;	../main.c:111: WDTCN = 0xFF ;	/* Disable any future ability to modify the watchdog timer */
   00AB 75 FF FF           1059 	mov	_WDTCN,#0xFF
                           1060 ;	../main.c:113: prvSetupSystemClock() ;
   00AE 12 0B 3E           1061 	lcall	_prvSetupSystemClock
                           1062 ;	../main.c:114: gpio_init() ;
   00B1 12 02 40           1063 	lcall	_gpio_init_projectSpecific
                           1064 ;	../main.c:115: pwm_init(ioMapping_PWM_TO_TICK_SYNCHRONIZER_CHANNEL) ;
   00B4 75 82 00           1065 	mov	dpl,#0x00
   00B7 12 3E 3D           1066 	lcall	_pwm_init
                           1067 ;	../main.c:116: prvSetupTimerInterrupt() ;
   00BA 12 0B 5D           1068 	lcall	_prvSetupTimerInterrupt
                           1069 ;	../main.c:117: task_UART_init(0) ;
   00BD 75 82 00           1070 	mov	dpl,#0x00
   00C0 12 3E D0           1071 	lcall	_task_UART_init
                           1072 ;	../main.c:119: portENABLE_INTERRUPTS() ;
   00C3 D2 AF              1073 	setb	_EA
                           1074 ;	../main.c:122: puts("Generating timebomb") ;
   00C5 90 4D 87           1075 	mov	dptr,#__str_1
   00C8 75 F0 80           1076 	mov	b,#0x80
   00CB 12 44 28           1077 	lcall	_puts
                           1078 ;	../main.c:124: bomb = STATE_MACHINE_CREATE_INSTANCE_OF(timeBomb) ;
   00CE 12 17 90           1079 	lcall	_timeBomb_getEventQueueDepth
   00D1 AA 82              1080 	mov	r2,dpl
   00D3 AB 83              1081 	mov	r3,dph
   00D5 90 09 EB           1082 	mov	dptr,#_allocateStateMachineMemory_PARM_2
   00D8 74 94              1083 	mov	a,#_timeBomb_constructor
   00DA F0                 1084 	movx	@dptr,a
   00DB A3                 1085 	inc	dptr
   00DC 74 17              1086 	mov	a,#(_timeBomb_constructor >> 8)
   00DE F0                 1087 	movx	@dptr,a
   00DF 8A 82              1088 	mov	dpl,r2
   00E1 8B 83              1089 	mov	dph,r3
   00E3 12 28 70           1090 	lcall	_allocateStateMachineMemory
   00E6 AA 82              1091 	mov	r2,dpl
   00E8 AB 83              1092 	mov	r3,dph
   00EA AC F0              1093 	mov	r4,b
                           1094 ;	../main.c:131: puts("Generating calculator") ;
   00EC 90 4D 9B           1095 	mov	dptr,#__str_2
   00EF 75 F0 80           1096 	mov	b,#0x80
   00F2 C0 02              1097 	push	ar2
   00F4 C0 03              1098 	push	ar3
   00F6 C0 04              1099 	push	ar4
   00F8 12 44 28           1100 	lcall	_puts
                           1101 ;	../main.c:133: calculator = STATE_MACHINE_CREATE_INSTANCE_OF(calculator) ;
   00FB 12 0C 84           1102 	lcall	_calculator_getEventQueueDepth
   00FE AD 82              1103 	mov	r5,dpl
   0100 AE 83              1104 	mov	r6,dph
   0102 90 09 EB           1105 	mov	dptr,#_allocateStateMachineMemory_PARM_2
   0105 74 88              1106 	mov	a,#_calculator_constructor
   0107 F0                 1107 	movx	@dptr,a
   0108 A3                 1108 	inc	dptr
   0109 74 0C              1109 	mov	a,#(_calculator_constructor >> 8)
   010B F0                 1110 	movx	@dptr,a
   010C 8D 82              1111 	mov	dpl,r5
   010E 8E 83              1112 	mov	dph,r6
   0110 12 28 70           1113 	lcall	_allocateStateMachineMemory
   0113 AD 82              1114 	mov	r5,dpl
   0115 AE 83              1115 	mov	r6,dph
   0117 AF F0              1116 	mov	r7,b
   0119 D0 04              1117 	pop	ar4
   011B D0 03              1118 	pop	ar3
   011D D0 02              1119 	pop	ar2
                           1120 ;	../main.c:135: if(calculator)
   011F ED                 1121 	mov	a,r5
   0120 4E                 1122 	orl	a,r6
   0121 4F                 1123 	orl	a,r7
   0122 60 36              1124 	jz	00102$
                           1125 ;	../main.c:137: puts("Registering calculator") ;
   0124 90 4D B1           1126 	mov	dptr,#__str_3
   0127 75 F0 80           1127 	mov	b,#0x80
   012A C0 02              1128 	push	ar2
   012C C0 03              1129 	push	ar3
   012E C0 04              1130 	push	ar4
   0130 C0 05              1131 	push	ar5
   0132 C0 06              1132 	push	ar6
   0134 C0 07              1133 	push	ar7
   0136 12 44 28           1134 	lcall	_puts
   0139 D0 07              1135 	pop	ar7
   013B D0 06              1136 	pop	ar6
   013D D0 05              1137 	pop	ar5
                           1138 ;	../main.c:139: REGISTER_STATE_MACHINE(calculator) ;
   013F 8D 82              1139 	mov	dpl,r5
   0141 8E 83              1140 	mov	dph,r6
   0143 8F F0              1141 	mov	b,r7
   0145 C0 05              1142 	push	ar5
   0147 C0 06              1143 	push	ar6
   0149 C0 07              1144 	push	ar7
   014B 12 2A C3           1145 	lcall	_registerStateMachine
   014E D0 07              1146 	pop	ar7
   0150 D0 06              1147 	pop	ar6
   0152 D0 05              1148 	pop	ar5
   0154 D0 04              1149 	pop	ar4
   0156 D0 03              1150 	pop	ar3
   0158 D0 02              1151 	pop	ar2
   015A                    1152 00102$:
                           1153 ;	../main.c:142: puts("Iterating state machines") ;
   015A 90 4D C8           1154 	mov	dptr,#__str_4
   015D 75 F0 80           1155 	mov	b,#0x80
   0160 C0 02              1156 	push	ar2
   0162 C0 03              1157 	push	ar3
   0164 C0 04              1158 	push	ar4
   0166 C0 05              1159 	push	ar5
   0168 C0 06              1160 	push	ar6
   016A C0 07              1161 	push	ar7
   016C 12 44 28           1162 	lcall	_puts
   016F D0 07              1163 	pop	ar7
   0171 D0 06              1164 	pop	ar6
   0173 D0 05              1165 	pop	ar5
   0175 D0 04              1166 	pop	ar4
   0177 D0 03              1167 	pop	ar3
   0179 D0 02              1168 	pop	ar2
                           1169 ;	../main.c:144: while(ok)
   017B                    1170 00105$:
   017B 30 01 50           1171 	jnb	_main_ok_1_1,00107$
                           1172 ;	../main.c:146: if(iterationMax-- == 0)
   017E C0 02              1173 	push	ar2
   0180 C0 03              1174 	push	ar3
   0182 C0 04              1175 	push	ar4
   0184 90 00 00           1176 	mov	dptr,#_main_iterationMax_1_1
   0187 E0                 1177 	movx	a,@dptr
   0188 F8                 1178 	mov	r0,a
   0189 A3                 1179 	inc	dptr
   018A E0                 1180 	movx	a,@dptr
   018B F9                 1181 	mov	r1,a
   018C E8                 1182 	mov	a,r0
   018D 24 FF              1183 	add	a,#0xff
   018F FA                 1184 	mov	r2,a
   0190 E9                 1185 	mov	a,r1
   0191 34 FF              1186 	addc	a,#0xff
   0193 FB                 1187 	mov	r3,a
   0194 90 00 00           1188 	mov	dptr,#_main_iterationMax_1_1
   0197 EA                 1189 	mov	a,r2
   0198 F0                 1190 	movx	@dptr,a
   0199 A3                 1191 	inc	dptr
   019A EB                 1192 	mov	a,r3
   019B F0                 1193 	movx	@dptr,a
   019C D0 04              1194 	pop	ar4
   019E D0 03              1195 	pop	ar3
   01A0 D0 02              1196 	pop	ar2
   01A2 E8                 1197 	mov	a,r0
   01A3 49                 1198 	orl	a,r1
   01A4 70 02              1199 	jnz	00104$
                           1200 ;	../main.c:148: ok = false ;
   01A6 C2 01              1201 	clr	_main_ok_1_1
   01A8                    1202 00104$:
                           1203 ;	../main.c:151: puts("loop") ;
   01A8 90 4D E1           1204 	mov	dptr,#__str_5
   01AB 75 F0 80           1205 	mov	b,#0x80
   01AE C0 02              1206 	push	ar2
   01B0 C0 03              1207 	push	ar3
   01B2 C0 04              1208 	push	ar4
   01B4 C0 05              1209 	push	ar5
   01B6 C0 06              1210 	push	ar6
   01B8 C0 07              1211 	push	ar7
   01BA 12 44 28           1212 	lcall	_puts
                           1213 ;	../main.c:153: ITERATE_ALL_STATE_MACHINES() ;
   01BD 12 2B 8F           1214 	lcall	_iterateAllStateMachines
   01C0 D0 07              1215 	pop	ar7
   01C2 D0 06              1216 	pop	ar6
   01C4 D0 05              1217 	pop	ar5
   01C6 D0 04              1218 	pop	ar4
   01C8 D0 03              1219 	pop	ar3
   01CA D0 02              1220 	pop	ar2
   01CC 80 AD              1221 	sjmp	00105$
   01CE                    1222 00107$:
                           1223 ;	../main.c:160: if(calculator)
   01CE ED                 1224 	mov	a,r5
   01CF 4E                 1225 	orl	a,r6
   01D0 4F                 1226 	orl	a,r7
   01D1 60 34              1227 	jz	00109$
                           1228 ;	../main.c:162: UNREGISTER_STATE_MACHINE(calculator) ;
   01D3 8D 82              1229 	mov	dpl,r5
   01D5 8E 83              1230 	mov	dph,r6
   01D7 8F F0              1231 	mov	b,r7
   01D9 C0 02              1232 	push	ar2
   01DB C0 03              1233 	push	ar3
   01DD C0 04              1234 	push	ar4
   01DF C0 05              1235 	push	ar5
   01E1 C0 06              1236 	push	ar6
   01E3 C0 07              1237 	push	ar7
   01E5 12 2B 29           1238 	lcall	_unregisterStateMachine
   01E8 D0 07              1239 	pop	ar7
   01EA D0 06              1240 	pop	ar6
   01EC D0 05              1241 	pop	ar5
                           1242 ;	../main.c:164: STATE_MACHINE_DESTROY_INSTANCE_OF(calculator, calculator) ;
   01EE 90 09 EF           1243 	mov	dptr,#_deallocateStateMachineMemory_PARM_2
   01F1 74 0A              1244 	mov	a,#_calculator_destructor
   01F3 F0                 1245 	movx	@dptr,a
   01F4 A3                 1246 	inc	dptr
   01F5 74 0D              1247 	mov	a,#(_calculator_destructor >> 8)
   01F7 F0                 1248 	movx	@dptr,a
   01F8 8D 82              1249 	mov	dpl,r5
   01FA 8E 83              1250 	mov	dph,r6
   01FC 8F F0              1251 	mov	b,r7
   01FE 12 2A 75           1252 	lcall	_deallocateStateMachineMemory
   0201 D0 04              1253 	pop	ar4
   0203 D0 03              1254 	pop	ar3
   0205 D0 02              1255 	pop	ar2
                           1256 ;	../main.c:166: calculator = 0 ;
   0207                    1257 00109$:
                           1258 ;	../main.c:169: if(bomb)
   0207 EA                 1259 	mov	a,r2
   0208 4B                 1260 	orl	a,r3
   0209 4C                 1261 	orl	a,r4
   020A 60 28              1262 	jz	00111$
                           1263 ;	../main.c:171: UNREGISTER_STATE_MACHINE(bomb) ;
   020C 8A 82              1264 	mov	dpl,r2
   020E 8B 83              1265 	mov	dph,r3
   0210 8C F0              1266 	mov	b,r4
   0212 C0 02              1267 	push	ar2
   0214 C0 03              1268 	push	ar3
   0216 C0 04              1269 	push	ar4
   0218 12 2B 29           1270 	lcall	_unregisterStateMachine
   021B D0 04              1271 	pop	ar4
   021D D0 03              1272 	pop	ar3
   021F D0 02              1273 	pop	ar2
                           1274 ;	../main.c:173: STATE_MACHINE_DESTROY_INSTANCE_OF(timeBomb, bomb) ;
   0221 90 09 EF           1275 	mov	dptr,#_deallocateStateMachineMemory_PARM_2
   0224 74 16              1276 	mov	a,#_timeBomb_destructor
   0226 F0                 1277 	movx	@dptr,a
   0227 A3                 1278 	inc	dptr
   0228 74 18              1279 	mov	a,#(_timeBomb_destructor >> 8)
   022A F0                 1280 	movx	@dptr,a
   022B 8A 82              1281 	mov	dpl,r2
   022D 8B 83              1282 	mov	dph,r3
   022F 8C F0              1283 	mov	b,r4
   0231 12 2A 75           1284 	lcall	_deallocateStateMachineMemory
                           1285 ;	../main.c:175: bomb = 0 ;
   0234                    1286 00111$:
                           1287 ;	../main.c:178: puts("\n4th Generation state machine test done.") ;
   0234 90 4D E6           1288 	mov	dptr,#__str_6
   0237 75 F0 80           1289 	mov	b,#0x80
   023A 02 44 28           1290 	ljmp	_puts
                           1291 ;------------------------------------------------------------
                           1292 ;Allocation info for local variables in function 'taskSwitcherTickHook'
                           1293 ;------------------------------------------------------------
                           1294 ;------------------------------------------------------------
                           1295 ;	../main.c:187: void taskSwitcherTickHook(	void)
                           1296 ;	-----------------------------------------
                           1297 ;	 function taskSwitcherTickHook
                           1298 ;	-----------------------------------------
   023D                    1299 _taskSwitcherTickHook:
                           1300 ;	../main.c:189: timeForTickProcessing = true ;
   023D D2 00              1301 	setb	_timeForTickProcessing
   023F 22                 1302 	ret
                           1303 ;------------------------------------------------------------
                           1304 ;Allocation info for local variables in function 'gpio_init_projectSpecific'
                           1305 ;------------------------------------------------------------
                           1306 ;SFRPAGE_SAVE              Allocated with name '_gpio_init_projectSpecific_SFRPAGE_SAVE_1_1'
                           1307 ;------------------------------------------------------------
                           1308 ;	../projectSpecificHardwareInterface_C8051F040.c:17: void gpio_init_projectSpecific(	void)
                           1309 ;	-----------------------------------------
                           1310 ;	 function gpio_init_projectSpecific
                           1311 ;	-----------------------------------------
   0240                    1312 _gpio_init_projectSpecific:
                           1313 ;	../projectSpecificHardwareInterface_C8051F040.c:21: SFRPAGE_SAVE = SFRPAGE ;
   0240 AA 84              1314 	mov	r2,_SFRPAGE
                           1315 ;	../projectSpecificHardwareInterface_C8051F040.c:23: SFRPAGE	 = SPI0_PAGE ;
   0242 75 84 00           1316 	mov	_SFRPAGE,#0x00
                           1317 ;	../projectSpecificHardwareInterface_C8051F040.c:24: SPI0CN	 = 0x00 ;	// Set the SPI module into 3 pin mode so NSS doesn't get assigned to a pin in the crossbar setup below
   0245 75 F8 00           1318 	mov	_SPI0CN,#0x00
                           1319 ;	../projectSpecificHardwareInterface_C8051F040.c:26: SFRPAGE	 = CONFIG_PAGE ;
   0248 75 84 0F           1320 	mov	_SFRPAGE,#0x0F
                           1321 ;	../projectSpecificHardwareInterface_C8051F040.c:27: XBR0	 = 0x00 ;	// Start with a clean slate
   024B 75 E1 00           1322 	mov	_XBR0,#0x00
                           1323 ;	../projectSpecificHardwareInterface_C8051F040.c:28: XBR1	 = 0x00 ;
   024E 75 E2 00           1324 	mov	_XBR1,#0x00
                           1325 ;	../projectSpecificHardwareInterface_C8051F040.c:29: XBR2	 = 0x00 ;
   0251 75 E3 00           1326 	mov	_XBR2,#0x00
                           1327 ;	../projectSpecificHardwareInterface_C8051F040.c:30: XBR3	 = 0x00 ;
   0254 75 E4 00           1328 	mov	_XBR3,#0x00
                           1329 ;	../projectSpecificHardwareInterface_C8051F040.c:32: XBR0	|= 0x04 ;	// Route UART0 to P0.0-P0.1
   0257 43 E1 04           1330 	orl	_XBR0,#0x04
                           1331 ;	../projectSpecificHardwareInterface_C8051F040.c:33: XBR0	|= 0x02 ;	// Route SPI0 to P0.2-P0.4
   025A 43 E1 02           1332 	orl	_XBR0,#0x02
                           1333 ;	../projectSpecificHardwareInterface_C8051F040.c:34: XBR0	|= 0x01 ;	// Route SMB0 to P0.5-P0.6
   025D 43 E1 01           1334 	orl	_XBR0,#0x01
                           1335 ;	../projectSpecificHardwareInterface_C8051F040.c:35: XBR2	|= 0x04 ;	// Route UART1 to P0.7-P1.0
   0260 43 E3 04           1336 	orl	_XBR2,#0x04
                           1337 ;	../projectSpecificHardwareInterface_C8051F040.c:36: XBR0	|= 0x30 ;	// Route CEXn to P1.1-P1.6
   0263 43 E1 30           1338 	orl	_XBR0,#0x30
                           1339 ;	../projectSpecificHardwareInterface_C8051F040.c:37: XBR0	|= 0x80 ;	// Route CP0 to P1.7
   0266 43 E1 80           1340 	orl	_XBR0,#0x80
                           1341 ;	../projectSpecificHardwareInterface_C8051F040.c:38: XBR3	|= 0x08 ;	// Route CP2 to P2.0
   0269 43 E4 08           1342 	orl	_XBR3,#0x08
                           1343 ;	../projectSpecificHardwareInterface_C8051F040.c:39: XBR1	|= 0x04 ;	// Route INT0# to P2.1
   026C 43 E2 04           1344 	orl	_XBR1,#0x04
                           1345 ;	../projectSpecificHardwareInterface_C8051F040.c:40: XBR1	|= 0x20 ;	// Route T2 from P2.2
   026F 43 E2 20           1346 	orl	_XBR1,#0x20
                           1347 ;	../projectSpecificHardwareInterface_C8051F040.c:41: XBR3	|= 0x01 ;	// Route T3 to P2.3
   0272 43 E4 01           1348 	orl	_XBR3,#0x01
                           1349 ;	../projectSpecificHardwareInterface_C8051F040.c:43: P0MDOUT |= 0x01 ;	// Set TX0 (P0.0) to push-pull
   0275 43 A4 01           1350 	orl	_P0MDOUT,#0x01
                           1351 ;	../projectSpecificHardwareInterface_C8051F040.c:45: P1MDOUT	|= 0x02 ;	// Set CEX0 (P1.1) to push-pull
   0278 43 A5 02           1352 	orl	_P1MDOUT,#0x02
                           1353 ;	../projectSpecificHardwareInterface_C8051F040.c:46: P1MDOUT	|= 0x04 ;	// Set CEX1 (P1.2) to push-pull
   027B 43 A5 04           1354 	orl	_P1MDOUT,#0x04
                           1355 ;	../projectSpecificHardwareInterface_C8051F040.c:47: P1MDOUT	|= 0x08 ;	// Set CEX2 (P1.3) to push-pull
   027E 43 A5 08           1356 	orl	_P1MDOUT,#0x08
                           1357 ;	../projectSpecificHardwareInterface_C8051F040.c:48: P1MDOUT	|= 0x10 ;	// Set CEX3 (P1.4) to push-pull
   0281 43 A5 10           1358 	orl	_P1MDOUT,#0x10
                           1359 ;	../projectSpecificHardwareInterface_C8051F040.c:49: P1MDOUT	|= 0x20 ;	// Set CEX4 (P1.5) to push-pull
   0284 43 A5 20           1360 	orl	_P1MDOUT,#0x20
                           1361 ;	../projectSpecificHardwareInterface_C8051F040.c:50: P1MDOUT |= 0x40 ;	// Set CEX5 (P1.6) to push-pull
   0287 43 A5 40           1362 	orl	_P1MDOUT,#0x40
                           1363 ;	../projectSpecificHardwareInterface_C8051F040.c:52: P1MDOUT |= 0x80 ;	// Set TX1 (P1.7) to push-pull
   028A 43 A5 80           1364 	orl	_P1MDOUT,#0x80
                           1365 ;	../projectSpecificHardwareInterface_C8051F040.c:53: P2MDOUT	&= ~0x02 ;	// Set INT0# (P2.1) to be a digital input
                           1366 ;	../projectSpecificHardwareInterface_C8051F040.c:54: P2MDOUT	&= ~0x04 ;	// Set T2 (P2.2) to be a digital input
   028D 53 A6 F9           1367 	anl	_P2MDOUT,#(0xFD&0xFB)
                           1368 ;	../projectSpecificHardwareInterface_C8051F040.c:55: P2MDOUT	|= 0x08 ;	// Set P2.3 to be the Timer3 output pin
   0290 43 A6 08           1369 	orl	_P2MDOUT,#0x08
                           1370 ;	../projectSpecificHardwareInterface_C8051F040.c:57: P3MDIN	 = 0x00 ;	// Configure as analog inputs. This forces the weak pullup for these pins to be disconnected
   0293 75 AF 00           1371 	mov	_P3MDIN,#0x00
                           1372 ;	../projectSpecificHardwareInterface_C8051F040.c:58: P3MDOUT	 = 0x00 ;	// Force the output driver for these pins to open drain output mode
   0296 75 A7 00           1373 	mov	_P3MDOUT,#0x00
                           1374 ;	../projectSpecificHardwareInterface_C8051F040.c:59: P3		 = 0xFF ;	// Force the input driver for these pins to high impedance
   0299 75 B0 FF           1375 	mov	_P3,#0xFF
                           1376 ;	../projectSpecificHardwareInterface_C8051F040.c:61: XBR3	|= 0x80 ;	// Configure CAN TX pin (CTX) as push-pull digital output
   029C 43 E4 80           1377 	orl	_XBR3,#0x80
                           1378 ;	../projectSpecificHardwareInterface_C8051F040.c:63: P4MDOUT	|= 0xFF ;	// Set LCD drive pins to push-pull
   029F E5 9C              1379 	mov	a,_P4MDOUT
   02A1 75 9C FF           1380 	mov	_P4MDOUT,#0xFF
                           1381 ;	../projectSpecificHardwareInterface_C8051F040.c:64: P5MDOUT	|= 0xFF ;	// Set state machine debug pins to push-pull
   02A4 E5 9D              1382 	mov	a,_P5MDOUT
   02A6 75 9D FF           1383 	mov	_P5MDOUT,#0xFF
                           1384 ;	../projectSpecificHardwareInterface_C8051F040.c:65: P6MDOUT	|= 0xFF ;	// Set general purpose debug pins to push-pull
   02A9 E5 9E              1385 	mov	a,_P6MDOUT
   02AB 75 9E FF           1386 	mov	_P6MDOUT,#0xFF
                           1387 ;	../projectSpecificHardwareInterface_C8051F040.c:67: P4		 = 0x00 ;	// Set all debugging pins to low
   02AE 75 C8 00           1388 	mov	_P4,#0x00
                           1389 ;	../projectSpecificHardwareInterface_C8051F040.c:68: P5		 = 0x00 ;
   02B1 75 D8 00           1390 	mov	_P5,#0x00
                           1391 ;	../projectSpecificHardwareInterface_C8051F040.c:69: P6		 = 0x00 ;
   02B4 75 E8 00           1392 	mov	_P6,#0x00
                           1393 ;	../projectSpecificHardwareInterface_C8051F040.c:71: P2MDIN	&= 0x0F ;	// set comparator analog inputs up as per Section 17.1.5 of the C8050F040 manual
   02B7 53 AE 0F           1394 	anl	_P2MDIN,#0x0F
                           1395 ;	../projectSpecificHardwareInterface_C8051F040.c:72: P2MDOUT	&= 0x0F ;
   02BA 53 A6 0F           1396 	anl	_P2MDOUT,#0x0F
                           1397 ;	../projectSpecificHardwareInterface_C8051F040.c:73: P2		|= 0xF0 ;
   02BD 43 A0 F0           1398 	orl	_P2,#0xF0
                           1399 ;	../projectSpecificHardwareInterface_C8051F040.c:78: XBR2	|= 0x40 ;	// Enable Crossbar/low ports and turn on global weak pullups
   02C0 43 E3 40           1400 	orl	_XBR2,#0x40
                           1401 ;	../projectSpecificHardwareInterface_C8051F040.c:79: SFRPAGE	 = SFRPAGE_SAVE ;
   02C3 8A 84              1402 	mov	_SFRPAGE,r2
   02C5 22                 1403 	ret
                           1404 ;------------------------------------------------------------
                           1405 ;Allocation info for local variables in function 'pwm_init_projectSpecific'
                           1406 ;------------------------------------------------------------
                           1407 ;channelNumber             Allocated with name '_pwm_init_projectSpecific_channelNumber_1_1'
                           1408 ;SFRPAGE_save              Allocated with name '_pwm_init_projectSpecific_SFRPAGE_save_1_1'
                           1409 ;------------------------------------------------------------
                           1410 ;	../projectSpecificHardwareInterface_C8051F040.c:83: void pwm_init_projectSpecific(								unsigned char channelNumber)
                           1411 ;	-----------------------------------------
                           1412 ;	 function pwm_init_projectSpecific
                           1413 ;	-----------------------------------------
   02C6                    1414 _pwm_init_projectSpecific:
   02C6 E5 82              1415 	mov	a,dpl
   02C8 90 00 02           1416 	mov	dptr,#_pwm_init_projectSpecific_channelNumber_1_1
   02CB F0                 1417 	movx	@dptr,a
                           1418 ;	../projectSpecificHardwareInterface_C8051F040.c:132: char		SFRPAGE_save = SFRPAGE ;	// Save current SFR Page
   02CC AA 84              1419 	mov	r2,_SFRPAGE
                           1420 ;	../projectSpecificHardwareInterface_C8051F040.c:134: SFRPAGE = PCA0_PAGE ;
   02CE 75 84 00           1421 	mov	_SFRPAGE,#0x00
                           1422 ;	../projectSpecificHardwareInterface_C8051F040.c:136: if(!initialized)
   02D1 20 02 2A           1423 	jb	_pwm_init_projectSpecific_initialized_1_1,00102$
                           1424 ;	../projectSpecificHardwareInterface_C8051F040.c:138: PCA0CN = 0x00 ;				// Stop counter; clear all flags
   02D4 75 D8 00           1425 	mov	_PCA0CN,#0x00
                           1426 ;	../projectSpecificHardwareInterface_C8051F040.c:139: PCA0MD = 0x08 ;				// Use SYSCLK as time base
   02D7 75 D9 08           1427 	mov	_PCA0MD,#0x08
                           1428 ;	../projectSpecificHardwareInterface_C8051F040.c:141: PCA0CPM0 = 0x00 ;			// Module 0 = Off
   02DA 75 DA 00           1429 	mov	_PCA0CPM0,#0x00
                           1430 ;	../projectSpecificHardwareInterface_C8051F040.c:142: PCA0CPH0 = 0x00 ;			// Configure initial PWM duty cycle = 100%. This will result in a continuously high output which, since it's active low, will disable any output.
   02DD 75 FC 00           1431 	mov	_PCA0CPH0,#0x00
                           1432 ;	../projectSpecificHardwareInterface_C8051F040.c:144: PCA0CPM0 = 0x00 ;			// Module 1 = Off
   02E0 75 DA 00           1433 	mov	_PCA0CPM0,#0x00
                           1434 ;	../projectSpecificHardwareInterface_C8051F040.c:145: PCA0CPH1 = 0x00 ;			// Configure initial PWM duty cycle = 100%. This will result in a continuously high output which, since it's active low, will disable any output.
   02E3 75 FE 00           1435 	mov	_PCA0CPH1,#0x00
                           1436 ;	../projectSpecificHardwareInterface_C8051F040.c:147: PCA0CPM0 = 0x00 ;			// Module 2 = Off
   02E6 75 DA 00           1437 	mov	_PCA0CPM0,#0x00
                           1438 ;	../projectSpecificHardwareInterface_C8051F040.c:148: PCA0CPH2 = 0x00 ;			// Configure initial PWM duty cycle = 100%. This will result in a continuously high output which, since it's active low, will disable any output.
   02E9 75 EA 00           1439 	mov	_PCA0CPH2,#0x00
                           1440 ;	../projectSpecificHardwareInterface_C8051F040.c:150: PCA0CPM0 = 0x00 ;			// Module 3 = Off
   02EC 75 DA 00           1441 	mov	_PCA0CPM0,#0x00
                           1442 ;	../projectSpecificHardwareInterface_C8051F040.c:151: PCA0CPH3 = 0x00 ;			// Configure initial PWM duty cycle = 100%. This will result in a continuously high output which, since it's active low, will disable any output.
   02EF 75 EC 00           1443 	mov	_PCA0CPH3,#0x00
                           1444 ;	../projectSpecificHardwareInterface_C8051F040.c:153: PCA0CPM0 = 0x00 ;			// Module 4 = Off
   02F2 75 DA 00           1445 	mov	_PCA0CPM0,#0x00
                           1446 ;	../projectSpecificHardwareInterface_C8051F040.c:154: PCA0CPH4 = 0x00 ;			// Configure initial PWM duty cycle = 100%. This will result in a continuously high output which, since it's active low, will disable any output.
   02F5 75 EE 00           1447 	mov	_PCA0CPH4,#0x00
                           1448 ;	../projectSpecificHardwareInterface_C8051F040.c:156: PCA0CPM0 = 0x00 ;			// Module 5 = Off
   02F8 75 DA 00           1449 	mov	_PCA0CPM0,#0x00
                           1450 ;	../projectSpecificHardwareInterface_C8051F040.c:157: PCA0CPH5 = 0x00 ;			// Configure initial PWM duty cycle = 100%. This will result in a continuously high output which, since it's active low, will disable any output.
   02FB 75 E2 00           1451 	mov	_PCA0CPH5,#0x00
   02FE                    1452 00102$:
                           1453 ;	../projectSpecificHardwareInterface_C8051F040.c:164: if(channelNumber == ioMapping_PWM_TO_TICK_SYNCHRONIZER_CHANNEL)
   02FE 90 00 02           1454 	mov	dptr,#_pwm_init_projectSpecific_channelNumber_1_1
   0301 E0                 1455 	movx	a,@dptr
   0302 FB                 1456 	mov	r3,a
   0303 70 06              1457 	jnz	00104$
                           1458 ;	../projectSpecificHardwareInterface_C8051F040.c:170: PWM_B50_MODE		= 0x42 ;						// Module 1 = 8-bit PWM mode
   0305 75 DA 42           1459 	mov	_PCA0CPM0,#0x42
                           1460 ;	../projectSpecificHardwareInterface_C8051F040.c:171: PWM_B50_HIGH_BYTE	= FIFTY_PERCENT_DUTY_CYCLE ;	// Configure initial PWM duty cycle = 50%
   0308 75 FC 80           1461 	mov	_PCA0CPH0,#0x80
   030B                    1462 00104$:
                           1463 ;	../projectSpecificHardwareInterface_C8051F040.c:174: if(!initialized)
   030B 20 02 04           1464 	jb	_pwm_init_projectSpecific_initialized_1_1,00106$
                           1465 ;	../projectSpecificHardwareInterface_C8051F040.c:176: initialized = true ;
   030E D2 02              1466 	setb	_pwm_init_projectSpecific_initialized_1_1
                           1467 ;	../projectSpecificHardwareInterface_C8051F040.c:178: CR = 1 ;					// Start PCA counter
   0310 D2 DE              1468 	setb	_CR
   0312                    1469 00106$:
                           1470 ;	../projectSpecificHardwareInterface_C8051F040.c:181: SFRPAGE = SFRPAGE_save ;
   0312 8A 84              1471 	mov	_SFRPAGE,r2
   0314 22                 1472 	ret
                           1473 ;------------------------------------------------------------
                           1474 ;Allocation info for local variables in function 'pwm_incrementDutyCycle_projectSpecific'
                           1475 ;------------------------------------------------------------
                           1476 ;channelNumber             Allocated with name '_pwm_incrementDutyCycle_projectSpecific_channelNumber_1_1'
                           1477 ;------------------------------------------------------------
                           1478 ;	../projectSpecificHardwareInterface_C8051F040.c:185: void pwm_incrementDutyCycle_projectSpecific(				unsigned char channelNumber)
                           1479 ;	-----------------------------------------
                           1480 ;	 function pwm_incrementDutyCycle_projectSpecific
                           1481 ;	-----------------------------------------
   0315                    1482 _pwm_incrementDutyCycle_projectSpecific:
                           1483 ;	../projectSpecificHardwareInterface_C8051F040.c:187: (void)channelNumber ;	// unused at this time
   0315 22                 1484 	ret
                           1485 ;------------------------------------------------------------
                           1486 ;Allocation info for local variables in function 'pwm_decrementDutyCycle_projectSpecific'
                           1487 ;------------------------------------------------------------
                           1488 ;channelNumber             Allocated with name '_pwm_decrementDutyCycle_projectSpecific_channelNumber_1_1'
                           1489 ;------------------------------------------------------------
                           1490 ;	../projectSpecificHardwareInterface_C8051F040.c:191: void pwm_decrementDutyCycle_projectSpecific(				unsigned char channelNumber)
                           1491 ;	-----------------------------------------
                           1492 ;	 function pwm_decrementDutyCycle_projectSpecific
                           1493 ;	-----------------------------------------
   0316                    1494 _pwm_decrementDutyCycle_projectSpecific:
                           1495 ;	../projectSpecificHardwareInterface_C8051F040.c:193: (void)channelNumber ;	// unused at this time
   0316 22                 1496 	ret
                           1497 ;------------------------------------------------------------
                           1498 ;Allocation info for local variables in function 'pwm_getDutyCycle_projectSpecific'
                           1499 ;------------------------------------------------------------
                           1500 ;channelNumber             Allocated with name '_pwm_getDutyCycle_projectSpecific_channelNumber_1_1'
                           1501 ;------------------------------------------------------------
                           1502 ;	../projectSpecificHardwareInterface_C8051F040.c:197: uint8_t pwm_getDutyCycle_projectSpecific(					unsigned char channelNumber)
                           1503 ;	-----------------------------------------
                           1504 ;	 function pwm_getDutyCycle_projectSpecific
                           1505 ;	-----------------------------------------
   0317                    1506 _pwm_getDutyCycle_projectSpecific:
                           1507 ;	../projectSpecificHardwareInterface_C8051F040.c:201: return 0 ;
   0317 75 82 00           1508 	mov	dpl,#0x00
   031A 22                 1509 	ret
                           1510 ;------------------------------------------------------------
                           1511 ;Allocation info for local variables in function 'pwm_setDutyCycle_projectSpecific'
                           1512 ;------------------------------------------------------------
                           1513 ;newDutyCycle              Allocated with name '_pwm_setDutyCycle_projectSpecific_PARM_2'
                           1514 ;channelNumber             Allocated with name '_pwm_setDutyCycle_projectSpecific_channelNumber_1_1'
                           1515 ;------------------------------------------------------------
                           1516 ;	../projectSpecificHardwareInterface_C8051F040.c:205: void pwm_setDutyCycle_projectSpecific(						unsigned char channelNumber, uint8_t newDutyCycle)
                           1517 ;	-----------------------------------------
                           1518 ;	 function pwm_setDutyCycle_projectSpecific
                           1519 ;	-----------------------------------------
   031B                    1520 _pwm_setDutyCycle_projectSpecific:
                           1521 ;	../projectSpecificHardwareInterface_C8051F040.c:208: (void)newDutyCycle ;	// unused at this time
   031B 22                 1522 	ret
                           1523 ;------------------------------------------------------------
                           1524 ;Allocation info for local variables in function 'pwm_adjustDutyCycle_projectSpecific'
                           1525 ;------------------------------------------------------------
                           1526 ;dutyCycleAdjustment       Allocated with name '_pwm_adjustDutyCycle_projectSpecific_PARM_2'
                           1527 ;channelNumber             Allocated with name '_pwm_adjustDutyCycle_projectSpecific_channelNumber_1_1'
                           1528 ;------------------------------------------------------------
                           1529 ;	../projectSpecificHardwareInterface_C8051F040.c:212: void pwm_adjustDutyCycle_projectSpecific(					unsigned char channelNumber, int8_t dutyCycleAdjustment)
                           1530 ;	-----------------------------------------
                           1531 ;	 function pwm_adjustDutyCycle_projectSpecific
                           1532 ;	-----------------------------------------
   031C                    1533 _pwm_adjustDutyCycle_projectSpecific:
                           1534 ;	../projectSpecificHardwareInterface_C8051F040.c:215: (void)dutyCycleAdjustment ;	// unused at this time
   031C 22                 1535 	ret
                           1536 ;------------------------------------------------------------
                           1537 ;Allocation info for local variables in function 'pwm_setDutyCycleAsPercentage_projectSpecific'
                           1538 ;------------------------------------------------------------
                           1539 ;newDutyCycle              Allocated with name '_pwm_setDutyCycleAsPercentage_projectSpecific_PARM_2'
                           1540 ;channelNumber             Allocated with name '_pwm_setDutyCycleAsPercentage_projectSpecific_channelNumber_1_1'
                           1541 ;------------------------------------------------------------
                           1542 ;	../projectSpecificHardwareInterface_C8051F040.c:219: void pwm_setDutyCycleAsPercentage_projectSpecific(			unsigned char channelNumber, unsigned char newDutyCycle)
                           1543 ;	-----------------------------------------
                           1544 ;	 function pwm_setDutyCycleAsPercentage_projectSpecific
                           1545 ;	-----------------------------------------
   031D                    1546 _pwm_setDutyCycleAsPercentage_projectSpecific:
                           1547 ;	../projectSpecificHardwareInterface_C8051F040.c:222: (void)newDutyCycle ;		// unused at this time
   031D 22                 1548 	ret
                           1549 ;------------------------------------------------------------
                           1550 ;Allocation info for local variables in function 'pwm_getDutyCycleAsPercentage_projectSpecific'
                           1551 ;------------------------------------------------------------
                           1552 ;channelNumber             Allocated with name '_pwm_getDutyCycleAsPercentage_projectSpecific_channelNumber_1_1'
                           1553 ;currentPercentage         Allocated with name '_pwm_getDutyCycleAsPercentage_projectSpecific_currentPercentage_1_1'
                           1554 ;divisor                   Allocated with name '_pwm_getDutyCycleAsPercentage_projectSpecific_divisor_1_1'
                           1555 ;------------------------------------------------------------
                           1556 ;	../projectSpecificHardwareInterface_C8051F040.c:226: unsigned char pwm_getDutyCycleAsPercentage_projectSpecific(	unsigned char channelNumber)
                           1557 ;	-----------------------------------------
                           1558 ;	 function pwm_getDutyCycleAsPercentage_projectSpecific
                           1559 ;	-----------------------------------------
   031E                    1560 _pwm_getDutyCycleAsPercentage_projectSpecific:
                           1561 ;	../projectSpecificHardwareInterface_C8051F040.c:237: return (unsigned char)0 ;//min(currentPercentage, 100) ;
   031E 75 82 00           1562 	mov	dpl,#0x00
   0321 22                 1563 	ret
                           1564 ;------------------------------------------------------------
                           1565 ;Allocation info for local variables in function 'IsEmpty'
                           1566 ;------------------------------------------------------------
                           1567 ;Q                         Allocated with name '_IsEmpty_Q_1_1'
                           1568 ;------------------------------------------------------------
                           1569 ;	../projectSpecificHardwareInterface_C8051F040.c:273: unsigned char IsEmpty(QUEUE_TYPE* Q)
                           1570 ;	-----------------------------------------
                           1571 ;	 function IsEmpty
                           1572 ;	-----------------------------------------
   0322                    1573 _IsEmpty:
   0322 AA F0              1574 	mov	r2,b
   0324 AB 83              1575 	mov	r3,dph
   0326 E5 82              1576 	mov	a,dpl
   0328 90 04 52           1577 	mov	dptr,#_IsEmpty_Q_1_1
   032B F0                 1578 	movx	@dptr,a
   032C A3                 1579 	inc	dptr
   032D EB                 1580 	mov	a,r3
   032E F0                 1581 	movx	@dptr,a
   032F A3                 1582 	inc	dptr
   0330 EA                 1583 	mov	a,r2
   0331 F0                 1584 	movx	@dptr,a
                           1585 ;	../projectSpecificHardwareInterface_C8051F040.c:275: return Q->Size == 0 ;
   0332 90 04 52           1586 	mov	dptr,#_IsEmpty_Q_1_1
   0335 E0                 1587 	movx	a,@dptr
   0336 FA                 1588 	mov	r2,a
   0337 A3                 1589 	inc	dptr
   0338 E0                 1590 	movx	a,@dptr
   0339 FB                 1591 	mov	r3,a
   033A A3                 1592 	inc	dptr
   033B E0                 1593 	movx	a,@dptr
   033C FC                 1594 	mov	r4,a
   033D 74 06              1595 	mov	a,#0x06
   033F 2A                 1596 	add	a,r2
   0340 FA                 1597 	mov	r2,a
   0341 E4                 1598 	clr	a
   0342 3B                 1599 	addc	a,r3
   0343 FB                 1600 	mov	r3,a
   0344 8A 82              1601 	mov	dpl,r2
   0346 8B 83              1602 	mov	dph,r3
   0348 8C F0              1603 	mov	b,r4
   034A 12 4D 3C           1604 	lcall	__gptrget
   034D FA                 1605 	mov	r2,a
   034E A3                 1606 	inc	dptr
   034F 12 4D 3C           1607 	lcall	__gptrget
   0352 FB                 1608 	mov	r3,a
   0353 E4                 1609 	clr	a
   0354 BA 00 04           1610 	cjne	r2,#0x00,00103$
   0357 BB 00 01           1611 	cjne	r3,#0x00,00103$
   035A 04                 1612 	inc	a
   035B                    1613 00103$:
   035B F5 82              1614 	mov	dpl,a
   035D 22                 1615 	ret
                           1616 ;------------------------------------------------------------
                           1617 ;Allocation info for local variables in function 'IsFull'
                           1618 ;------------------------------------------------------------
                           1619 ;Q                         Allocated with name '_IsFull_Q_1_1'
                           1620 ;------------------------------------------------------------
                           1621 ;	../projectSpecificHardwareInterface_C8051F040.c:278: unsigned char IsFull(QUEUE_TYPE* Q)
                           1622 ;	-----------------------------------------
                           1623 ;	 function IsFull
                           1624 ;	-----------------------------------------
   035E                    1625 _IsFull:
   035E AA F0              1626 	mov	r2,b
   0360 AB 83              1627 	mov	r3,dph
   0362 E5 82              1628 	mov	a,dpl
   0364 90 04 55           1629 	mov	dptr,#_IsFull_Q_1_1
   0367 F0                 1630 	movx	@dptr,a
   0368 A3                 1631 	inc	dptr
   0369 EB                 1632 	mov	a,r3
   036A F0                 1633 	movx	@dptr,a
   036B A3                 1634 	inc	dptr
   036C EA                 1635 	mov	a,r2
   036D F0                 1636 	movx	@dptr,a
                           1637 ;	../projectSpecificHardwareInterface_C8051F040.c:280: return Q->Size == Q->Capacity ;
   036E 90 04 55           1638 	mov	dptr,#_IsFull_Q_1_1
   0371 E0                 1639 	movx	a,@dptr
   0372 FA                 1640 	mov	r2,a
   0373 A3                 1641 	inc	dptr
   0374 E0                 1642 	movx	a,@dptr
   0375 FB                 1643 	mov	r3,a
   0376 A3                 1644 	inc	dptr
   0377 E0                 1645 	movx	a,@dptr
   0378 FC                 1646 	mov	r4,a
   0379 74 06              1647 	mov	a,#0x06
   037B 2A                 1648 	add	a,r2
   037C FD                 1649 	mov	r5,a
   037D E4                 1650 	clr	a
   037E 3B                 1651 	addc	a,r3
   037F FE                 1652 	mov	r6,a
   0380 8C 07              1653 	mov	ar7,r4
   0382 8D 82              1654 	mov	dpl,r5
   0384 8E 83              1655 	mov	dph,r6
   0386 8F F0              1656 	mov	b,r7
   0388 12 4D 3C           1657 	lcall	__gptrget
   038B FD                 1658 	mov	r5,a
   038C A3                 1659 	inc	dptr
   038D 12 4D 3C           1660 	lcall	__gptrget
   0390 FE                 1661 	mov	r6,a
   0391 8A 82              1662 	mov	dpl,r2
   0393 8B 83              1663 	mov	dph,r3
   0395 8C F0              1664 	mov	b,r4
   0397 12 4D 3C           1665 	lcall	__gptrget
   039A FA                 1666 	mov	r2,a
   039B A3                 1667 	inc	dptr
   039C 12 4D 3C           1668 	lcall	__gptrget
   039F FB                 1669 	mov	r3,a
   03A0 ED                 1670 	mov	a,r5
   03A1 B5 02 08           1671 	cjne	a,ar2,00103$
   03A4 EE                 1672 	mov	a,r6
   03A5 B5 03 04           1673 	cjne	a,ar3,00103$
   03A8 74 01              1674 	mov	a,#0x01
   03AA 80 01              1675 	sjmp	00104$
   03AC                    1676 00103$:
   03AC E4                 1677 	clr	a
   03AD                    1678 00104$:
   03AD F5 82              1679 	mov	dpl,a
   03AF 22                 1680 	ret
                           1681 ;------------------------------------------------------------
                           1682 ;Allocation info for local variables in function 'Succ'
                           1683 ;------------------------------------------------------------
                           1684 ;Q                         Allocated with name '_Succ_PARM_2'
                           1685 ;Value                     Allocated with name '_Succ_Value_1_1'
                           1686 ;------------------------------------------------------------
                           1687 ;	../projectSpecificHardwareInterface_C8051F040.c:283: static unsigned short Succ(unsigned short Value, QUEUE_TYPE* Q)
                           1688 ;	-----------------------------------------
                           1689 ;	 function Succ
                           1690 ;	-----------------------------------------
   03B0                    1691 _Succ:
   03B0 AA 83              1692 	mov	r2,dph
   03B2 E5 82              1693 	mov	a,dpl
   03B4 90 04 5B           1694 	mov	dptr,#_Succ_Value_1_1
   03B7 F0                 1695 	movx	@dptr,a
   03B8 A3                 1696 	inc	dptr
   03B9 EA                 1697 	mov	a,r2
   03BA F0                 1698 	movx	@dptr,a
                           1699 ;	../projectSpecificHardwareInterface_C8051F040.c:285: if(++Value == Q->Capacity)
   03BB 90 04 5B           1700 	mov	dptr,#_Succ_Value_1_1
   03BE E0                 1701 	movx	a,@dptr
   03BF 24 01              1702 	add	a,#0x01
   03C1 F0                 1703 	movx	@dptr,a
   03C2 A3                 1704 	inc	dptr
   03C3 E0                 1705 	movx	a,@dptr
   03C4 34 00              1706 	addc	a,#0x00
   03C6 F0                 1707 	movx	@dptr,a
   03C7 90 04 58           1708 	mov	dptr,#_Succ_PARM_2
   03CA E0                 1709 	movx	a,@dptr
   03CB FA                 1710 	mov	r2,a
   03CC A3                 1711 	inc	dptr
   03CD E0                 1712 	movx	a,@dptr
   03CE FB                 1713 	mov	r3,a
   03CF A3                 1714 	inc	dptr
   03D0 E0                 1715 	movx	a,@dptr
   03D1 FC                 1716 	mov	r4,a
   03D2 8A 82              1717 	mov	dpl,r2
   03D4 8B 83              1718 	mov	dph,r3
   03D6 8C F0              1719 	mov	b,r4
   03D8 12 4D 3C           1720 	lcall	__gptrget
   03DB FA                 1721 	mov	r2,a
   03DC A3                 1722 	inc	dptr
   03DD 12 4D 3C           1723 	lcall	__gptrget
   03E0 FB                 1724 	mov	r3,a
   03E1 90 04 5B           1725 	mov	dptr,#_Succ_Value_1_1
   03E4 E0                 1726 	movx	a,@dptr
   03E5 FC                 1727 	mov	r4,a
   03E6 A3                 1728 	inc	dptr
   03E7 E0                 1729 	movx	a,@dptr
   03E8 FD                 1730 	mov	r5,a
   03E9 EC                 1731 	mov	a,r4
   03EA B5 02 0B           1732 	cjne	a,ar2,00102$
   03ED ED                 1733 	mov	a,r5
   03EE B5 03 07           1734 	cjne	a,ar3,00102$
                           1735 ;	../projectSpecificHardwareInterface_C8051F040.c:287: Value = 0 ;
   03F1 90 04 5B           1736 	mov	dptr,#_Succ_Value_1_1
   03F4 E4                 1737 	clr	a
   03F5 F0                 1738 	movx	@dptr,a
   03F6 A3                 1739 	inc	dptr
   03F7 F0                 1740 	movx	@dptr,a
   03F8                    1741 00102$:
                           1742 ;	../projectSpecificHardwareInterface_C8051F040.c:290: return Value ;
   03F8 90 04 5B           1743 	mov	dptr,#_Succ_Value_1_1
   03FB E0                 1744 	movx	a,@dptr
   03FC FA                 1745 	mov	r2,a
   03FD A3                 1746 	inc	dptr
   03FE E0                 1747 	movx	a,@dptr
   03FF 8A 82              1748 	mov	dpl,r2
   0401 F5 83              1749 	mov	dph,a
   0403 22                 1750 	ret
                           1751 ;------------------------------------------------------------
                           1752 ;Allocation info for local variables in function 'task_UART_init_projectSpecific'
                           1753 ;------------------------------------------------------------
                           1754 ;channelNumber             Allocated with name '_task_UART_init_projectSpecific_channelNumber_1_1'
                           1755 ;Q                         Allocated with name '_task_UART_init_projectSpecific_Q_1_1'
                           1756 ;SFRPAGE_SAVE              Allocated with name '_task_UART_init_projectSpecific_SFRPAGE_SAVE_3_3'
                           1757 ;------------------------------------------------------------
                           1758 ;	../projectSpecificHardwareInterface_C8051F040.c:321: void task_UART_init_projectSpecific(	unsigned char channelNumber)
                           1759 ;	-----------------------------------------
                           1760 ;	 function task_UART_init_projectSpecific
                           1761 ;	-----------------------------------------
   0404                    1762 _task_UART_init_projectSpecific:
   0404 E5 82              1763 	mov	a,dpl
   0406 90 08 CD           1764 	mov	dptr,#_task_UART_init_projectSpecific_channelNumber_1_1
   0409 F0                 1765 	movx	@dptr,a
                           1766 ;	../projectSpecificHardwareInterface_C8051F040.c:325: QUEUE_TYPE*	Q = &transmitBuffers[channelNumber] ;
   040A 90 08 CD           1767 	mov	dptr,#_task_UART_init_projectSpecific_channelNumber_1_1
   040D E0                 1768 	movx	a,@dptr
   040E FA                 1769 	mov	r2,a
   040F 75 F0 0B           1770 	mov	b,#0x0B
   0412 A4                 1771 	mul	ab
   0413 FB                 1772 	mov	r3,a
   0414 24 B5              1773 	add	a,#_transmitBuffers
   0416 FC                 1774 	mov	r4,a
   0417 E4                 1775 	clr	a
   0418 34 08              1776 	addc	a,#(_transmitBuffers >> 8)
   041A FD                 1777 	mov	r5,a
   041B 7E 00              1778 	mov	r6,#0x00
                           1779 ;	../projectSpecificHardwareInterface_C8051F040.c:327: Q->Capacity	= TRANSMIT_BUFFER_SIZE ;
   041D 8C 82              1780 	mov	dpl,r4
   041F 8D 83              1781 	mov	dph,r5
   0421 8E F0              1782 	mov	b,r6
   0423 74 4C              1783 	mov	a,#0x4C
   0425 12 41 10           1784 	lcall	__gptrput
   0428 A3                 1785 	inc	dptr
   0429 74 04              1786 	mov	a,#0x04
   042B 12 41 10           1787 	lcall	__gptrput
                           1788 ;	../projectSpecificHardwareInterface_C8051F040.c:328: Q->Size		= 0 ;
   042E 74 06              1789 	mov	a,#0x06
   0430 2C                 1790 	add	a,r4
   0431 FF                 1791 	mov	r7,a
   0432 E4                 1792 	clr	a
   0433 3D                 1793 	addc	a,r5
   0434 F8                 1794 	mov	r0,a
   0435 8E 01              1795 	mov	ar1,r6
   0437 8F 82              1796 	mov	dpl,r7
   0439 88 83              1797 	mov	dph,r0
   043B 89 F0              1798 	mov	b,r1
   043D E4                 1799 	clr	a
   043E 12 41 10           1800 	lcall	__gptrput
   0441 A3                 1801 	inc	dptr
   0442 E4                 1802 	clr	a
   0443 12 41 10           1803 	lcall	__gptrput
                           1804 ;	../projectSpecificHardwareInterface_C8051F040.c:329: Q->Front	= 1 ;
   0446 74 02              1805 	mov	a,#0x02
   0448 2C                 1806 	add	a,r4
   0449 FF                 1807 	mov	r7,a
   044A E4                 1808 	clr	a
   044B 3D                 1809 	addc	a,r5
   044C F8                 1810 	mov	r0,a
   044D 8E 01              1811 	mov	ar1,r6
   044F 8F 82              1812 	mov	dpl,r7
   0451 88 83              1813 	mov	dph,r0
   0453 89 F0              1814 	mov	b,r1
   0455 74 01              1815 	mov	a,#0x01
   0457 12 41 10           1816 	lcall	__gptrput
   045A A3                 1817 	inc	dptr
   045B E4                 1818 	clr	a
   045C 12 41 10           1819 	lcall	__gptrput
                           1820 ;	../projectSpecificHardwareInterface_C8051F040.c:330: Q->Rear		= 0 ;
   045F 74 04              1821 	mov	a,#0x04
   0461 2C                 1822 	add	a,r4
   0462 FF                 1823 	mov	r7,a
   0463 E4                 1824 	clr	a
   0464 3D                 1825 	addc	a,r5
   0465 F8                 1826 	mov	r0,a
   0466 8E 01              1827 	mov	ar1,r6
   0468 8F 82              1828 	mov	dpl,r7
   046A 88 83              1829 	mov	dph,r0
   046C 89 F0              1830 	mov	b,r1
   046E E4                 1831 	clr	a
   046F 12 41 10           1832 	lcall	__gptrput
   0472 A3                 1833 	inc	dptr
   0473 E4                 1834 	clr	a
   0474 12 41 10           1835 	lcall	__gptrput
                           1836 ;	../projectSpecificHardwareInterface_C8051F040.c:331: Q->Array	= transmitBuffer[0] ;
   0477 74 08              1837 	mov	a,#0x08
   0479 2C                 1838 	add	a,r4
   047A FC                 1839 	mov	r4,a
   047B E4                 1840 	clr	a
   047C 3D                 1841 	addc	a,r5
   047D FD                 1842 	mov	r5,a
   047E 8C 82              1843 	mov	dpl,r4
   0480 8D 83              1844 	mov	dph,r5
   0482 8E F0              1845 	mov	b,r6
   0484 74 5D              1846 	mov	a,#_transmitBuffer
   0486 12 41 10           1847 	lcall	__gptrput
   0489 A3                 1848 	inc	dptr
   048A 74 04              1849 	mov	a,#(_transmitBuffer >> 8)
   048C 12 41 10           1850 	lcall	__gptrput
   048F A3                 1851 	inc	dptr
   0490 E4                 1852 	clr	a
   0491 12 41 10           1853 	lcall	__gptrput
                           1854 ;	../projectSpecificHardwareInterface_C8051F040.c:333: Q = &receiveBuffers[channelNumber] ;
   0494 EB                 1855 	mov	a,r3
   0495 24 C0              1856 	add	a,#_receiveBuffers
   0497 FB                 1857 	mov	r3,a
   0498 E4                 1858 	clr	a
   0499 34 08              1859 	addc	a,#(_receiveBuffers >> 8)
   049B FC                 1860 	mov	r4,a
   049C 7D 00              1861 	mov	r5,#0x00
                           1862 ;	../projectSpecificHardwareInterface_C8051F040.c:335: Q->Capacity	= RECEIVE_BUFFER_SIZE ;
   049E 8B 82              1863 	mov	dpl,r3
   04A0 8C 83              1864 	mov	dph,r4
   04A2 8D F0              1865 	mov	b,r5
   04A4 74 0A              1866 	mov	a,#0x0A
   04A6 12 41 10           1867 	lcall	__gptrput
   04A9 A3                 1868 	inc	dptr
   04AA E4                 1869 	clr	a
   04AB 12 41 10           1870 	lcall	__gptrput
                           1871 ;	../projectSpecificHardwareInterface_C8051F040.c:336: Q->Size		= 0 ;
   04AE 74 06              1872 	mov	a,#0x06
   04B0 2B                 1873 	add	a,r3
   04B1 FE                 1874 	mov	r6,a
   04B2 E4                 1875 	clr	a
   04B3 3C                 1876 	addc	a,r4
   04B4 FF                 1877 	mov	r7,a
   04B5 8D 00              1878 	mov	ar0,r5
   04B7 8E 82              1879 	mov	dpl,r6
   04B9 8F 83              1880 	mov	dph,r7
   04BB 88 F0              1881 	mov	b,r0
   04BD E4                 1882 	clr	a
   04BE 12 41 10           1883 	lcall	__gptrput
   04C1 A3                 1884 	inc	dptr
   04C2 E4                 1885 	clr	a
   04C3 12 41 10           1886 	lcall	__gptrput
                           1887 ;	../projectSpecificHardwareInterface_C8051F040.c:337: Q->Front	= 1 ;
   04C6 74 02              1888 	mov	a,#0x02
   04C8 2B                 1889 	add	a,r3
   04C9 FE                 1890 	mov	r6,a
   04CA E4                 1891 	clr	a
   04CB 3C                 1892 	addc	a,r4
   04CC FF                 1893 	mov	r7,a
   04CD 8D 00              1894 	mov	ar0,r5
   04CF 8E 82              1895 	mov	dpl,r6
   04D1 8F 83              1896 	mov	dph,r7
   04D3 88 F0              1897 	mov	b,r0
   04D5 74 01              1898 	mov	a,#0x01
   04D7 12 41 10           1899 	lcall	__gptrput
   04DA A3                 1900 	inc	dptr
   04DB E4                 1901 	clr	a
   04DC 12 41 10           1902 	lcall	__gptrput
                           1903 ;	../projectSpecificHardwareInterface_C8051F040.c:338: Q->Rear		= 0 ;
   04DF 74 04              1904 	mov	a,#0x04
   04E1 2B                 1905 	add	a,r3
   04E2 FE                 1906 	mov	r6,a
   04E3 E4                 1907 	clr	a
   04E4 3C                 1908 	addc	a,r4
   04E5 FF                 1909 	mov	r7,a
   04E6 8D 00              1910 	mov	ar0,r5
   04E8 8E 82              1911 	mov	dpl,r6
   04EA 8F 83              1912 	mov	dph,r7
   04EC 88 F0              1913 	mov	b,r0
   04EE E4                 1914 	clr	a
   04EF 12 41 10           1915 	lcall	__gptrput
   04F2 A3                 1916 	inc	dptr
   04F3 E4                 1917 	clr	a
   04F4 12 41 10           1918 	lcall	__gptrput
                           1919 ;	../projectSpecificHardwareInterface_C8051F040.c:339: Q->Array	= receiveBuffer[0] ;
   04F7 74 08              1920 	mov	a,#0x08
   04F9 2B                 1921 	add	a,r3
   04FA FB                 1922 	mov	r3,a
   04FB E4                 1923 	clr	a
   04FC 3C                 1924 	addc	a,r4
   04FD FC                 1925 	mov	r4,a
   04FE 8B 82              1926 	mov	dpl,r3
   0500 8C 83              1927 	mov	dph,r4
   0502 8D F0              1928 	mov	b,r5
   0504 74 AA              1929 	mov	a,#_receiveBuffer
   0506 12 41 10           1930 	lcall	__gptrput
   0509 A3                 1931 	inc	dptr
   050A 74 08              1932 	mov	a,#(_receiveBuffer >> 8)
   050C 12 41 10           1933 	lcall	__gptrput
   050F A3                 1934 	inc	dptr
   0510 E4                 1935 	clr	a
   0511 12 41 10           1936 	lcall	__gptrput
                           1937 ;	../projectSpecificHardwareInterface_C8051F040.c:341: charSent[channelNumber]		= false ;
   0514 EA                 1938 	mov	a,r2
   0515 24 CB              1939 	add	a,#_charSent
   0517 F5 82              1940 	mov	dpl,a
   0519 E4                 1941 	clr	a
   051A 34 08              1942 	addc	a,#(_charSent >> 8)
   051C F5 83              1943 	mov	dph,a
   051E E4                 1944 	clr	a
   051F F0                 1945 	movx	@dptr,a
                           1946 ;	../projectSpecificHardwareInterface_C8051F040.c:342: lineReady[channelNumber]	= false ;
   0520 EA                 1947 	mov	a,r2
   0521 24 CC              1948 	add	a,#_lineReady
   0523 F5 82              1949 	mov	dpl,a
   0525 E4                 1950 	clr	a
   0526 34 08              1951 	addc	a,#(_lineReady >> 8)
   0528 F5 83              1952 	mov	dph,a
   052A E4                 1953 	clr	a
   052B F0                 1954 	movx	@dptr,a
                           1955 ;	../projectSpecificHardwareInterface_C8051F040.c:344: if(!timer1initialized)
   052C 20 03 20           1956 	jb	_task_UART_init_projectSpecific_timer1initialized_1_1,00102$
                           1957 ;	../projectSpecificHardwareInterface_C8051F040.c:346: timer1initialized = true ;
   052F D2 03              1958 	setb	_task_UART_init_projectSpecific_timer1initialized_1_1
                           1959 ;	../projectSpecificHardwareInterface_C8051F040.c:348: portSET_REGISTER_GROUP(TIMER01_PAGE)
   0531 AA 84              1960 	mov	r2,_SFRPAGE
   0533 75 84 00           1961 	mov	_SFRPAGE,#0x00
                           1962 ;	../projectSpecificHardwareInterface_C8051F040.c:351: TMOD &= 0x08 ;
   0536 53 89 08           1963 	anl	_TMOD,#0x08
                           1964 ;	../projectSpecificHardwareInterface_C8051F040.c:352: TMOD |= ser8BIT_WITH_RELOAD ;
   0539 43 89 20           1965 	orl	_TMOD,#0x20
                           1966 ;	../projectSpecificHardwareInterface_C8051F040.c:353: SSTA0 |= serSMOD ;
   053C 43 91 10           1967 	orl	_SSTA0,#0x10
                           1968 ;	../projectSpecificHardwareInterface_C8051F040.c:354: CKCON |= 0x10 ;
   053F 43 8E 10           1969 	orl	_CKCON,#0x10
                           1970 ;	../projectSpecificHardwareInterface_C8051F040.c:357: TL1 = ( unsigned char ) 0xB2 ;	// B8 = 9600 BAUD on unmoded eval boards, B2 = 9615 on 24MHz systems
   0542 75 8B B2           1971 	mov	_TL1,#0xB2
                           1972 ;	../projectSpecificHardwareInterface_C8051F040.c:358: TH1 = ( unsigned char ) 0xB2 ;
   0545 75 8D B2           1973 	mov	_TH1,#0xB2
                           1974 ;	../projectSpecificHardwareInterface_C8051F040.c:360: SCON = ser8_BIT_MODE | serRX_ENABLE ;	/* Setup the control register for standard n, 8, 1 - variable baud rate. */
   0548 75 98 50           1975 	mov	_SCON,#0x50
                           1976 ;	../projectSpecificHardwareInterface_C8051F040.c:362: TR1 = 1 ;							/* Start the timer. */
   054B D2 8E              1977 	setb	_TR1
                           1978 ;	../projectSpecificHardwareInterface_C8051F040.c:364: portRESTORE_REGISTER_GROUP()
   054D 8A 84              1979 	mov	_SFRPAGE,r2
   054F                    1980 00102$:
                           1981 ;	../projectSpecificHardwareInterface_C8051F040.c:367: if(channelNumber == 0)
   054F 90 08 CD           1982 	mov	dptr,#_task_UART_init_projectSpecific_channelNumber_1_1
   0552 E0                 1983 	movx	a,@dptr
   0553 FA                 1984 	mov	r2,a
   0554 70 03              1985 	jnz	00106$
                           1986 ;	../projectSpecificHardwareInterface_C8051F040.c:369: UART0_Init() ;
   0556 02 0A FD           1987 	ljmp	_UART0_Init
   0559                    1988 00106$:
                           1989 ;	../projectSpecificHardwareInterface_C8051F040.c:371: else if(channelNumber == 1)
   0559 BA 01 03           1990 	cjne	r2,#0x01,00108$
                           1991 ;	../projectSpecificHardwareInterface_C8051F040.c:373: UART1_Init() ;
   055C 02 0B 0B           1992 	ljmp	_UART1_Init
   055F                    1993 00108$:
   055F 22                 1994 	ret
                           1995 ;------------------------------------------------------------
                           1996 ;Allocation info for local variables in function 'task_UART_core_projectSpecific'
                           1997 ;------------------------------------------------------------
                           1998 ;sloc0                     Allocated with name '_task_UART_core_projectSpecific_sloc0_1_0'
                           1999 ;sloc1                     Allocated with name '_task_UART_core_projectSpecific_sloc1_1_0'
                           2000 ;sloc2                     Allocated with name '_task_UART_core_projectSpecific_sloc2_1_0'
                           2001 ;sloc3                     Allocated with name '_task_UART_core_projectSpecific_sloc3_1_0'
                           2002 ;channelNumber             Allocated with name '_task_UART_core_projectSpecific_channelNumber_1_1'
                           2003 ;SFRPAGE_SAVE              Allocated with name '_task_UART_core_projectSpecific_SFRPAGE_SAVE_3_3'
                           2004 ;Q                         Allocated with name '_task_UART_core_projectSpecific_Q_4_4'
                           2005 ;charReceived              Allocated with name '_task_UART_core_projectSpecific_charReceived_6_6'
                           2006 ;byteToSend                Allocated with name '_task_UART_core_projectSpecific_byteToSend_5_10'
                           2007 ;------------------------------------------------------------
                           2008 ;	../projectSpecificHardwareInterface_C8051F040.c:382: void task_UART_core_projectSpecific(	unsigned char channelNumber)
                           2009 ;	-----------------------------------------
                           2010 ;	 function task_UART_core_projectSpecific
                           2011 ;	-----------------------------------------
   0560                    2012 _task_UART_core_projectSpecific:
   0560 E5 82              2013 	mov	a,dpl
   0562 90 08 CE           2014 	mov	dptr,#_task_UART_core_projectSpecific_channelNumber_1_1
   0565 F0                 2015 	movx	@dptr,a
                           2016 ;	../projectSpecificHardwareInterface_C8051F040.c:384: if(channelNumber < NUMBER_OF_UARTS)
   0566 90 08 CE           2017 	mov	dptr,#_task_UART_core_projectSpecific_channelNumber_1_1
   0569 E0                 2018 	movx	a,@dptr
   056A FA                 2019 	mov	r2,a
   056B BA 01 00           2020 	cjne	r2,#0x01,00125$
   056E                    2021 00125$:
   056E 40 01              2022 	jc	00126$
   0570 22                 2023 	ret
   0571                    2024 00126$:
                           2025 ;	../projectSpecificHardwareInterface_C8051F040.c:386: portSET_REGISTER_GROUP(UART0_PAGE)
   0571 AB 84              2026 	mov	r3,_SFRPAGE
   0573 75 84 00           2027 	mov	_SFRPAGE,#0x00
                           2028 ;	../projectSpecificHardwareInterface_C8051F040.c:388: QUEUE_TYPE*	Q = &receiveBuffers[channelNumber] ;
   0576 EA                 2029 	mov	a,r2
   0577 75 F0 0B           2030 	mov	b,#0x0B
   057A A4                 2031 	mul	ab
   057B 24 C0              2032 	add	a,#_receiveBuffers
   057D FC                 2033 	mov	r4,a
   057E E4                 2034 	clr	a
   057F 34 08              2035 	addc	a,#(_receiveBuffers >> 8)
   0581 FD                 2036 	mov	r5,a
   0582 7E 00              2037 	mov	r6,#0x00
   0584 90 08 CF           2038 	mov	dptr,#_task_UART_core_projectSpecific_Q_4_4
   0587 EC                 2039 	mov	a,r4
   0588 F0                 2040 	movx	@dptr,a
   0589 A3                 2041 	inc	dptr
   058A ED                 2042 	mov	a,r5
   058B F0                 2043 	movx	@dptr,a
   058C A3                 2044 	inc	dptr
   058D EE                 2045 	mov	a,r6
   058E F0                 2046 	movx	@dptr,a
                           2047 ;	../projectSpecificHardwareInterface_C8051F040.c:390: if(RI0)
   058F 20 98 03           2048 	jb	_RI0,00127$
   0592 02 06 A5           2049 	ljmp	00106$
   0595                    2050 00127$:
                           2051 ;	../projectSpecificHardwareInterface_C8051F040.c:392: if(!IsFull(Q))
   0595 8C 82              2052 	mov	dpl,r4
   0597 8D 83              2053 	mov	dph,r5
   0599 8E F0              2054 	mov	b,r6
   059B C0 02              2055 	push	ar2
   059D C0 03              2056 	push	ar3
   059F 12 03 5E           2057 	lcall	_IsFull
   05A2 E5 82              2058 	mov	a,dpl
   05A4 D0 03              2059 	pop	ar3
   05A6 D0 02              2060 	pop	ar2
   05A8 60 03              2061 	jz	00128$
   05AA 02 06 A3           2062 	ljmp	00104$
   05AD                    2063 00128$:
                           2064 ;	../projectSpecificHardwareInterface_C8051F040.c:394: char	charReceived = SBUF0 ;
   05AD C0 03              2065 	push	ar3
   05AF 85 99 08           2066 	mov	_task_UART_core_projectSpecific_sloc0_1_0,_SBUF0
                           2067 ;	../projectSpecificHardwareInterface_C8051F040.c:396: Q->Size++ ;
   05B2 90 08 CF           2068 	mov	dptr,#_task_UART_core_projectSpecific_Q_4_4
   05B5 E0                 2069 	movx	a,@dptr
   05B6 FD                 2070 	mov	r5,a
   05B7 A3                 2071 	inc	dptr
   05B8 E0                 2072 	movx	a,@dptr
   05B9 FE                 2073 	mov	r6,a
   05BA A3                 2074 	inc	dptr
   05BB E0                 2075 	movx	a,@dptr
   05BC FF                 2076 	mov	r7,a
   05BD 74 06              2077 	mov	a,#0x06
   05BF 2D                 2078 	add	a,r5
   05C0 F5 09              2079 	mov	_task_UART_core_projectSpecific_sloc1_1_0,a
   05C2 E4                 2080 	clr	a
   05C3 3E                 2081 	addc	a,r6
   05C4 F5 0A              2082 	mov	(_task_UART_core_projectSpecific_sloc1_1_0 + 1),a
   05C6 8F 0B              2083 	mov	(_task_UART_core_projectSpecific_sloc1_1_0 + 2),r7
   05C8 85 09 82           2084 	mov	dpl,_task_UART_core_projectSpecific_sloc1_1_0
   05CB 85 0A 83           2085 	mov	dph,(_task_UART_core_projectSpecific_sloc1_1_0 + 1)
   05CE 85 0B F0           2086 	mov	b,(_task_UART_core_projectSpecific_sloc1_1_0 + 2)
   05D1 12 4D 3C           2087 	lcall	__gptrget
   05D4 FC                 2088 	mov	r4,a
   05D5 A3                 2089 	inc	dptr
   05D6 12 4D 3C           2090 	lcall	__gptrget
   05D9 FB                 2091 	mov	r3,a
   05DA 0C                 2092 	inc	r4
   05DB BC 00 01           2093 	cjne	r4,#0x00,00129$
   05DE 0B                 2094 	inc	r3
   05DF                    2095 00129$:
   05DF 85 09 82           2096 	mov	dpl,_task_UART_core_projectSpecific_sloc1_1_0
   05E2 85 0A 83           2097 	mov	dph,(_task_UART_core_projectSpecific_sloc1_1_0 + 1)
   05E5 85 0B F0           2098 	mov	b,(_task_UART_core_projectSpecific_sloc1_1_0 + 2)
   05E8 EC                 2099 	mov	a,r4
   05E9 12 41 10           2100 	lcall	__gptrput
   05EC A3                 2101 	inc	dptr
   05ED EB                 2102 	mov	a,r3
   05EE 12 41 10           2103 	lcall	__gptrput
                           2104 ;	../projectSpecificHardwareInterface_C8051F040.c:397: Q->Rear = Succ(Q->Rear, Q) ;
   05F1 74 04              2105 	mov	a,#0x04
   05F3 2D                 2106 	add	a,r5
   05F4 F5 09              2107 	mov	_task_UART_core_projectSpecific_sloc1_1_0,a
   05F6 E4                 2108 	clr	a
   05F7 3E                 2109 	addc	a,r6
   05F8 F5 0A              2110 	mov	(_task_UART_core_projectSpecific_sloc1_1_0 + 1),a
   05FA 8F 0B              2111 	mov	(_task_UART_core_projectSpecific_sloc1_1_0 + 2),r7
   05FC 85 09 82           2112 	mov	dpl,_task_UART_core_projectSpecific_sloc1_1_0
   05FF 85 0A 83           2113 	mov	dph,(_task_UART_core_projectSpecific_sloc1_1_0 + 1)
   0602 85 0B F0           2114 	mov	b,(_task_UART_core_projectSpecific_sloc1_1_0 + 2)
   0605 12 4D 3C           2115 	lcall	__gptrget
   0608 F9                 2116 	mov	r1,a
   0609 A3                 2117 	inc	dptr
   060A 12 4D 3C           2118 	lcall	__gptrget
   060D FB                 2119 	mov	r3,a
   060E 90 04 58           2120 	mov	dptr,#_Succ_PARM_2
   0611 ED                 2121 	mov	a,r5
   0612 F0                 2122 	movx	@dptr,a
   0613 A3                 2123 	inc	dptr
   0614 EE                 2124 	mov	a,r6
   0615 F0                 2125 	movx	@dptr,a
   0616 A3                 2126 	inc	dptr
   0617 EF                 2127 	mov	a,r7
   0618 F0                 2128 	movx	@dptr,a
   0619 89 82              2129 	mov	dpl,r1
   061B 8B 83              2130 	mov	dph,r3
   061D C0 02              2131 	push	ar2
   061F 12 03 B0           2132 	lcall	_Succ
   0622 AB 82              2133 	mov	r3,dpl
   0624 AC 83              2134 	mov	r4,dph
   0626 D0 02              2135 	pop	ar2
   0628 85 09 82           2136 	mov	dpl,_task_UART_core_projectSpecific_sloc1_1_0
   062B 85 0A 83           2137 	mov	dph,(_task_UART_core_projectSpecific_sloc1_1_0 + 1)
   062E 85 0B F0           2138 	mov	b,(_task_UART_core_projectSpecific_sloc1_1_0 + 2)
   0631 EB                 2139 	mov	a,r3
   0632 12 41 10           2140 	lcall	__gptrput
   0635 A3                 2141 	inc	dptr
   0636 EC                 2142 	mov	a,r4
   0637 12 41 10           2143 	lcall	__gptrput
                           2144 ;	../projectSpecificHardwareInterface_C8051F040.c:398: Q->Array[Q->Rear] = charReceived ;
   063A 90 08 CF           2145 	mov	dptr,#_task_UART_core_projectSpecific_Q_4_4
   063D E0                 2146 	movx	a,@dptr
   063E FB                 2147 	mov	r3,a
   063F A3                 2148 	inc	dptr
   0640 E0                 2149 	movx	a,@dptr
   0641 FC                 2150 	mov	r4,a
   0642 A3                 2151 	inc	dptr
   0643 E0                 2152 	movx	a,@dptr
   0644 FD                 2153 	mov	r5,a
   0645 74 08              2154 	mov	a,#0x08
   0647 2B                 2155 	add	a,r3
   0648 FE                 2156 	mov	r6,a
   0649 E4                 2157 	clr	a
   064A 3C                 2158 	addc	a,r4
   064B FF                 2159 	mov	r7,a
   064C 8D 00              2160 	mov	ar0,r5
   064E 8E 82              2161 	mov	dpl,r6
   0650 8F 83              2162 	mov	dph,r7
   0652 88 F0              2163 	mov	b,r0
   0654 12 4D 3C           2164 	lcall	__gptrget
   0657 FE                 2165 	mov	r6,a
   0658 A3                 2166 	inc	dptr
   0659 12 4D 3C           2167 	lcall	__gptrget
   065C FF                 2168 	mov	r7,a
   065D A3                 2169 	inc	dptr
   065E 12 4D 3C           2170 	lcall	__gptrget
   0661 F8                 2171 	mov	r0,a
   0662 74 04              2172 	mov	a,#0x04
   0664 2B                 2173 	add	a,r3
   0665 FB                 2174 	mov	r3,a
   0666 E4                 2175 	clr	a
   0667 3C                 2176 	addc	a,r4
   0668 FC                 2177 	mov	r4,a
   0669 8B 82              2178 	mov	dpl,r3
   066B 8C 83              2179 	mov	dph,r4
   066D 8D F0              2180 	mov	b,r5
   066F 12 4D 3C           2181 	lcall	__gptrget
   0672 FB                 2182 	mov	r3,a
   0673 A3                 2183 	inc	dptr
   0674 12 4D 3C           2184 	lcall	__gptrget
   0677 FC                 2185 	mov	r4,a
   0678 EB                 2186 	mov	a,r3
   0679 2E                 2187 	add	a,r6
   067A FE                 2188 	mov	r6,a
   067B EC                 2189 	mov	a,r4
   067C 3F                 2190 	addc	a,r7
   067D FF                 2191 	mov	r7,a
   067E 8E 82              2192 	mov	dpl,r6
   0680 8F 83              2193 	mov	dph,r7
   0682 88 F0              2194 	mov	b,r0
   0684 E5 08              2195 	mov	a,_task_UART_core_projectSpecific_sloc0_1_0
   0686 12 41 10           2196 	lcall	__gptrput
                           2197 ;	../projectSpecificHardwareInterface_C8051F040.c:400: if(charReceived == '\n')
   0689 74 0A              2198 	mov	a,#0x0A
   068B B5 08 02           2199 	cjne	a,_task_UART_core_projectSpecific_sloc0_1_0,00130$
   068E 80 04              2200 	sjmp	00131$
   0690                    2201 00130$:
   0690 D0 03              2202 	pop	ar3
   0692 80 0F              2203 	sjmp	00104$
   0694                    2204 00131$:
   0694 D0 03              2205 	pop	ar3
                           2206 ;	../projectSpecificHardwareInterface_C8051F040.c:402: lineReady[channelNumber] = true ;
   0696 EA                 2207 	mov	a,r2
   0697 24 CC              2208 	add	a,#_lineReady
   0699 F5 82              2209 	mov	dpl,a
   069B E4                 2210 	clr	a
   069C 34 08              2211 	addc	a,#(_lineReady >> 8)
   069E F5 83              2212 	mov	dph,a
   06A0 74 01              2213 	mov	a,#0x01
   06A2 F0                 2214 	movx	@dptr,a
   06A3                    2215 00104$:
                           2216 ;	../projectSpecificHardwareInterface_C8051F040.c:406: RI0 = 0 ;
   06A3 C2 98              2217 	clr	_RI0
   06A5                    2218 00106$:
                           2219 ;	../projectSpecificHardwareInterface_C8051F040.c:409: Q = &transmitBuffers[channelNumber] ;
   06A5 90 08 CE           2220 	mov	dptr,#_task_UART_core_projectSpecific_channelNumber_1_1
   06A8 E0                 2221 	movx	a,@dptr
   06A9 FA                 2222 	mov	r2,a
   06AA 75 F0 0B           2223 	mov	b,#0x0B
   06AD A4                 2224 	mul	ab
   06AE 24 B5              2225 	add	a,#_transmitBuffers
   06B0 FC                 2226 	mov	r4,a
   06B1 E4                 2227 	clr	a
   06B2 34 08              2228 	addc	a,#(_transmitBuffers >> 8)
   06B4 FD                 2229 	mov	r5,a
   06B5 7E 00              2230 	mov	r6,#0x00
   06B7 90 08 CF           2231 	mov	dptr,#_task_UART_core_projectSpecific_Q_4_4
   06BA EC                 2232 	mov	a,r4
   06BB F0                 2233 	movx	@dptr,a
   06BC A3                 2234 	inc	dptr
   06BD ED                 2235 	mov	a,r5
   06BE F0                 2236 	movx	@dptr,a
   06BF A3                 2237 	inc	dptr
   06C0 EE                 2238 	mov	a,r6
   06C1 F0                 2239 	movx	@dptr,a
                           2240 ;	../projectSpecificHardwareInterface_C8051F040.c:411: if(charSent[channelNumber] == true)
   06C2 EA                 2241 	mov	a,r2
   06C3 24 CB              2242 	add	a,#_charSent
   06C5 FA                 2243 	mov	r2,a
   06C6 E4                 2244 	clr	a
   06C7 34 08              2245 	addc	a,#(_charSent >> 8)
   06C9 FF                 2246 	mov	r7,a
   06CA 8A 82              2247 	mov	dpl,r2
   06CC 8F 83              2248 	mov	dph,r7
   06CE E0                 2249 	movx	a,@dptr
   06CF F8                 2250 	mov	r0,a
   06D0 B8 01 09           2251 	cjne	r0,#0x01,00111$
                           2252 ;	../projectSpecificHardwareInterface_C8051F040.c:413: charSent[channelNumber] = false ;
   06D3 8A 82              2253 	mov	dpl,r2
   06D5 8F 83              2254 	mov	dph,r7
   06D7 E4                 2255 	clr	a
   06D8 F0                 2256 	movx	@dptr,a
                           2257 ;	../projectSpecificHardwareInterface_C8051F040.c:417: while(TI0 == 0) { /* empty loop */} ;
   06D9                    2258 00107$:
   06D9 30 99 FD           2259 	jnb	_TI0,00107$
   06DC                    2260 00111$:
                           2261 ;	../projectSpecificHardwareInterface_C8051F040.c:420: if(!IsEmpty(Q))
   06DC 8C 82              2262 	mov	dpl,r4
   06DE 8D 83              2263 	mov	dph,r5
   06E0 8E F0              2264 	mov	b,r6
   06E2 C0 03              2265 	push	ar3
   06E4 12 03 22           2266 	lcall	_IsEmpty
   06E7 E5 82              2267 	mov	a,dpl
   06E9 D0 03              2268 	pop	ar3
   06EB 60 03              2269 	jz	00135$
   06ED 02 07 C1           2270 	ljmp	00113$
   06F0                    2271 00135$:
                           2272 ;	../projectSpecificHardwareInterface_C8051F040.c:422: unsigned char byteToSend = Q->Array[Q->Front] ;
   06F0 C0 03              2273 	push	ar3
   06F2 90 08 CF           2274 	mov	dptr,#_task_UART_core_projectSpecific_Q_4_4
   06F5 E0                 2275 	movx	a,@dptr
   06F6 FA                 2276 	mov	r2,a
   06F7 A3                 2277 	inc	dptr
   06F8 E0                 2278 	movx	a,@dptr
   06F9 FC                 2279 	mov	r4,a
   06FA A3                 2280 	inc	dptr
   06FB E0                 2281 	movx	a,@dptr
   06FC FD                 2282 	mov	r5,a
   06FD 74 08              2283 	mov	a,#0x08
   06FF 2A                 2284 	add	a,r2
   0700 FE                 2285 	mov	r6,a
   0701 E4                 2286 	clr	a
   0702 3C                 2287 	addc	a,r4
   0703 FF                 2288 	mov	r7,a
   0704 8D 00              2289 	mov	ar0,r5
   0706 8E 82              2290 	mov	dpl,r6
   0708 8F 83              2291 	mov	dph,r7
   070A 88 F0              2292 	mov	b,r0
   070C 12 4D 3C           2293 	lcall	__gptrget
   070F F5 09              2294 	mov	_task_UART_core_projectSpecific_sloc1_1_0,a
   0711 A3                 2295 	inc	dptr
   0712 12 4D 3C           2296 	lcall	__gptrget
   0715 F5 0A              2297 	mov	(_task_UART_core_projectSpecific_sloc1_1_0 + 1),a
   0717 A3                 2298 	inc	dptr
   0718 12 4D 3C           2299 	lcall	__gptrget
   071B F5 0B              2300 	mov	(_task_UART_core_projectSpecific_sloc1_1_0 + 2),a
   071D 74 02              2301 	mov	a,#0x02
   071F 2A                 2302 	add	a,r2
   0720 F5 0E              2303 	mov	_task_UART_core_projectSpecific_sloc3_1_0,a
   0722 E4                 2304 	clr	a
   0723 3C                 2305 	addc	a,r4
   0724 F5 0F              2306 	mov	(_task_UART_core_projectSpecific_sloc3_1_0 + 1),a
   0726 8D 10              2307 	mov	(_task_UART_core_projectSpecific_sloc3_1_0 + 2),r5
   0728 85 0E 82           2308 	mov	dpl,_task_UART_core_projectSpecific_sloc3_1_0
   072B 85 0F 83           2309 	mov	dph,(_task_UART_core_projectSpecific_sloc3_1_0 + 1)
   072E 85 10 F0           2310 	mov	b,(_task_UART_core_projectSpecific_sloc3_1_0 + 2)
   0731 12 4D 3C           2311 	lcall	__gptrget
   0734 F5 0C              2312 	mov	_task_UART_core_projectSpecific_sloc2_1_0,a
   0736 A3                 2313 	inc	dptr
   0737 12 4D 3C           2314 	lcall	__gptrget
   073A F5 0D              2315 	mov	(_task_UART_core_projectSpecific_sloc2_1_0 + 1),a
   073C E5 0C              2316 	mov	a,_task_UART_core_projectSpecific_sloc2_1_0
   073E 25 09              2317 	add	a,_task_UART_core_projectSpecific_sloc1_1_0
   0740 FF                 2318 	mov	r7,a
   0741 E5 0D              2319 	mov	a,(_task_UART_core_projectSpecific_sloc2_1_0 + 1)
   0743 35 0A              2320 	addc	a,(_task_UART_core_projectSpecific_sloc1_1_0 + 1)
   0745 F8                 2321 	mov	r0,a
   0746 AB 0B              2322 	mov	r3,(_task_UART_core_projectSpecific_sloc1_1_0 + 2)
   0748 8F 82              2323 	mov	dpl,r7
   074A 88 83              2324 	mov	dph,r0
   074C 8B F0              2325 	mov	b,r3
   074E 12 4D 3C           2326 	lcall	__gptrget
   0751 F5 09              2327 	mov	_task_UART_core_projectSpecific_sloc1_1_0,a
                           2328 ;	../projectSpecificHardwareInterface_C8051F040.c:424: Q->Size-- ;
   0753 74 06              2329 	mov	a,#0x06
   0755 2A                 2330 	add	a,r2
   0756 FB                 2331 	mov	r3,a
   0757 E4                 2332 	clr	a
   0758 3C                 2333 	addc	a,r4
   0759 FE                 2334 	mov	r6,a
   075A 8D 00              2335 	mov	ar0,r5
   075C 8B 82              2336 	mov	dpl,r3
   075E 8E 83              2337 	mov	dph,r6
   0760 88 F0              2338 	mov	b,r0
   0762 12 4D 3C           2339 	lcall	__gptrget
   0765 F9                 2340 	mov	r1,a
   0766 A3                 2341 	inc	dptr
   0767 12 4D 3C           2342 	lcall	__gptrget
   076A FF                 2343 	mov	r7,a
   076B 19                 2344 	dec	r1
   076C B9 FF 01           2345 	cjne	r1,#0xff,00136$
   076F 1F                 2346 	dec	r7
   0770                    2347 00136$:
   0770 8B 82              2348 	mov	dpl,r3
   0772 8E 83              2349 	mov	dph,r6
   0774 88 F0              2350 	mov	b,r0
   0776 E9                 2351 	mov	a,r1
   0777 12 41 10           2352 	lcall	__gptrput
   077A A3                 2353 	inc	dptr
   077B EF                 2354 	mov	a,r7
   077C 12 41 10           2355 	lcall	__gptrput
                           2356 ;	../projectSpecificHardwareInterface_C8051F040.c:425: Q->Front = Succ(Q->Front, Q) ;
   077F 90 04 58           2357 	mov	dptr,#_Succ_PARM_2
   0782 EA                 2358 	mov	a,r2
   0783 F0                 2359 	movx	@dptr,a
   0784 A3                 2360 	inc	dptr
   0785 EC                 2361 	mov	a,r4
   0786 F0                 2362 	movx	@dptr,a
   0787 A3                 2363 	inc	dptr
   0788 ED                 2364 	mov	a,r5
   0789 F0                 2365 	movx	@dptr,a
   078A 85 0C 82           2366 	mov	dpl,_task_UART_core_projectSpecific_sloc2_1_0
   078D 85 0D 83           2367 	mov	dph,(_task_UART_core_projectSpecific_sloc2_1_0 + 1)
   0790 12 03 B0           2368 	lcall	_Succ
   0793 AA 82              2369 	mov	r2,dpl
   0795 AB 83              2370 	mov	r3,dph
   0797 85 0E 82           2371 	mov	dpl,_task_UART_core_projectSpecific_sloc3_1_0
   079A 85 0F 83           2372 	mov	dph,(_task_UART_core_projectSpecific_sloc3_1_0 + 1)
   079D 85 10 F0           2373 	mov	b,(_task_UART_core_projectSpecific_sloc3_1_0 + 2)
   07A0 EA                 2374 	mov	a,r2
   07A1 12 41 10           2375 	lcall	__gptrput
   07A4 A3                 2376 	inc	dptr
   07A5 EB                 2377 	mov	a,r3
   07A6 12 41 10           2378 	lcall	__gptrput
                           2379 ;	../projectSpecificHardwareInterface_C8051F040.c:427: TI0 = 0 ;	// clear it and send the next character
   07A9 C2 99              2380 	clr	_TI0
                           2381 ;	../projectSpecificHardwareInterface_C8051F040.c:429: SBUF0 = byteToSend ;
   07AB 85 09 99           2382 	mov	_SBUF0,_task_UART_core_projectSpecific_sloc1_1_0
                           2383 ;	../projectSpecificHardwareInterface_C8051F040.c:431: charSent[channelNumber] = true ;
   07AE 90 08 CE           2384 	mov	dptr,#_task_UART_core_projectSpecific_channelNumber_1_1
   07B1 E0                 2385 	movx	a,@dptr
   07B2 FA                 2386 	mov	r2,a
   07B3 24 CB              2387 	add	a,#_charSent
   07B5 F5 82              2388 	mov	dpl,a
   07B7 E4                 2389 	clr	a
   07B8 34 08              2390 	addc	a,#(_charSent >> 8)
   07BA F5 83              2391 	mov	dph,a
   07BC 74 01              2392 	mov	a,#0x01
   07BE F0                 2393 	movx	@dptr,a
                           2394 ;	../projectSpecificHardwareInterface_C8051F040.c:434: portRESTORE_REGISTER_GROUP()
   07BF D0 03              2395 	pop	ar3
                           2396 ;	../projectSpecificHardwareInterface_C8051F040.c:431: charSent[channelNumber] = true ;
   07C1                    2397 00113$:
                           2398 ;	../projectSpecificHardwareInterface_C8051F040.c:434: portRESTORE_REGISTER_GROUP()
   07C1 8B 84              2399 	mov	_SFRPAGE,r3
   07C3 22                 2400 	ret
                           2401 ;------------------------------------------------------------
                           2402 ;Allocation info for local variables in function 'task_UART_putchar_projectSpecific'
                           2403 ;------------------------------------------------------------
                           2404 ;charToSend                Allocated with name '_task_UART_putchar_projectSpecific_PARM_2'
                           2405 ;channelNumber             Allocated with name '_task_UART_putchar_projectSpecific_channelNumber_1_1'
                           2406 ;Q                         Allocated with name '_task_UART_putchar_projectSpecific_Q_2_2'
                           2407 ;------------------------------------------------------------
                           2408 ;	../projectSpecificHardwareInterface_C8051F040.c:439: bool task_UART_putchar_projectSpecific(	unsigned char channelNumber, char charToSend)
                           2409 ;	-----------------------------------------
                           2410 ;	 function task_UART_putchar_projectSpecific
                           2411 ;	-----------------------------------------
   07C4                    2412 _task_UART_putchar_projectSpecific:
   07C4 E5 82              2413 	mov	a,dpl
   07C6 90 08 D3           2414 	mov	dptr,#_task_UART_putchar_projectSpecific_channelNumber_1_1
   07C9 F0                 2415 	movx	@dptr,a
                           2416 ;	../projectSpecificHardwareInterface_C8051F040.c:441: task_UART_core(0) ;
   07CA 75 82 00           2417 	mov	dpl,#0x00
   07CD 12 3E DF           2418 	lcall	_task_UART_core
                           2419 ;	../projectSpecificHardwareInterface_C8051F040.c:443: portDISABLE_INTERRUPTS() ;
   07D0 C2 AF              2420 	clr	_EA
                           2421 ;	../projectSpecificHardwareInterface_C8051F040.c:445: if(channelNumber < NUMBER_OF_UARTS)
   07D2 90 08 D3           2422 	mov	dptr,#_task_UART_putchar_projectSpecific_channelNumber_1_1
   07D5 E0                 2423 	movx	a,@dptr
   07D6 FA                 2424 	mov	r2,a
   07D7 BA 01 00           2425 	cjne	r2,#0x01,00109$
   07DA                    2426 00109$:
   07DA 40 03              2427 	jc	00110$
   07DC 02 08 DD           2428 	ljmp	00104$
   07DF                    2429 00110$:
                           2430 ;	../projectSpecificHardwareInterface_C8051F040.c:447: QUEUE_TYPE*	Q = &transmitBuffers[channelNumber] ;
   07DF EA                 2431 	mov	a,r2
   07E0 75 F0 0B           2432 	mov	b,#0x0B
   07E3 A4                 2433 	mul	ab
   07E4 24 B5              2434 	add	a,#_transmitBuffers
   07E6 FA                 2435 	mov	r2,a
   07E7 E4                 2436 	clr	a
   07E8 34 08              2437 	addc	a,#(_transmitBuffers >> 8)
   07EA FB                 2438 	mov	r3,a
   07EB 7C 00              2439 	mov	r4,#0x00
   07ED 90 08 D4           2440 	mov	dptr,#_task_UART_putchar_projectSpecific_Q_2_2
   07F0 EA                 2441 	mov	a,r2
   07F1 F0                 2442 	movx	@dptr,a
   07F2 A3                 2443 	inc	dptr
   07F3 EB                 2444 	mov	a,r3
   07F4 F0                 2445 	movx	@dptr,a
   07F5 A3                 2446 	inc	dptr
   07F6 EC                 2447 	mov	a,r4
   07F7 F0                 2448 	movx	@dptr,a
                           2449 ;	../projectSpecificHardwareInterface_C8051F040.c:449: if(!IsFull(Q))
   07F8 8A 82              2450 	mov	dpl,r2
   07FA 8B 83              2451 	mov	dph,r3
   07FC 8C F0              2452 	mov	b,r4
   07FE 12 03 5E           2453 	lcall	_IsFull
   0801 E5 82              2454 	mov	a,dpl
   0803 60 03              2455 	jz	00111$
   0805 02 08 DD           2456 	ljmp	00104$
   0808                    2457 00111$:
                           2458 ;	../projectSpecificHardwareInterface_C8051F040.c:451: Q->Size++ ;
   0808 90 08 D4           2459 	mov	dptr,#_task_UART_putchar_projectSpecific_Q_2_2
   080B E0                 2460 	movx	a,@dptr
   080C FA                 2461 	mov	r2,a
   080D A3                 2462 	inc	dptr
   080E E0                 2463 	movx	a,@dptr
   080F FB                 2464 	mov	r3,a
   0810 A3                 2465 	inc	dptr
   0811 E0                 2466 	movx	a,@dptr
   0812 FC                 2467 	mov	r4,a
   0813 74 06              2468 	mov	a,#0x06
   0815 2A                 2469 	add	a,r2
   0816 FD                 2470 	mov	r5,a
   0817 E4                 2471 	clr	a
   0818 3B                 2472 	addc	a,r3
   0819 FE                 2473 	mov	r6,a
   081A 8C 07              2474 	mov	ar7,r4
   081C 8D 82              2475 	mov	dpl,r5
   081E 8E 83              2476 	mov	dph,r6
   0820 8F F0              2477 	mov	b,r7
   0822 12 4D 3C           2478 	lcall	__gptrget
   0825 F8                 2479 	mov	r0,a
   0826 A3                 2480 	inc	dptr
   0827 12 4D 3C           2481 	lcall	__gptrget
   082A F9                 2482 	mov	r1,a
   082B 08                 2483 	inc	r0
   082C B8 00 01           2484 	cjne	r0,#0x00,00112$
   082F 09                 2485 	inc	r1
   0830                    2486 00112$:
   0830 8D 82              2487 	mov	dpl,r5
   0832 8E 83              2488 	mov	dph,r6
   0834 8F F0              2489 	mov	b,r7
   0836 E8                 2490 	mov	a,r0
   0837 12 41 10           2491 	lcall	__gptrput
   083A A3                 2492 	inc	dptr
   083B E9                 2493 	mov	a,r1
   083C 12 41 10           2494 	lcall	__gptrput
                           2495 ;	../projectSpecificHardwareInterface_C8051F040.c:452: Q->Rear = Succ(Q->Rear, Q) ;
   083F 74 04              2496 	mov	a,#0x04
   0841 2A                 2497 	add	a,r2
   0842 FD                 2498 	mov	r5,a
   0843 E4                 2499 	clr	a
   0844 3B                 2500 	addc	a,r3
   0845 FE                 2501 	mov	r6,a
   0846 8C 07              2502 	mov	ar7,r4
   0848 8D 82              2503 	mov	dpl,r5
   084A 8E 83              2504 	mov	dph,r6
   084C 8F F0              2505 	mov	b,r7
   084E 12 4D 3C           2506 	lcall	__gptrget
   0851 F8                 2507 	mov	r0,a
   0852 A3                 2508 	inc	dptr
   0853 12 4D 3C           2509 	lcall	__gptrget
   0856 F9                 2510 	mov	r1,a
   0857 90 04 58           2511 	mov	dptr,#_Succ_PARM_2
   085A EA                 2512 	mov	a,r2
   085B F0                 2513 	movx	@dptr,a
   085C A3                 2514 	inc	dptr
   085D EB                 2515 	mov	a,r3
   085E F0                 2516 	movx	@dptr,a
   085F A3                 2517 	inc	dptr
   0860 EC                 2518 	mov	a,r4
   0861 F0                 2519 	movx	@dptr,a
   0862 88 82              2520 	mov	dpl,r0
   0864 89 83              2521 	mov	dph,r1
   0866 C0 05              2522 	push	ar5
   0868 C0 06              2523 	push	ar6
   086A C0 07              2524 	push	ar7
   086C 12 03 B0           2525 	lcall	_Succ
   086F AA 82              2526 	mov	r2,dpl
   0871 AB 83              2527 	mov	r3,dph
   0873 D0 07              2528 	pop	ar7
   0875 D0 06              2529 	pop	ar6
   0877 D0 05              2530 	pop	ar5
   0879 8D 82              2531 	mov	dpl,r5
   087B 8E 83              2532 	mov	dph,r6
   087D 8F F0              2533 	mov	b,r7
   087F EA                 2534 	mov	a,r2
   0880 12 41 10           2535 	lcall	__gptrput
   0883 A3                 2536 	inc	dptr
   0884 EB                 2537 	mov	a,r3
   0885 12 41 10           2538 	lcall	__gptrput
                           2539 ;	../projectSpecificHardwareInterface_C8051F040.c:453: Q->Array[Q->Rear] = charToSend ;
   0888 90 08 D4           2540 	mov	dptr,#_task_UART_putchar_projectSpecific_Q_2_2
   088B E0                 2541 	movx	a,@dptr
   088C FA                 2542 	mov	r2,a
   088D A3                 2543 	inc	dptr
   088E E0                 2544 	movx	a,@dptr
   088F FB                 2545 	mov	r3,a
   0890 A3                 2546 	inc	dptr
   0891 E0                 2547 	movx	a,@dptr
   0892 FC                 2548 	mov	r4,a
   0893 74 08              2549 	mov	a,#0x08
   0895 2A                 2550 	add	a,r2
   0896 FD                 2551 	mov	r5,a
   0897 E4                 2552 	clr	a
   0898 3B                 2553 	addc	a,r3
   0899 FE                 2554 	mov	r6,a
   089A 8C 07              2555 	mov	ar7,r4
   089C 8D 82              2556 	mov	dpl,r5
   089E 8E 83              2557 	mov	dph,r6
   08A0 8F F0              2558 	mov	b,r7
   08A2 12 4D 3C           2559 	lcall	__gptrget
   08A5 FD                 2560 	mov	r5,a
   08A6 A3                 2561 	inc	dptr
   08A7 12 4D 3C           2562 	lcall	__gptrget
   08AA FE                 2563 	mov	r6,a
   08AB A3                 2564 	inc	dptr
   08AC 12 4D 3C           2565 	lcall	__gptrget
   08AF FF                 2566 	mov	r7,a
   08B0 74 04              2567 	mov	a,#0x04
   08B2 2A                 2568 	add	a,r2
   08B3 FA                 2569 	mov	r2,a
   08B4 E4                 2570 	clr	a
   08B5 3B                 2571 	addc	a,r3
   08B6 FB                 2572 	mov	r3,a
   08B7 8A 82              2573 	mov	dpl,r2
   08B9 8B 83              2574 	mov	dph,r3
   08BB 8C F0              2575 	mov	b,r4
   08BD 12 4D 3C           2576 	lcall	__gptrget
   08C0 FA                 2577 	mov	r2,a
   08C1 A3                 2578 	inc	dptr
   08C2 12 4D 3C           2579 	lcall	__gptrget
   08C5 FB                 2580 	mov	r3,a
   08C6 EA                 2581 	mov	a,r2
   08C7 2D                 2582 	add	a,r5
   08C8 FD                 2583 	mov	r5,a
   08C9 EB                 2584 	mov	a,r3
   08CA 3E                 2585 	addc	a,r6
   08CB FE                 2586 	mov	r6,a
   08CC 90 08 D2           2587 	mov	dptr,#_task_UART_putchar_projectSpecific_PARM_2
   08CF E0                 2588 	movx	a,@dptr
   08D0 8D 82              2589 	mov	dpl,r5
   08D2 8E 83              2590 	mov	dph,r6
   08D4 8F F0              2591 	mov	b,r7
   08D6 12 41 10           2592 	lcall	__gptrput
                           2593 ;	../projectSpecificHardwareInterface_C8051F040.c:455: portENABLE_INTERRUPTS() ;
   08D9 D2 AF              2594 	setb	_EA
                           2595 ;	../projectSpecificHardwareInterface_C8051F040.c:457: return true ;
   08DB D3                 2596 	setb	c
   08DC 22                 2597 	ret
   08DD                    2598 00104$:
                           2599 ;	../projectSpecificHardwareInterface_C8051F040.c:461: portENABLE_INTERRUPTS() ;
   08DD D2 AF              2600 	setb	_EA
                           2601 ;	../projectSpecificHardwareInterface_C8051F040.c:465: return false ;
   08DF C3                 2602 	clr	c
   08E0 22                 2603 	ret
                           2604 ;------------------------------------------------------------
                           2605 ;Allocation info for local variables in function 'task_UART_puts_projectSpecific'
                           2606 ;------------------------------------------------------------
                           2607 ;buffer                    Allocated with name '_task_UART_puts_projectSpecific_PARM_2'
                           2608 ;channelNumber             Allocated with name '_task_UART_puts_projectSpecific_channelNumber_1_1'
                           2609 ;myBuffer                  Allocated with name '_task_UART_puts_projectSpecific_myBuffer_2_2'
                           2610 ;------------------------------------------------------------
                           2611 ;	../projectSpecificHardwareInterface_C8051F040.c:469: void task_UART_puts_projectSpecific(	unsigned char channelNumber, const char *buffer)
                           2612 ;	-----------------------------------------
                           2613 ;	 function task_UART_puts_projectSpecific
                           2614 ;	-----------------------------------------
   08E1                    2615 _task_UART_puts_projectSpecific:
   08E1 E5 82              2616 	mov	a,dpl
   08E3 90 08 DA           2617 	mov	dptr,#_task_UART_puts_projectSpecific_channelNumber_1_1
   08E6 F0                 2618 	movx	@dptr,a
                           2619 ;	../projectSpecificHardwareInterface_C8051F040.c:471: if(channelNumber < NUMBER_OF_UARTS)
   08E7 90 08 DA           2620 	mov	dptr,#_task_UART_puts_projectSpecific_channelNumber_1_1
   08EA E0                 2621 	movx	a,@dptr
   08EB FA                 2622 	mov	r2,a
   08EC BA 01 00           2623 	cjne	r2,#0x01,00119$
   08EF                    2624 00119$:
   08EF 50 6C              2625 	jnc	00112$
                           2626 ;	../projectSpecificHardwareInterface_C8051F040.c:473: unsigned char* myBuffer = buffer ;
   08F1 90 08 D7           2627 	mov	dptr,#_task_UART_puts_projectSpecific_PARM_2
   08F4 E0                 2628 	movx	a,@dptr
   08F5 FB                 2629 	mov	r3,a
   08F6 A3                 2630 	inc	dptr
   08F7 E0                 2631 	movx	a,@dptr
   08F8 FC                 2632 	mov	r4,a
   08F9 A3                 2633 	inc	dptr
   08FA E0                 2634 	movx	a,@dptr
   08FB FD                 2635 	mov	r5,a
                           2636 ;	../projectSpecificHardwareInterface_C8051F040.c:475: while(*myBuffer)
   08FC 8A 06              2637 	mov	ar6,r2
   08FE                    2638 00107$:
   08FE 8B 82              2639 	mov	dpl,r3
   0900 8C 83              2640 	mov	dph,r4
   0902 8D F0              2641 	mov	b,r5
   0904 12 4D 3C           2642 	lcall	__gptrget
   0907 FF                 2643 	mov	r7,a
   0908 60 53              2644 	jz	00112$
                           2645 ;	../projectSpecificHardwareInterface_C8051F040.c:477: if((*myBuffer) == '\n')
   090A BF 0A 21           2646 	cjne	r7,#0x0A,00104$
                           2647 ;	../projectSpecificHardwareInterface_C8051F040.c:479: if(!task_UART_putchar(channelNumber, '\r'))
   090D 90 0A 81           2648 	mov	dptr,#_task_UART_putchar_PARM_2
   0910 74 0D              2649 	mov	a,#0x0D
   0912 F0                 2650 	movx	@dptr,a
   0913 8E 82              2651 	mov	dpl,r6
   0915 C0 02              2652 	push	ar2
   0917 C0 03              2653 	push	ar3
   0919 C0 04              2654 	push	ar4
   091B C0 05              2655 	push	ar5
   091D C0 06              2656 	push	ar6
   091F 12 3E EE           2657 	lcall	_task_UART_putchar
   0922 D0 06              2658 	pop	ar6
   0924 D0 05              2659 	pop	ar5
   0926 D0 04              2660 	pop	ar4
   0928 D0 03              2661 	pop	ar3
   092A D0 02              2662 	pop	ar2
   092C 50 2F              2663 	jnc	00112$
                           2664 ;	../projectSpecificHardwareInterface_C8051F040.c:481: break ;
   092E                    2665 00104$:
                           2666 ;	../projectSpecificHardwareInterface_C8051F040.c:485: if(!task_UART_putchar(channelNumber, *myBuffer++))
   092E 8B 82              2667 	mov	dpl,r3
   0930 8C 83              2668 	mov	dph,r4
   0932 8D F0              2669 	mov	b,r5
   0934 12 4D 3C           2670 	lcall	__gptrget
   0937 FF                 2671 	mov	r7,a
   0938 A3                 2672 	inc	dptr
   0939 AB 82              2673 	mov	r3,dpl
   093B AC 83              2674 	mov	r4,dph
   093D 90 0A 81           2675 	mov	dptr,#_task_UART_putchar_PARM_2
   0940 EF                 2676 	mov	a,r7
   0941 F0                 2677 	movx	@dptr,a
   0942 8A 82              2678 	mov	dpl,r2
   0944 C0 02              2679 	push	ar2
   0946 C0 03              2680 	push	ar3
   0948 C0 04              2681 	push	ar4
   094A C0 05              2682 	push	ar5
   094C C0 06              2683 	push	ar6
   094E 12 3E EE           2684 	lcall	_task_UART_putchar
   0951 D0 06              2685 	pop	ar6
   0953 D0 05              2686 	pop	ar5
   0955 D0 04              2687 	pop	ar4
   0957 D0 03              2688 	pop	ar3
   0959 D0 02              2689 	pop	ar2
   095B 40 A1              2690 	jc	00107$
                           2691 ;	../projectSpecificHardwareInterface_C8051F040.c:487: break ;
   095D                    2692 00112$:
   095D 22                 2693 	ret
                           2694 ;------------------------------------------------------------
                           2695 ;Allocation info for local variables in function 'task_UART_getchar_projectSpecific'
                           2696 ;------------------------------------------------------------
                           2697 ;sloc0                     Allocated with name '_task_UART_getchar_projectSpecific_sloc0_1_0'
                           2698 ;sloc1                     Allocated with name '_task_UART_getchar_projectSpecific_sloc1_1_0'
                           2699 ;sloc2                     Allocated with name '_task_UART_getchar_projectSpecific_sloc2_1_0'
                           2700 ;channelNumber             Allocated with name '_task_UART_getchar_projectSpecific_channelNumber_1_1'
                           2701 ;Q                         Allocated with name '_task_UART_getchar_projectSpecific_Q_2_2'
                           2702 ;byteReceived              Allocated with name '_task_UART_getchar_projectSpecific_byteReceived_3_3'
                           2703 ;------------------------------------------------------------
                           2704 ;	../projectSpecificHardwareInterface_C8051F040.c:494: char task_UART_getchar_projectSpecific(	unsigned char channelNumber)
                           2705 ;	-----------------------------------------
                           2706 ;	 function task_UART_getchar_projectSpecific
                           2707 ;	-----------------------------------------
   095E                    2708 _task_UART_getchar_projectSpecific:
   095E E5 82              2709 	mov	a,dpl
   0960 90 08 DB           2710 	mov	dptr,#_task_UART_getchar_projectSpecific_channelNumber_1_1
   0963 F0                 2711 	movx	@dptr,a
                           2712 ;	../projectSpecificHardwareInterface_C8051F040.c:496: if(channelNumber < NUMBER_OF_UARTS)
   0964 90 08 DB           2713 	mov	dptr,#_task_UART_getchar_projectSpecific_channelNumber_1_1
   0967 E0                 2714 	movx	a,@dptr
   0968 FA                 2715 	mov	r2,a
   0969 BA 01 00           2716 	cjne	r2,#0x01,00109$
   096C                    2717 00109$:
   096C 40 03              2718 	jc	00110$
   096E 02 0A 55           2719 	ljmp	00104$
   0971                    2720 00110$:
                           2721 ;	../projectSpecificHardwareInterface_C8051F040.c:498: QUEUE_TYPE*	Q = &receiveBuffers[channelNumber] ;
   0971 EA                 2722 	mov	a,r2
   0972 75 F0 0B           2723 	mov	b,#0x0B
   0975 A4                 2724 	mul	ab
   0976 24 C0              2725 	add	a,#_receiveBuffers
   0978 FA                 2726 	mov	r2,a
   0979 E4                 2727 	clr	a
   097A 34 08              2728 	addc	a,#(_receiveBuffers >> 8)
   097C FB                 2729 	mov	r3,a
   097D 7C 00              2730 	mov	r4,#0x00
   097F 90 08 DC           2731 	mov	dptr,#_task_UART_getchar_projectSpecific_Q_2_2
   0982 EA                 2732 	mov	a,r2
   0983 F0                 2733 	movx	@dptr,a
   0984 A3                 2734 	inc	dptr
   0985 EB                 2735 	mov	a,r3
   0986 F0                 2736 	movx	@dptr,a
   0987 A3                 2737 	inc	dptr
   0988 EC                 2738 	mov	a,r4
   0989 F0                 2739 	movx	@dptr,a
                           2740 ;	../projectSpecificHardwareInterface_C8051F040.c:500: if(!IsEmpty(Q))
   098A 8A 82              2741 	mov	dpl,r2
   098C 8B 83              2742 	mov	dph,r3
   098E 8C F0              2743 	mov	b,r4
   0990 12 03 22           2744 	lcall	_IsEmpty
   0993 E5 82              2745 	mov	a,dpl
   0995 60 03              2746 	jz	00111$
   0997 02 0A 55           2747 	ljmp	00104$
   099A                    2748 00111$:
                           2749 ;	../projectSpecificHardwareInterface_C8051F040.c:502: unsigned char byteReceived = Q->Array[Q->Front] ;
   099A 90 08 DC           2750 	mov	dptr,#_task_UART_getchar_projectSpecific_Q_2_2
   099D E0                 2751 	movx	a,@dptr
   099E FA                 2752 	mov	r2,a
   099F A3                 2753 	inc	dptr
   09A0 E0                 2754 	movx	a,@dptr
   09A1 FB                 2755 	mov	r3,a
   09A2 A3                 2756 	inc	dptr
   09A3 E0                 2757 	movx	a,@dptr
   09A4 FC                 2758 	mov	r4,a
   09A5 74 08              2759 	mov	a,#0x08
   09A7 2A                 2760 	add	a,r2
   09A8 FD                 2761 	mov	r5,a
   09A9 E4                 2762 	clr	a
   09AA 3B                 2763 	addc	a,r3
   09AB FE                 2764 	mov	r6,a
   09AC 8C 07              2765 	mov	ar7,r4
   09AE 8D 82              2766 	mov	dpl,r5
   09B0 8E 83              2767 	mov	dph,r6
   09B2 8F F0              2768 	mov	b,r7
   09B4 12 4D 3C           2769 	lcall	__gptrget
   09B7 F5 11              2770 	mov	_task_UART_getchar_projectSpecific_sloc0_1_0,a
   09B9 A3                 2771 	inc	dptr
   09BA 12 4D 3C           2772 	lcall	__gptrget
   09BD F5 12              2773 	mov	(_task_UART_getchar_projectSpecific_sloc0_1_0 + 1),a
   09BF A3                 2774 	inc	dptr
   09C0 12 4D 3C           2775 	lcall	__gptrget
   09C3 F5 13              2776 	mov	(_task_UART_getchar_projectSpecific_sloc0_1_0 + 2),a
   09C5 74 02              2777 	mov	a,#0x02
   09C7 2A                 2778 	add	a,r2
   09C8 F5 16              2779 	mov	_task_UART_getchar_projectSpecific_sloc2_1_0,a
   09CA E4                 2780 	clr	a
   09CB 3B                 2781 	addc	a,r3
   09CC F5 17              2782 	mov	(_task_UART_getchar_projectSpecific_sloc2_1_0 + 1),a
   09CE 8C 18              2783 	mov	(_task_UART_getchar_projectSpecific_sloc2_1_0 + 2),r4
   09D0 85 16 82           2784 	mov	dpl,_task_UART_getchar_projectSpecific_sloc2_1_0
   09D3 85 17 83           2785 	mov	dph,(_task_UART_getchar_projectSpecific_sloc2_1_0 + 1)
   09D6 85 18 F0           2786 	mov	b,(_task_UART_getchar_projectSpecific_sloc2_1_0 + 2)
   09D9 12 4D 3C           2787 	lcall	__gptrget
   09DC F5 14              2788 	mov	_task_UART_getchar_projectSpecific_sloc1_1_0,a
   09DE A3                 2789 	inc	dptr
   09DF 12 4D 3C           2790 	lcall	__gptrget
   09E2 F5 15              2791 	mov	(_task_UART_getchar_projectSpecific_sloc1_1_0 + 1),a
   09E4 E5 14              2792 	mov	a,_task_UART_getchar_projectSpecific_sloc1_1_0
   09E6 25 11              2793 	add	a,_task_UART_getchar_projectSpecific_sloc0_1_0
   09E8 FE                 2794 	mov	r6,a
   09E9 E5 15              2795 	mov	a,(_task_UART_getchar_projectSpecific_sloc1_1_0 + 1)
   09EB 35 12              2796 	addc	a,(_task_UART_getchar_projectSpecific_sloc0_1_0 + 1)
   09ED FF                 2797 	mov	r7,a
   09EE AD 13              2798 	mov	r5,(_task_UART_getchar_projectSpecific_sloc0_1_0 + 2)
   09F0 8E 82              2799 	mov	dpl,r6
   09F2 8F 83              2800 	mov	dph,r7
   09F4 8D F0              2801 	mov	b,r5
   09F6 12 4D 3C           2802 	lcall	__gptrget
   09F9 F5 11              2803 	mov	_task_UART_getchar_projectSpecific_sloc0_1_0,a
                           2804 ;	../projectSpecificHardwareInterface_C8051F040.c:504: Q->Size-- ;
   09FB 74 06              2805 	mov	a,#0x06
   09FD 2A                 2806 	add	a,r2
   09FE FD                 2807 	mov	r5,a
   09FF E4                 2808 	clr	a
   0A00 3B                 2809 	addc	a,r3
   0A01 FF                 2810 	mov	r7,a
   0A02 8C 00              2811 	mov	ar0,r4
   0A04 8D 82              2812 	mov	dpl,r5
   0A06 8F 83              2813 	mov	dph,r7
   0A08 88 F0              2814 	mov	b,r0
   0A0A 12 4D 3C           2815 	lcall	__gptrget
   0A0D F9                 2816 	mov	r1,a
   0A0E A3                 2817 	inc	dptr
   0A0F 12 4D 3C           2818 	lcall	__gptrget
   0A12 FE                 2819 	mov	r6,a
   0A13 19                 2820 	dec	r1
   0A14 B9 FF 01           2821 	cjne	r1,#0xff,00112$
   0A17 1E                 2822 	dec	r6
   0A18                    2823 00112$:
   0A18 8D 82              2824 	mov	dpl,r5
   0A1A 8F 83              2825 	mov	dph,r7
   0A1C 88 F0              2826 	mov	b,r0
   0A1E E9                 2827 	mov	a,r1
   0A1F 12 41 10           2828 	lcall	__gptrput
   0A22 A3                 2829 	inc	dptr
   0A23 EE                 2830 	mov	a,r6
   0A24 12 41 10           2831 	lcall	__gptrput
                           2832 ;	../projectSpecificHardwareInterface_C8051F040.c:505: Q->Front = Succ(Q->Front, Q) ;
   0A27 90 04 58           2833 	mov	dptr,#_Succ_PARM_2
   0A2A EA                 2834 	mov	a,r2
   0A2B F0                 2835 	movx	@dptr,a
   0A2C A3                 2836 	inc	dptr
   0A2D EB                 2837 	mov	a,r3
   0A2E F0                 2838 	movx	@dptr,a
   0A2F A3                 2839 	inc	dptr
   0A30 EC                 2840 	mov	a,r4
   0A31 F0                 2841 	movx	@dptr,a
   0A32 85 14 82           2842 	mov	dpl,_task_UART_getchar_projectSpecific_sloc1_1_0
   0A35 85 15 83           2843 	mov	dph,(_task_UART_getchar_projectSpecific_sloc1_1_0 + 1)
   0A38 12 03 B0           2844 	lcall	_Succ
   0A3B AA 82              2845 	mov	r2,dpl
   0A3D AB 83              2846 	mov	r3,dph
   0A3F 85 16 82           2847 	mov	dpl,_task_UART_getchar_projectSpecific_sloc2_1_0
   0A42 85 17 83           2848 	mov	dph,(_task_UART_getchar_projectSpecific_sloc2_1_0 + 1)
   0A45 85 18 F0           2849 	mov	b,(_task_UART_getchar_projectSpecific_sloc2_1_0 + 2)
   0A48 EA                 2850 	mov	a,r2
   0A49 12 41 10           2851 	lcall	__gptrput
   0A4C A3                 2852 	inc	dptr
   0A4D EB                 2853 	mov	a,r3
   0A4E 12 41 10           2854 	lcall	__gptrput
                           2855 ;	../projectSpecificHardwareInterface_C8051F040.c:507: return byteReceived ;
   0A51 85 11 82           2856 	mov	dpl,_task_UART_getchar_projectSpecific_sloc0_1_0
                           2857 ;	../projectSpecificHardwareInterface_C8051F040.c:511: return -1 ;
   0A54 22                 2858 	ret
   0A55                    2859 00104$:
   0A55 75 82 FF           2860 	mov	dpl,#0xFF
   0A58 22                 2861 	ret
                           2862 ;------------------------------------------------------------
                           2863 ;Allocation info for local variables in function 'task_UART_gets_projectSpecific'
                           2864 ;------------------------------------------------------------
                           2865 ;sloc0                     Allocated with name '_task_UART_gets_projectSpecific_sloc0_1_0'
                           2866 ;sloc1                     Allocated with name '_task_UART_gets_projectSpecific_sloc1_1_0'
                           2867 ;buffer                    Allocated with name '_task_UART_gets_projectSpecific_PARM_2'
                           2868 ;maxBufferLength           Allocated with name '_task_UART_gets_projectSpecific_PARM_3'
                           2869 ;channelNumber             Allocated with name '_task_UART_gets_projectSpecific_channelNumber_1_1'
                           2870 ;charsReturned             Allocated with name '_task_UART_gets_projectSpecific_charsReturned_2_2'
                           2871 ;latestCharInBuffer        Allocated with name '_task_UART_gets_projectSpecific_latestCharInBuffer_3_3'
                           2872 ;------------------------------------------------------------
                           2873 ;	../projectSpecificHardwareInterface_C8051F040.c:515: char* task_UART_gets_projectSpecific(	unsigned char channelNumber, char* buffer, unsigned short maxBufferLength)
                           2874 ;	-----------------------------------------
                           2875 ;	 function task_UART_gets_projectSpecific
                           2876 ;	-----------------------------------------
   0A59                    2877 _task_UART_gets_projectSpecific:
   0A59 E5 82              2878 	mov	a,dpl
   0A5B 90 08 E4           2879 	mov	dptr,#_task_UART_gets_projectSpecific_channelNumber_1_1
   0A5E F0                 2880 	movx	@dptr,a
                           2881 ;	../projectSpecificHardwareInterface_C8051F040.c:517: if(channelNumber < NUMBER_OF_UARTS)
   0A5F 90 08 E4           2882 	mov	dptr,#_task_UART_gets_projectSpecific_channelNumber_1_1
   0A62 E0                 2883 	movx	a,@dptr
   0A63 FA                 2884 	mov	r2,a
   0A64 BA 01 00           2885 	cjne	r2,#0x01,00119$
   0A67                    2886 00119$:
   0A67 50 74              2887 	jnc	00110$
                           2888 ;	../projectSpecificHardwareInterface_C8051F040.c:521: while(charsReturned < maxBufferLength)
   0A69 90 08 E2           2889 	mov	dptr,#_task_UART_gets_projectSpecific_PARM_3
   0A6C E0                 2890 	movx	a,@dptr
   0A6D F5 1A              2891 	mov	_task_UART_gets_projectSpecific_sloc1_1_0,a
   0A6F A3                 2892 	inc	dptr
   0A70 E0                 2893 	movx	a,@dptr
   0A71 F5 1B              2894 	mov	(_task_UART_gets_projectSpecific_sloc1_1_0 + 1),a
   0A73 90 08 DF           2895 	mov	dptr,#_task_UART_gets_projectSpecific_PARM_2
   0A76 E0                 2896 	movx	a,@dptr
   0A77 FD                 2897 	mov	r5,a
   0A78 A3                 2898 	inc	dptr
   0A79 E0                 2899 	movx	a,@dptr
   0A7A FE                 2900 	mov	r6,a
   0A7B A3                 2901 	inc	dptr
   0A7C E0                 2902 	movx	a,@dptr
   0A7D FF                 2903 	mov	r7,a
   0A7E 78 00              2904 	mov	r0,#0x00
   0A80 79 00              2905 	mov	r1,#0x00
   0A82                    2906 00106$:
   0A82 C3                 2907 	clr	c
   0A83 E8                 2908 	mov	a,r0
   0A84 95 1A              2909 	subb	a,_task_UART_gets_projectSpecific_sloc1_1_0
   0A86 E9                 2910 	mov	a,r1
   0A87 95 1B              2911 	subb	a,(_task_UART_gets_projectSpecific_sloc1_1_0 + 1)
   0A89 50 52              2912 	jnc	00110$
                           2913 ;	../projectSpecificHardwareInterface_C8051F040.c:523: char latestCharInBuffer = task_UART_getchar(channelNumber) ;
   0A8B 8A 82              2914 	mov	dpl,r2
   0A8D C0 02              2915 	push	ar2
   0A8F C0 05              2916 	push	ar5
   0A91 C0 06              2917 	push	ar6
   0A93 C0 07              2918 	push	ar7
   0A95 C0 00              2919 	push	ar0
   0A97 C0 01              2920 	push	ar1
   0A99 12 3F 2F           2921 	lcall	_task_UART_getchar
   0A9C 85 82 19           2922 	mov	_task_UART_gets_projectSpecific_sloc0_1_0,dpl
   0A9F D0 01              2923 	pop	ar1
   0AA1 D0 00              2924 	pop	ar0
   0AA3 D0 07              2925 	pop	ar7
   0AA5 D0 06              2926 	pop	ar6
   0AA7 D0 05              2927 	pop	ar5
   0AA9 D0 02              2928 	pop	ar2
                           2929 ;	../projectSpecificHardwareInterface_C8051F040.c:525: if(latestCharInBuffer <= 0)	// break on a NULL or a -1
   0AAB C3                 2930 	clr	c
   0AAC 74 80              2931 	mov	a,#(0x00 ^ 0x80)
   0AAE 85 19 F0           2932 	mov	b,_task_UART_gets_projectSpecific_sloc0_1_0
   0AB1 63 F0 80           2933 	xrl	b,#0x80
   0AB4 95 F0              2934 	subb	a,b
   0AB6 50 25              2935 	jnc	00110$
                           2936 ;	../projectSpecificHardwareInterface_C8051F040.c:529: else if(latestCharInBuffer == '\r')	// Skip carriage returns
   0AB8 74 0D              2937 	mov	a,#0x0D
   0ABA B5 19 02           2938 	cjne	a,_task_UART_gets_projectSpecific_sloc0_1_0,00123$
   0ABD 80 C3              2939 	sjmp	00106$
   0ABF                    2940 00123$:
                           2941 ;	../projectSpecificHardwareInterface_C8051F040.c:534: buffer[charsReturned] = latestCharInBuffer ;
   0ABF C0 02              2942 	push	ar2
   0AC1 E8                 2943 	mov	a,r0
   0AC2 2D                 2944 	add	a,r5
   0AC3 FA                 2945 	mov	r2,a
   0AC4 E9                 2946 	mov	a,r1
   0AC5 3E                 2947 	addc	a,r6
   0AC6 FB                 2948 	mov	r3,a
   0AC7 8F 04              2949 	mov	ar4,r7
   0AC9 8A 82              2950 	mov	dpl,r2
   0ACB 8B 83              2951 	mov	dph,r3
   0ACD 8C F0              2952 	mov	b,r4
   0ACF E5 19              2953 	mov	a,_task_UART_gets_projectSpecific_sloc0_1_0
   0AD1 12 41 10           2954 	lcall	__gptrput
                           2955 ;	../projectSpecificHardwareInterface_C8051F040.c:536: charsReturned++ ;
   0AD4 08                 2956 	inc	r0
   0AD5 B8 00 01           2957 	cjne	r0,#0x00,00124$
   0AD8 09                 2958 	inc	r1
   0AD9                    2959 00124$:
   0AD9 D0 02              2960 	pop	ar2
   0ADB 80 A5              2961 	sjmp	00106$
   0ADD                    2962 00110$:
                           2963 ;	../projectSpecificHardwareInterface_C8051F040.c:540: return 0 ;
   0ADD 90 00 00           2964 	mov	dptr,#0x0000
   0AE0 75 F0 00           2965 	mov	b,#0x00
   0AE3 22                 2966 	ret
                           2967 ;------------------------------------------------------------
                           2968 ;Allocation info for local variables in function 'task_UART_isLineReady'
                           2969 ;------------------------------------------------------------
                           2970 ;channelNumber             Allocated with name '_task_UART_isLineReady_channelNumber_1_1'
                           2971 ;------------------------------------------------------------
                           2972 ;	../projectSpecificHardwareInterface_C8051F040.c:544: bool task_UART_isLineReady(	unsigned char channelNumber)
                           2973 ;	-----------------------------------------
                           2974 ;	 function task_UART_isLineReady
                           2975 ;	-----------------------------------------
   0AE4                    2976 _task_UART_isLineReady:
   0AE4 E5 82              2977 	mov	a,dpl
   0AE6 90 08 E5           2978 	mov	dptr,#_task_UART_isLineReady_channelNumber_1_1
   0AE9 F0                 2979 	movx	@dptr,a
                           2980 ;	../projectSpecificHardwareInterface_C8051F040.c:546: return lineReady[channelNumber] ;
   0AEA 90 08 E5           2981 	mov	dptr,#_task_UART_isLineReady_channelNumber_1_1
   0AED E0                 2982 	movx	a,@dptr
   0AEE 24 CC              2983 	add	a,#_lineReady
   0AF0 F5 82              2984 	mov	dpl,a
   0AF2 E4                 2985 	clr	a
   0AF3 34 08              2986 	addc	a,#(_lineReady >> 8)
   0AF5 F5 83              2987 	mov	dph,a
   0AF7 E0                 2988 	movx	a,@dptr
   0AF8 24 FF              2989 	add	a,#0xff
   0AFA 92 04              2990 	mov  _task_UART_isLineReady_sloc0_1_0,c
   0AFC 22                 2991 	ret
                           2992 ;------------------------------------------------------------
                           2993 ;Allocation info for local variables in function 'UART0_Init'
                           2994 ;------------------------------------------------------------
                           2995 ;SFRPAGE_SAVE              Allocated with name '_UART0_Init_SFRPAGE_SAVE_1_1'
                           2996 ;------------------------------------------------------------
                           2997 ;	../projectSpecificHardwareInterface_C8051F040.c:550: void UART0_Init(void)
                           2998 ;	-----------------------------------------
                           2999 ;	 function UART0_Init
                           3000 ;	-----------------------------------------
   0AFD                    3001 _UART0_Init:
                           3002 ;	../projectSpecificHardwareInterface_C8051F040.c:554: SFRPAGE_SAVE = SFRPAGE;             // Preserve SFRPAGE
   0AFD AA 84              3003 	mov	r2,_SFRPAGE
                           3004 ;	../projectSpecificHardwareInterface_C8051F040.c:556: SFRPAGE = UART0_PAGE;
   0AFF 75 84 00           3005 	mov	_SFRPAGE,#0x00
                           3006 ;	../projectSpecificHardwareInterface_C8051F040.c:558: SCON0 = 0x52;                       // 8-bit variable baud rate;
   0B02 75 98 52           3007 	mov	_SCON0,#0x52
                           3008 ;	../projectSpecificHardwareInterface_C8051F040.c:561: SSTA0 = 0x10;                       // Clear all flags; enable baud rate
   0B05 75 91 10           3009 	mov	_SSTA0,#0x10
                           3010 ;	../projectSpecificHardwareInterface_C8051F040.c:568: SFRPAGE = SFRPAGE_SAVE;
   0B08 8A 84              3011 	mov	_SFRPAGE,r2
   0B0A 22                 3012 	ret
                           3013 ;------------------------------------------------------------
                           3014 ;Allocation info for local variables in function 'UART1_Init'
                           3015 ;------------------------------------------------------------
                           3016 ;SFRPAGE_SAVE              Allocated with name '_UART1_Init_SFRPAGE_SAVE_2_2'
                           3017 ;------------------------------------------------------------
                           3018 ;	../projectSpecificHardwareInterface_C8051F040.c:589: void UART1_Init(void)
                           3019 ;	-----------------------------------------
                           3020 ;	 function UART1_Init
                           3021 ;	-----------------------------------------
   0B0B                    3022 _UART1_Init:
                           3023 ;	../projectSpecificHardwareInterface_C8051F040.c:591: portSET_REGISTER_GROUP(UART1_PAGE)
   0B0B AA 84              3024 	mov	r2,_SFRPAGE
   0B0D 75 84 01           3025 	mov	_SFRPAGE,#0x01
                           3026 ;	../projectSpecificHardwareInterface_C8051F040.c:593: SCON1 = 0x10 ;	// 8-bit variable baud rate;
   0B10 75 98 10           3027 	mov	_SCON1,#0x10
                           3028 ;	../projectSpecificHardwareInterface_C8051F040.c:599: portRESTORE_REGISTER_GROUP()
   0B13 8A 84              3029 	mov	_SFRPAGE,r2
   0B15 22                 3030 	ret
                           3031 ;------------------------------------------------------------
                           3032 ;Allocation info for local variables in function 'putchar'
                           3033 ;------------------------------------------------------------
                           3034 ;c                         Allocated with name '_putchar_c_1_1'
                           3035 ;------------------------------------------------------------
                           3036 ;	../projectSpecificHardwareInterface_C8051F040.c:603: void putchar(char c)
                           3037 ;	-----------------------------------------
                           3038 ;	 function putchar
                           3039 ;	-----------------------------------------
   0B16                    3040 _putchar:
   0B16 E5 82              3041 	mov	a,dpl
   0B18 90 08 E6           3042 	mov	dptr,#_putchar_c_1_1
   0B1B F0                 3043 	movx	@dptr,a
                           3044 ;	../projectSpecificHardwareInterface_C8051F040.c:605: if(c == '\n')
   0B1C 90 08 E6           3045 	mov	dptr,#_putchar_c_1_1
   0B1F E0                 3046 	movx	a,@dptr
   0B20 FA                 3047 	mov	r2,a
   0B21 BA 0A 0C           3048 	cjne	r2,#0x0A,00102$
                           3049 ;	../projectSpecificHardwareInterface_C8051F040.c:607: task_UART_putchar(0, '\r') ;
   0B24 90 0A 81           3050 	mov	dptr,#_task_UART_putchar_PARM_2
   0B27 74 0D              3051 	mov	a,#0x0D
   0B29 F0                 3052 	movx	@dptr,a
   0B2A 75 82 00           3053 	mov	dpl,#0x00
   0B2D 12 3E EE           3054 	lcall	_task_UART_putchar
   0B30                    3055 00102$:
                           3056 ;	../projectSpecificHardwareInterface_C8051F040.c:610: task_UART_putchar(0, c) ;
   0B30 90 08 E6           3057 	mov	dptr,#_putchar_c_1_1
   0B33 E0                 3058 	movx	a,@dptr
   0B34 90 0A 81           3059 	mov	dptr,#_task_UART_putchar_PARM_2
   0B37 F0                 3060 	movx	@dptr,a
   0B38 75 82 00           3061 	mov	dpl,#0x00
   0B3B 02 3E EE           3062 	ljmp	_task_UART_putchar
                           3063 ;------------------------------------------------------------
                           3064 ;Allocation info for local variables in function 'prvSetupSystemClock'
                           3065 ;------------------------------------------------------------
                           3066 ;n                         Allocated with name '_prvSetupSystemClock_n_1_1'
                           3067 ;------------------------------------------------------------
                           3068 ;	../projectSpecificHardwareInterface_C8051F040.c:632: static void prvSetupSystemClock( void )
                           3069 ;	-----------------------------------------
                           3070 ;	 function prvSetupSystemClock
                           3071 ;	-----------------------------------------
   0B3E                    3072 _prvSetupSystemClock:
                           3073 ;	../projectSpecificHardwareInterface_C8051F040.c:635: SFRPAGE = CONFIG_PAGE ;			// switch to config page to config oscillator
   0B3E 75 84 0F           3074 	mov	_SFRPAGE,#0x0F
                           3075 ;	../projectSpecificHardwareInterface_C8051F040.c:637: OSCXCN = 0x77 ;					// start external oscillator; 24 MHz Crystal
   0B41 75 8C 77           3076 	mov	_OSCXCN,#0x77
                           3077 ;	../projectSpecificHardwareInterface_C8051F040.c:641: for( n = 0 ; n < 255 ; n++ ) ;	// delay about 1ms
   0B44 7A FF              3078 	mov	r2,#0xFF
   0B46 7B 00              3079 	mov	r3,#0x00
   0B48                    3080 00106$:
   0B48 1A                 3081 	dec	r2
   0B49 BA FF 01           3082 	cjne	r2,#0xff,00114$
   0B4C 1B                 3083 	dec	r3
   0B4D                    3084 00114$:
   0B4D EA                 3085 	mov	a,r2
   0B4E 4B                 3086 	orl	a,r3
   0B4F 70 F7              3087 	jnz	00106$
                           3088 ;	../projectSpecificHardwareInterface_C8051F040.c:642: while((OSCXCN & 0x80) == 0) ;	// wait for oscillator to stabilize
   0B51                    3089 00101$:
   0B51 E5 8C              3090 	mov	a,_OSCXCN
   0B53 30 E7 FB           3091 	jnb	acc.7,00101$
                           3092 ;	../projectSpecificHardwareInterface_C8051F040.c:644: CLKSEL |= 0x01 ;				// switch to external oscillator
   0B56 43 97 01           3093 	orl	_CLKSEL,#0x01
                           3094 ;	../projectSpecificHardwareInterface_C8051F040.c:646: OSCICN = 0xC2 ;					// Turn off the internal oscillator to save a little power
   0B59 75 8A C2           3095 	mov	_OSCICN,#0xC2
   0B5C 22                 3096 	ret
                           3097 ;------------------------------------------------------------
                           3098 ;Allocation info for local variables in function 'prvSetupTimerInterrupt'
                           3099 ;------------------------------------------------------------
                           3100 ;ucOriginalSFRPage         Allocated with name '_prvSetupTimerInterrupt_ucOriginalSFRPage_1_1'
                           3101 ;ulTicksPerSecond          Allocated with name '_prvSetupTimerInterrupt_ulTicksPerSecond_1_1'
                           3102 ;ulCaptureTime             Allocated with name '_prvSetupTimerInterrupt_ulCaptureTime_1_1'
                           3103 ;ulCaptureValue            Allocated with name '_prvSetupTimerInterrupt_ulCaptureValue_1_1'
                           3104 ;ucLowCaptureByte          Allocated with name '_prvSetupTimerInterrupt_ucLowCaptureByte_1_1'
                           3105 ;ucHighCaptureByte         Allocated with name '_prvSetupTimerInterrupt_ucHighCaptureByte_1_1'
                           3106 ;------------------------------------------------------------
                           3107 ;	../projectSpecificHardwareInterface_C8051F040.c:650: static void prvSetupTimerInterrupt( void )
                           3108 ;	-----------------------------------------
                           3109 ;	 function prvSetupTimerInterrupt
                           3110 ;	-----------------------------------------
   0B5D                    3111 _prvSetupTimerInterrupt:
                           3112 ;	../projectSpecificHardwareInterface_C8051F040.c:664: ucOriginalSFRPage = SFRPAGE;
   0B5D 90 08 E7           3113 	mov	dptr,#_prvSetupTimerInterrupt_ucOriginalSFRPage_1_1
   0B60 E5 84              3114 	mov	a,_SFRPAGE
   0B62 F0                 3115 	movx	@dptr,a
                           3116 ;	../projectSpecificHardwareInterface_C8051F040.c:665: SFRPAGE = 0;
   0B63 75 84 00           3117 	mov	_SFRPAGE,#0x00
                           3118 ;	../projectSpecificHardwareInterface_C8051F040.c:668: TMR2CF = ( unsigned char ) 0;
   0B66 75 C9 00           3119 	mov	_TMR2CF,#0x00
                           3120 ;	../projectSpecificHardwareInterface_C8051F040.c:671: RCAP2L = ucLowCaptureByte;
   0B69 75 CA D1           3121 	mov	_RCAP2L,#0xD1
                           3122 ;	../projectSpecificHardwareInterface_C8051F040.c:672: RCAP2H = ucHighCaptureByte;
   0B6C 75 CB FF           3123 	mov	_RCAP2H,#0xFF
                           3124 ;	../projectSpecificHardwareInterface_C8051F040.c:675: TMR2L = ucLowCaptureByte;
   0B6F 75 CC D1           3125 	mov	_TMR2L,#0xD1
                           3126 ;	../projectSpecificHardwareInterface_C8051F040.c:676: TMR2H = ucHighCaptureByte;
   0B72 75 CD FF           3127 	mov	_TMR2H,#0xFF
                           3128 ;	../projectSpecificHardwareInterface_C8051F040.c:679: IE |= portTIMER_2_INTERRUPT_ENABLE;
   0B75 43 A8 20           3129 	orl	_IE,#0x20
                           3130 ;	../projectSpecificHardwareInterface_C8051F040.c:682: TMR2CN = portENABLE_TIMER ;
   0B78 75 C8 06           3131 	mov	_TMR2CN,#0x06
                           3132 ;	../projectSpecificHardwareInterface_C8051F040.c:685: SFRPAGE	= 1 ;
   0B7B 75 84 01           3133 	mov	_SFRPAGE,#0x01
                           3134 ;	../projectSpecificHardwareInterface_C8051F040.c:686: TMR3CF	= 0x0A ;
   0B7E 75 C9 0A           3135 	mov	_TMR3CF,#0x0A
                           3136 ;	../projectSpecificHardwareInterface_C8051F040.c:688: RCAP3L	= 0xCE ;	// 120kHz on boost boards
   0B81 75 CA CE           3137 	mov	_RCAP3L,#0xCE
                           3138 ;	../projectSpecificHardwareInterface_C8051F040.c:689: RCAP3H	= 0xFF ;	// 120kHz on boost boards
   0B84 75 CB FF           3139 	mov	_RCAP3H,#0xFF
                           3140 ;	../projectSpecificHardwareInterface_C8051F040.c:691: TMR3L	= 0xF0 ;
   0B87 75 CC F0           3141 	mov	_TMR3L,#0xF0
                           3142 ;	../projectSpecificHardwareInterface_C8051F040.c:692: TMR3H	= 0xFF ;
   0B8A 75 CD FF           3143 	mov	_TMR3H,#0xFF
                           3144 ;	../projectSpecificHardwareInterface_C8051F040.c:693: TMR3CN	= 0x04 ;
   0B8D 75 C8 04           3145 	mov	_TMR3CN,#0x04
                           3146 ;	../projectSpecificHardwareInterface_C8051F040.c:697: SFRPAGE = ucOriginalSFRPage;
   0B90 90 08 E7           3147 	mov	dptr,#_prvSetupTimerInterrupt_ucOriginalSFRPage_1_1
   0B93 E0                 3148 	movx	a,@dptr
   0B94 F5 84              3149 	mov	_SFRPAGE,a
   0B96 22                 3150 	ret
                           3151 ;------------------------------------------------------------
                           3152 ;Allocation info for local variables in function 'addTickCounter'
                           3153 ;------------------------------------------------------------
                           3154 ;pointerToIncrement        Allocated with name '_addTickCounter_pointerToIncrement_1_1'
                           3155 ;i                         Allocated with name '_addTickCounter_i_1_1'
                           3156 ;sloc0                     Allocated with name '_addTickCounter_sloc0_1_0'
                           3157 ;------------------------------------------------------------
                           3158 ;	../projectSpecificHardwareInterface_C8051F040.c:705: void addTickCounter(							unsigned short* pointerToIncrement)
                           3159 ;	-----------------------------------------
                           3160 ;	 function addTickCounter
                           3161 ;	-----------------------------------------
   0B97                    3162 _addTickCounter:
   0B97 AA F0              3163 	mov	r2,b
   0B99 AB 83              3164 	mov	r3,dph
   0B9B E5 82              3165 	mov	a,dpl
   0B9D 90 09 06           3166 	mov	dptr,#_addTickCounter_pointerToIncrement_1_1
   0BA0 F0                 3167 	movx	@dptr,a
   0BA1 A3                 3168 	inc	dptr
   0BA2 EB                 3169 	mov	a,r3
   0BA3 F0                 3170 	movx	@dptr,a
   0BA4 A3                 3171 	inc	dptr
   0BA5 EA                 3172 	mov	a,r2
   0BA6 F0                 3173 	movx	@dptr,a
                           3174 ;	../projectSpecificHardwareInterface_C8051F040.c:709: for( i = 0 ; i < configNUMBER_OF_TICK_COUNTERS ; i++ )
   0BA7 7A 00              3175 	mov	r2,#0x00
   0BA9                    3176 00105$:
   0BA9 BA 0A 00           3177 	cjne	r2,#0x0A,00115$
   0BAC                    3178 00115$:
   0BAC 50 4B              3179 	jnc	00109$
                           3180 ;	../projectSpecificHardwareInterface_C8051F040.c:713: if(tickCounterToIncrement[i] == pointerToIncrement)
   0BAE EA                 3181 	mov	a,r2
   0BAF 75 F0 03           3182 	mov	b,#0x03
   0BB2 A4                 3183 	mul	ab
   0BB3 24 E8              3184 	add	a,#_tickCounterToIncrement
   0BB5 FB                 3185 	mov	r3,a
   0BB6 E4                 3186 	clr	a
   0BB7 34 08              3187 	addc	a,#(_tickCounterToIncrement >> 8)
   0BB9 FC                 3188 	mov	r4,a
   0BBA 8B 82              3189 	mov	dpl,r3
   0BBC 8C 83              3190 	mov	dph,r4
   0BBE E0                 3191 	movx	a,@dptr
   0BBF FD                 3192 	mov	r5,a
   0BC0 A3                 3193 	inc	dptr
   0BC1 E0                 3194 	movx	a,@dptr
   0BC2 FE                 3195 	mov	r6,a
   0BC3 A3                 3196 	inc	dptr
   0BC4 E0                 3197 	movx	a,@dptr
   0BC5 FF                 3198 	mov	r7,a
   0BC6 90 09 06           3199 	mov	dptr,#_addTickCounter_pointerToIncrement_1_1
   0BC9 E0                 3200 	movx	a,@dptr
   0BCA F5 60              3201 	mov	_addTickCounter_sloc0_1_0,a
   0BCC A3                 3202 	inc	dptr
   0BCD E0                 3203 	movx	a,@dptr
   0BCE F5 61              3204 	mov	(_addTickCounter_sloc0_1_0 + 1),a
   0BD0 A3                 3205 	inc	dptr
   0BD1 E0                 3206 	movx	a,@dptr
   0BD2 F5 62              3207 	mov	(_addTickCounter_sloc0_1_0 + 2),a
   0BD4 ED                 3208 	mov	a,r5
   0BD5 B5 60 09           3209 	cjne	a,_addTickCounter_sloc0_1_0,00117$
   0BD8 EE                 3210 	mov	a,r6
   0BD9 B5 61 05           3211 	cjne	a,(_addTickCounter_sloc0_1_0 + 1),00117$
   0BDC EF                 3212 	mov	a,r7
   0BDD B5 62 01           3213 	cjne	a,(_addTickCounter_sloc0_1_0 + 2),00117$
   0BE0 22                 3214 	ret
   0BE1                    3215 00117$:
                           3216 ;	../projectSpecificHardwareInterface_C8051F040.c:718: if(tickCounterToIncrement[i] == 0)
   0BE1 ED                 3217 	mov	a,r5
   0BE2 4E                 3218 	orl	a,r6
   0BE3 4F                 3219 	orl	a,r7
   0BE4 70 10              3220 	jnz	00107$
                           3221 ;	../projectSpecificHardwareInterface_C8051F040.c:720: tickCounterToIncrement[i] = pointerToIncrement ;
   0BE6 8B 82              3222 	mov	dpl,r3
   0BE8 8C 83              3223 	mov	dph,r4
   0BEA E5 60              3224 	mov	a,_addTickCounter_sloc0_1_0
   0BEC F0                 3225 	movx	@dptr,a
   0BED A3                 3226 	inc	dptr
   0BEE E5 61              3227 	mov	a,(_addTickCounter_sloc0_1_0 + 1)
   0BF0 F0                 3228 	movx	@dptr,a
   0BF1 A3                 3229 	inc	dptr
   0BF2 E5 62              3230 	mov	a,(_addTickCounter_sloc0_1_0 + 2)
   0BF4 F0                 3231 	movx	@dptr,a
                           3232 ;	../projectSpecificHardwareInterface_C8051F040.c:722: break ;
   0BF5 22                 3233 	ret
   0BF6                    3234 00107$:
                           3235 ;	../projectSpecificHardwareInterface_C8051F040.c:709: for( i = 0 ; i < configNUMBER_OF_TICK_COUNTERS ; i++ )
   0BF6 0A                 3236 	inc	r2
   0BF7 80 B0              3237 	sjmp	00105$
   0BF9                    3238 00109$:
   0BF9 22                 3239 	ret
                           3240 ;------------------------------------------------------------
                           3241 ;Allocation info for local variables in function 'vTimer2ISR'
                           3242 ;------------------------------------------------------------
                           3243 ;i                         Allocated with name '_vTimer2ISR_i_1_1'
                           3244 ;------------------------------------------------------------
                           3245 ;	../projectSpecificHardwareInterface_C8051F040.c:731: void vTimer2ISR( void ) interrupt 5
                           3246 ;	-----------------------------------------
                           3247 ;	 function vTimer2ISR
                           3248 ;	-----------------------------------------
   0BFA                    3249 _vTimer2ISR:
   0BFA C0 23              3250 	push	bits
   0BFC C0 E0              3251 	push	acc
   0BFE C0 F0              3252 	push	b
   0C00 C0 82              3253 	push	dpl
   0C02 C0 83              3254 	push	dph
   0C04 C0 02              3255 	push	(0+2)
   0C06 C0 03              3256 	push	(0+3)
   0C08 C0 04              3257 	push	(0+4)
   0C0A C0 05              3258 	push	(0+5)
   0C0C C0 06              3259 	push	(0+6)
   0C0E C0 07              3260 	push	(0+7)
   0C10 C0 00              3261 	push	(0+0)
   0C12 C0 01              3262 	push	(0+1)
   0C14 C0 D0              3263 	push	psw
   0C16 75 D0 00           3264 	mov	psw,#0x00
                           3265 ;	../projectSpecificHardwareInterface_C8051F040.c:735: for( i = 0 ; i < configNUMBER_OF_TICK_COUNTERS ; i++ )
   0C19 7A 00              3266 	mov	r2,#0x00
   0C1B                    3267 00103$:
   0C1B BA 0A 00           3268 	cjne	r2,#0x0A,00113$
   0C1E                    3269 00113$:
   0C1E 50 41              3270 	jnc	00106$
                           3271 ;	../projectSpecificHardwareInterface_C8051F040.c:737: if(tickCounterToIncrement[i])
   0C20 EA                 3272 	mov	a,r2
   0C21 75 F0 03           3273 	mov	b,#0x03
   0C24 A4                 3274 	mul	ab
   0C25 24 E8              3275 	add	a,#_tickCounterToIncrement
   0C27 F5 82              3276 	mov	dpl,a
   0C29 E4                 3277 	clr	a
   0C2A 34 08              3278 	addc	a,#(_tickCounterToIncrement >> 8)
   0C2C F5 83              3279 	mov	dph,a
   0C2E E0                 3280 	movx	a,@dptr
   0C2F FB                 3281 	mov	r3,a
   0C30 A3                 3282 	inc	dptr
   0C31 E0                 3283 	movx	a,@dptr
   0C32 FC                 3284 	mov	r4,a
   0C33 A3                 3285 	inc	dptr
   0C34 E0                 3286 	movx	a,@dptr
   0C35 FD                 3287 	mov	r5,a
   0C36 EB                 3288 	mov	a,r3
   0C37 4C                 3289 	orl	a,r4
   0C38 4D                 3290 	orl	a,r5
   0C39 60 23              3291 	jz	00105$
                           3292 ;	../projectSpecificHardwareInterface_C8051F040.c:739: *tickCounterToIncrement[i] += 1 ;
   0C3B 8B 82              3293 	mov	dpl,r3
   0C3D 8C 83              3294 	mov	dph,r4
   0C3F 8D F0              3295 	mov	b,r5
   0C41 12 4D 3C           3296 	lcall	__gptrget
   0C44 FE                 3297 	mov	r6,a
   0C45 A3                 3298 	inc	dptr
   0C46 12 4D 3C           3299 	lcall	__gptrget
   0C49 FF                 3300 	mov	r7,a
   0C4A 0E                 3301 	inc	r6
   0C4B BE 00 01           3302 	cjne	r6,#0x00,00116$
   0C4E 0F                 3303 	inc	r7
   0C4F                    3304 00116$:
   0C4F 8B 82              3305 	mov	dpl,r3
   0C51 8C 83              3306 	mov	dph,r4
   0C53 8D F0              3307 	mov	b,r5
   0C55 EE                 3308 	mov	a,r6
   0C56 12 41 10           3309 	lcall	__gptrput
   0C59 A3                 3310 	inc	dptr
   0C5A EF                 3311 	mov	a,r7
   0C5B 12 41 10           3312 	lcall	__gptrput
   0C5E                    3313 00105$:
                           3314 ;	../projectSpecificHardwareInterface_C8051F040.c:735: for( i = 0 ; i < configNUMBER_OF_TICK_COUNTERS ; i++ )
   0C5E 0A                 3315 	inc	r2
   0C5F 80 BA              3316 	sjmp	00103$
   0C61                    3317 00106$:
                           3318 ;	../projectSpecificHardwareInterface_C8051F040.c:743: taskSwitcherTickHook() ;
   0C61 12 02 3D           3319 	lcall	_taskSwitcherTickHook
                           3320 ;	../projectSpecificHardwareInterface_C8051F040.c:745: portCLEAR_INTERRUPT_FLAG() ;
   0C64 53 C8 7F           3321 	anl	_TMR2CN,#0x7F
   0C67 D0 D0              3322 	pop	psw
   0C69 D0 01              3323 	pop	(0+1)
   0C6B D0 00              3324 	pop	(0+0)
   0C6D D0 07              3325 	pop	(0+7)
   0C6F D0 06              3326 	pop	(0+6)
   0C71 D0 05              3327 	pop	(0+5)
   0C73 D0 04              3328 	pop	(0+4)
   0C75 D0 03              3329 	pop	(0+3)
   0C77 D0 02              3330 	pop	(0+2)
   0C79 D0 83              3331 	pop	dph
   0C7B D0 82              3332 	pop	dpl
   0C7D D0 F0              3333 	pop	b
   0C7F D0 E0              3334 	pop	acc
   0C81 D0 23              3335 	pop	bits
   0C83 32                 3336 	reti
                           3337 	.area CSEG    (CODE)
                           3338 	.area CONST   (CODE)
   4D5C                    3339 __str_0:
   4D5C 34 74 68 20 47 65  3340 	.ascii "4th Generation state machine test started."
        6E 65 72 61 74 69
        6F 6E 20 73 74 61
        74 65 20 6D 61 63
        68 69 6E 65 20 74
        65 73 74 20 73 74
        61 72 74 65 64 2E
   4D86 00                 3341 	.db 0x00
   4D87                    3342 __str_1:
   4D87 47 65 6E 65 72 61  3343 	.ascii "Generating timebomb"
        74 69 6E 67 20 74
        69 6D 65 62 6F 6D
        62
   4D9A 00                 3344 	.db 0x00
   4D9B                    3345 __str_2:
   4D9B 47 65 6E 65 72 61  3346 	.ascii "Generating calculator"
        74 69 6E 67 20 63
        61 6C 63 75 6C 61
        74 6F 72
   4DB0 00                 3347 	.db 0x00
   4DB1                    3348 __str_3:
   4DB1 52 65 67 69 73 74  3349 	.ascii "Registering calculator"
        65 72 69 6E 67 20
        63 61 6C 63 75 6C
        61 74 6F 72
   4DC7 00                 3350 	.db 0x00
   4DC8                    3351 __str_4:
   4DC8 49 74 65 72 61 74  3352 	.ascii "Iterating state machines"
        69 6E 67 20 73 74
        61 74 65 20 6D 61
        63 68 69 6E 65 73
   4DE0 00                 3353 	.db 0x00
   4DE1                    3354 __str_5:
   4DE1 6C 6F 6F 70        3355 	.ascii "loop"
   4DE5 00                 3356 	.db 0x00
   4DE6                    3357 __str_6:
   4DE6 0A                 3358 	.db 0x0A
   4DE7 34 74 68 20 47 65  3359 	.ascii "4th Generation state machine test done."
        6E 65 72 61 74 69
        6F 6E 20 73 74 61
        74 65 20 6D 61 63
        68 69 6E 65 20 74
        65 73 74 20 64 6F
        6E 65 2E
   4E0E 00                 3360 	.db 0x00
                           3361 	.area XINIT   (CODE)
   5499                    3362 __xinit__countdown:
   5499 05 00              3363 	.byte #0x05,#0x00
                           3364 	.area CABS    (ABS,CODE)
