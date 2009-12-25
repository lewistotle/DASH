                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 2.9.0 #5416 (Mar 22 2009) (MINGW32)
                              4 ; This file was generated Tue Dec 15 14:31:57 2009
                              5 ;--------------------------------------------------------
                              6 	.module stateMachine_G4
                              7 	.optsdcc -mmcs51 --model-large
                              8 	
                              9 ;--------------------------------------------------------
                             10 ; Public variables in this module
                             11 ;--------------------------------------------------------
                             12 	.globl _main
                             13 	.globl _my_unique_prefix1
                             14 	.globl _my_unique_prefix0
                             15 ;--------------------------------------------------------
                             16 ; special function registers
                             17 ;--------------------------------------------------------
                             18 	.area RSEG    (DATA)
                             19 ;--------------------------------------------------------
                             20 ; special function bits
                             21 ;--------------------------------------------------------
                             22 	.area RSEG    (DATA)
                             23 ;--------------------------------------------------------
                             24 ; overlayable register banks
                             25 ;--------------------------------------------------------
                             26 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                      27 	.ds 8
                             28 ;--------------------------------------------------------
                             29 ; internal ram data
                             30 ;--------------------------------------------------------
                             31 	.area DSEG    (DATA)
                             32 ;--------------------------------------------------------
                             33 ; overlayable items in internal ram 
                             34 ;--------------------------------------------------------
                             35 	.area OSEG    (OVR,DATA)
                             36 ;--------------------------------------------------------
                             37 ; Stack segment in internal ram 
                             38 ;--------------------------------------------------------
                             39 	.area	SSEG	(DATA)
   0022                      40 __start__stack:
   0022                      41 	.ds	1
                             42 
                             43 ;--------------------------------------------------------
                             44 ; indirectly addressable internal ram data
                             45 ;--------------------------------------------------------
                             46 	.area ISEG    (DATA)
                             47 ;--------------------------------------------------------
                             48 ; absolute internal ram data
                             49 ;--------------------------------------------------------
                             50 	.area IABS    (ABS,DATA)
                             51 	.area IABS    (ABS,DATA)
                             52 ;--------------------------------------------------------
                             53 ; bit data
                             54 ;--------------------------------------------------------
                             55 	.area BSEG    (BIT)
                             56 ;--------------------------------------------------------
                             57 ; paged external ram data
                             58 ;--------------------------------------------------------
                             59 	.area PSEG    (PAG,XDATA)
                             60 ;--------------------------------------------------------
                             61 ; external ram data
                             62 ;--------------------------------------------------------
                             63 	.area XSEG    (XDATA)
   0000                      64 _my_unique_prefix0::
   0000                      65 	.ds 2
   0002                      66 _my_unique_prefix1::
   0002                      67 	.ds 2
                             68 ;--------------------------------------------------------
                             69 ; absolute external ram data
                             70 ;--------------------------------------------------------
                             71 	.area XABS    (ABS,XDATA)
                             72 ;--------------------------------------------------------
                             73 ; external initialized ram data
                             74 ;--------------------------------------------------------
                             75 	.area XISEG   (XDATA)
                             76 	.area HOME    (CODE)
                             77 	.area GSINIT0 (CODE)
                             78 	.area GSINIT1 (CODE)
                             79 	.area GSINIT2 (CODE)
                             80 	.area GSINIT3 (CODE)
                             81 	.area GSINIT4 (CODE)
                             82 	.area GSINIT5 (CODE)
                             83 	.area GSINIT  (CODE)
                             84 	.area GSFINAL (CODE)
                             85 	.area CSEG    (CODE)
                             86 ;--------------------------------------------------------
                             87 ; interrupt vector 
                             88 ;--------------------------------------------------------
                             89 	.area HOME    (CODE)
   0000                      90 __interrupt_vect:
   0000 02 00 08             91 	ljmp	__sdcc_gsinit_startup
                             92 ;--------------------------------------------------------
                             93 ; global & static initialisations
                             94 ;--------------------------------------------------------
                             95 	.area HOME    (CODE)
                             96 	.area GSINIT  (CODE)
                             97 	.area GSFINAL (CODE)
                             98 	.area GSINIT  (CODE)
                             99 	.globl __sdcc_gsinit_startup
                            100 	.globl __sdcc_program_startup
                            101 	.globl __start__stack
                            102 	.globl __mcs51_genXINIT
                            103 	.globl __mcs51_genXRAMCLEAR
                            104 	.globl __mcs51_genRAMCLEAR
                            105 	.area GSFINAL (CODE)
   0061 02 00 03            106 	ljmp	__sdcc_program_startup
                            107 ;--------------------------------------------------------
                            108 ; Home
                            109 ;--------------------------------------------------------
                            110 	.area HOME    (CODE)
                            111 	.area HOME    (CODE)
   0003                     112 __sdcc_program_startup:
   0003 12 00 64            113 	lcall	_main
                            114 ;	return from main will lock up
   0006 80 FE               115 	sjmp .
                            116 ;--------------------------------------------------------
                            117 ; code
                            118 ;--------------------------------------------------------
                            119 	.area CSEG    (CODE)
                            120 ;------------------------------------------------------------
                            121 ;Allocation info for local variables in function 'main'
                            122 ;------------------------------------------------------------
                            123 ;------------------------------------------------------------
                            124 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:24: int main() {
                            125 ;	-----------------------------------------
                            126 ;	 function main
                            127 ;	-----------------------------------------
   0064                     128 _main:
                    0002    129 	ar2 = 0x02
                    0003    130 	ar3 = 0x03
                    0004    131 	ar4 = 0x04
                    0005    132 	ar5 = 0x05
                    0006    133 	ar6 = 0x06
                    0007    134 	ar7 = 0x07
                    0000    135 	ar0 = 0x00
                    0001    136 	ar1 = 0x01
                            137 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:25: my_unique_prefix0 = 0;
   0064 90 00 00            138 	mov	dptr,#_my_unique_prefix0
   0067 E4                  139 	clr	a
   0068 F0                  140 	movx	@dptr,a
   0069 A3                  141 	inc	dptr
   006A F0                  142 	movx	@dptr,a
                            143 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:26: printf("\n%d",my_unique_prefix0);
   006B E4                  144 	clr	a
   006C C0 E0               145 	push	acc
   006E C0 E0               146 	push	acc
   0070 74 9A               147 	mov	a,#__str_0
   0072 C0 E0               148 	push	acc
   0074 74 09               149 	mov	a,#(__str_0 >> 8)
   0076 C0 E0               150 	push	acc
   0078 74 80               151 	mov	a,#0x80
   007A C0 E0               152 	push	acc
   007C 12 01 2E            153 	lcall	_printf
   007F E5 81               154 	mov	a,sp
   0081 24 FB               155 	add	a,#0xfb
   0083 F5 81               156 	mov	sp,a
                            157 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:27: my_unique_prefix0++;
   0085 90 00 00            158 	mov	dptr,#_my_unique_prefix0
   0088 E0                  159 	movx	a,@dptr
   0089 FA                  160 	mov	r2,a
   008A A3                  161 	inc	dptr
   008B E0                  162 	movx	a,@dptr
   008C FB                  163 	mov	r3,a
   008D 90 00 00            164 	mov	dptr,#_my_unique_prefix0
   0090 74 01               165 	mov	a,#0x01
   0092 2A                  166 	add	a,r2
   0093 F0                  167 	movx	@dptr,a
   0094 E4                  168 	clr	a
   0095 3B                  169 	addc	a,r3
   0096 A3                  170 	inc	dptr
   0097 F0                  171 	movx	@dptr,a
                            172 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:28: printf("\n%d",my_unique_prefix0);
   0098 90 00 00            173 	mov	dptr,#_my_unique_prefix0
   009B E0                  174 	movx	a,@dptr
   009C C0 E0               175 	push	acc
   009E A3                  176 	inc	dptr
   009F E0                  177 	movx	a,@dptr
   00A0 C0 E0               178 	push	acc
   00A2 74 9A               179 	mov	a,#__str_0
   00A4 C0 E0               180 	push	acc
   00A6 74 09               181 	mov	a,#(__str_0 >> 8)
   00A8 C0 E0               182 	push	acc
   00AA 74 80               183 	mov	a,#0x80
   00AC C0 E0               184 	push	acc
   00AE 12 01 2E            185 	lcall	_printf
   00B1 E5 81               186 	mov	a,sp
   00B3 24 FB               187 	add	a,#0xfb
   00B5 F5 81               188 	mov	sp,a
                            189 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:29: my_unique_prefix0 = my_unique_prefix1;
   00B7 90 00 02            190 	mov	dptr,#_my_unique_prefix1
   00BA E0                  191 	movx	a,@dptr
   00BB FA                  192 	mov	r2,a
   00BC A3                  193 	inc	dptr
   00BD E0                  194 	movx	a,@dptr
   00BE FB                  195 	mov	r3,a
   00BF 90 00 00            196 	mov	dptr,#_my_unique_prefix0
   00C2 EA                  197 	mov	a,r2
   00C3 F0                  198 	movx	@dptr,a
   00C4 A3                  199 	inc	dptr
   00C5 EB                  200 	mov	a,r3
   00C6 F0                  201 	movx	@dptr,a
                            202 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:30: printf("\n%d",my_unique_prefix0);
   00C7 C0 02               203 	push	ar2
   00C9 C0 03               204 	push	ar3
   00CB 74 9A               205 	mov	a,#__str_0
   00CD C0 E0               206 	push	acc
   00CF 74 09               207 	mov	a,#(__str_0 >> 8)
   00D1 C0 E0               208 	push	acc
   00D3 74 80               209 	mov	a,#0x80
   00D5 C0 E0               210 	push	acc
   00D7 12 01 2E            211 	lcall	_printf
   00DA E5 81               212 	mov	a,sp
   00DC 24 FB               213 	add	a,#0xfb
   00DE F5 81               214 	mov	sp,a
                            215 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:31: return 0 ;
   00E0 90 00 00            216 	mov	dptr,#0x0000
   00E3 22                  217 	ret
                            218 	.area CSEG    (CODE)
                            219 	.area CONST   (CODE)
   099A                     220 __str_0:
   099A 0A                  221 	.db 0x0A
   099B 25 64               222 	.ascii "%d"
   099D 00                  223 	.db 0x00
                            224 	.area XINIT   (CODE)
                            225 	.area CABS    (ABS,CODE)
