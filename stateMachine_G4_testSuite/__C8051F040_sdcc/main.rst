                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 2.9.0 #5416 (Mar 22 2009) (MINGW32)
                              4 ; This file was generated Wed Dec 30 22:15:30 2009
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
   0022                     796 bits:
   0022                     797 	.ds 1
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
   0057                     832 _addTickCounter_sloc0_1_0::
   0057                     833 	.ds 3
                            834 ;--------------------------------------------------------
                            835 ; Stack segment in internal ram 
                            836 ;--------------------------------------------------------
                            837 	.area	SSEG	(DATA)
   005A                     838 __start__stack:
   005A                     839 	.ds	1
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
   0ED7                     948 _countdown:
   0ED7                     949 	.ds 2
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
   002B 02 0C 42            976 	ljmp	_vTimer2ISR
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
                            997 ;	../main.c:89: static int iterationMax = 10 ;
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
                           1035 ;	../main.c:78: void main(	void)
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
                           1048 ;	../main.c:86: bool			ok = true ;
   009A D2 01              1049 	setb	_main_ok_1_1
                           1050 ;	../main.c:91: puts("4th Generation state machine test started.") ;
   009C 90 44 57           1051 	mov	dptr,#__str_0
   009F 75 F0 80           1052 	mov	b,#0x80
   00A2 12 3B 23           1053 	lcall	_puts
                           1054 ;	../main.c:104: WDTCN = 0xDE ;	// Disable the watchdog timer
   00A5 75 FF DE           1055 	mov	_WDTCN,#0xDE
                           1056 ;	../main.c:105: WDTCN = 0xAD ;
   00A8 75 FF AD           1057 	mov	_WDTCN,#0xAD
                           1058 ;	../main.c:106: WDTCN = 0xFF ;	// Disable any future ability to modify the watchdog timer
   00AB 75 FF FF           1059 	mov	_WDTCN,#0xFF
                           1060 ;	../main.c:108: prvSetupSystemClock() ;
   00AE 12 0B 86           1061 	lcall	_prvSetupSystemClock
                           1062 ;	../main.c:109: gpio_init() ;
   00B1 12 02 88           1063 	lcall	_gpio_init_projectSpecific
                           1064 ;	../main.c:110: pwm_init(ioMapping_PWM_TO_TICK_SYNCHRONIZER_CHANNEL) ;
   00B4 75 82 00           1065 	mov	dpl,#0x00
   00B7 12 35 38           1066 	lcall	_pwm_init
                           1067 ;	../main.c:111: prvSetupTimerInterrupt() ;
   00BA 12 0B A5           1068 	lcall	_prvSetupTimerInterrupt
                           1069 ;	../main.c:112: task_UART_init(0) ;
   00BD 75 82 00           1070 	mov	dpl,#0x00
   00C0 12 35 CB           1071 	lcall	_task_UART_init
                           1072 ;	../main.c:114: portENABLE_INTERRUPTS() ;
   00C3 D2 AF              1073 	setb	_EA
                           1074 ;	../main.c:117: puts("Generating timebomb") ;
   00C5 90 44 82           1075 	mov	dptr,#__str_1
   00C8 75 F0 80           1076 	mov	b,#0x80
   00CB 12 3B 23           1077 	lcall	_puts
                           1078 ;	../main.c:119: bomb = STATE_MACHINE_CREATE_INSTANCE_OF(timeBomb) ;
   00CE 12 18 A4           1079 	lcall	_timeBomb_getMachineSize
   00D1 AA 82              1080 	mov	r2,dpl
   00D3 AB 83              1081 	mov	r3,dph
   00D5 C0 02              1082 	push	ar2
   00D7 C0 03              1083 	push	ar3
   00D9 12 17 E7           1084 	lcall	_timeBomb_getEventQueueDepth
   00DC AC 82              1085 	mov	r4,dpl
   00DE AD 83              1086 	mov	r5,dph
   00E0 D0 03              1087 	pop	ar3
   00E2 D0 02              1088 	pop	ar2
   00E4 90 09 DE           1089 	mov	dptr,#_allocateStateMachineMemory_PARM_2
   00E7 EC                 1090 	mov	a,r4
   00E8 F0                 1091 	movx	@dptr,a
   00E9 A3                 1092 	inc	dptr
   00EA ED                 1093 	mov	a,r5
   00EB F0                 1094 	movx	@dptr,a
   00EC 90 09 E0           1095 	mov	dptr,#_allocateStateMachineMemory_PARM_3
   00EF 74 EB              1096 	mov	a,#_timeBomb_constructor
   00F1 F0                 1097 	movx	@dptr,a
   00F2 A3                 1098 	inc	dptr
   00F3 74 17              1099 	mov	a,#(_timeBomb_constructor >> 8)
   00F5 F0                 1100 	movx	@dptr,a
   00F6 8A 82              1101 	mov	dpl,r2
   00F8 8B 83              1102 	mov	dph,r3
   00FA 12 24 2E           1103 	lcall	_allocateStateMachineMemory
   00FD AA 82              1104 	mov	r2,dpl
   00FF AB 83              1105 	mov	r3,dph
   0101 AC F0              1106 	mov	r4,b
                           1107 ;	../main.c:121: if(bomb)
   0103 EA                 1108 	mov	a,r2
   0104 4B                 1109 	orl	a,r3
   0105 4C                 1110 	orl	a,r4
   0106 60 15              1111 	jz	00102$
                           1112 ;	../main.c:123: REGISTER_STATE_MACHINE(bomb) ;
   0108 8A 82              1113 	mov	dpl,r2
   010A 8B 83              1114 	mov	dph,r3
   010C 8C F0              1115 	mov	b,r4
   010E C0 02              1116 	push	ar2
   0110 C0 03              1117 	push	ar3
   0112 C0 04              1118 	push	ar4
   0114 12 25 C0           1119 	lcall	_registerStateMachine
   0117 D0 04              1120 	pop	ar4
   0119 D0 03              1121 	pop	ar3
   011B D0 02              1122 	pop	ar2
   011D                    1123 00102$:
                           1124 ;	../main.c:126: puts("Generating calculator") ;
   011D 90 44 96           1125 	mov	dptr,#__str_2
   0120 75 F0 80           1126 	mov	b,#0x80
   0123 C0 02              1127 	push	ar2
   0125 C0 03              1128 	push	ar3
   0127 C0 04              1129 	push	ar4
   0129 12 3B 23           1130 	lcall	_puts
                           1131 ;	../main.c:128: calculator = STATE_MACHINE_CREATE_INSTANCE_OF(calculator) ;
   012C 12 0D 89           1132 	lcall	_calculator_getMachineSize
   012F AD 82              1133 	mov	r5,dpl
   0131 AE 83              1134 	mov	r6,dph
   0133 C0 05              1135 	push	ar5
   0135 C0 06              1136 	push	ar6
   0137 12 0C CC           1137 	lcall	_calculator_getEventQueueDepth
   013A AF 82              1138 	mov	r7,dpl
   013C A8 83              1139 	mov	r0,dph
   013E D0 06              1140 	pop	ar6
   0140 D0 05              1141 	pop	ar5
   0142 90 09 DE           1142 	mov	dptr,#_allocateStateMachineMemory_PARM_2
   0145 EF                 1143 	mov	a,r7
   0146 F0                 1144 	movx	@dptr,a
   0147 A3                 1145 	inc	dptr
   0148 E8                 1146 	mov	a,r0
   0149 F0                 1147 	movx	@dptr,a
   014A 90 09 E0           1148 	mov	dptr,#_allocateStateMachineMemory_PARM_3
   014D 74 D0              1149 	mov	a,#_calculator_constructor
   014F F0                 1150 	movx	@dptr,a
   0150 A3                 1151 	inc	dptr
   0151 74 0C              1152 	mov	a,#(_calculator_constructor >> 8)
   0153 F0                 1153 	movx	@dptr,a
   0154 8D 82              1154 	mov	dpl,r5
   0156 8E 83              1155 	mov	dph,r6
   0158 12 24 2E           1156 	lcall	_allocateStateMachineMemory
   015B AD 82              1157 	mov	r5,dpl
   015D AE 83              1158 	mov	r6,dph
   015F AF F0              1159 	mov	r7,b
   0161 D0 04              1160 	pop	ar4
   0163 D0 03              1161 	pop	ar3
   0165 D0 02              1162 	pop	ar2
                           1163 ;	../main.c:130: if(calculator)
   0167 ED                 1164 	mov	a,r5
   0168 4E                 1165 	orl	a,r6
   0169 4F                 1166 	orl	a,r7
   016A 60 36              1167 	jz	00104$
                           1168 ;	../main.c:132: puts("Registering calculator") ;
   016C 90 44 AC           1169 	mov	dptr,#__str_3
   016F 75 F0 80           1170 	mov	b,#0x80
   0172 C0 02              1171 	push	ar2
   0174 C0 03              1172 	push	ar3
   0176 C0 04              1173 	push	ar4
   0178 C0 05              1174 	push	ar5
   017A C0 06              1175 	push	ar6
   017C C0 07              1176 	push	ar7
   017E 12 3B 23           1177 	lcall	_puts
   0181 D0 07              1178 	pop	ar7
   0183 D0 06              1179 	pop	ar6
   0185 D0 05              1180 	pop	ar5
                           1181 ;	../main.c:134: REGISTER_STATE_MACHINE(calculator) ;
   0187 8D 82              1182 	mov	dpl,r5
   0189 8E 83              1183 	mov	dph,r6
   018B 8F F0              1184 	mov	b,r7
   018D C0 05              1185 	push	ar5
   018F C0 06              1186 	push	ar6
   0191 C0 07              1187 	push	ar7
   0193 12 25 C0           1188 	lcall	_registerStateMachine
   0196 D0 07              1189 	pop	ar7
   0198 D0 06              1190 	pop	ar6
   019A D0 05              1191 	pop	ar5
   019C D0 04              1192 	pop	ar4
   019E D0 03              1193 	pop	ar3
   01A0 D0 02              1194 	pop	ar2
   01A2                    1195 00104$:
                           1196 ;	../main.c:137: puts("Iterating state machines") ;
   01A2 90 44 C3           1197 	mov	dptr,#__str_4
   01A5 75 F0 80           1198 	mov	b,#0x80
   01A8 C0 02              1199 	push	ar2
   01AA C0 03              1200 	push	ar3
   01AC C0 04              1201 	push	ar4
   01AE C0 05              1202 	push	ar5
   01B0 C0 06              1203 	push	ar6
   01B2 C0 07              1204 	push	ar7
   01B4 12 3B 23           1205 	lcall	_puts
   01B7 D0 07              1206 	pop	ar7
   01B9 D0 06              1207 	pop	ar6
   01BB D0 05              1208 	pop	ar5
   01BD D0 04              1209 	pop	ar4
   01BF D0 03              1210 	pop	ar3
   01C1 D0 02              1211 	pop	ar2
                           1212 ;	../main.c:139: while(ok)
   01C3                    1213 00107$:
   01C3 30 01 50           1214 	jnb	_main_ok_1_1,00109$
                           1215 ;	../main.c:141: if(iterationMax-- == 0)
   01C6 C0 05              1216 	push	ar5
   01C8 C0 06              1217 	push	ar6
   01CA C0 07              1218 	push	ar7
   01CC 90 00 00           1219 	mov	dptr,#_main_iterationMax_1_1
   01CF E0                 1220 	movx	a,@dptr
   01D0 F8                 1221 	mov	r0,a
   01D1 A3                 1222 	inc	dptr
   01D2 E0                 1223 	movx	a,@dptr
   01D3 F9                 1224 	mov	r1,a
   01D4 E8                 1225 	mov	a,r0
   01D5 24 FF              1226 	add	a,#0xff
   01D7 FD                 1227 	mov	r5,a
   01D8 E9                 1228 	mov	a,r1
   01D9 34 FF              1229 	addc	a,#0xff
   01DB FE                 1230 	mov	r6,a
   01DC 90 00 00           1231 	mov	dptr,#_main_iterationMax_1_1
   01DF ED                 1232 	mov	a,r5
   01E0 F0                 1233 	movx	@dptr,a
   01E1 A3                 1234 	inc	dptr
   01E2 EE                 1235 	mov	a,r6
   01E3 F0                 1236 	movx	@dptr,a
   01E4 D0 07              1237 	pop	ar7
   01E6 D0 06              1238 	pop	ar6
   01E8 D0 05              1239 	pop	ar5
   01EA E8                 1240 	mov	a,r0
   01EB 49                 1241 	orl	a,r1
   01EC 70 02              1242 	jnz	00106$
                           1243 ;	../main.c:143: ok = false ;
   01EE C2 01              1244 	clr	_main_ok_1_1
   01F0                    1245 00106$:
                           1246 ;	../main.c:146: puts("loop") ;
   01F0 90 44 DC           1247 	mov	dptr,#__str_5
   01F3 75 F0 80           1248 	mov	b,#0x80
   01F6 C0 02              1249 	push	ar2
   01F8 C0 03              1250 	push	ar3
   01FA C0 04              1251 	push	ar4
   01FC C0 05              1252 	push	ar5
   01FE C0 06              1253 	push	ar6
   0200 C0 07              1254 	push	ar7
   0202 12 3B 23           1255 	lcall	_puts
                           1256 ;	../main.c:148: ITERATE_ALL_STATE_MACHINES() ;
   0205 12 26 8C           1257 	lcall	_iterateAllStateMachines
   0208 D0 07              1258 	pop	ar7
   020A D0 06              1259 	pop	ar6
   020C D0 05              1260 	pop	ar5
   020E D0 04              1261 	pop	ar4
   0210 D0 03              1262 	pop	ar3
   0212 D0 02              1263 	pop	ar2
   0214 80 AD              1264 	sjmp	00107$
   0216                    1265 00109$:
                           1266 ;	../main.c:155: if(calculator)
   0216 ED                 1267 	mov	a,r5
   0217 4E                 1268 	orl	a,r6
   0218 4F                 1269 	orl	a,r7
   0219 60 34              1270 	jz	00111$
                           1271 ;	../main.c:157: UNREGISTER_STATE_MACHINE(calculator) ;
   021B 8D 82              1272 	mov	dpl,r5
   021D 8E 83              1273 	mov	dph,r6
   021F 8F F0              1274 	mov	b,r7
   0221 C0 02              1275 	push	ar2
   0223 C0 03              1276 	push	ar3
   0225 C0 04              1277 	push	ar4
   0227 C0 05              1278 	push	ar5
   0229 C0 06              1279 	push	ar6
   022B C0 07              1280 	push	ar7
   022D 12 26 26           1281 	lcall	_unregisterStateMachine
   0230 D0 07              1282 	pop	ar7
   0232 D0 06              1283 	pop	ar6
   0234 D0 05              1284 	pop	ar5
                           1285 ;	../main.c:159: STATE_MACHINE_DESTROY_INSTANCE_OF(calculator, calculator) ;
   0236 90 09 E4           1286 	mov	dptr,#_deallocateStateMachineMemory_PARM_2
   0239 74 65              1287 	mov	a,#_calculator_destructor
   023B F0                 1288 	movx	@dptr,a
   023C A3                 1289 	inc	dptr
   023D 74 0D              1290 	mov	a,#(_calculator_destructor >> 8)
   023F F0                 1291 	movx	@dptr,a
   0240 8D 82              1292 	mov	dpl,r5
   0242 8E 83              1293 	mov	dph,r6
   0244 8F F0              1294 	mov	b,r7
   0246 12 25 72           1295 	lcall	_deallocateStateMachineMemory
   0249 D0 04              1296 	pop	ar4
   024B D0 03              1297 	pop	ar3
   024D D0 02              1298 	pop	ar2
                           1299 ;	../main.c:161: calculator = 0 ;
   024F                    1300 00111$:
                           1301 ;	../main.c:164: if(bomb)
   024F EA                 1302 	mov	a,r2
   0250 4B                 1303 	orl	a,r3
   0251 4C                 1304 	orl	a,r4
   0252 60 28              1305 	jz	00113$
                           1306 ;	../main.c:166: UNREGISTER_STATE_MACHINE(bomb) ;
   0254 8A 82              1307 	mov	dpl,r2
   0256 8B 83              1308 	mov	dph,r3
   0258 8C F0              1309 	mov	b,r4
   025A C0 02              1310 	push	ar2
   025C C0 03              1311 	push	ar3
   025E C0 04              1312 	push	ar4
   0260 12 26 26           1313 	lcall	_unregisterStateMachine
   0263 D0 04              1314 	pop	ar4
   0265 D0 03              1315 	pop	ar3
   0267 D0 02              1316 	pop	ar2
                           1317 ;	../main.c:168: STATE_MACHINE_DESTROY_INSTANCE_OF(timeBomb, bomb) ;
   0269 90 09 E4           1318 	mov	dptr,#_deallocateStateMachineMemory_PARM_2
   026C 74 80              1319 	mov	a,#_timeBomb_destructor
   026E F0                 1320 	movx	@dptr,a
   026F A3                 1321 	inc	dptr
   0270 74 18              1322 	mov	a,#(_timeBomb_destructor >> 8)
   0272 F0                 1323 	movx	@dptr,a
   0273 8A 82              1324 	mov	dpl,r2
   0275 8B 83              1325 	mov	dph,r3
   0277 8C F0              1326 	mov	b,r4
   0279 12 25 72           1327 	lcall	_deallocateStateMachineMemory
                           1328 ;	../main.c:170: bomb = 0 ;
   027C                    1329 00113$:
                           1330 ;	../main.c:173: puts("\n4th Generation state machine test done.") ;
   027C 90 44 E1           1331 	mov	dptr,#__str_6
   027F 75 F0 80           1332 	mov	b,#0x80
   0282 02 3B 23           1333 	ljmp	_puts
                           1334 ;------------------------------------------------------------
                           1335 ;Allocation info for local variables in function 'taskSwitcherTickHook'
                           1336 ;------------------------------------------------------------
                           1337 ;------------------------------------------------------------
                           1338 ;	../main.c:182: void taskSwitcherTickHook(	void)
                           1339 ;	-----------------------------------------
                           1340 ;	 function taskSwitcherTickHook
                           1341 ;	-----------------------------------------
   0285                    1342 _taskSwitcherTickHook:
                           1343 ;	../main.c:184: timeForTickProcessing = true ;
   0285 D2 00              1344 	setb	_timeForTickProcessing
   0287 22                 1345 	ret
                           1346 ;------------------------------------------------------------
                           1347 ;Allocation info for local variables in function 'gpio_init_projectSpecific'
                           1348 ;------------------------------------------------------------
                           1349 ;SFRPAGE_SAVE              Allocated with name '_gpio_init_projectSpecific_SFRPAGE_SAVE_1_1'
                           1350 ;------------------------------------------------------------
                           1351 ;	../projectSpecificHardwareInterface_C8051F040.c:17: void gpio_init_projectSpecific(	void)
                           1352 ;	-----------------------------------------
                           1353 ;	 function gpio_init_projectSpecific
                           1354 ;	-----------------------------------------
   0288                    1355 _gpio_init_projectSpecific:
                           1356 ;	../projectSpecificHardwareInterface_C8051F040.c:21: SFRPAGE_SAVE = SFRPAGE ;
   0288 AA 84              1357 	mov	r2,_SFRPAGE
                           1358 ;	../projectSpecificHardwareInterface_C8051F040.c:23: SFRPAGE	 = SPI0_PAGE ;
   028A 75 84 00           1359 	mov	_SFRPAGE,#0x00
                           1360 ;	../projectSpecificHardwareInterface_C8051F040.c:24: SPI0CN	 = 0x00 ;	// Set the SPI module into 3 pin mode so NSS doesn't get assigned to a pin in the crossbar setup below
   028D 75 F8 00           1361 	mov	_SPI0CN,#0x00
                           1362 ;	../projectSpecificHardwareInterface_C8051F040.c:26: SFRPAGE	 = CONFIG_PAGE ;
   0290 75 84 0F           1363 	mov	_SFRPAGE,#0x0F
                           1364 ;	../projectSpecificHardwareInterface_C8051F040.c:27: XBR0	 = 0x00 ;	// Start with a clean slate
   0293 75 E1 00           1365 	mov	_XBR0,#0x00
                           1366 ;	../projectSpecificHardwareInterface_C8051F040.c:28: XBR1	 = 0x00 ;
   0296 75 E2 00           1367 	mov	_XBR1,#0x00
                           1368 ;	../projectSpecificHardwareInterface_C8051F040.c:29: XBR2	 = 0x00 ;
   0299 75 E3 00           1369 	mov	_XBR2,#0x00
                           1370 ;	../projectSpecificHardwareInterface_C8051F040.c:30: XBR3	 = 0x00 ;
   029C 75 E4 00           1371 	mov	_XBR3,#0x00
                           1372 ;	../projectSpecificHardwareInterface_C8051F040.c:32: XBR0	|= 0x04 ;	// Route UART0 to P0.0-P0.1
   029F 43 E1 04           1373 	orl	_XBR0,#0x04
                           1374 ;	../projectSpecificHardwareInterface_C8051F040.c:33: XBR0	|= 0x02 ;	// Route SPI0 to P0.2-P0.4
   02A2 43 E1 02           1375 	orl	_XBR0,#0x02
                           1376 ;	../projectSpecificHardwareInterface_C8051F040.c:34: XBR0	|= 0x01 ;	// Route SMB0 to P0.5-P0.6
   02A5 43 E1 01           1377 	orl	_XBR0,#0x01
                           1378 ;	../projectSpecificHardwareInterface_C8051F040.c:35: XBR2	|= 0x04 ;	// Route UART1 to P0.7-P1.0
   02A8 43 E3 04           1379 	orl	_XBR2,#0x04
                           1380 ;	../projectSpecificHardwareInterface_C8051F040.c:36: XBR0	|= 0x30 ;	// Route CEXn to P1.1-P1.6
   02AB 43 E1 30           1381 	orl	_XBR0,#0x30
                           1382 ;	../projectSpecificHardwareInterface_C8051F040.c:37: XBR0	|= 0x80 ;	// Route CP0 to P1.7
   02AE 43 E1 80           1383 	orl	_XBR0,#0x80
                           1384 ;	../projectSpecificHardwareInterface_C8051F040.c:38: XBR3	|= 0x08 ;	// Route CP2 to P2.0
   02B1 43 E4 08           1385 	orl	_XBR3,#0x08
                           1386 ;	../projectSpecificHardwareInterface_C8051F040.c:39: XBR1	|= 0x04 ;	// Route INT0# to P2.1
   02B4 43 E2 04           1387 	orl	_XBR1,#0x04
                           1388 ;	../projectSpecificHardwareInterface_C8051F040.c:40: XBR1	|= 0x20 ;	// Route T2 from P2.2
   02B7 43 E2 20           1389 	orl	_XBR1,#0x20
                           1390 ;	../projectSpecificHardwareInterface_C8051F040.c:41: XBR3	|= 0x01 ;	// Route T3 to P2.3
   02BA 43 E4 01           1391 	orl	_XBR3,#0x01
                           1392 ;	../projectSpecificHardwareInterface_C8051F040.c:43: P0MDOUT |= 0x01 ;	// Set TX0 (P0.0) to push-pull
   02BD 43 A4 01           1393 	orl	_P0MDOUT,#0x01
                           1394 ;	../projectSpecificHardwareInterface_C8051F040.c:45: P1MDOUT	|= 0x02 ;	// Set CEX0 (P1.1) to push-pull
   02C0 43 A5 02           1395 	orl	_P1MDOUT,#0x02
                           1396 ;	../projectSpecificHardwareInterface_C8051F040.c:46: P1MDOUT	|= 0x04 ;	// Set CEX1 (P1.2) to push-pull
   02C3 43 A5 04           1397 	orl	_P1MDOUT,#0x04
                           1398 ;	../projectSpecificHardwareInterface_C8051F040.c:47: P1MDOUT	|= 0x08 ;	// Set CEX2 (P1.3) to push-pull
   02C6 43 A5 08           1399 	orl	_P1MDOUT,#0x08
                           1400 ;	../projectSpecificHardwareInterface_C8051F040.c:48: P1MDOUT	|= 0x10 ;	// Set CEX3 (P1.4) to push-pull
   02C9 43 A5 10           1401 	orl	_P1MDOUT,#0x10
                           1402 ;	../projectSpecificHardwareInterface_C8051F040.c:49: P1MDOUT	|= 0x20 ;	// Set CEX4 (P1.5) to push-pull
   02CC 43 A5 20           1403 	orl	_P1MDOUT,#0x20
                           1404 ;	../projectSpecificHardwareInterface_C8051F040.c:50: P1MDOUT |= 0x40 ;	// Set CEX5 (P1.6) to push-pull
   02CF 43 A5 40           1405 	orl	_P1MDOUT,#0x40
                           1406 ;	../projectSpecificHardwareInterface_C8051F040.c:52: P1MDOUT |= 0x80 ;	// Set TX1 (P1.7) to push-pull
   02D2 43 A5 80           1407 	orl	_P1MDOUT,#0x80
                           1408 ;	../projectSpecificHardwareInterface_C8051F040.c:53: P2MDOUT	&= ~0x02 ;	// Set INT0# (P2.1) to be a digital input
                           1409 ;	../projectSpecificHardwareInterface_C8051F040.c:54: P2MDOUT	&= ~0x04 ;	// Set T2 (P2.2) to be a digital input
   02D5 53 A6 F9           1410 	anl	_P2MDOUT,#(0xFD&0xFB)
                           1411 ;	../projectSpecificHardwareInterface_C8051F040.c:55: P2MDOUT	|= 0x08 ;	// Set P2.3 to be the Timer3 output pin
   02D8 43 A6 08           1412 	orl	_P2MDOUT,#0x08
                           1413 ;	../projectSpecificHardwareInterface_C8051F040.c:57: P3MDIN	 = 0x00 ;	// Configure as analog inputs. This forces the weak pullup for these pins to be disconnected
   02DB 75 AF 00           1414 	mov	_P3MDIN,#0x00
                           1415 ;	../projectSpecificHardwareInterface_C8051F040.c:58: P3MDOUT	 = 0x00 ;	// Force the output driver for these pins to open drain output mode
   02DE 75 A7 00           1416 	mov	_P3MDOUT,#0x00
                           1417 ;	../projectSpecificHardwareInterface_C8051F040.c:59: P3		 = 0xFF ;	// Force the input driver for these pins to high impedance
   02E1 75 B0 FF           1418 	mov	_P3,#0xFF
                           1419 ;	../projectSpecificHardwareInterface_C8051F040.c:61: XBR3	|= 0x80 ;	// Configure CAN TX pin (CTX) as push-pull digital output
   02E4 43 E4 80           1420 	orl	_XBR3,#0x80
                           1421 ;	../projectSpecificHardwareInterface_C8051F040.c:63: P4MDOUT	|= 0xFF ;	// Set LCD drive pins to push-pull
   02E7 E5 9C              1422 	mov	a,_P4MDOUT
   02E9 75 9C FF           1423 	mov	_P4MDOUT,#0xFF
                           1424 ;	../projectSpecificHardwareInterface_C8051F040.c:64: P5MDOUT	|= 0xFF ;	// Set state machine debug pins to push-pull
   02EC E5 9D              1425 	mov	a,_P5MDOUT
   02EE 75 9D FF           1426 	mov	_P5MDOUT,#0xFF
                           1427 ;	../projectSpecificHardwareInterface_C8051F040.c:65: P6MDOUT	|= 0xFF ;	// Set general purpose debug pins to push-pull
   02F1 E5 9E              1428 	mov	a,_P6MDOUT
   02F3 75 9E FF           1429 	mov	_P6MDOUT,#0xFF
                           1430 ;	../projectSpecificHardwareInterface_C8051F040.c:67: P4		 = 0x00 ;	// Set all debugging pins to low
   02F6 75 C8 00           1431 	mov	_P4,#0x00
                           1432 ;	../projectSpecificHardwareInterface_C8051F040.c:68: P5		 = 0x00 ;
   02F9 75 D8 00           1433 	mov	_P5,#0x00
                           1434 ;	../projectSpecificHardwareInterface_C8051F040.c:69: P6		 = 0x00 ;
   02FC 75 E8 00           1435 	mov	_P6,#0x00
                           1436 ;	../projectSpecificHardwareInterface_C8051F040.c:71: P2MDIN	&= 0x0F ;	// set comparator analog inputs up as per Section 17.1.5 of the C8050F040 manual
   02FF 53 AE 0F           1437 	anl	_P2MDIN,#0x0F
                           1438 ;	../projectSpecificHardwareInterface_C8051F040.c:72: P2MDOUT	&= 0x0F ;
   0302 53 A6 0F           1439 	anl	_P2MDOUT,#0x0F
                           1440 ;	../projectSpecificHardwareInterface_C8051F040.c:73: P2		|= 0xF0 ;
   0305 43 A0 F0           1441 	orl	_P2,#0xF0
                           1442 ;	../projectSpecificHardwareInterface_C8051F040.c:78: XBR2	|= 0x40 ;	// Enable Crossbar/low ports and turn on global weak pullups
   0308 43 E3 40           1443 	orl	_XBR2,#0x40
                           1444 ;	../projectSpecificHardwareInterface_C8051F040.c:79: SFRPAGE	 = SFRPAGE_SAVE ;
   030B 8A 84              1445 	mov	_SFRPAGE,r2
   030D 22                 1446 	ret
                           1447 ;------------------------------------------------------------
                           1448 ;Allocation info for local variables in function 'pwm_init_projectSpecific'
                           1449 ;------------------------------------------------------------
                           1450 ;channelNumber             Allocated with name '_pwm_init_projectSpecific_channelNumber_1_1'
                           1451 ;SFRPAGE_save              Allocated with name '_pwm_init_projectSpecific_SFRPAGE_save_1_1'
                           1452 ;------------------------------------------------------------
                           1453 ;	../projectSpecificHardwareInterface_C8051F040.c:83: void pwm_init_projectSpecific(								unsigned char channelNumber)
                           1454 ;	-----------------------------------------
                           1455 ;	 function pwm_init_projectSpecific
                           1456 ;	-----------------------------------------
   030E                    1457 _pwm_init_projectSpecific:
   030E E5 82              1458 	mov	a,dpl
   0310 90 00 02           1459 	mov	dptr,#_pwm_init_projectSpecific_channelNumber_1_1
   0313 F0                 1460 	movx	@dptr,a
                           1461 ;	../projectSpecificHardwareInterface_C8051F040.c:132: char		SFRPAGE_save = SFRPAGE ;	// Save current SFR Page
   0314 AA 84              1462 	mov	r2,_SFRPAGE
                           1463 ;	../projectSpecificHardwareInterface_C8051F040.c:134: SFRPAGE = PCA0_PAGE ;
   0316 75 84 00           1464 	mov	_SFRPAGE,#0x00
                           1465 ;	../projectSpecificHardwareInterface_C8051F040.c:136: if(!initialized)
   0319 20 02 2A           1466 	jb	_pwm_init_projectSpecific_initialized_1_1,00102$
                           1467 ;	../projectSpecificHardwareInterface_C8051F040.c:138: PCA0CN = 0x00 ;				// Stop counter; clear all flags
   031C 75 D8 00           1468 	mov	_PCA0CN,#0x00
                           1469 ;	../projectSpecificHardwareInterface_C8051F040.c:139: PCA0MD = 0x08 ;				// Use SYSCLK as time base
   031F 75 D9 08           1470 	mov	_PCA0MD,#0x08
                           1471 ;	../projectSpecificHardwareInterface_C8051F040.c:141: PCA0CPM0 = 0x00 ;			// Module 0 = Off
   0322 75 DA 00           1472 	mov	_PCA0CPM0,#0x00
                           1473 ;	../projectSpecificHardwareInterface_C8051F040.c:142: PCA0CPH0 = 0x00 ;			// Configure initial PWM duty cycle = 100%. This will result in a continuously high output which, since it's active low, will disable any output.
   0325 75 FC 00           1474 	mov	_PCA0CPH0,#0x00
                           1475 ;	../projectSpecificHardwareInterface_C8051F040.c:144: PCA0CPM0 = 0x00 ;			// Module 1 = Off
   0328 75 DA 00           1476 	mov	_PCA0CPM0,#0x00
                           1477 ;	../projectSpecificHardwareInterface_C8051F040.c:145: PCA0CPH1 = 0x00 ;			// Configure initial PWM duty cycle = 100%. This will result in a continuously high output which, since it's active low, will disable any output.
   032B 75 FE 00           1478 	mov	_PCA0CPH1,#0x00
                           1479 ;	../projectSpecificHardwareInterface_C8051F040.c:147: PCA0CPM0 = 0x00 ;			// Module 2 = Off
   032E 75 DA 00           1480 	mov	_PCA0CPM0,#0x00
                           1481 ;	../projectSpecificHardwareInterface_C8051F040.c:148: PCA0CPH2 = 0x00 ;			// Configure initial PWM duty cycle = 100%. This will result in a continuously high output which, since it's active low, will disable any output.
   0331 75 EA 00           1482 	mov	_PCA0CPH2,#0x00
                           1483 ;	../projectSpecificHardwareInterface_C8051F040.c:150: PCA0CPM0 = 0x00 ;			// Module 3 = Off
   0334 75 DA 00           1484 	mov	_PCA0CPM0,#0x00
                           1485 ;	../projectSpecificHardwareInterface_C8051F040.c:151: PCA0CPH3 = 0x00 ;			// Configure initial PWM duty cycle = 100%. This will result in a continuously high output which, since it's active low, will disable any output.
   0337 75 EC 00           1486 	mov	_PCA0CPH3,#0x00
                           1487 ;	../projectSpecificHardwareInterface_C8051F040.c:153: PCA0CPM0 = 0x00 ;			// Module 4 = Off
   033A 75 DA 00           1488 	mov	_PCA0CPM0,#0x00
                           1489 ;	../projectSpecificHardwareInterface_C8051F040.c:154: PCA0CPH4 = 0x00 ;			// Configure initial PWM duty cycle = 100%. This will result in a continuously high output which, since it's active low, will disable any output.
   033D 75 EE 00           1490 	mov	_PCA0CPH4,#0x00
                           1491 ;	../projectSpecificHardwareInterface_C8051F040.c:156: PCA0CPM0 = 0x00 ;			// Module 5 = Off
   0340 75 DA 00           1492 	mov	_PCA0CPM0,#0x00
                           1493 ;	../projectSpecificHardwareInterface_C8051F040.c:157: PCA0CPH5 = 0x00 ;			// Configure initial PWM duty cycle = 100%. This will result in a continuously high output which, since it's active low, will disable any output.
   0343 75 E2 00           1494 	mov	_PCA0CPH5,#0x00
   0346                    1495 00102$:
                           1496 ;	../projectSpecificHardwareInterface_C8051F040.c:164: if(channelNumber == ioMapping_PWM_TO_TICK_SYNCHRONIZER_CHANNEL)
   0346 90 00 02           1497 	mov	dptr,#_pwm_init_projectSpecific_channelNumber_1_1
   0349 E0                 1498 	movx	a,@dptr
   034A FB                 1499 	mov	r3,a
   034B 70 06              1500 	jnz	00104$
                           1501 ;	../projectSpecificHardwareInterface_C8051F040.c:170: PWM_B50_MODE		= 0x42 ;						// Module 1 = 8-bit PWM mode
   034D 75 DA 42           1502 	mov	_PCA0CPM0,#0x42
                           1503 ;	../projectSpecificHardwareInterface_C8051F040.c:171: PWM_B50_HIGH_BYTE	= FIFTY_PERCENT_DUTY_CYCLE ;	// Configure initial PWM duty cycle = 50%
   0350 75 FC 80           1504 	mov	_PCA0CPH0,#0x80
   0353                    1505 00104$:
                           1506 ;	../projectSpecificHardwareInterface_C8051F040.c:174: if(!initialized)
   0353 20 02 04           1507 	jb	_pwm_init_projectSpecific_initialized_1_1,00106$
                           1508 ;	../projectSpecificHardwareInterface_C8051F040.c:176: initialized = true ;
   0356 D2 02              1509 	setb	_pwm_init_projectSpecific_initialized_1_1
                           1510 ;	../projectSpecificHardwareInterface_C8051F040.c:178: CR = 1 ;					// Start PCA counter
   0358 D2 DE              1511 	setb	_CR
   035A                    1512 00106$:
                           1513 ;	../projectSpecificHardwareInterface_C8051F040.c:181: SFRPAGE = SFRPAGE_save ;
   035A 8A 84              1514 	mov	_SFRPAGE,r2
   035C 22                 1515 	ret
                           1516 ;------------------------------------------------------------
                           1517 ;Allocation info for local variables in function 'pwm_incrementDutyCycle_projectSpecific'
                           1518 ;------------------------------------------------------------
                           1519 ;channelNumber             Allocated with name '_pwm_incrementDutyCycle_projectSpecific_channelNumber_1_1'
                           1520 ;------------------------------------------------------------
                           1521 ;	../projectSpecificHardwareInterface_C8051F040.c:185: void pwm_incrementDutyCycle_projectSpecific(				unsigned char channelNumber)
                           1522 ;	-----------------------------------------
                           1523 ;	 function pwm_incrementDutyCycle_projectSpecific
                           1524 ;	-----------------------------------------
   035D                    1525 _pwm_incrementDutyCycle_projectSpecific:
                           1526 ;	../projectSpecificHardwareInterface_C8051F040.c:187: (void)channelNumber ;	// unused at this time
   035D 22                 1527 	ret
                           1528 ;------------------------------------------------------------
                           1529 ;Allocation info for local variables in function 'pwm_decrementDutyCycle_projectSpecific'
                           1530 ;------------------------------------------------------------
                           1531 ;channelNumber             Allocated with name '_pwm_decrementDutyCycle_projectSpecific_channelNumber_1_1'
                           1532 ;------------------------------------------------------------
                           1533 ;	../projectSpecificHardwareInterface_C8051F040.c:191: void pwm_decrementDutyCycle_projectSpecific(				unsigned char channelNumber)
                           1534 ;	-----------------------------------------
                           1535 ;	 function pwm_decrementDutyCycle_projectSpecific
                           1536 ;	-----------------------------------------
   035E                    1537 _pwm_decrementDutyCycle_projectSpecific:
                           1538 ;	../projectSpecificHardwareInterface_C8051F040.c:193: (void)channelNumber ;	// unused at this time
   035E 22                 1539 	ret
                           1540 ;------------------------------------------------------------
                           1541 ;Allocation info for local variables in function 'pwm_getDutyCycle_projectSpecific'
                           1542 ;------------------------------------------------------------
                           1543 ;channelNumber             Allocated with name '_pwm_getDutyCycle_projectSpecific_channelNumber_1_1'
                           1544 ;------------------------------------------------------------
                           1545 ;	../projectSpecificHardwareInterface_C8051F040.c:197: uint8_t pwm_getDutyCycle_projectSpecific(					unsigned char channelNumber)
                           1546 ;	-----------------------------------------
                           1547 ;	 function pwm_getDutyCycle_projectSpecific
                           1548 ;	-----------------------------------------
   035F                    1549 _pwm_getDutyCycle_projectSpecific:
                           1550 ;	../projectSpecificHardwareInterface_C8051F040.c:201: return 0 ;
   035F 75 82 00           1551 	mov	dpl,#0x00
   0362 22                 1552 	ret
                           1553 ;------------------------------------------------------------
                           1554 ;Allocation info for local variables in function 'pwm_setDutyCycle_projectSpecific'
                           1555 ;------------------------------------------------------------
                           1556 ;newDutyCycle              Allocated with name '_pwm_setDutyCycle_projectSpecific_PARM_2'
                           1557 ;channelNumber             Allocated with name '_pwm_setDutyCycle_projectSpecific_channelNumber_1_1'
                           1558 ;------------------------------------------------------------
                           1559 ;	../projectSpecificHardwareInterface_C8051F040.c:205: void pwm_setDutyCycle_projectSpecific(						unsigned char channelNumber, uint8_t newDutyCycle)
                           1560 ;	-----------------------------------------
                           1561 ;	 function pwm_setDutyCycle_projectSpecific
                           1562 ;	-----------------------------------------
   0363                    1563 _pwm_setDutyCycle_projectSpecific:
                           1564 ;	../projectSpecificHardwareInterface_C8051F040.c:208: (void)newDutyCycle ;	// unused at this time
   0363 22                 1565 	ret
                           1566 ;------------------------------------------------------------
                           1567 ;Allocation info for local variables in function 'pwm_adjustDutyCycle_projectSpecific'
                           1568 ;------------------------------------------------------------
                           1569 ;dutyCycleAdjustment       Allocated with name '_pwm_adjustDutyCycle_projectSpecific_PARM_2'
                           1570 ;channelNumber             Allocated with name '_pwm_adjustDutyCycle_projectSpecific_channelNumber_1_1'
                           1571 ;------------------------------------------------------------
                           1572 ;	../projectSpecificHardwareInterface_C8051F040.c:212: void pwm_adjustDutyCycle_projectSpecific(					unsigned char channelNumber, int8_t dutyCycleAdjustment)
                           1573 ;	-----------------------------------------
                           1574 ;	 function pwm_adjustDutyCycle_projectSpecific
                           1575 ;	-----------------------------------------
   0364                    1576 _pwm_adjustDutyCycle_projectSpecific:
                           1577 ;	../projectSpecificHardwareInterface_C8051F040.c:215: (void)dutyCycleAdjustment ;	// unused at this time
   0364 22                 1578 	ret
                           1579 ;------------------------------------------------------------
                           1580 ;Allocation info for local variables in function 'pwm_setDutyCycleAsPercentage_projectSpecific'
                           1581 ;------------------------------------------------------------
                           1582 ;newDutyCycle              Allocated with name '_pwm_setDutyCycleAsPercentage_projectSpecific_PARM_2'
                           1583 ;channelNumber             Allocated with name '_pwm_setDutyCycleAsPercentage_projectSpecific_channelNumber_1_1'
                           1584 ;------------------------------------------------------------
                           1585 ;	../projectSpecificHardwareInterface_C8051F040.c:219: void pwm_setDutyCycleAsPercentage_projectSpecific(			unsigned char channelNumber, unsigned char newDutyCycle)
                           1586 ;	-----------------------------------------
                           1587 ;	 function pwm_setDutyCycleAsPercentage_projectSpecific
                           1588 ;	-----------------------------------------
   0365                    1589 _pwm_setDutyCycleAsPercentage_projectSpecific:
                           1590 ;	../projectSpecificHardwareInterface_C8051F040.c:222: (void)newDutyCycle ;		// unused at this time
   0365 22                 1591 	ret
                           1592 ;------------------------------------------------------------
                           1593 ;Allocation info for local variables in function 'pwm_getDutyCycleAsPercentage_projectSpecific'
                           1594 ;------------------------------------------------------------
                           1595 ;channelNumber             Allocated with name '_pwm_getDutyCycleAsPercentage_projectSpecific_channelNumber_1_1'
                           1596 ;currentPercentage         Allocated with name '_pwm_getDutyCycleAsPercentage_projectSpecific_currentPercentage_1_1'
                           1597 ;divisor                   Allocated with name '_pwm_getDutyCycleAsPercentage_projectSpecific_divisor_1_1'
                           1598 ;------------------------------------------------------------
                           1599 ;	../projectSpecificHardwareInterface_C8051F040.c:226: unsigned char pwm_getDutyCycleAsPercentage_projectSpecific(	unsigned char channelNumber)
                           1600 ;	-----------------------------------------
                           1601 ;	 function pwm_getDutyCycleAsPercentage_projectSpecific
                           1602 ;	-----------------------------------------
   0366                    1603 _pwm_getDutyCycleAsPercentage_projectSpecific:
                           1604 ;	../projectSpecificHardwareInterface_C8051F040.c:237: return (unsigned char)0 ;//min(currentPercentage, 100) ;
   0366 75 82 00           1605 	mov	dpl,#0x00
   0369 22                 1606 	ret
                           1607 ;------------------------------------------------------------
                           1608 ;Allocation info for local variables in function 'IsEmpty'
                           1609 ;------------------------------------------------------------
                           1610 ;Q                         Allocated with name '_IsEmpty_Q_1_1'
                           1611 ;------------------------------------------------------------
                           1612 ;	../projectSpecificHardwareInterface_C8051F040.c:273: unsigned char IsEmpty(QUEUE_TYPE* Q)
                           1613 ;	-----------------------------------------
                           1614 ;	 function IsEmpty
                           1615 ;	-----------------------------------------
   036A                    1616 _IsEmpty:
   036A AA F0              1617 	mov	r2,b
   036C AB 83              1618 	mov	r3,dph
   036E E5 82              1619 	mov	a,dpl
   0370 90 04 52           1620 	mov	dptr,#_IsEmpty_Q_1_1
   0373 F0                 1621 	movx	@dptr,a
   0374 A3                 1622 	inc	dptr
   0375 EB                 1623 	mov	a,r3
   0376 F0                 1624 	movx	@dptr,a
   0377 A3                 1625 	inc	dptr
   0378 EA                 1626 	mov	a,r2
   0379 F0                 1627 	movx	@dptr,a
                           1628 ;	../projectSpecificHardwareInterface_C8051F040.c:275: return Q->Size == 0 ;
   037A 90 04 52           1629 	mov	dptr,#_IsEmpty_Q_1_1
   037D E0                 1630 	movx	a,@dptr
   037E FA                 1631 	mov	r2,a
   037F A3                 1632 	inc	dptr
   0380 E0                 1633 	movx	a,@dptr
   0381 FB                 1634 	mov	r3,a
   0382 A3                 1635 	inc	dptr
   0383 E0                 1636 	movx	a,@dptr
   0384 FC                 1637 	mov	r4,a
   0385 74 06              1638 	mov	a,#0x06
   0387 2A                 1639 	add	a,r2
   0388 FA                 1640 	mov	r2,a
   0389 E4                 1641 	clr	a
   038A 3B                 1642 	addc	a,r3
   038B FB                 1643 	mov	r3,a
   038C 8A 82              1644 	mov	dpl,r2
   038E 8B 83              1645 	mov	dph,r3
   0390 8C F0              1646 	mov	b,r4
   0392 12 44 37           1647 	lcall	__gptrget
   0395 FA                 1648 	mov	r2,a
   0396 A3                 1649 	inc	dptr
   0397 12 44 37           1650 	lcall	__gptrget
   039A FB                 1651 	mov	r3,a
   039B E4                 1652 	clr	a
   039C BA 00 04           1653 	cjne	r2,#0x00,00103$
   039F BB 00 01           1654 	cjne	r3,#0x00,00103$
   03A2 04                 1655 	inc	a
   03A3                    1656 00103$:
   03A3 F5 82              1657 	mov	dpl,a
   03A5 22                 1658 	ret
                           1659 ;------------------------------------------------------------
                           1660 ;Allocation info for local variables in function 'IsFull'
                           1661 ;------------------------------------------------------------
                           1662 ;Q                         Allocated with name '_IsFull_Q_1_1'
                           1663 ;------------------------------------------------------------
                           1664 ;	../projectSpecificHardwareInterface_C8051F040.c:278: unsigned char IsFull(QUEUE_TYPE* Q)
                           1665 ;	-----------------------------------------
                           1666 ;	 function IsFull
                           1667 ;	-----------------------------------------
   03A6                    1668 _IsFull:
   03A6 AA F0              1669 	mov	r2,b
   03A8 AB 83              1670 	mov	r3,dph
   03AA E5 82              1671 	mov	a,dpl
   03AC 90 04 55           1672 	mov	dptr,#_IsFull_Q_1_1
   03AF F0                 1673 	movx	@dptr,a
   03B0 A3                 1674 	inc	dptr
   03B1 EB                 1675 	mov	a,r3
   03B2 F0                 1676 	movx	@dptr,a
   03B3 A3                 1677 	inc	dptr
   03B4 EA                 1678 	mov	a,r2
   03B5 F0                 1679 	movx	@dptr,a
                           1680 ;	../projectSpecificHardwareInterface_C8051F040.c:280: return Q->Size == Q->Capacity ;
   03B6 90 04 55           1681 	mov	dptr,#_IsFull_Q_1_1
   03B9 E0                 1682 	movx	a,@dptr
   03BA FA                 1683 	mov	r2,a
   03BB A3                 1684 	inc	dptr
   03BC E0                 1685 	movx	a,@dptr
   03BD FB                 1686 	mov	r3,a
   03BE A3                 1687 	inc	dptr
   03BF E0                 1688 	movx	a,@dptr
   03C0 FC                 1689 	mov	r4,a
   03C1 74 06              1690 	mov	a,#0x06
   03C3 2A                 1691 	add	a,r2
   03C4 FD                 1692 	mov	r5,a
   03C5 E4                 1693 	clr	a
   03C6 3B                 1694 	addc	a,r3
   03C7 FE                 1695 	mov	r6,a
   03C8 8C 07              1696 	mov	ar7,r4
   03CA 8D 82              1697 	mov	dpl,r5
   03CC 8E 83              1698 	mov	dph,r6
   03CE 8F F0              1699 	mov	b,r7
   03D0 12 44 37           1700 	lcall	__gptrget
   03D3 FD                 1701 	mov	r5,a
   03D4 A3                 1702 	inc	dptr
   03D5 12 44 37           1703 	lcall	__gptrget
   03D8 FE                 1704 	mov	r6,a
   03D9 8A 82              1705 	mov	dpl,r2
   03DB 8B 83              1706 	mov	dph,r3
   03DD 8C F0              1707 	mov	b,r4
   03DF 12 44 37           1708 	lcall	__gptrget
   03E2 FA                 1709 	mov	r2,a
   03E3 A3                 1710 	inc	dptr
   03E4 12 44 37           1711 	lcall	__gptrget
   03E7 FB                 1712 	mov	r3,a
   03E8 ED                 1713 	mov	a,r5
   03E9 B5 02 08           1714 	cjne	a,ar2,00103$
   03EC EE                 1715 	mov	a,r6
   03ED B5 03 04           1716 	cjne	a,ar3,00103$
   03F0 74 01              1717 	mov	a,#0x01
   03F2 80 01              1718 	sjmp	00104$
   03F4                    1719 00103$:
   03F4 E4                 1720 	clr	a
   03F5                    1721 00104$:
   03F5 F5 82              1722 	mov	dpl,a
   03F7 22                 1723 	ret
                           1724 ;------------------------------------------------------------
                           1725 ;Allocation info for local variables in function 'Succ'
                           1726 ;------------------------------------------------------------
                           1727 ;Q                         Allocated with name '_Succ_PARM_2'
                           1728 ;Value                     Allocated with name '_Succ_Value_1_1'
                           1729 ;------------------------------------------------------------
                           1730 ;	../projectSpecificHardwareInterface_C8051F040.c:283: static unsigned short Succ(unsigned short Value, QUEUE_TYPE* Q)
                           1731 ;	-----------------------------------------
                           1732 ;	 function Succ
                           1733 ;	-----------------------------------------
   03F8                    1734 _Succ:
   03F8 AA 83              1735 	mov	r2,dph
   03FA E5 82              1736 	mov	a,dpl
   03FC 90 04 5B           1737 	mov	dptr,#_Succ_Value_1_1
   03FF F0                 1738 	movx	@dptr,a
   0400 A3                 1739 	inc	dptr
   0401 EA                 1740 	mov	a,r2
   0402 F0                 1741 	movx	@dptr,a
                           1742 ;	../projectSpecificHardwareInterface_C8051F040.c:285: if(++Value == Q->Capacity)
   0403 90 04 5B           1743 	mov	dptr,#_Succ_Value_1_1
   0406 E0                 1744 	movx	a,@dptr
   0407 24 01              1745 	add	a,#0x01
   0409 F0                 1746 	movx	@dptr,a
   040A A3                 1747 	inc	dptr
   040B E0                 1748 	movx	a,@dptr
   040C 34 00              1749 	addc	a,#0x00
   040E F0                 1750 	movx	@dptr,a
   040F 90 04 58           1751 	mov	dptr,#_Succ_PARM_2
   0412 E0                 1752 	movx	a,@dptr
   0413 FA                 1753 	mov	r2,a
   0414 A3                 1754 	inc	dptr
   0415 E0                 1755 	movx	a,@dptr
   0416 FB                 1756 	mov	r3,a
   0417 A3                 1757 	inc	dptr
   0418 E0                 1758 	movx	a,@dptr
   0419 FC                 1759 	mov	r4,a
   041A 8A 82              1760 	mov	dpl,r2
   041C 8B 83              1761 	mov	dph,r3
   041E 8C F0              1762 	mov	b,r4
   0420 12 44 37           1763 	lcall	__gptrget
   0423 FA                 1764 	mov	r2,a
   0424 A3                 1765 	inc	dptr
   0425 12 44 37           1766 	lcall	__gptrget
   0428 FB                 1767 	mov	r3,a
   0429 90 04 5B           1768 	mov	dptr,#_Succ_Value_1_1
   042C E0                 1769 	movx	a,@dptr
   042D FC                 1770 	mov	r4,a
   042E A3                 1771 	inc	dptr
   042F E0                 1772 	movx	a,@dptr
   0430 FD                 1773 	mov	r5,a
   0431 EC                 1774 	mov	a,r4
   0432 B5 02 0B           1775 	cjne	a,ar2,00102$
   0435 ED                 1776 	mov	a,r5
   0436 B5 03 07           1777 	cjne	a,ar3,00102$
                           1778 ;	../projectSpecificHardwareInterface_C8051F040.c:287: Value = 0 ;
   0439 90 04 5B           1779 	mov	dptr,#_Succ_Value_1_1
   043C E4                 1780 	clr	a
   043D F0                 1781 	movx	@dptr,a
   043E A3                 1782 	inc	dptr
   043F F0                 1783 	movx	@dptr,a
   0440                    1784 00102$:
                           1785 ;	../projectSpecificHardwareInterface_C8051F040.c:290: return Value ;
   0440 90 04 5B           1786 	mov	dptr,#_Succ_Value_1_1
   0443 E0                 1787 	movx	a,@dptr
   0444 FA                 1788 	mov	r2,a
   0445 A3                 1789 	inc	dptr
   0446 E0                 1790 	movx	a,@dptr
   0447 8A 82              1791 	mov	dpl,r2
   0449 F5 83              1792 	mov	dph,a
   044B 22                 1793 	ret
                           1794 ;------------------------------------------------------------
                           1795 ;Allocation info for local variables in function 'task_UART_init_projectSpecific'
                           1796 ;------------------------------------------------------------
                           1797 ;channelNumber             Allocated with name '_task_UART_init_projectSpecific_channelNumber_1_1'
                           1798 ;Q                         Allocated with name '_task_UART_init_projectSpecific_Q_1_1'
                           1799 ;SFRPAGE_SAVE              Allocated with name '_task_UART_init_projectSpecific_SFRPAGE_SAVE_3_3'
                           1800 ;------------------------------------------------------------
                           1801 ;	../projectSpecificHardwareInterface_C8051F040.c:321: void task_UART_init_projectSpecific(	unsigned char channelNumber)
                           1802 ;	-----------------------------------------
                           1803 ;	 function task_UART_init_projectSpecific
                           1804 ;	-----------------------------------------
   044C                    1805 _task_UART_init_projectSpecific:
   044C E5 82              1806 	mov	a,dpl
   044E 90 08 CD           1807 	mov	dptr,#_task_UART_init_projectSpecific_channelNumber_1_1
   0451 F0                 1808 	movx	@dptr,a
                           1809 ;	../projectSpecificHardwareInterface_C8051F040.c:325: QUEUE_TYPE*	Q = &transmitBuffers[channelNumber] ;
   0452 90 08 CD           1810 	mov	dptr,#_task_UART_init_projectSpecific_channelNumber_1_1
   0455 E0                 1811 	movx	a,@dptr
   0456 FA                 1812 	mov	r2,a
   0457 75 F0 0B           1813 	mov	b,#0x0B
   045A A4                 1814 	mul	ab
   045B FB                 1815 	mov	r3,a
   045C 24 B5              1816 	add	a,#_transmitBuffers
   045E FC                 1817 	mov	r4,a
   045F E4                 1818 	clr	a
   0460 34 08              1819 	addc	a,#(_transmitBuffers >> 8)
   0462 FD                 1820 	mov	r5,a
   0463 7E 00              1821 	mov	r6,#0x00
                           1822 ;	../projectSpecificHardwareInterface_C8051F040.c:327: Q->Capacity	= TRANSMIT_BUFFER_SIZE ;
   0465 8C 82              1823 	mov	dpl,r4
   0467 8D 83              1824 	mov	dph,r5
   0469 8E F0              1825 	mov	b,r6
   046B 74 4C              1826 	mov	a,#0x4C
   046D 12 38 0B           1827 	lcall	__gptrput
   0470 A3                 1828 	inc	dptr
   0471 74 04              1829 	mov	a,#0x04
   0473 12 38 0B           1830 	lcall	__gptrput
                           1831 ;	../projectSpecificHardwareInterface_C8051F040.c:328: Q->Size		= 0 ;
   0476 74 06              1832 	mov	a,#0x06
   0478 2C                 1833 	add	a,r4
   0479 FF                 1834 	mov	r7,a
   047A E4                 1835 	clr	a
   047B 3D                 1836 	addc	a,r5
   047C F8                 1837 	mov	r0,a
   047D 8E 01              1838 	mov	ar1,r6
   047F 8F 82              1839 	mov	dpl,r7
   0481 88 83              1840 	mov	dph,r0
   0483 89 F0              1841 	mov	b,r1
   0485 E4                 1842 	clr	a
   0486 12 38 0B           1843 	lcall	__gptrput
   0489 A3                 1844 	inc	dptr
   048A E4                 1845 	clr	a
   048B 12 38 0B           1846 	lcall	__gptrput
                           1847 ;	../projectSpecificHardwareInterface_C8051F040.c:329: Q->Front	= 1 ;
   048E 74 02              1848 	mov	a,#0x02
   0490 2C                 1849 	add	a,r4
   0491 FF                 1850 	mov	r7,a
   0492 E4                 1851 	clr	a
   0493 3D                 1852 	addc	a,r5
   0494 F8                 1853 	mov	r0,a
   0495 8E 01              1854 	mov	ar1,r6
   0497 8F 82              1855 	mov	dpl,r7
   0499 88 83              1856 	mov	dph,r0
   049B 89 F0              1857 	mov	b,r1
   049D 74 01              1858 	mov	a,#0x01
   049F 12 38 0B           1859 	lcall	__gptrput
   04A2 A3                 1860 	inc	dptr
   04A3 E4                 1861 	clr	a
   04A4 12 38 0B           1862 	lcall	__gptrput
                           1863 ;	../projectSpecificHardwareInterface_C8051F040.c:330: Q->Rear		= 0 ;
   04A7 74 04              1864 	mov	a,#0x04
   04A9 2C                 1865 	add	a,r4
   04AA FF                 1866 	mov	r7,a
   04AB E4                 1867 	clr	a
   04AC 3D                 1868 	addc	a,r5
   04AD F8                 1869 	mov	r0,a
   04AE 8E 01              1870 	mov	ar1,r6
   04B0 8F 82              1871 	mov	dpl,r7
   04B2 88 83              1872 	mov	dph,r0
   04B4 89 F0              1873 	mov	b,r1
   04B6 E4                 1874 	clr	a
   04B7 12 38 0B           1875 	lcall	__gptrput
   04BA A3                 1876 	inc	dptr
   04BB E4                 1877 	clr	a
   04BC 12 38 0B           1878 	lcall	__gptrput
                           1879 ;	../projectSpecificHardwareInterface_C8051F040.c:331: Q->Array	= transmitBuffer[0] ;
   04BF 74 08              1880 	mov	a,#0x08
   04C1 2C                 1881 	add	a,r4
   04C2 FC                 1882 	mov	r4,a
   04C3 E4                 1883 	clr	a
   04C4 3D                 1884 	addc	a,r5
   04C5 FD                 1885 	mov	r5,a
   04C6 8C 82              1886 	mov	dpl,r4
   04C8 8D 83              1887 	mov	dph,r5
   04CA 8E F0              1888 	mov	b,r6
   04CC 74 5D              1889 	mov	a,#_transmitBuffer
   04CE 12 38 0B           1890 	lcall	__gptrput
   04D1 A3                 1891 	inc	dptr
   04D2 74 04              1892 	mov	a,#(_transmitBuffer >> 8)
   04D4 12 38 0B           1893 	lcall	__gptrput
   04D7 A3                 1894 	inc	dptr
   04D8 E4                 1895 	clr	a
   04D9 12 38 0B           1896 	lcall	__gptrput
                           1897 ;	../projectSpecificHardwareInterface_C8051F040.c:333: Q = &receiveBuffers[channelNumber] ;
   04DC EB                 1898 	mov	a,r3
   04DD 24 C0              1899 	add	a,#_receiveBuffers
   04DF FB                 1900 	mov	r3,a
   04E0 E4                 1901 	clr	a
   04E1 34 08              1902 	addc	a,#(_receiveBuffers >> 8)
   04E3 FC                 1903 	mov	r4,a
   04E4 7D 00              1904 	mov	r5,#0x00
                           1905 ;	../projectSpecificHardwareInterface_C8051F040.c:335: Q->Capacity	= RECEIVE_BUFFER_SIZE ;
   04E6 8B 82              1906 	mov	dpl,r3
   04E8 8C 83              1907 	mov	dph,r4
   04EA 8D F0              1908 	mov	b,r5
   04EC 74 0A              1909 	mov	a,#0x0A
   04EE 12 38 0B           1910 	lcall	__gptrput
   04F1 A3                 1911 	inc	dptr
   04F2 E4                 1912 	clr	a
   04F3 12 38 0B           1913 	lcall	__gptrput
                           1914 ;	../projectSpecificHardwareInterface_C8051F040.c:336: Q->Size		= 0 ;
   04F6 74 06              1915 	mov	a,#0x06
   04F8 2B                 1916 	add	a,r3
   04F9 FE                 1917 	mov	r6,a
   04FA E4                 1918 	clr	a
   04FB 3C                 1919 	addc	a,r4
   04FC FF                 1920 	mov	r7,a
   04FD 8D 00              1921 	mov	ar0,r5
   04FF 8E 82              1922 	mov	dpl,r6
   0501 8F 83              1923 	mov	dph,r7
   0503 88 F0              1924 	mov	b,r0
   0505 E4                 1925 	clr	a
   0506 12 38 0B           1926 	lcall	__gptrput
   0509 A3                 1927 	inc	dptr
   050A E4                 1928 	clr	a
   050B 12 38 0B           1929 	lcall	__gptrput
                           1930 ;	../projectSpecificHardwareInterface_C8051F040.c:337: Q->Front	= 1 ;
   050E 74 02              1931 	mov	a,#0x02
   0510 2B                 1932 	add	a,r3
   0511 FE                 1933 	mov	r6,a
   0512 E4                 1934 	clr	a
   0513 3C                 1935 	addc	a,r4
   0514 FF                 1936 	mov	r7,a
   0515 8D 00              1937 	mov	ar0,r5
   0517 8E 82              1938 	mov	dpl,r6
   0519 8F 83              1939 	mov	dph,r7
   051B 88 F0              1940 	mov	b,r0
   051D 74 01              1941 	mov	a,#0x01
   051F 12 38 0B           1942 	lcall	__gptrput
   0522 A3                 1943 	inc	dptr
   0523 E4                 1944 	clr	a
   0524 12 38 0B           1945 	lcall	__gptrput
                           1946 ;	../projectSpecificHardwareInterface_C8051F040.c:338: Q->Rear		= 0 ;
   0527 74 04              1947 	mov	a,#0x04
   0529 2B                 1948 	add	a,r3
   052A FE                 1949 	mov	r6,a
   052B E4                 1950 	clr	a
   052C 3C                 1951 	addc	a,r4
   052D FF                 1952 	mov	r7,a
   052E 8D 00              1953 	mov	ar0,r5
   0530 8E 82              1954 	mov	dpl,r6
   0532 8F 83              1955 	mov	dph,r7
   0534 88 F0              1956 	mov	b,r0
   0536 E4                 1957 	clr	a
   0537 12 38 0B           1958 	lcall	__gptrput
   053A A3                 1959 	inc	dptr
   053B E4                 1960 	clr	a
   053C 12 38 0B           1961 	lcall	__gptrput
                           1962 ;	../projectSpecificHardwareInterface_C8051F040.c:339: Q->Array	= receiveBuffer[0] ;
   053F 74 08              1963 	mov	a,#0x08
   0541 2B                 1964 	add	a,r3
   0542 FB                 1965 	mov	r3,a
   0543 E4                 1966 	clr	a
   0544 3C                 1967 	addc	a,r4
   0545 FC                 1968 	mov	r4,a
   0546 8B 82              1969 	mov	dpl,r3
   0548 8C 83              1970 	mov	dph,r4
   054A 8D F0              1971 	mov	b,r5
   054C 74 AA              1972 	mov	a,#_receiveBuffer
   054E 12 38 0B           1973 	lcall	__gptrput
   0551 A3                 1974 	inc	dptr
   0552 74 08              1975 	mov	a,#(_receiveBuffer >> 8)
   0554 12 38 0B           1976 	lcall	__gptrput
   0557 A3                 1977 	inc	dptr
   0558 E4                 1978 	clr	a
   0559 12 38 0B           1979 	lcall	__gptrput
                           1980 ;	../projectSpecificHardwareInterface_C8051F040.c:341: charSent[channelNumber]		= false ;
   055C EA                 1981 	mov	a,r2
   055D 24 CB              1982 	add	a,#_charSent
   055F F5 82              1983 	mov	dpl,a
   0561 E4                 1984 	clr	a
   0562 34 08              1985 	addc	a,#(_charSent >> 8)
   0564 F5 83              1986 	mov	dph,a
   0566 E4                 1987 	clr	a
   0567 F0                 1988 	movx	@dptr,a
                           1989 ;	../projectSpecificHardwareInterface_C8051F040.c:342: lineReady[channelNumber]	= false ;
   0568 EA                 1990 	mov	a,r2
   0569 24 CC              1991 	add	a,#_lineReady
   056B F5 82              1992 	mov	dpl,a
   056D E4                 1993 	clr	a
   056E 34 08              1994 	addc	a,#(_lineReady >> 8)
   0570 F5 83              1995 	mov	dph,a
   0572 E4                 1996 	clr	a
   0573 F0                 1997 	movx	@dptr,a
                           1998 ;	../projectSpecificHardwareInterface_C8051F040.c:344: if(!timer1initialized)
   0574 20 03 20           1999 	jb	_task_UART_init_projectSpecific_timer1initialized_1_1,00102$
                           2000 ;	../projectSpecificHardwareInterface_C8051F040.c:346: timer1initialized = true ;
   0577 D2 03              2001 	setb	_task_UART_init_projectSpecific_timer1initialized_1_1
                           2002 ;	../projectSpecificHardwareInterface_C8051F040.c:348: portSET_REGISTER_GROUP(TIMER01_PAGE)
   0579 AA 84              2003 	mov	r2,_SFRPAGE
   057B 75 84 00           2004 	mov	_SFRPAGE,#0x00
                           2005 ;	../projectSpecificHardwareInterface_C8051F040.c:351: TMOD &= 0x08 ;
   057E 53 89 08           2006 	anl	_TMOD,#0x08
                           2007 ;	../projectSpecificHardwareInterface_C8051F040.c:352: TMOD |= ser8BIT_WITH_RELOAD ;
   0581 43 89 20           2008 	orl	_TMOD,#0x20
                           2009 ;	../projectSpecificHardwareInterface_C8051F040.c:353: SSTA0 |= serSMOD ;
   0584 43 91 10           2010 	orl	_SSTA0,#0x10
                           2011 ;	../projectSpecificHardwareInterface_C8051F040.c:354: CKCON |= 0x10 ;
   0587 43 8E 10           2012 	orl	_CKCON,#0x10
                           2013 ;	../projectSpecificHardwareInterface_C8051F040.c:357: TL1 = ( unsigned char ) 0xB2 ;	// B8 = 9600 BAUD on unmoded eval boards, B2 = 9615 on 24MHz systems
   058A 75 8B B2           2014 	mov	_TL1,#0xB2
                           2015 ;	../projectSpecificHardwareInterface_C8051F040.c:358: TH1 = ( unsigned char ) 0xB2 ;
   058D 75 8D B2           2016 	mov	_TH1,#0xB2
                           2017 ;	../projectSpecificHardwareInterface_C8051F040.c:360: SCON = ser8_BIT_MODE | serRX_ENABLE ;	/* Setup the control register for standard n, 8, 1 - variable baud rate. */
   0590 75 98 50           2018 	mov	_SCON,#0x50
                           2019 ;	../projectSpecificHardwareInterface_C8051F040.c:362: TR1 = 1 ;							/* Start the timer. */
   0593 D2 8E              2020 	setb	_TR1
                           2021 ;	../projectSpecificHardwareInterface_C8051F040.c:364: portRESTORE_REGISTER_GROUP()
   0595 8A 84              2022 	mov	_SFRPAGE,r2
   0597                    2023 00102$:
                           2024 ;	../projectSpecificHardwareInterface_C8051F040.c:367: if(channelNumber == 0)
   0597 90 08 CD           2025 	mov	dptr,#_task_UART_init_projectSpecific_channelNumber_1_1
   059A E0                 2026 	movx	a,@dptr
   059B FA                 2027 	mov	r2,a
   059C 70 03              2028 	jnz	00106$
                           2029 ;	../projectSpecificHardwareInterface_C8051F040.c:369: UART0_Init() ;
   059E 02 0B 45           2030 	ljmp	_UART0_Init
   05A1                    2031 00106$:
                           2032 ;	../projectSpecificHardwareInterface_C8051F040.c:371: else if(channelNumber == 1)
   05A1 BA 01 03           2033 	cjne	r2,#0x01,00108$
                           2034 ;	../projectSpecificHardwareInterface_C8051F040.c:373: UART1_Init() ;
   05A4 02 0B 53           2035 	ljmp	_UART1_Init
   05A7                    2036 00108$:
   05A7 22                 2037 	ret
                           2038 ;------------------------------------------------------------
                           2039 ;Allocation info for local variables in function 'task_UART_core_projectSpecific'
                           2040 ;------------------------------------------------------------
                           2041 ;sloc0                     Allocated with name '_task_UART_core_projectSpecific_sloc0_1_0'
                           2042 ;sloc1                     Allocated with name '_task_UART_core_projectSpecific_sloc1_1_0'
                           2043 ;sloc2                     Allocated with name '_task_UART_core_projectSpecific_sloc2_1_0'
                           2044 ;sloc3                     Allocated with name '_task_UART_core_projectSpecific_sloc3_1_0'
                           2045 ;channelNumber             Allocated with name '_task_UART_core_projectSpecific_channelNumber_1_1'
                           2046 ;SFRPAGE_SAVE              Allocated with name '_task_UART_core_projectSpecific_SFRPAGE_SAVE_3_3'
                           2047 ;Q                         Allocated with name '_task_UART_core_projectSpecific_Q_4_4'
                           2048 ;charReceived              Allocated with name '_task_UART_core_projectSpecific_charReceived_6_6'
                           2049 ;byteToSend                Allocated with name '_task_UART_core_projectSpecific_byteToSend_5_10'
                           2050 ;------------------------------------------------------------
                           2051 ;	../projectSpecificHardwareInterface_C8051F040.c:382: void task_UART_core_projectSpecific(	unsigned char channelNumber)
                           2052 ;	-----------------------------------------
                           2053 ;	 function task_UART_core_projectSpecific
                           2054 ;	-----------------------------------------
   05A8                    2055 _task_UART_core_projectSpecific:
   05A8 E5 82              2056 	mov	a,dpl
   05AA 90 08 CE           2057 	mov	dptr,#_task_UART_core_projectSpecific_channelNumber_1_1
   05AD F0                 2058 	movx	@dptr,a
                           2059 ;	../projectSpecificHardwareInterface_C8051F040.c:384: if(channelNumber < NUMBER_OF_UARTS)
   05AE 90 08 CE           2060 	mov	dptr,#_task_UART_core_projectSpecific_channelNumber_1_1
   05B1 E0                 2061 	movx	a,@dptr
   05B2 FA                 2062 	mov	r2,a
   05B3 BA 01 00           2063 	cjne	r2,#0x01,00125$
   05B6                    2064 00125$:
   05B6 40 01              2065 	jc	00126$
   05B8 22                 2066 	ret
   05B9                    2067 00126$:
                           2068 ;	../projectSpecificHardwareInterface_C8051F040.c:386: portSET_REGISTER_GROUP(UART0_PAGE)
   05B9 AB 84              2069 	mov	r3,_SFRPAGE
   05BB 75 84 00           2070 	mov	_SFRPAGE,#0x00
                           2071 ;	../projectSpecificHardwareInterface_C8051F040.c:388: QUEUE_TYPE*	Q = &receiveBuffers[channelNumber] ;
   05BE EA                 2072 	mov	a,r2
   05BF 75 F0 0B           2073 	mov	b,#0x0B
   05C2 A4                 2074 	mul	ab
   05C3 24 C0              2075 	add	a,#_receiveBuffers
   05C5 FC                 2076 	mov	r4,a
   05C6 E4                 2077 	clr	a
   05C7 34 08              2078 	addc	a,#(_receiveBuffers >> 8)
   05C9 FD                 2079 	mov	r5,a
   05CA 7E 00              2080 	mov	r6,#0x00
   05CC 90 08 CF           2081 	mov	dptr,#_task_UART_core_projectSpecific_Q_4_4
   05CF EC                 2082 	mov	a,r4
   05D0 F0                 2083 	movx	@dptr,a
   05D1 A3                 2084 	inc	dptr
   05D2 ED                 2085 	mov	a,r5
   05D3 F0                 2086 	movx	@dptr,a
   05D4 A3                 2087 	inc	dptr
   05D5 EE                 2088 	mov	a,r6
   05D6 F0                 2089 	movx	@dptr,a
                           2090 ;	../projectSpecificHardwareInterface_C8051F040.c:390: if(RI0)
   05D7 20 98 03           2091 	jb	_RI0,00127$
   05DA 02 06 ED           2092 	ljmp	00106$
   05DD                    2093 00127$:
                           2094 ;	../projectSpecificHardwareInterface_C8051F040.c:392: if(!IsFull(Q))
   05DD 8C 82              2095 	mov	dpl,r4
   05DF 8D 83              2096 	mov	dph,r5
   05E1 8E F0              2097 	mov	b,r6
   05E3 C0 02              2098 	push	ar2
   05E5 C0 03              2099 	push	ar3
   05E7 12 03 A6           2100 	lcall	_IsFull
   05EA E5 82              2101 	mov	a,dpl
   05EC D0 03              2102 	pop	ar3
   05EE D0 02              2103 	pop	ar2
   05F0 60 03              2104 	jz	00128$
   05F2 02 06 EB           2105 	ljmp	00104$
   05F5                    2106 00128$:
                           2107 ;	../projectSpecificHardwareInterface_C8051F040.c:394: char	charReceived = SBUF0 ;
   05F5 C0 03              2108 	push	ar3
   05F7 85 99 08           2109 	mov	_task_UART_core_projectSpecific_sloc0_1_0,_SBUF0
                           2110 ;	../projectSpecificHardwareInterface_C8051F040.c:396: Q->Size++ ;
   05FA 90 08 CF           2111 	mov	dptr,#_task_UART_core_projectSpecific_Q_4_4
   05FD E0                 2112 	movx	a,@dptr
   05FE FD                 2113 	mov	r5,a
   05FF A3                 2114 	inc	dptr
   0600 E0                 2115 	movx	a,@dptr
   0601 FE                 2116 	mov	r6,a
   0602 A3                 2117 	inc	dptr
   0603 E0                 2118 	movx	a,@dptr
   0604 FF                 2119 	mov	r7,a
   0605 74 06              2120 	mov	a,#0x06
   0607 2D                 2121 	add	a,r5
   0608 F5 09              2122 	mov	_task_UART_core_projectSpecific_sloc1_1_0,a
   060A E4                 2123 	clr	a
   060B 3E                 2124 	addc	a,r6
   060C F5 0A              2125 	mov	(_task_UART_core_projectSpecific_sloc1_1_0 + 1),a
   060E 8F 0B              2126 	mov	(_task_UART_core_projectSpecific_sloc1_1_0 + 2),r7
   0610 85 09 82           2127 	mov	dpl,_task_UART_core_projectSpecific_sloc1_1_0
   0613 85 0A 83           2128 	mov	dph,(_task_UART_core_projectSpecific_sloc1_1_0 + 1)
   0616 85 0B F0           2129 	mov	b,(_task_UART_core_projectSpecific_sloc1_1_0 + 2)
   0619 12 44 37           2130 	lcall	__gptrget
   061C FC                 2131 	mov	r4,a
   061D A3                 2132 	inc	dptr
   061E 12 44 37           2133 	lcall	__gptrget
   0621 FB                 2134 	mov	r3,a
   0622 0C                 2135 	inc	r4
   0623 BC 00 01           2136 	cjne	r4,#0x00,00129$
   0626 0B                 2137 	inc	r3
   0627                    2138 00129$:
   0627 85 09 82           2139 	mov	dpl,_task_UART_core_projectSpecific_sloc1_1_0
   062A 85 0A 83           2140 	mov	dph,(_task_UART_core_projectSpecific_sloc1_1_0 + 1)
   062D 85 0B F0           2141 	mov	b,(_task_UART_core_projectSpecific_sloc1_1_0 + 2)
   0630 EC                 2142 	mov	a,r4
   0631 12 38 0B           2143 	lcall	__gptrput
   0634 A3                 2144 	inc	dptr
   0635 EB                 2145 	mov	a,r3
   0636 12 38 0B           2146 	lcall	__gptrput
                           2147 ;	../projectSpecificHardwareInterface_C8051F040.c:397: Q->Rear = Succ(Q->Rear, Q) ;
   0639 74 04              2148 	mov	a,#0x04
   063B 2D                 2149 	add	a,r5
   063C F5 09              2150 	mov	_task_UART_core_projectSpecific_sloc1_1_0,a
   063E E4                 2151 	clr	a
   063F 3E                 2152 	addc	a,r6
   0640 F5 0A              2153 	mov	(_task_UART_core_projectSpecific_sloc1_1_0 + 1),a
   0642 8F 0B              2154 	mov	(_task_UART_core_projectSpecific_sloc1_1_0 + 2),r7
   0644 85 09 82           2155 	mov	dpl,_task_UART_core_projectSpecific_sloc1_1_0
   0647 85 0A 83           2156 	mov	dph,(_task_UART_core_projectSpecific_sloc1_1_0 + 1)
   064A 85 0B F0           2157 	mov	b,(_task_UART_core_projectSpecific_sloc1_1_0 + 2)
   064D 12 44 37           2158 	lcall	__gptrget
   0650 F9                 2159 	mov	r1,a
   0651 A3                 2160 	inc	dptr
   0652 12 44 37           2161 	lcall	__gptrget
   0655 FB                 2162 	mov	r3,a
   0656 90 04 58           2163 	mov	dptr,#_Succ_PARM_2
   0659 ED                 2164 	mov	a,r5
   065A F0                 2165 	movx	@dptr,a
   065B A3                 2166 	inc	dptr
   065C EE                 2167 	mov	a,r6
   065D F0                 2168 	movx	@dptr,a
   065E A3                 2169 	inc	dptr
   065F EF                 2170 	mov	a,r7
   0660 F0                 2171 	movx	@dptr,a
   0661 89 82              2172 	mov	dpl,r1
   0663 8B 83              2173 	mov	dph,r3
   0665 C0 02              2174 	push	ar2
   0667 12 03 F8           2175 	lcall	_Succ
   066A AB 82              2176 	mov	r3,dpl
   066C AC 83              2177 	mov	r4,dph
   066E D0 02              2178 	pop	ar2
   0670 85 09 82           2179 	mov	dpl,_task_UART_core_projectSpecific_sloc1_1_0
   0673 85 0A 83           2180 	mov	dph,(_task_UART_core_projectSpecific_sloc1_1_0 + 1)
   0676 85 0B F0           2181 	mov	b,(_task_UART_core_projectSpecific_sloc1_1_0 + 2)
   0679 EB                 2182 	mov	a,r3
   067A 12 38 0B           2183 	lcall	__gptrput
   067D A3                 2184 	inc	dptr
   067E EC                 2185 	mov	a,r4
   067F 12 38 0B           2186 	lcall	__gptrput
                           2187 ;	../projectSpecificHardwareInterface_C8051F040.c:398: Q->Array[Q->Rear] = charReceived ;
   0682 90 08 CF           2188 	mov	dptr,#_task_UART_core_projectSpecific_Q_4_4
   0685 E0                 2189 	movx	a,@dptr
   0686 FB                 2190 	mov	r3,a
   0687 A3                 2191 	inc	dptr
   0688 E0                 2192 	movx	a,@dptr
   0689 FC                 2193 	mov	r4,a
   068A A3                 2194 	inc	dptr
   068B E0                 2195 	movx	a,@dptr
   068C FD                 2196 	mov	r5,a
   068D 74 08              2197 	mov	a,#0x08
   068F 2B                 2198 	add	a,r3
   0690 FE                 2199 	mov	r6,a
   0691 E4                 2200 	clr	a
   0692 3C                 2201 	addc	a,r4
   0693 FF                 2202 	mov	r7,a
   0694 8D 00              2203 	mov	ar0,r5
   0696 8E 82              2204 	mov	dpl,r6
   0698 8F 83              2205 	mov	dph,r7
   069A 88 F0              2206 	mov	b,r0
   069C 12 44 37           2207 	lcall	__gptrget
   069F FE                 2208 	mov	r6,a
   06A0 A3                 2209 	inc	dptr
   06A1 12 44 37           2210 	lcall	__gptrget
   06A4 FF                 2211 	mov	r7,a
   06A5 A3                 2212 	inc	dptr
   06A6 12 44 37           2213 	lcall	__gptrget
   06A9 F8                 2214 	mov	r0,a
   06AA 74 04              2215 	mov	a,#0x04
   06AC 2B                 2216 	add	a,r3
   06AD FB                 2217 	mov	r3,a
   06AE E4                 2218 	clr	a
   06AF 3C                 2219 	addc	a,r4
   06B0 FC                 2220 	mov	r4,a
   06B1 8B 82              2221 	mov	dpl,r3
   06B3 8C 83              2222 	mov	dph,r4
   06B5 8D F0              2223 	mov	b,r5
   06B7 12 44 37           2224 	lcall	__gptrget
   06BA FB                 2225 	mov	r3,a
   06BB A3                 2226 	inc	dptr
   06BC 12 44 37           2227 	lcall	__gptrget
   06BF FC                 2228 	mov	r4,a
   06C0 EB                 2229 	mov	a,r3
   06C1 2E                 2230 	add	a,r6
   06C2 FE                 2231 	mov	r6,a
   06C3 EC                 2232 	mov	a,r4
   06C4 3F                 2233 	addc	a,r7
   06C5 FF                 2234 	mov	r7,a
   06C6 8E 82              2235 	mov	dpl,r6
   06C8 8F 83              2236 	mov	dph,r7
   06CA 88 F0              2237 	mov	b,r0
   06CC E5 08              2238 	mov	a,_task_UART_core_projectSpecific_sloc0_1_0
   06CE 12 38 0B           2239 	lcall	__gptrput
                           2240 ;	../projectSpecificHardwareInterface_C8051F040.c:400: if(charReceived == '\n')
   06D1 74 0A              2241 	mov	a,#0x0A
   06D3 B5 08 02           2242 	cjne	a,_task_UART_core_projectSpecific_sloc0_1_0,00130$
   06D6 80 04              2243 	sjmp	00131$
   06D8                    2244 00130$:
   06D8 D0 03              2245 	pop	ar3
   06DA 80 0F              2246 	sjmp	00104$
   06DC                    2247 00131$:
   06DC D0 03              2248 	pop	ar3
                           2249 ;	../projectSpecificHardwareInterface_C8051F040.c:402: lineReady[channelNumber] = true ;
   06DE EA                 2250 	mov	a,r2
   06DF 24 CC              2251 	add	a,#_lineReady
   06E1 F5 82              2252 	mov	dpl,a
   06E3 E4                 2253 	clr	a
   06E4 34 08              2254 	addc	a,#(_lineReady >> 8)
   06E6 F5 83              2255 	mov	dph,a
   06E8 74 01              2256 	mov	a,#0x01
   06EA F0                 2257 	movx	@dptr,a
   06EB                    2258 00104$:
                           2259 ;	../projectSpecificHardwareInterface_C8051F040.c:406: RI0 = 0 ;
   06EB C2 98              2260 	clr	_RI0
   06ED                    2261 00106$:
                           2262 ;	../projectSpecificHardwareInterface_C8051F040.c:409: Q = &transmitBuffers[channelNumber] ;
   06ED 90 08 CE           2263 	mov	dptr,#_task_UART_core_projectSpecific_channelNumber_1_1
   06F0 E0                 2264 	movx	a,@dptr
   06F1 FA                 2265 	mov	r2,a
   06F2 75 F0 0B           2266 	mov	b,#0x0B
   06F5 A4                 2267 	mul	ab
   06F6 24 B5              2268 	add	a,#_transmitBuffers
   06F8 FC                 2269 	mov	r4,a
   06F9 E4                 2270 	clr	a
   06FA 34 08              2271 	addc	a,#(_transmitBuffers >> 8)
   06FC FD                 2272 	mov	r5,a
   06FD 7E 00              2273 	mov	r6,#0x00
   06FF 90 08 CF           2274 	mov	dptr,#_task_UART_core_projectSpecific_Q_4_4
   0702 EC                 2275 	mov	a,r4
   0703 F0                 2276 	movx	@dptr,a
   0704 A3                 2277 	inc	dptr
   0705 ED                 2278 	mov	a,r5
   0706 F0                 2279 	movx	@dptr,a
   0707 A3                 2280 	inc	dptr
   0708 EE                 2281 	mov	a,r6
   0709 F0                 2282 	movx	@dptr,a
                           2283 ;	../projectSpecificHardwareInterface_C8051F040.c:411: if(charSent[channelNumber] == true)
   070A EA                 2284 	mov	a,r2
   070B 24 CB              2285 	add	a,#_charSent
   070D FA                 2286 	mov	r2,a
   070E E4                 2287 	clr	a
   070F 34 08              2288 	addc	a,#(_charSent >> 8)
   0711 FF                 2289 	mov	r7,a
   0712 8A 82              2290 	mov	dpl,r2
   0714 8F 83              2291 	mov	dph,r7
   0716 E0                 2292 	movx	a,@dptr
   0717 F8                 2293 	mov	r0,a
   0718 B8 01 09           2294 	cjne	r0,#0x01,00111$
                           2295 ;	../projectSpecificHardwareInterface_C8051F040.c:413: charSent[channelNumber] = false ;
   071B 8A 82              2296 	mov	dpl,r2
   071D 8F 83              2297 	mov	dph,r7
   071F E4                 2298 	clr	a
   0720 F0                 2299 	movx	@dptr,a
                           2300 ;	../projectSpecificHardwareInterface_C8051F040.c:417: while(TI0 == 0) { /* empty loop */} ;
   0721                    2301 00107$:
   0721 30 99 FD           2302 	jnb	_TI0,00107$
   0724                    2303 00111$:
                           2304 ;	../projectSpecificHardwareInterface_C8051F040.c:420: if(!IsEmpty(Q))
   0724 8C 82              2305 	mov	dpl,r4
   0726 8D 83              2306 	mov	dph,r5
   0728 8E F0              2307 	mov	b,r6
   072A C0 03              2308 	push	ar3
   072C 12 03 6A           2309 	lcall	_IsEmpty
   072F E5 82              2310 	mov	a,dpl
   0731 D0 03              2311 	pop	ar3
   0733 60 03              2312 	jz	00135$
   0735 02 08 09           2313 	ljmp	00113$
   0738                    2314 00135$:
                           2315 ;	../projectSpecificHardwareInterface_C8051F040.c:422: unsigned char byteToSend = Q->Array[Q->Front] ;
   0738 C0 03              2316 	push	ar3
   073A 90 08 CF           2317 	mov	dptr,#_task_UART_core_projectSpecific_Q_4_4
   073D E0                 2318 	movx	a,@dptr
   073E FA                 2319 	mov	r2,a
   073F A3                 2320 	inc	dptr
   0740 E0                 2321 	movx	a,@dptr
   0741 FC                 2322 	mov	r4,a
   0742 A3                 2323 	inc	dptr
   0743 E0                 2324 	movx	a,@dptr
   0744 FD                 2325 	mov	r5,a
   0745 74 08              2326 	mov	a,#0x08
   0747 2A                 2327 	add	a,r2
   0748 FE                 2328 	mov	r6,a
   0749 E4                 2329 	clr	a
   074A 3C                 2330 	addc	a,r4
   074B FF                 2331 	mov	r7,a
   074C 8D 00              2332 	mov	ar0,r5
   074E 8E 82              2333 	mov	dpl,r6
   0750 8F 83              2334 	mov	dph,r7
   0752 88 F0              2335 	mov	b,r0
   0754 12 44 37           2336 	lcall	__gptrget
   0757 F5 09              2337 	mov	_task_UART_core_projectSpecific_sloc1_1_0,a
   0759 A3                 2338 	inc	dptr
   075A 12 44 37           2339 	lcall	__gptrget
   075D F5 0A              2340 	mov	(_task_UART_core_projectSpecific_sloc1_1_0 + 1),a
   075F A3                 2341 	inc	dptr
   0760 12 44 37           2342 	lcall	__gptrget
   0763 F5 0B              2343 	mov	(_task_UART_core_projectSpecific_sloc1_1_0 + 2),a
   0765 74 02              2344 	mov	a,#0x02
   0767 2A                 2345 	add	a,r2
   0768 F5 0E              2346 	mov	_task_UART_core_projectSpecific_sloc3_1_0,a
   076A E4                 2347 	clr	a
   076B 3C                 2348 	addc	a,r4
   076C F5 0F              2349 	mov	(_task_UART_core_projectSpecific_sloc3_1_0 + 1),a
   076E 8D 10              2350 	mov	(_task_UART_core_projectSpecific_sloc3_1_0 + 2),r5
   0770 85 0E 82           2351 	mov	dpl,_task_UART_core_projectSpecific_sloc3_1_0
   0773 85 0F 83           2352 	mov	dph,(_task_UART_core_projectSpecific_sloc3_1_0 + 1)
   0776 85 10 F0           2353 	mov	b,(_task_UART_core_projectSpecific_sloc3_1_0 + 2)
   0779 12 44 37           2354 	lcall	__gptrget
   077C F5 0C              2355 	mov	_task_UART_core_projectSpecific_sloc2_1_0,a
   077E A3                 2356 	inc	dptr
   077F 12 44 37           2357 	lcall	__gptrget
   0782 F5 0D              2358 	mov	(_task_UART_core_projectSpecific_sloc2_1_0 + 1),a
   0784 E5 0C              2359 	mov	a,_task_UART_core_projectSpecific_sloc2_1_0
   0786 25 09              2360 	add	a,_task_UART_core_projectSpecific_sloc1_1_0
   0788 FF                 2361 	mov	r7,a
   0789 E5 0D              2362 	mov	a,(_task_UART_core_projectSpecific_sloc2_1_0 + 1)
   078B 35 0A              2363 	addc	a,(_task_UART_core_projectSpecific_sloc1_1_0 + 1)
   078D F8                 2364 	mov	r0,a
   078E AB 0B              2365 	mov	r3,(_task_UART_core_projectSpecific_sloc1_1_0 + 2)
   0790 8F 82              2366 	mov	dpl,r7
   0792 88 83              2367 	mov	dph,r0
   0794 8B F0              2368 	mov	b,r3
   0796 12 44 37           2369 	lcall	__gptrget
   0799 F5 09              2370 	mov	_task_UART_core_projectSpecific_sloc1_1_0,a
                           2371 ;	../projectSpecificHardwareInterface_C8051F040.c:424: Q->Size-- ;
   079B 74 06              2372 	mov	a,#0x06
   079D 2A                 2373 	add	a,r2
   079E FB                 2374 	mov	r3,a
   079F E4                 2375 	clr	a
   07A0 3C                 2376 	addc	a,r4
   07A1 FE                 2377 	mov	r6,a
   07A2 8D 00              2378 	mov	ar0,r5
   07A4 8B 82              2379 	mov	dpl,r3
   07A6 8E 83              2380 	mov	dph,r6
   07A8 88 F0              2381 	mov	b,r0
   07AA 12 44 37           2382 	lcall	__gptrget
   07AD F9                 2383 	mov	r1,a
   07AE A3                 2384 	inc	dptr
   07AF 12 44 37           2385 	lcall	__gptrget
   07B2 FF                 2386 	mov	r7,a
   07B3 19                 2387 	dec	r1
   07B4 B9 FF 01           2388 	cjne	r1,#0xff,00136$
   07B7 1F                 2389 	dec	r7
   07B8                    2390 00136$:
   07B8 8B 82              2391 	mov	dpl,r3
   07BA 8E 83              2392 	mov	dph,r6
   07BC 88 F0              2393 	mov	b,r0
   07BE E9                 2394 	mov	a,r1
   07BF 12 38 0B           2395 	lcall	__gptrput
   07C2 A3                 2396 	inc	dptr
   07C3 EF                 2397 	mov	a,r7
   07C4 12 38 0B           2398 	lcall	__gptrput
                           2399 ;	../projectSpecificHardwareInterface_C8051F040.c:425: Q->Front = Succ(Q->Front, Q) ;
   07C7 90 04 58           2400 	mov	dptr,#_Succ_PARM_2
   07CA EA                 2401 	mov	a,r2
   07CB F0                 2402 	movx	@dptr,a
   07CC A3                 2403 	inc	dptr
   07CD EC                 2404 	mov	a,r4
   07CE F0                 2405 	movx	@dptr,a
   07CF A3                 2406 	inc	dptr
   07D0 ED                 2407 	mov	a,r5
   07D1 F0                 2408 	movx	@dptr,a
   07D2 85 0C 82           2409 	mov	dpl,_task_UART_core_projectSpecific_sloc2_1_0
   07D5 85 0D 83           2410 	mov	dph,(_task_UART_core_projectSpecific_sloc2_1_0 + 1)
   07D8 12 03 F8           2411 	lcall	_Succ
   07DB AA 82              2412 	mov	r2,dpl
   07DD AB 83              2413 	mov	r3,dph
   07DF 85 0E 82           2414 	mov	dpl,_task_UART_core_projectSpecific_sloc3_1_0
   07E2 85 0F 83           2415 	mov	dph,(_task_UART_core_projectSpecific_sloc3_1_0 + 1)
   07E5 85 10 F0           2416 	mov	b,(_task_UART_core_projectSpecific_sloc3_1_0 + 2)
   07E8 EA                 2417 	mov	a,r2
   07E9 12 38 0B           2418 	lcall	__gptrput
   07EC A3                 2419 	inc	dptr
   07ED EB                 2420 	mov	a,r3
   07EE 12 38 0B           2421 	lcall	__gptrput
                           2422 ;	../projectSpecificHardwareInterface_C8051F040.c:427: TI0 = 0 ;	// clear it and send the next character
   07F1 C2 99              2423 	clr	_TI0
                           2424 ;	../projectSpecificHardwareInterface_C8051F040.c:429: SBUF0 = byteToSend ;
   07F3 85 09 99           2425 	mov	_SBUF0,_task_UART_core_projectSpecific_sloc1_1_0
                           2426 ;	../projectSpecificHardwareInterface_C8051F040.c:431: charSent[channelNumber] = true ;
   07F6 90 08 CE           2427 	mov	dptr,#_task_UART_core_projectSpecific_channelNumber_1_1
   07F9 E0                 2428 	movx	a,@dptr
   07FA FA                 2429 	mov	r2,a
   07FB 24 CB              2430 	add	a,#_charSent
   07FD F5 82              2431 	mov	dpl,a
   07FF E4                 2432 	clr	a
   0800 34 08              2433 	addc	a,#(_charSent >> 8)
   0802 F5 83              2434 	mov	dph,a
   0804 74 01              2435 	mov	a,#0x01
   0806 F0                 2436 	movx	@dptr,a
                           2437 ;	../projectSpecificHardwareInterface_C8051F040.c:434: portRESTORE_REGISTER_GROUP()
   0807 D0 03              2438 	pop	ar3
                           2439 ;	../projectSpecificHardwareInterface_C8051F040.c:431: charSent[channelNumber] = true ;
   0809                    2440 00113$:
                           2441 ;	../projectSpecificHardwareInterface_C8051F040.c:434: portRESTORE_REGISTER_GROUP()
   0809 8B 84              2442 	mov	_SFRPAGE,r3
   080B 22                 2443 	ret
                           2444 ;------------------------------------------------------------
                           2445 ;Allocation info for local variables in function 'task_UART_putchar_projectSpecific'
                           2446 ;------------------------------------------------------------
                           2447 ;charToSend                Allocated with name '_task_UART_putchar_projectSpecific_PARM_2'
                           2448 ;channelNumber             Allocated with name '_task_UART_putchar_projectSpecific_channelNumber_1_1'
                           2449 ;Q                         Allocated with name '_task_UART_putchar_projectSpecific_Q_2_2'
                           2450 ;------------------------------------------------------------
                           2451 ;	../projectSpecificHardwareInterface_C8051F040.c:439: bool task_UART_putchar_projectSpecific(	unsigned char channelNumber, char charToSend)
                           2452 ;	-----------------------------------------
                           2453 ;	 function task_UART_putchar_projectSpecific
                           2454 ;	-----------------------------------------
   080C                    2455 _task_UART_putchar_projectSpecific:
   080C E5 82              2456 	mov	a,dpl
   080E 90 08 D3           2457 	mov	dptr,#_task_UART_putchar_projectSpecific_channelNumber_1_1
   0811 F0                 2458 	movx	@dptr,a
                           2459 ;	../projectSpecificHardwareInterface_C8051F040.c:441: task_UART_core(0) ;
   0812 75 82 00           2460 	mov	dpl,#0x00
   0815 12 35 DA           2461 	lcall	_task_UART_core
                           2462 ;	../projectSpecificHardwareInterface_C8051F040.c:443: portDISABLE_INTERRUPTS() ;
   0818 C2 AF              2463 	clr	_EA
                           2464 ;	../projectSpecificHardwareInterface_C8051F040.c:445: if(channelNumber < NUMBER_OF_UARTS)
   081A 90 08 D3           2465 	mov	dptr,#_task_UART_putchar_projectSpecific_channelNumber_1_1
   081D E0                 2466 	movx	a,@dptr
   081E FA                 2467 	mov	r2,a
   081F BA 01 00           2468 	cjne	r2,#0x01,00109$
   0822                    2469 00109$:
   0822 40 03              2470 	jc	00110$
   0824 02 09 25           2471 	ljmp	00104$
   0827                    2472 00110$:
                           2473 ;	../projectSpecificHardwareInterface_C8051F040.c:447: QUEUE_TYPE*	Q = &transmitBuffers[channelNumber] ;
   0827 EA                 2474 	mov	a,r2
   0828 75 F0 0B           2475 	mov	b,#0x0B
   082B A4                 2476 	mul	ab
   082C 24 B5              2477 	add	a,#_transmitBuffers
   082E FA                 2478 	mov	r2,a
   082F E4                 2479 	clr	a
   0830 34 08              2480 	addc	a,#(_transmitBuffers >> 8)
   0832 FB                 2481 	mov	r3,a
   0833 7C 00              2482 	mov	r4,#0x00
   0835 90 08 D4           2483 	mov	dptr,#_task_UART_putchar_projectSpecific_Q_2_2
   0838 EA                 2484 	mov	a,r2
   0839 F0                 2485 	movx	@dptr,a
   083A A3                 2486 	inc	dptr
   083B EB                 2487 	mov	a,r3
   083C F0                 2488 	movx	@dptr,a
   083D A3                 2489 	inc	dptr
   083E EC                 2490 	mov	a,r4
   083F F0                 2491 	movx	@dptr,a
                           2492 ;	../projectSpecificHardwareInterface_C8051F040.c:449: if(!IsFull(Q))
   0840 8A 82              2493 	mov	dpl,r2
   0842 8B 83              2494 	mov	dph,r3
   0844 8C F0              2495 	mov	b,r4
   0846 12 03 A6           2496 	lcall	_IsFull
   0849 E5 82              2497 	mov	a,dpl
   084B 60 03              2498 	jz	00111$
   084D 02 09 25           2499 	ljmp	00104$
   0850                    2500 00111$:
                           2501 ;	../projectSpecificHardwareInterface_C8051F040.c:451: Q->Size++ ;
   0850 90 08 D4           2502 	mov	dptr,#_task_UART_putchar_projectSpecific_Q_2_2
   0853 E0                 2503 	movx	a,@dptr
   0854 FA                 2504 	mov	r2,a
   0855 A3                 2505 	inc	dptr
   0856 E0                 2506 	movx	a,@dptr
   0857 FB                 2507 	mov	r3,a
   0858 A3                 2508 	inc	dptr
   0859 E0                 2509 	movx	a,@dptr
   085A FC                 2510 	mov	r4,a
   085B 74 06              2511 	mov	a,#0x06
   085D 2A                 2512 	add	a,r2
   085E FD                 2513 	mov	r5,a
   085F E4                 2514 	clr	a
   0860 3B                 2515 	addc	a,r3
   0861 FE                 2516 	mov	r6,a
   0862 8C 07              2517 	mov	ar7,r4
   0864 8D 82              2518 	mov	dpl,r5
   0866 8E 83              2519 	mov	dph,r6
   0868 8F F0              2520 	mov	b,r7
   086A 12 44 37           2521 	lcall	__gptrget
   086D F8                 2522 	mov	r0,a
   086E A3                 2523 	inc	dptr
   086F 12 44 37           2524 	lcall	__gptrget
   0872 F9                 2525 	mov	r1,a
   0873 08                 2526 	inc	r0
   0874 B8 00 01           2527 	cjne	r0,#0x00,00112$
   0877 09                 2528 	inc	r1
   0878                    2529 00112$:
   0878 8D 82              2530 	mov	dpl,r5
   087A 8E 83              2531 	mov	dph,r6
   087C 8F F0              2532 	mov	b,r7
   087E E8                 2533 	mov	a,r0
   087F 12 38 0B           2534 	lcall	__gptrput
   0882 A3                 2535 	inc	dptr
   0883 E9                 2536 	mov	a,r1
   0884 12 38 0B           2537 	lcall	__gptrput
                           2538 ;	../projectSpecificHardwareInterface_C8051F040.c:452: Q->Rear = Succ(Q->Rear, Q) ;
   0887 74 04              2539 	mov	a,#0x04
   0889 2A                 2540 	add	a,r2
   088A FD                 2541 	mov	r5,a
   088B E4                 2542 	clr	a
   088C 3B                 2543 	addc	a,r3
   088D FE                 2544 	mov	r6,a
   088E 8C 07              2545 	mov	ar7,r4
   0890 8D 82              2546 	mov	dpl,r5
   0892 8E 83              2547 	mov	dph,r6
   0894 8F F0              2548 	mov	b,r7
   0896 12 44 37           2549 	lcall	__gptrget
   0899 F8                 2550 	mov	r0,a
   089A A3                 2551 	inc	dptr
   089B 12 44 37           2552 	lcall	__gptrget
   089E F9                 2553 	mov	r1,a
   089F 90 04 58           2554 	mov	dptr,#_Succ_PARM_2
   08A2 EA                 2555 	mov	a,r2
   08A3 F0                 2556 	movx	@dptr,a
   08A4 A3                 2557 	inc	dptr
   08A5 EB                 2558 	mov	a,r3
   08A6 F0                 2559 	movx	@dptr,a
   08A7 A3                 2560 	inc	dptr
   08A8 EC                 2561 	mov	a,r4
   08A9 F0                 2562 	movx	@dptr,a
   08AA 88 82              2563 	mov	dpl,r0
   08AC 89 83              2564 	mov	dph,r1
   08AE C0 05              2565 	push	ar5
   08B0 C0 06              2566 	push	ar6
   08B2 C0 07              2567 	push	ar7
   08B4 12 03 F8           2568 	lcall	_Succ
   08B7 AA 82              2569 	mov	r2,dpl
   08B9 AB 83              2570 	mov	r3,dph
   08BB D0 07              2571 	pop	ar7
   08BD D0 06              2572 	pop	ar6
   08BF D0 05              2573 	pop	ar5
   08C1 8D 82              2574 	mov	dpl,r5
   08C3 8E 83              2575 	mov	dph,r6
   08C5 8F F0              2576 	mov	b,r7
   08C7 EA                 2577 	mov	a,r2
   08C8 12 38 0B           2578 	lcall	__gptrput
   08CB A3                 2579 	inc	dptr
   08CC EB                 2580 	mov	a,r3
   08CD 12 38 0B           2581 	lcall	__gptrput
                           2582 ;	../projectSpecificHardwareInterface_C8051F040.c:453: Q->Array[Q->Rear] = charToSend ;
   08D0 90 08 D4           2583 	mov	dptr,#_task_UART_putchar_projectSpecific_Q_2_2
   08D3 E0                 2584 	movx	a,@dptr
   08D4 FA                 2585 	mov	r2,a
   08D5 A3                 2586 	inc	dptr
   08D6 E0                 2587 	movx	a,@dptr
   08D7 FB                 2588 	mov	r3,a
   08D8 A3                 2589 	inc	dptr
   08D9 E0                 2590 	movx	a,@dptr
   08DA FC                 2591 	mov	r4,a
   08DB 74 08              2592 	mov	a,#0x08
   08DD 2A                 2593 	add	a,r2
   08DE FD                 2594 	mov	r5,a
   08DF E4                 2595 	clr	a
   08E0 3B                 2596 	addc	a,r3
   08E1 FE                 2597 	mov	r6,a
   08E2 8C 07              2598 	mov	ar7,r4
   08E4 8D 82              2599 	mov	dpl,r5
   08E6 8E 83              2600 	mov	dph,r6
   08E8 8F F0              2601 	mov	b,r7
   08EA 12 44 37           2602 	lcall	__gptrget
   08ED FD                 2603 	mov	r5,a
   08EE A3                 2604 	inc	dptr
   08EF 12 44 37           2605 	lcall	__gptrget
   08F2 FE                 2606 	mov	r6,a
   08F3 A3                 2607 	inc	dptr
   08F4 12 44 37           2608 	lcall	__gptrget
   08F7 FF                 2609 	mov	r7,a
   08F8 74 04              2610 	mov	a,#0x04
   08FA 2A                 2611 	add	a,r2
   08FB FA                 2612 	mov	r2,a
   08FC E4                 2613 	clr	a
   08FD 3B                 2614 	addc	a,r3
   08FE FB                 2615 	mov	r3,a
   08FF 8A 82              2616 	mov	dpl,r2
   0901 8B 83              2617 	mov	dph,r3
   0903 8C F0              2618 	mov	b,r4
   0905 12 44 37           2619 	lcall	__gptrget
   0908 FA                 2620 	mov	r2,a
   0909 A3                 2621 	inc	dptr
   090A 12 44 37           2622 	lcall	__gptrget
   090D FB                 2623 	mov	r3,a
   090E EA                 2624 	mov	a,r2
   090F 2D                 2625 	add	a,r5
   0910 FD                 2626 	mov	r5,a
   0911 EB                 2627 	mov	a,r3
   0912 3E                 2628 	addc	a,r6
   0913 FE                 2629 	mov	r6,a
   0914 90 08 D2           2630 	mov	dptr,#_task_UART_putchar_projectSpecific_PARM_2
   0917 E0                 2631 	movx	a,@dptr
   0918 8D 82              2632 	mov	dpl,r5
   091A 8E 83              2633 	mov	dph,r6
   091C 8F F0              2634 	mov	b,r7
   091E 12 38 0B           2635 	lcall	__gptrput
                           2636 ;	../projectSpecificHardwareInterface_C8051F040.c:455: portENABLE_INTERRUPTS() ;
   0921 D2 AF              2637 	setb	_EA
                           2638 ;	../projectSpecificHardwareInterface_C8051F040.c:457: return true ;
   0923 D3                 2639 	setb	c
   0924 22                 2640 	ret
   0925                    2641 00104$:
                           2642 ;	../projectSpecificHardwareInterface_C8051F040.c:461: portENABLE_INTERRUPTS() ;
   0925 D2 AF              2643 	setb	_EA
                           2644 ;	../projectSpecificHardwareInterface_C8051F040.c:465: return false ;
   0927 C3                 2645 	clr	c
   0928 22                 2646 	ret
                           2647 ;------------------------------------------------------------
                           2648 ;Allocation info for local variables in function 'task_UART_puts_projectSpecific'
                           2649 ;------------------------------------------------------------
                           2650 ;buffer                    Allocated with name '_task_UART_puts_projectSpecific_PARM_2'
                           2651 ;channelNumber             Allocated with name '_task_UART_puts_projectSpecific_channelNumber_1_1'
                           2652 ;myBuffer                  Allocated with name '_task_UART_puts_projectSpecific_myBuffer_2_2'
                           2653 ;------------------------------------------------------------
                           2654 ;	../projectSpecificHardwareInterface_C8051F040.c:469: void task_UART_puts_projectSpecific(	unsigned char channelNumber, const char *buffer)
                           2655 ;	-----------------------------------------
                           2656 ;	 function task_UART_puts_projectSpecific
                           2657 ;	-----------------------------------------
   0929                    2658 _task_UART_puts_projectSpecific:
   0929 E5 82              2659 	mov	a,dpl
   092B 90 08 DA           2660 	mov	dptr,#_task_UART_puts_projectSpecific_channelNumber_1_1
   092E F0                 2661 	movx	@dptr,a
                           2662 ;	../projectSpecificHardwareInterface_C8051F040.c:471: if(channelNumber < NUMBER_OF_UARTS)
   092F 90 08 DA           2663 	mov	dptr,#_task_UART_puts_projectSpecific_channelNumber_1_1
   0932 E0                 2664 	movx	a,@dptr
   0933 FA                 2665 	mov	r2,a
   0934 BA 01 00           2666 	cjne	r2,#0x01,00119$
   0937                    2667 00119$:
   0937 50 6C              2668 	jnc	00112$
                           2669 ;	../projectSpecificHardwareInterface_C8051F040.c:473: unsigned char* myBuffer = buffer ;
   0939 90 08 D7           2670 	mov	dptr,#_task_UART_puts_projectSpecific_PARM_2
   093C E0                 2671 	movx	a,@dptr
   093D FB                 2672 	mov	r3,a
   093E A3                 2673 	inc	dptr
   093F E0                 2674 	movx	a,@dptr
   0940 FC                 2675 	mov	r4,a
   0941 A3                 2676 	inc	dptr
   0942 E0                 2677 	movx	a,@dptr
   0943 FD                 2678 	mov	r5,a
                           2679 ;	../projectSpecificHardwareInterface_C8051F040.c:475: while(*myBuffer)
   0944 8A 06              2680 	mov	ar6,r2
   0946                    2681 00107$:
   0946 8B 82              2682 	mov	dpl,r3
   0948 8C 83              2683 	mov	dph,r4
   094A 8D F0              2684 	mov	b,r5
   094C 12 44 37           2685 	lcall	__gptrget
   094F FF                 2686 	mov	r7,a
   0950 60 53              2687 	jz	00112$
                           2688 ;	../projectSpecificHardwareInterface_C8051F040.c:477: if((*myBuffer) == '\n')
   0952 BF 0A 21           2689 	cjne	r7,#0x0A,00104$
                           2690 ;	../projectSpecificHardwareInterface_C8051F040.c:479: if(!task_UART_putchar(channelNumber, '\r'))
   0955 90 0A 74           2691 	mov	dptr,#_task_UART_putchar_PARM_2
   0958 74 0D              2692 	mov	a,#0x0D
   095A F0                 2693 	movx	@dptr,a
   095B 8E 82              2694 	mov	dpl,r6
   095D C0 02              2695 	push	ar2
   095F C0 03              2696 	push	ar3
   0961 C0 04              2697 	push	ar4
   0963 C0 05              2698 	push	ar5
   0965 C0 06              2699 	push	ar6
   0967 12 35 E9           2700 	lcall	_task_UART_putchar
   096A D0 06              2701 	pop	ar6
   096C D0 05              2702 	pop	ar5
   096E D0 04              2703 	pop	ar4
   0970 D0 03              2704 	pop	ar3
   0972 D0 02              2705 	pop	ar2
   0974 50 2F              2706 	jnc	00112$
                           2707 ;	../projectSpecificHardwareInterface_C8051F040.c:481: break ;
   0976                    2708 00104$:
                           2709 ;	../projectSpecificHardwareInterface_C8051F040.c:485: if(!task_UART_putchar(channelNumber, *myBuffer++))
   0976 8B 82              2710 	mov	dpl,r3
   0978 8C 83              2711 	mov	dph,r4
   097A 8D F0              2712 	mov	b,r5
   097C 12 44 37           2713 	lcall	__gptrget
   097F FF                 2714 	mov	r7,a
   0980 A3                 2715 	inc	dptr
   0981 AB 82              2716 	mov	r3,dpl
   0983 AC 83              2717 	mov	r4,dph
   0985 90 0A 74           2718 	mov	dptr,#_task_UART_putchar_PARM_2
   0988 EF                 2719 	mov	a,r7
   0989 F0                 2720 	movx	@dptr,a
   098A 8A 82              2721 	mov	dpl,r2
   098C C0 02              2722 	push	ar2
   098E C0 03              2723 	push	ar3
   0990 C0 04              2724 	push	ar4
   0992 C0 05              2725 	push	ar5
   0994 C0 06              2726 	push	ar6
   0996 12 35 E9           2727 	lcall	_task_UART_putchar
   0999 D0 06              2728 	pop	ar6
   099B D0 05              2729 	pop	ar5
   099D D0 04              2730 	pop	ar4
   099F D0 03              2731 	pop	ar3
   09A1 D0 02              2732 	pop	ar2
   09A3 40 A1              2733 	jc	00107$
                           2734 ;	../projectSpecificHardwareInterface_C8051F040.c:487: break ;
   09A5                    2735 00112$:
   09A5 22                 2736 	ret
                           2737 ;------------------------------------------------------------
                           2738 ;Allocation info for local variables in function 'task_UART_getchar_projectSpecific'
                           2739 ;------------------------------------------------------------
                           2740 ;sloc0                     Allocated with name '_task_UART_getchar_projectSpecific_sloc0_1_0'
                           2741 ;sloc1                     Allocated with name '_task_UART_getchar_projectSpecific_sloc1_1_0'
                           2742 ;sloc2                     Allocated with name '_task_UART_getchar_projectSpecific_sloc2_1_0'
                           2743 ;channelNumber             Allocated with name '_task_UART_getchar_projectSpecific_channelNumber_1_1'
                           2744 ;Q                         Allocated with name '_task_UART_getchar_projectSpecific_Q_2_2'
                           2745 ;byteReceived              Allocated with name '_task_UART_getchar_projectSpecific_byteReceived_3_3'
                           2746 ;------------------------------------------------------------
                           2747 ;	../projectSpecificHardwareInterface_C8051F040.c:494: char task_UART_getchar_projectSpecific(	unsigned char channelNumber)
                           2748 ;	-----------------------------------------
                           2749 ;	 function task_UART_getchar_projectSpecific
                           2750 ;	-----------------------------------------
   09A6                    2751 _task_UART_getchar_projectSpecific:
   09A6 E5 82              2752 	mov	a,dpl
   09A8 90 08 DB           2753 	mov	dptr,#_task_UART_getchar_projectSpecific_channelNumber_1_1
   09AB F0                 2754 	movx	@dptr,a
                           2755 ;	../projectSpecificHardwareInterface_C8051F040.c:496: if(channelNumber < NUMBER_OF_UARTS)
   09AC 90 08 DB           2756 	mov	dptr,#_task_UART_getchar_projectSpecific_channelNumber_1_1
   09AF E0                 2757 	movx	a,@dptr
   09B0 FA                 2758 	mov	r2,a
   09B1 BA 01 00           2759 	cjne	r2,#0x01,00109$
   09B4                    2760 00109$:
   09B4 40 03              2761 	jc	00110$
   09B6 02 0A 9D           2762 	ljmp	00104$
   09B9                    2763 00110$:
                           2764 ;	../projectSpecificHardwareInterface_C8051F040.c:498: QUEUE_TYPE*	Q = &receiveBuffers[channelNumber] ;
   09B9 EA                 2765 	mov	a,r2
   09BA 75 F0 0B           2766 	mov	b,#0x0B
   09BD A4                 2767 	mul	ab
   09BE 24 C0              2768 	add	a,#_receiveBuffers
   09C0 FA                 2769 	mov	r2,a
   09C1 E4                 2770 	clr	a
   09C2 34 08              2771 	addc	a,#(_receiveBuffers >> 8)
   09C4 FB                 2772 	mov	r3,a
   09C5 7C 00              2773 	mov	r4,#0x00
   09C7 90 08 DC           2774 	mov	dptr,#_task_UART_getchar_projectSpecific_Q_2_2
   09CA EA                 2775 	mov	a,r2
   09CB F0                 2776 	movx	@dptr,a
   09CC A3                 2777 	inc	dptr
   09CD EB                 2778 	mov	a,r3
   09CE F0                 2779 	movx	@dptr,a
   09CF A3                 2780 	inc	dptr
   09D0 EC                 2781 	mov	a,r4
   09D1 F0                 2782 	movx	@dptr,a
                           2783 ;	../projectSpecificHardwareInterface_C8051F040.c:500: if(!IsEmpty(Q))
   09D2 8A 82              2784 	mov	dpl,r2
   09D4 8B 83              2785 	mov	dph,r3
   09D6 8C F0              2786 	mov	b,r4
   09D8 12 03 6A           2787 	lcall	_IsEmpty
   09DB E5 82              2788 	mov	a,dpl
   09DD 60 03              2789 	jz	00111$
   09DF 02 0A 9D           2790 	ljmp	00104$
   09E2                    2791 00111$:
                           2792 ;	../projectSpecificHardwareInterface_C8051F040.c:502: unsigned char byteReceived = Q->Array[Q->Front] ;
   09E2 90 08 DC           2793 	mov	dptr,#_task_UART_getchar_projectSpecific_Q_2_2
   09E5 E0                 2794 	movx	a,@dptr
   09E6 FA                 2795 	mov	r2,a
   09E7 A3                 2796 	inc	dptr
   09E8 E0                 2797 	movx	a,@dptr
   09E9 FB                 2798 	mov	r3,a
   09EA A3                 2799 	inc	dptr
   09EB E0                 2800 	movx	a,@dptr
   09EC FC                 2801 	mov	r4,a
   09ED 74 08              2802 	mov	a,#0x08
   09EF 2A                 2803 	add	a,r2
   09F0 FD                 2804 	mov	r5,a
   09F1 E4                 2805 	clr	a
   09F2 3B                 2806 	addc	a,r3
   09F3 FE                 2807 	mov	r6,a
   09F4 8C 07              2808 	mov	ar7,r4
   09F6 8D 82              2809 	mov	dpl,r5
   09F8 8E 83              2810 	mov	dph,r6
   09FA 8F F0              2811 	mov	b,r7
   09FC 12 44 37           2812 	lcall	__gptrget
   09FF F5 11              2813 	mov	_task_UART_getchar_projectSpecific_sloc0_1_0,a
   0A01 A3                 2814 	inc	dptr
   0A02 12 44 37           2815 	lcall	__gptrget
   0A05 F5 12              2816 	mov	(_task_UART_getchar_projectSpecific_sloc0_1_0 + 1),a
   0A07 A3                 2817 	inc	dptr
   0A08 12 44 37           2818 	lcall	__gptrget
   0A0B F5 13              2819 	mov	(_task_UART_getchar_projectSpecific_sloc0_1_0 + 2),a
   0A0D 74 02              2820 	mov	a,#0x02
   0A0F 2A                 2821 	add	a,r2
   0A10 F5 16              2822 	mov	_task_UART_getchar_projectSpecific_sloc2_1_0,a
   0A12 E4                 2823 	clr	a
   0A13 3B                 2824 	addc	a,r3
   0A14 F5 17              2825 	mov	(_task_UART_getchar_projectSpecific_sloc2_1_0 + 1),a
   0A16 8C 18              2826 	mov	(_task_UART_getchar_projectSpecific_sloc2_1_0 + 2),r4
   0A18 85 16 82           2827 	mov	dpl,_task_UART_getchar_projectSpecific_sloc2_1_0
   0A1B 85 17 83           2828 	mov	dph,(_task_UART_getchar_projectSpecific_sloc2_1_0 + 1)
   0A1E 85 18 F0           2829 	mov	b,(_task_UART_getchar_projectSpecific_sloc2_1_0 + 2)
   0A21 12 44 37           2830 	lcall	__gptrget
   0A24 F5 14              2831 	mov	_task_UART_getchar_projectSpecific_sloc1_1_0,a
   0A26 A3                 2832 	inc	dptr
   0A27 12 44 37           2833 	lcall	__gptrget
   0A2A F5 15              2834 	mov	(_task_UART_getchar_projectSpecific_sloc1_1_0 + 1),a
   0A2C E5 14              2835 	mov	a,_task_UART_getchar_projectSpecific_sloc1_1_0
   0A2E 25 11              2836 	add	a,_task_UART_getchar_projectSpecific_sloc0_1_0
   0A30 FE                 2837 	mov	r6,a
   0A31 E5 15              2838 	mov	a,(_task_UART_getchar_projectSpecific_sloc1_1_0 + 1)
   0A33 35 12              2839 	addc	a,(_task_UART_getchar_projectSpecific_sloc0_1_0 + 1)
   0A35 FF                 2840 	mov	r7,a
   0A36 AD 13              2841 	mov	r5,(_task_UART_getchar_projectSpecific_sloc0_1_0 + 2)
   0A38 8E 82              2842 	mov	dpl,r6
   0A3A 8F 83              2843 	mov	dph,r7
   0A3C 8D F0              2844 	mov	b,r5
   0A3E 12 44 37           2845 	lcall	__gptrget
   0A41 F5 11              2846 	mov	_task_UART_getchar_projectSpecific_sloc0_1_0,a
                           2847 ;	../projectSpecificHardwareInterface_C8051F040.c:504: Q->Size-- ;
   0A43 74 06              2848 	mov	a,#0x06
   0A45 2A                 2849 	add	a,r2
   0A46 FD                 2850 	mov	r5,a
   0A47 E4                 2851 	clr	a
   0A48 3B                 2852 	addc	a,r3
   0A49 FF                 2853 	mov	r7,a
   0A4A 8C 00              2854 	mov	ar0,r4
   0A4C 8D 82              2855 	mov	dpl,r5
   0A4E 8F 83              2856 	mov	dph,r7
   0A50 88 F0              2857 	mov	b,r0
   0A52 12 44 37           2858 	lcall	__gptrget
   0A55 F9                 2859 	mov	r1,a
   0A56 A3                 2860 	inc	dptr
   0A57 12 44 37           2861 	lcall	__gptrget
   0A5A FE                 2862 	mov	r6,a
   0A5B 19                 2863 	dec	r1
   0A5C B9 FF 01           2864 	cjne	r1,#0xff,00112$
   0A5F 1E                 2865 	dec	r6
   0A60                    2866 00112$:
   0A60 8D 82              2867 	mov	dpl,r5
   0A62 8F 83              2868 	mov	dph,r7
   0A64 88 F0              2869 	mov	b,r0
   0A66 E9                 2870 	mov	a,r1
   0A67 12 38 0B           2871 	lcall	__gptrput
   0A6A A3                 2872 	inc	dptr
   0A6B EE                 2873 	mov	a,r6
   0A6C 12 38 0B           2874 	lcall	__gptrput
                           2875 ;	../projectSpecificHardwareInterface_C8051F040.c:505: Q->Front = Succ(Q->Front, Q) ;
   0A6F 90 04 58           2876 	mov	dptr,#_Succ_PARM_2
   0A72 EA                 2877 	mov	a,r2
   0A73 F0                 2878 	movx	@dptr,a
   0A74 A3                 2879 	inc	dptr
   0A75 EB                 2880 	mov	a,r3
   0A76 F0                 2881 	movx	@dptr,a
   0A77 A3                 2882 	inc	dptr
   0A78 EC                 2883 	mov	a,r4
   0A79 F0                 2884 	movx	@dptr,a
   0A7A 85 14 82           2885 	mov	dpl,_task_UART_getchar_projectSpecific_sloc1_1_0
   0A7D 85 15 83           2886 	mov	dph,(_task_UART_getchar_projectSpecific_sloc1_1_0 + 1)
   0A80 12 03 F8           2887 	lcall	_Succ
   0A83 AA 82              2888 	mov	r2,dpl
   0A85 AB 83              2889 	mov	r3,dph
   0A87 85 16 82           2890 	mov	dpl,_task_UART_getchar_projectSpecific_sloc2_1_0
   0A8A 85 17 83           2891 	mov	dph,(_task_UART_getchar_projectSpecific_sloc2_1_0 + 1)
   0A8D 85 18 F0           2892 	mov	b,(_task_UART_getchar_projectSpecific_sloc2_1_0 + 2)
   0A90 EA                 2893 	mov	a,r2
   0A91 12 38 0B           2894 	lcall	__gptrput
   0A94 A3                 2895 	inc	dptr
   0A95 EB                 2896 	mov	a,r3
   0A96 12 38 0B           2897 	lcall	__gptrput
                           2898 ;	../projectSpecificHardwareInterface_C8051F040.c:507: return byteReceived ;
   0A99 85 11 82           2899 	mov	dpl,_task_UART_getchar_projectSpecific_sloc0_1_0
                           2900 ;	../projectSpecificHardwareInterface_C8051F040.c:511: return -1 ;
   0A9C 22                 2901 	ret
   0A9D                    2902 00104$:
   0A9D 75 82 FF           2903 	mov	dpl,#0xFF
   0AA0 22                 2904 	ret
                           2905 ;------------------------------------------------------------
                           2906 ;Allocation info for local variables in function 'task_UART_gets_projectSpecific'
                           2907 ;------------------------------------------------------------
                           2908 ;sloc0                     Allocated with name '_task_UART_gets_projectSpecific_sloc0_1_0'
                           2909 ;sloc1                     Allocated with name '_task_UART_gets_projectSpecific_sloc1_1_0'
                           2910 ;buffer                    Allocated with name '_task_UART_gets_projectSpecific_PARM_2'
                           2911 ;maxBufferLength           Allocated with name '_task_UART_gets_projectSpecific_PARM_3'
                           2912 ;channelNumber             Allocated with name '_task_UART_gets_projectSpecific_channelNumber_1_1'
                           2913 ;charsReturned             Allocated with name '_task_UART_gets_projectSpecific_charsReturned_2_2'
                           2914 ;latestCharInBuffer        Allocated with name '_task_UART_gets_projectSpecific_latestCharInBuffer_3_3'
                           2915 ;------------------------------------------------------------
                           2916 ;	../projectSpecificHardwareInterface_C8051F040.c:515: char* task_UART_gets_projectSpecific(	unsigned char channelNumber, char* buffer, unsigned short maxBufferLength)
                           2917 ;	-----------------------------------------
                           2918 ;	 function task_UART_gets_projectSpecific
                           2919 ;	-----------------------------------------
   0AA1                    2920 _task_UART_gets_projectSpecific:
   0AA1 E5 82              2921 	mov	a,dpl
   0AA3 90 08 E4           2922 	mov	dptr,#_task_UART_gets_projectSpecific_channelNumber_1_1
   0AA6 F0                 2923 	movx	@dptr,a
                           2924 ;	../projectSpecificHardwareInterface_C8051F040.c:517: if(channelNumber < NUMBER_OF_UARTS)
   0AA7 90 08 E4           2925 	mov	dptr,#_task_UART_gets_projectSpecific_channelNumber_1_1
   0AAA E0                 2926 	movx	a,@dptr
   0AAB FA                 2927 	mov	r2,a
   0AAC BA 01 00           2928 	cjne	r2,#0x01,00119$
   0AAF                    2929 00119$:
   0AAF 50 74              2930 	jnc	00110$
                           2931 ;	../projectSpecificHardwareInterface_C8051F040.c:521: while(charsReturned < maxBufferLength)
   0AB1 90 08 E2           2932 	mov	dptr,#_task_UART_gets_projectSpecific_PARM_3
   0AB4 E0                 2933 	movx	a,@dptr
   0AB5 F5 1A              2934 	mov	_task_UART_gets_projectSpecific_sloc1_1_0,a
   0AB7 A3                 2935 	inc	dptr
   0AB8 E0                 2936 	movx	a,@dptr
   0AB9 F5 1B              2937 	mov	(_task_UART_gets_projectSpecific_sloc1_1_0 + 1),a
   0ABB 90 08 DF           2938 	mov	dptr,#_task_UART_gets_projectSpecific_PARM_2
   0ABE E0                 2939 	movx	a,@dptr
   0ABF FD                 2940 	mov	r5,a
   0AC0 A3                 2941 	inc	dptr
   0AC1 E0                 2942 	movx	a,@dptr
   0AC2 FE                 2943 	mov	r6,a
   0AC3 A3                 2944 	inc	dptr
   0AC4 E0                 2945 	movx	a,@dptr
   0AC5 FF                 2946 	mov	r7,a
   0AC6 78 00              2947 	mov	r0,#0x00
   0AC8 79 00              2948 	mov	r1,#0x00
   0ACA                    2949 00106$:
   0ACA C3                 2950 	clr	c
   0ACB E8                 2951 	mov	a,r0
   0ACC 95 1A              2952 	subb	a,_task_UART_gets_projectSpecific_sloc1_1_0
   0ACE E9                 2953 	mov	a,r1
   0ACF 95 1B              2954 	subb	a,(_task_UART_gets_projectSpecific_sloc1_1_0 + 1)
   0AD1 50 52              2955 	jnc	00110$
                           2956 ;	../projectSpecificHardwareInterface_C8051F040.c:523: char latestCharInBuffer = task_UART_getchar(channelNumber) ;
   0AD3 8A 82              2957 	mov	dpl,r2
   0AD5 C0 02              2958 	push	ar2
   0AD7 C0 05              2959 	push	ar5
   0AD9 C0 06              2960 	push	ar6
   0ADB C0 07              2961 	push	ar7
   0ADD C0 00              2962 	push	ar0
   0ADF C0 01              2963 	push	ar1
   0AE1 12 36 2A           2964 	lcall	_task_UART_getchar
   0AE4 85 82 19           2965 	mov	_task_UART_gets_projectSpecific_sloc0_1_0,dpl
   0AE7 D0 01              2966 	pop	ar1
   0AE9 D0 00              2967 	pop	ar0
   0AEB D0 07              2968 	pop	ar7
   0AED D0 06              2969 	pop	ar6
   0AEF D0 05              2970 	pop	ar5
   0AF1 D0 02              2971 	pop	ar2
                           2972 ;	../projectSpecificHardwareInterface_C8051F040.c:525: if(latestCharInBuffer <= 0)	// break on a NULL or a -1
   0AF3 C3                 2973 	clr	c
   0AF4 74 80              2974 	mov	a,#(0x00 ^ 0x80)
   0AF6 85 19 F0           2975 	mov	b,_task_UART_gets_projectSpecific_sloc0_1_0
   0AF9 63 F0 80           2976 	xrl	b,#0x80
   0AFC 95 F0              2977 	subb	a,b
   0AFE 50 25              2978 	jnc	00110$
                           2979 ;	../projectSpecificHardwareInterface_C8051F040.c:529: else if(latestCharInBuffer == '\r')	// Skip carriage returns
   0B00 74 0D              2980 	mov	a,#0x0D
   0B02 B5 19 02           2981 	cjne	a,_task_UART_gets_projectSpecific_sloc0_1_0,00123$
   0B05 80 C3              2982 	sjmp	00106$
   0B07                    2983 00123$:
                           2984 ;	../projectSpecificHardwareInterface_C8051F040.c:534: buffer[charsReturned] = latestCharInBuffer ;
   0B07 C0 02              2985 	push	ar2
   0B09 E8                 2986 	mov	a,r0
   0B0A 2D                 2987 	add	a,r5
   0B0B FA                 2988 	mov	r2,a
   0B0C E9                 2989 	mov	a,r1
   0B0D 3E                 2990 	addc	a,r6
   0B0E FB                 2991 	mov	r3,a
   0B0F 8F 04              2992 	mov	ar4,r7
   0B11 8A 82              2993 	mov	dpl,r2
   0B13 8B 83              2994 	mov	dph,r3
   0B15 8C F0              2995 	mov	b,r4
   0B17 E5 19              2996 	mov	a,_task_UART_gets_projectSpecific_sloc0_1_0
   0B19 12 38 0B           2997 	lcall	__gptrput
                           2998 ;	../projectSpecificHardwareInterface_C8051F040.c:536: charsReturned++ ;
   0B1C 08                 2999 	inc	r0
   0B1D B8 00 01           3000 	cjne	r0,#0x00,00124$
   0B20 09                 3001 	inc	r1
   0B21                    3002 00124$:
   0B21 D0 02              3003 	pop	ar2
   0B23 80 A5              3004 	sjmp	00106$
   0B25                    3005 00110$:
                           3006 ;	../projectSpecificHardwareInterface_C8051F040.c:540: return 0 ;
   0B25 90 00 00           3007 	mov	dptr,#0x0000
   0B28 75 F0 00           3008 	mov	b,#0x00
   0B2B 22                 3009 	ret
                           3010 ;------------------------------------------------------------
                           3011 ;Allocation info for local variables in function 'task_UART_isLineReady'
                           3012 ;------------------------------------------------------------
                           3013 ;channelNumber             Allocated with name '_task_UART_isLineReady_channelNumber_1_1'
                           3014 ;------------------------------------------------------------
                           3015 ;	../projectSpecificHardwareInterface_C8051F040.c:544: bool task_UART_isLineReady(	unsigned char channelNumber)
                           3016 ;	-----------------------------------------
                           3017 ;	 function task_UART_isLineReady
                           3018 ;	-----------------------------------------
   0B2C                    3019 _task_UART_isLineReady:
   0B2C E5 82              3020 	mov	a,dpl
   0B2E 90 08 E5           3021 	mov	dptr,#_task_UART_isLineReady_channelNumber_1_1
   0B31 F0                 3022 	movx	@dptr,a
                           3023 ;	../projectSpecificHardwareInterface_C8051F040.c:546: return lineReady[channelNumber] ;
   0B32 90 08 E5           3024 	mov	dptr,#_task_UART_isLineReady_channelNumber_1_1
   0B35 E0                 3025 	movx	a,@dptr
   0B36 24 CC              3026 	add	a,#_lineReady
   0B38 F5 82              3027 	mov	dpl,a
   0B3A E4                 3028 	clr	a
   0B3B 34 08              3029 	addc	a,#(_lineReady >> 8)
   0B3D F5 83              3030 	mov	dph,a
   0B3F E0                 3031 	movx	a,@dptr
   0B40 24 FF              3032 	add	a,#0xff
   0B42 92 04              3033 	mov  _task_UART_isLineReady_sloc0_1_0,c
   0B44 22                 3034 	ret
                           3035 ;------------------------------------------------------------
                           3036 ;Allocation info for local variables in function 'UART0_Init'
                           3037 ;------------------------------------------------------------
                           3038 ;SFRPAGE_SAVE              Allocated with name '_UART0_Init_SFRPAGE_SAVE_1_1'
                           3039 ;------------------------------------------------------------
                           3040 ;	../projectSpecificHardwareInterface_C8051F040.c:550: void UART0_Init(void)
                           3041 ;	-----------------------------------------
                           3042 ;	 function UART0_Init
                           3043 ;	-----------------------------------------
   0B45                    3044 _UART0_Init:
                           3045 ;	../projectSpecificHardwareInterface_C8051F040.c:554: SFRPAGE_SAVE = SFRPAGE;             // Preserve SFRPAGE
   0B45 AA 84              3046 	mov	r2,_SFRPAGE
                           3047 ;	../projectSpecificHardwareInterface_C8051F040.c:556: SFRPAGE = UART0_PAGE;
   0B47 75 84 00           3048 	mov	_SFRPAGE,#0x00
                           3049 ;	../projectSpecificHardwareInterface_C8051F040.c:558: SCON0 = 0x52;                       // 8-bit variable baud rate;
   0B4A 75 98 52           3050 	mov	_SCON0,#0x52
                           3051 ;	../projectSpecificHardwareInterface_C8051F040.c:561: SSTA0 = 0x10;                       // Clear all flags; enable baud rate
   0B4D 75 91 10           3052 	mov	_SSTA0,#0x10
                           3053 ;	../projectSpecificHardwareInterface_C8051F040.c:568: SFRPAGE = SFRPAGE_SAVE;
   0B50 8A 84              3054 	mov	_SFRPAGE,r2
   0B52 22                 3055 	ret
                           3056 ;------------------------------------------------------------
                           3057 ;Allocation info for local variables in function 'UART1_Init'
                           3058 ;------------------------------------------------------------
                           3059 ;SFRPAGE_SAVE              Allocated with name '_UART1_Init_SFRPAGE_SAVE_2_2'
                           3060 ;------------------------------------------------------------
                           3061 ;	../projectSpecificHardwareInterface_C8051F040.c:589: void UART1_Init(void)
                           3062 ;	-----------------------------------------
                           3063 ;	 function UART1_Init
                           3064 ;	-----------------------------------------
   0B53                    3065 _UART1_Init:
                           3066 ;	../projectSpecificHardwareInterface_C8051F040.c:591: portSET_REGISTER_GROUP(UART1_PAGE)
   0B53 AA 84              3067 	mov	r2,_SFRPAGE
   0B55 75 84 01           3068 	mov	_SFRPAGE,#0x01
                           3069 ;	../projectSpecificHardwareInterface_C8051F040.c:593: SCON1 = 0x10 ;	// 8-bit variable baud rate;
   0B58 75 98 10           3070 	mov	_SCON1,#0x10
                           3071 ;	../projectSpecificHardwareInterface_C8051F040.c:599: portRESTORE_REGISTER_GROUP()
   0B5B 8A 84              3072 	mov	_SFRPAGE,r2
   0B5D 22                 3073 	ret
                           3074 ;------------------------------------------------------------
                           3075 ;Allocation info for local variables in function 'putchar'
                           3076 ;------------------------------------------------------------
                           3077 ;c                         Allocated with name '_putchar_c_1_1'
                           3078 ;------------------------------------------------------------
                           3079 ;	../projectSpecificHardwareInterface_C8051F040.c:603: void putchar(char c)
                           3080 ;	-----------------------------------------
                           3081 ;	 function putchar
                           3082 ;	-----------------------------------------
   0B5E                    3083 _putchar:
   0B5E E5 82              3084 	mov	a,dpl
   0B60 90 08 E6           3085 	mov	dptr,#_putchar_c_1_1
   0B63 F0                 3086 	movx	@dptr,a
                           3087 ;	../projectSpecificHardwareInterface_C8051F040.c:605: if(c == '\n')
   0B64 90 08 E6           3088 	mov	dptr,#_putchar_c_1_1
   0B67 E0                 3089 	movx	a,@dptr
   0B68 FA                 3090 	mov	r2,a
   0B69 BA 0A 0C           3091 	cjne	r2,#0x0A,00102$
                           3092 ;	../projectSpecificHardwareInterface_C8051F040.c:607: task_UART_putchar(0, '\r') ;
   0B6C 90 0A 74           3093 	mov	dptr,#_task_UART_putchar_PARM_2
   0B6F 74 0D              3094 	mov	a,#0x0D
   0B71 F0                 3095 	movx	@dptr,a
   0B72 75 82 00           3096 	mov	dpl,#0x00
   0B75 12 35 E9           3097 	lcall	_task_UART_putchar
   0B78                    3098 00102$:
                           3099 ;	../projectSpecificHardwareInterface_C8051F040.c:610: task_UART_putchar(0, c) ;
   0B78 90 08 E6           3100 	mov	dptr,#_putchar_c_1_1
   0B7B E0                 3101 	movx	a,@dptr
   0B7C 90 0A 74           3102 	mov	dptr,#_task_UART_putchar_PARM_2
   0B7F F0                 3103 	movx	@dptr,a
   0B80 75 82 00           3104 	mov	dpl,#0x00
   0B83 02 35 E9           3105 	ljmp	_task_UART_putchar
                           3106 ;------------------------------------------------------------
                           3107 ;Allocation info for local variables in function 'prvSetupSystemClock'
                           3108 ;------------------------------------------------------------
                           3109 ;n                         Allocated with name '_prvSetupSystemClock_n_1_1'
                           3110 ;------------------------------------------------------------
                           3111 ;	../projectSpecificHardwareInterface_C8051F040.c:632: static void prvSetupSystemClock( void )
                           3112 ;	-----------------------------------------
                           3113 ;	 function prvSetupSystemClock
                           3114 ;	-----------------------------------------
   0B86                    3115 _prvSetupSystemClock:
                           3116 ;	../projectSpecificHardwareInterface_C8051F040.c:635: SFRPAGE = CONFIG_PAGE ;			// switch to config page to config oscillator
   0B86 75 84 0F           3117 	mov	_SFRPAGE,#0x0F
                           3118 ;	../projectSpecificHardwareInterface_C8051F040.c:637: OSCXCN = 0x77 ;					// start external oscillator; 24 MHz Crystal
   0B89 75 8C 77           3119 	mov	_OSCXCN,#0x77
                           3120 ;	../projectSpecificHardwareInterface_C8051F040.c:641: for( n = 0 ; n < 255 ; n++ ) ;	// delay about 1ms
   0B8C 7A FF              3121 	mov	r2,#0xFF
   0B8E 7B 00              3122 	mov	r3,#0x00
   0B90                    3123 00106$:
   0B90 1A                 3124 	dec	r2
   0B91 BA FF 01           3125 	cjne	r2,#0xff,00114$
   0B94 1B                 3126 	dec	r3
   0B95                    3127 00114$:
   0B95 EA                 3128 	mov	a,r2
   0B96 4B                 3129 	orl	a,r3
   0B97 70 F7              3130 	jnz	00106$
                           3131 ;	../projectSpecificHardwareInterface_C8051F040.c:642: while((OSCXCN & 0x80) == 0) ;	// wait for oscillator to stabilize
   0B99                    3132 00101$:
   0B99 E5 8C              3133 	mov	a,_OSCXCN
   0B9B 30 E7 FB           3134 	jnb	acc.7,00101$
                           3135 ;	../projectSpecificHardwareInterface_C8051F040.c:644: CLKSEL |= 0x01 ;				// switch to external oscillator
   0B9E 43 97 01           3136 	orl	_CLKSEL,#0x01
                           3137 ;	../projectSpecificHardwareInterface_C8051F040.c:646: OSCICN = 0xC2 ;					// Turn off the internal oscillator to save a little power
   0BA1 75 8A C2           3138 	mov	_OSCICN,#0xC2
   0BA4 22                 3139 	ret
                           3140 ;------------------------------------------------------------
                           3141 ;Allocation info for local variables in function 'prvSetupTimerInterrupt'
                           3142 ;------------------------------------------------------------
                           3143 ;ucOriginalSFRPage         Allocated with name '_prvSetupTimerInterrupt_ucOriginalSFRPage_1_1'
                           3144 ;ulTicksPerSecond          Allocated with name '_prvSetupTimerInterrupt_ulTicksPerSecond_1_1'
                           3145 ;ulCaptureTime             Allocated with name '_prvSetupTimerInterrupt_ulCaptureTime_1_1'
                           3146 ;ulCaptureValue            Allocated with name '_prvSetupTimerInterrupt_ulCaptureValue_1_1'
                           3147 ;ucLowCaptureByte          Allocated with name '_prvSetupTimerInterrupt_ucLowCaptureByte_1_1'
                           3148 ;ucHighCaptureByte         Allocated with name '_prvSetupTimerInterrupt_ucHighCaptureByte_1_1'
                           3149 ;------------------------------------------------------------
                           3150 ;	../projectSpecificHardwareInterface_C8051F040.c:650: static void prvSetupTimerInterrupt( void )
                           3151 ;	-----------------------------------------
                           3152 ;	 function prvSetupTimerInterrupt
                           3153 ;	-----------------------------------------
   0BA5                    3154 _prvSetupTimerInterrupt:
                           3155 ;	../projectSpecificHardwareInterface_C8051F040.c:664: ucOriginalSFRPage = SFRPAGE;
   0BA5 90 08 E7           3156 	mov	dptr,#_prvSetupTimerInterrupt_ucOriginalSFRPage_1_1
   0BA8 E5 84              3157 	mov	a,_SFRPAGE
   0BAA F0                 3158 	movx	@dptr,a
                           3159 ;	../projectSpecificHardwareInterface_C8051F040.c:665: SFRPAGE = 0;
   0BAB 75 84 00           3160 	mov	_SFRPAGE,#0x00
                           3161 ;	../projectSpecificHardwareInterface_C8051F040.c:668: TMR2CF = ( unsigned char ) 0;
   0BAE 75 C9 00           3162 	mov	_TMR2CF,#0x00
                           3163 ;	../projectSpecificHardwareInterface_C8051F040.c:671: RCAP2L = ucLowCaptureByte;
   0BB1 75 CA D1           3164 	mov	_RCAP2L,#0xD1
                           3165 ;	../projectSpecificHardwareInterface_C8051F040.c:672: RCAP2H = ucHighCaptureByte;
   0BB4 75 CB FF           3166 	mov	_RCAP2H,#0xFF
                           3167 ;	../projectSpecificHardwareInterface_C8051F040.c:675: TMR2L = ucLowCaptureByte;
   0BB7 75 CC D1           3168 	mov	_TMR2L,#0xD1
                           3169 ;	../projectSpecificHardwareInterface_C8051F040.c:676: TMR2H = ucHighCaptureByte;
   0BBA 75 CD FF           3170 	mov	_TMR2H,#0xFF
                           3171 ;	../projectSpecificHardwareInterface_C8051F040.c:679: IE |= portTIMER_2_INTERRUPT_ENABLE;
   0BBD 43 A8 20           3172 	orl	_IE,#0x20
                           3173 ;	../projectSpecificHardwareInterface_C8051F040.c:682: TMR2CN = portENABLE_TIMER ;
   0BC0 75 C8 06           3174 	mov	_TMR2CN,#0x06
                           3175 ;	../projectSpecificHardwareInterface_C8051F040.c:685: SFRPAGE	= 1 ;
   0BC3 75 84 01           3176 	mov	_SFRPAGE,#0x01
                           3177 ;	../projectSpecificHardwareInterface_C8051F040.c:686: TMR3CF	= 0x0A ;
   0BC6 75 C9 0A           3178 	mov	_TMR3CF,#0x0A
                           3179 ;	../projectSpecificHardwareInterface_C8051F040.c:688: RCAP3L	= 0xCE ;	// 120kHz on boost boards
   0BC9 75 CA CE           3180 	mov	_RCAP3L,#0xCE
                           3181 ;	../projectSpecificHardwareInterface_C8051F040.c:689: RCAP3H	= 0xFF ;	// 120kHz on boost boards
   0BCC 75 CB FF           3182 	mov	_RCAP3H,#0xFF
                           3183 ;	../projectSpecificHardwareInterface_C8051F040.c:691: TMR3L	= 0xF0 ;
   0BCF 75 CC F0           3184 	mov	_TMR3L,#0xF0
                           3185 ;	../projectSpecificHardwareInterface_C8051F040.c:692: TMR3H	= 0xFF ;
   0BD2 75 CD FF           3186 	mov	_TMR3H,#0xFF
                           3187 ;	../projectSpecificHardwareInterface_C8051F040.c:693: TMR3CN	= 0x04 ;
   0BD5 75 C8 04           3188 	mov	_TMR3CN,#0x04
                           3189 ;	../projectSpecificHardwareInterface_C8051F040.c:697: SFRPAGE = ucOriginalSFRPage;
   0BD8 90 08 E7           3190 	mov	dptr,#_prvSetupTimerInterrupt_ucOriginalSFRPage_1_1
   0BDB E0                 3191 	movx	a,@dptr
   0BDC F5 84              3192 	mov	_SFRPAGE,a
   0BDE 22                 3193 	ret
                           3194 ;------------------------------------------------------------
                           3195 ;Allocation info for local variables in function 'addTickCounter'
                           3196 ;------------------------------------------------------------
                           3197 ;pointerToIncrement        Allocated with name '_addTickCounter_pointerToIncrement_1_1'
                           3198 ;i                         Allocated with name '_addTickCounter_i_1_1'
                           3199 ;sloc0                     Allocated with name '_addTickCounter_sloc0_1_0'
                           3200 ;------------------------------------------------------------
                           3201 ;	../projectSpecificHardwareInterface_C8051F040.c:705: void addTickCounter(							unsigned short* pointerToIncrement)
                           3202 ;	-----------------------------------------
                           3203 ;	 function addTickCounter
                           3204 ;	-----------------------------------------
   0BDF                    3205 _addTickCounter:
   0BDF AA F0              3206 	mov	r2,b
   0BE1 AB 83              3207 	mov	r3,dph
   0BE3 E5 82              3208 	mov	a,dpl
   0BE5 90 09 06           3209 	mov	dptr,#_addTickCounter_pointerToIncrement_1_1
   0BE8 F0                 3210 	movx	@dptr,a
   0BE9 A3                 3211 	inc	dptr
   0BEA EB                 3212 	mov	a,r3
   0BEB F0                 3213 	movx	@dptr,a
   0BEC A3                 3214 	inc	dptr
   0BED EA                 3215 	mov	a,r2
   0BEE F0                 3216 	movx	@dptr,a
                           3217 ;	../projectSpecificHardwareInterface_C8051F040.c:709: for( i = 0 ; i < configNUMBER_OF_TICK_COUNTERS ; i++ )
   0BEF 7A 00              3218 	mov	r2,#0x00
   0BF1                    3219 00105$:
   0BF1 BA 0A 00           3220 	cjne	r2,#0x0A,00115$
   0BF4                    3221 00115$:
   0BF4 50 4B              3222 	jnc	00109$
                           3223 ;	../projectSpecificHardwareInterface_C8051F040.c:713: if(tickCounterToIncrement[i] == pointerToIncrement)
   0BF6 EA                 3224 	mov	a,r2
   0BF7 75 F0 03           3225 	mov	b,#0x03
   0BFA A4                 3226 	mul	ab
   0BFB 24 E8              3227 	add	a,#_tickCounterToIncrement
   0BFD FB                 3228 	mov	r3,a
   0BFE E4                 3229 	clr	a
   0BFF 34 08              3230 	addc	a,#(_tickCounterToIncrement >> 8)
   0C01 FC                 3231 	mov	r4,a
   0C02 8B 82              3232 	mov	dpl,r3
   0C04 8C 83              3233 	mov	dph,r4
   0C06 E0                 3234 	movx	a,@dptr
   0C07 FD                 3235 	mov	r5,a
   0C08 A3                 3236 	inc	dptr
   0C09 E0                 3237 	movx	a,@dptr
   0C0A FE                 3238 	mov	r6,a
   0C0B A3                 3239 	inc	dptr
   0C0C E0                 3240 	movx	a,@dptr
   0C0D FF                 3241 	mov	r7,a
   0C0E 90 09 06           3242 	mov	dptr,#_addTickCounter_pointerToIncrement_1_1
   0C11 E0                 3243 	movx	a,@dptr
   0C12 F5 57              3244 	mov	_addTickCounter_sloc0_1_0,a
   0C14 A3                 3245 	inc	dptr
   0C15 E0                 3246 	movx	a,@dptr
   0C16 F5 58              3247 	mov	(_addTickCounter_sloc0_1_0 + 1),a
   0C18 A3                 3248 	inc	dptr
   0C19 E0                 3249 	movx	a,@dptr
   0C1A F5 59              3250 	mov	(_addTickCounter_sloc0_1_0 + 2),a
   0C1C ED                 3251 	mov	a,r5
   0C1D B5 57 09           3252 	cjne	a,_addTickCounter_sloc0_1_0,00117$
   0C20 EE                 3253 	mov	a,r6
   0C21 B5 58 05           3254 	cjne	a,(_addTickCounter_sloc0_1_0 + 1),00117$
   0C24 EF                 3255 	mov	a,r7
   0C25 B5 59 01           3256 	cjne	a,(_addTickCounter_sloc0_1_0 + 2),00117$
   0C28 22                 3257 	ret
   0C29                    3258 00117$:
                           3259 ;	../projectSpecificHardwareInterface_C8051F040.c:718: if(tickCounterToIncrement[i] == 0)
   0C29 ED                 3260 	mov	a,r5
   0C2A 4E                 3261 	orl	a,r6
   0C2B 4F                 3262 	orl	a,r7
   0C2C 70 10              3263 	jnz	00107$
                           3264 ;	../projectSpecificHardwareInterface_C8051F040.c:720: tickCounterToIncrement[i] = pointerToIncrement ;
   0C2E 8B 82              3265 	mov	dpl,r3
   0C30 8C 83              3266 	mov	dph,r4
   0C32 E5 57              3267 	mov	a,_addTickCounter_sloc0_1_0
   0C34 F0                 3268 	movx	@dptr,a
   0C35 A3                 3269 	inc	dptr
   0C36 E5 58              3270 	mov	a,(_addTickCounter_sloc0_1_0 + 1)
   0C38 F0                 3271 	movx	@dptr,a
   0C39 A3                 3272 	inc	dptr
   0C3A E5 59              3273 	mov	a,(_addTickCounter_sloc0_1_0 + 2)
   0C3C F0                 3274 	movx	@dptr,a
                           3275 ;	../projectSpecificHardwareInterface_C8051F040.c:722: break ;
   0C3D 22                 3276 	ret
   0C3E                    3277 00107$:
                           3278 ;	../projectSpecificHardwareInterface_C8051F040.c:709: for( i = 0 ; i < configNUMBER_OF_TICK_COUNTERS ; i++ )
   0C3E 0A                 3279 	inc	r2
   0C3F 80 B0              3280 	sjmp	00105$
   0C41                    3281 00109$:
   0C41 22                 3282 	ret
                           3283 ;------------------------------------------------------------
                           3284 ;Allocation info for local variables in function 'vTimer2ISR'
                           3285 ;------------------------------------------------------------
                           3286 ;i                         Allocated with name '_vTimer2ISR_i_1_1'
                           3287 ;------------------------------------------------------------
                           3288 ;	../projectSpecificHardwareInterface_C8051F040.c:731: void vTimer2ISR( void ) interrupt 5
                           3289 ;	-----------------------------------------
                           3290 ;	 function vTimer2ISR
                           3291 ;	-----------------------------------------
   0C42                    3292 _vTimer2ISR:
   0C42 C0 22              3293 	push	bits
   0C44 C0 E0              3294 	push	acc
   0C46 C0 F0              3295 	push	b
   0C48 C0 82              3296 	push	dpl
   0C4A C0 83              3297 	push	dph
   0C4C C0 02              3298 	push	(0+2)
   0C4E C0 03              3299 	push	(0+3)
   0C50 C0 04              3300 	push	(0+4)
   0C52 C0 05              3301 	push	(0+5)
   0C54 C0 06              3302 	push	(0+6)
   0C56 C0 07              3303 	push	(0+7)
   0C58 C0 00              3304 	push	(0+0)
   0C5A C0 01              3305 	push	(0+1)
   0C5C C0 D0              3306 	push	psw
   0C5E 75 D0 00           3307 	mov	psw,#0x00
                           3308 ;	../projectSpecificHardwareInterface_C8051F040.c:735: for( i = 0 ; i < configNUMBER_OF_TICK_COUNTERS ; i++ )
   0C61 7A 00              3309 	mov	r2,#0x00
   0C63                    3310 00103$:
   0C63 BA 0A 00           3311 	cjne	r2,#0x0A,00113$
   0C66                    3312 00113$:
   0C66 50 41              3313 	jnc	00106$
                           3314 ;	../projectSpecificHardwareInterface_C8051F040.c:737: if(tickCounterToIncrement[i])
   0C68 EA                 3315 	mov	a,r2
   0C69 75 F0 03           3316 	mov	b,#0x03
   0C6C A4                 3317 	mul	ab
   0C6D 24 E8              3318 	add	a,#_tickCounterToIncrement
   0C6F F5 82              3319 	mov	dpl,a
   0C71 E4                 3320 	clr	a
   0C72 34 08              3321 	addc	a,#(_tickCounterToIncrement >> 8)
   0C74 F5 83              3322 	mov	dph,a
   0C76 E0                 3323 	movx	a,@dptr
   0C77 FB                 3324 	mov	r3,a
   0C78 A3                 3325 	inc	dptr
   0C79 E0                 3326 	movx	a,@dptr
   0C7A FC                 3327 	mov	r4,a
   0C7B A3                 3328 	inc	dptr
   0C7C E0                 3329 	movx	a,@dptr
   0C7D FD                 3330 	mov	r5,a
   0C7E EB                 3331 	mov	a,r3
   0C7F 4C                 3332 	orl	a,r4
   0C80 4D                 3333 	orl	a,r5
   0C81 60 23              3334 	jz	00105$
                           3335 ;	../projectSpecificHardwareInterface_C8051F040.c:739: *tickCounterToIncrement[i] += 1 ;
   0C83 8B 82              3336 	mov	dpl,r3
   0C85 8C 83              3337 	mov	dph,r4
   0C87 8D F0              3338 	mov	b,r5
   0C89 12 44 37           3339 	lcall	__gptrget
   0C8C FE                 3340 	mov	r6,a
   0C8D A3                 3341 	inc	dptr
   0C8E 12 44 37           3342 	lcall	__gptrget
   0C91 FF                 3343 	mov	r7,a
   0C92 0E                 3344 	inc	r6
   0C93 BE 00 01           3345 	cjne	r6,#0x00,00116$
   0C96 0F                 3346 	inc	r7
   0C97                    3347 00116$:
   0C97 8B 82              3348 	mov	dpl,r3
   0C99 8C 83              3349 	mov	dph,r4
   0C9B 8D F0              3350 	mov	b,r5
   0C9D EE                 3351 	mov	a,r6
   0C9E 12 38 0B           3352 	lcall	__gptrput
   0CA1 A3                 3353 	inc	dptr
   0CA2 EF                 3354 	mov	a,r7
   0CA3 12 38 0B           3355 	lcall	__gptrput
   0CA6                    3356 00105$:
                           3357 ;	../projectSpecificHardwareInterface_C8051F040.c:735: for( i = 0 ; i < configNUMBER_OF_TICK_COUNTERS ; i++ )
   0CA6 0A                 3358 	inc	r2
   0CA7 80 BA              3359 	sjmp	00103$
   0CA9                    3360 00106$:
                           3361 ;	../projectSpecificHardwareInterface_C8051F040.c:743: taskSwitcherTickHook() ;
   0CA9 12 02 85           3362 	lcall	_taskSwitcherTickHook
                           3363 ;	../projectSpecificHardwareInterface_C8051F040.c:745: portCLEAR_INTERRUPT_FLAG() ;
   0CAC 53 C8 7F           3364 	anl	_TMR2CN,#0x7F
   0CAF D0 D0              3365 	pop	psw
   0CB1 D0 01              3366 	pop	(0+1)
   0CB3 D0 00              3367 	pop	(0+0)
   0CB5 D0 07              3368 	pop	(0+7)
   0CB7 D0 06              3369 	pop	(0+6)
   0CB9 D0 05              3370 	pop	(0+5)
   0CBB D0 04              3371 	pop	(0+4)
   0CBD D0 03              3372 	pop	(0+3)
   0CBF D0 02              3373 	pop	(0+2)
   0CC1 D0 83              3374 	pop	dph
   0CC3 D0 82              3375 	pop	dpl
   0CC5 D0 F0              3376 	pop	b
   0CC7 D0 E0              3377 	pop	acc
   0CC9 D0 22              3378 	pop	bits
   0CCB 32                 3379 	reti
                           3380 	.area CSEG    (CODE)
                           3381 	.area CONST   (CODE)
   4457                    3382 __str_0:
   4457 34 74 68 20 47 65  3383 	.ascii "4th Generation state machine test started."
        6E 65 72 61 74 69
        6F 6E 20 73 74 61
        74 65 20 6D 61 63
        68 69 6E 65 20 74
        65 73 74 20 73 74
        61 72 74 65 64 2E
   4481 00                 3384 	.db 0x00
   4482                    3385 __str_1:
   4482 47 65 6E 65 72 61  3386 	.ascii "Generating timebomb"
        74 69 6E 67 20 74
        69 6D 65 62 6F 6D
        62
   4495 00                 3387 	.db 0x00
   4496                    3388 __str_2:
   4496 47 65 6E 65 72 61  3389 	.ascii "Generating calculator"
        74 69 6E 67 20 63
        61 6C 63 75 6C 61
        74 6F 72
   44AB 00                 3390 	.db 0x00
   44AC                    3391 __str_3:
   44AC 52 65 67 69 73 74  3392 	.ascii "Registering calculator"
        65 72 69 6E 67 20
        63 61 6C 63 75 6C
        61 74 6F 72
   44C2 00                 3393 	.db 0x00
   44C3                    3394 __str_4:
   44C3 49 74 65 72 61 74  3395 	.ascii "Iterating state machines"
        69 6E 67 20 73 74
        61 74 65 20 6D 61
        63 68 69 6E 65 73
   44DB 00                 3396 	.db 0x00
   44DC                    3397 __str_5:
   44DC 6C 6F 6F 70        3398 	.ascii "loop"
   44E0 00                 3399 	.db 0x00
   44E1                    3400 __str_6:
   44E1 0A                 3401 	.db 0x0A
   44E2 34 74 68 20 47 65  3402 	.ascii "4th Generation state machine test done."
        6E 65 72 61 74 69
        6F 6E 20 73 74 61
        74 65 20 6D 61 63
        68 69 6E 65 20 74
        65 73 74 20 64 6F
        6E 65 2E
   4509 00                 3403 	.db 0x00
                           3404 	.area XINIT   (CODE)
   4B45                    3405 __xinit__countdown:
   4B45 05 00              3406 	.byte #0x05,#0x00
                           3407 	.area CABS    (ABS,CODE)
