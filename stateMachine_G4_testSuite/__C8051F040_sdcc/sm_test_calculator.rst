                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 2.9.0 #5416 (Mar 22 2009) (MINGW32)
                              4 ; This file was generated Sat Jan 02 19:24:43 2010
                              5 ;--------------------------------------------------------
                              6 	.module sm_test_calculator
                              7 	.optsdcc -mmcs51 --model-large
                              8 	
                              9 ;--------------------------------------------------------
                             10 ; Public variables in this module
                             11 ;--------------------------------------------------------
                             12 	.globl _doCalculation
                             13 	.globl _calculator_getEventQueueDepth
                             14 	.globl _calculator_constructor
                             15 	.globl _calculator_destructor
                             16 	.globl _calculator_getHistoryQueueDepth
                             17 	.globl _calculator_getMachineSize
                             18 	.globl _calculator_constructor2
                             19 	.globl _calculator_destructor2
                             20 ;--------------------------------------------------------
                             21 ; special function registers
                             22 ;--------------------------------------------------------
                             23 	.area RSEG    (DATA)
                             24 ;--------------------------------------------------------
                             25 ; special function bits
                             26 ;--------------------------------------------------------
                             27 	.area RSEG    (DATA)
                             28 ;--------------------------------------------------------
                             29 ; overlayable register banks
                             30 ;--------------------------------------------------------
                             31 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                      32 	.ds 8
                             33 ;--------------------------------------------------------
                             34 ; internal ram data
                             35 ;--------------------------------------------------------
                             36 	.area DSEG    (DATA)
   001C                      37 _calculator_constructor_sloc0_1_0:
   001C                      38 	.ds 3
                             39 ;--------------------------------------------------------
                             40 ; overlayable items in internal ram 
                             41 ;--------------------------------------------------------
                             42 	.area OSEG    (OVR,DATA)
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
   0909                      64 _calculator_constructor_base_1_1:
   0909                      65 	.ds 3
   090C                      66 _calculator_destructor_self_1_1:
   090C                      67 	.ds 3
   090F                      68 _calculator_constructor2_self_1_1:
   090F                      69 	.ds 3
   0912                      70 _doCalculation_type_1_1:
   0912                      71 	.ds 1
                             72 ;--------------------------------------------------------
                             73 ; absolute external ram data
                             74 ;--------------------------------------------------------
                             75 	.area XABS    (ABS,XDATA)
                             76 ;--------------------------------------------------------
                             77 ; external initialized ram data
                             78 ;--------------------------------------------------------
                             79 	.area XISEG   (XDATA)
   0EE6                      80 _calculator_name:
   0EE6                      81 	.ds 3
                             82 	.area HOME    (CODE)
                             83 	.area GSINIT0 (CODE)
                             84 	.area GSINIT1 (CODE)
                             85 	.area GSINIT2 (CODE)
                             86 	.area GSINIT3 (CODE)
                             87 	.area GSINIT4 (CODE)
                             88 	.area GSINIT5 (CODE)
                             89 	.area GSINIT  (CODE)
                             90 	.area GSFINAL (CODE)
                             91 	.area CSEG    (CODE)
                             92 ;--------------------------------------------------------
                             93 ; global & static initialisations
                             94 ;--------------------------------------------------------
                             95 	.area HOME    (CODE)
                             96 	.area GSINIT  (CODE)
                             97 	.area GSFINAL (CODE)
                             98 	.area GSINIT  (CODE)
                             99 ;--------------------------------------------------------
                            100 ; Home
                            101 ;--------------------------------------------------------
                            102 	.area HOME    (CODE)
                            103 	.area HOME    (CODE)
                            104 ;--------------------------------------------------------
                            105 ; code
                            106 ;--------------------------------------------------------
                            107 	.area CSEG    (CODE)
                            108 ;------------------------------------------------------------
                            109 ;Allocation info for local variables in function 'calculator_getEventQueueDepth'
                            110 ;------------------------------------------------------------
                            111 ;------------------------------------------------------------
                            112 ;	../sm_test_calculator.c:23: SET_EVENT_QUEUE_DEPTH(config_CalcEVENT_QUEUE_DEPTH) ;
                            113 ;	-----------------------------------------
                            114 ;	 function calculator_getEventQueueDepth
                            115 ;	-----------------------------------------
   0C84                     116 _calculator_getEventQueueDepth:
                    0002    117 	ar2 = 0x02
                    0003    118 	ar3 = 0x03
                    0004    119 	ar4 = 0x04
                    0005    120 	ar5 = 0x05
                    0006    121 	ar6 = 0x06
                    0007    122 	ar7 = 0x07
                    0000    123 	ar0 = 0x00
                    0001    124 	ar1 = 0x01
   0C84 90 00 10            125 	mov	dptr,#0x0010
   0C87 22                  126 	ret
                            127 ;------------------------------------------------------------
                            128 ;Allocation info for local variables in function 'calculator_constructor'
                            129 ;------------------------------------------------------------
                            130 ;sloc0                     Allocated with name '_calculator_constructor_sloc0_1_0'
                            131 ;base                      Allocated with name '_calculator_constructor_base_1_1'
                            132 ;------------------------------------------------------------
                            133 ;	../sm_test_calculator.c:47: END_STATE_MACHINE_DEFINITION() ;
                            134 ;	-----------------------------------------
                            135 ;	 function calculator_constructor
                            136 ;	-----------------------------------------
   0C88                     137 _calculator_constructor:
   0C88 AA F0               138 	mov	r2,b
   0C8A AB 83               139 	mov	r3,dph
   0C8C E5 82               140 	mov	a,dpl
   0C8E 90 09 09            141 	mov	dptr,#_calculator_constructor_base_1_1
   0C91 F0                  142 	movx	@dptr,a
   0C92 A3                  143 	inc	dptr
   0C93 EB                  144 	mov	a,r3
   0C94 F0                  145 	movx	@dptr,a
   0C95 A3                  146 	inc	dptr
   0C96 EA                  147 	mov	a,r2
   0C97 F0                  148 	movx	@dptr,a
   0C98 90 09 09            149 	mov	dptr,#_calculator_constructor_base_1_1
   0C9B E0                  150 	movx	a,@dptr
   0C9C FA                  151 	mov	r2,a
   0C9D A3                  152 	inc	dptr
   0C9E E0                  153 	movx	a,@dptr
   0C9F FB                  154 	mov	r3,a
   0CA0 A3                  155 	inc	dptr
   0CA1 E0                  156 	movx	a,@dptr
   0CA2 FC                  157 	mov	r4,a
   0CA3 8A 82               158 	mov	dpl,r2
   0CA5 8B 83               159 	mov	dph,r3
   0CA7 8C F0               160 	mov	b,r4
   0CA9 74 41               161 	mov	a,#_calculator_TOP
   0CAB 12 42 42            162 	lcall	__gptrput
   0CAE A3                  163 	inc	dptr
   0CAF 74 4F               164 	mov	a,#(_calculator_TOP >> 8)
   0CB1 12 42 42            165 	lcall	__gptrput
   0CB4 74 05               166 	mov	a,#0x05
   0CB6 2A                  167 	add	a,r2
   0CB7 FD                  168 	mov	r5,a
   0CB8 E4                  169 	clr	a
   0CB9 3B                  170 	addc	a,r3
   0CBA FE                  171 	mov	r6,a
   0CBB 8C 07               172 	mov	ar7,r4
   0CBD 8D 82               173 	mov	dpl,r5
   0CBF 8E 83               174 	mov	dph,r6
   0CC1 8F F0               175 	mov	b,r7
   0CC3 74 41               176 	mov	a,#_calculator_TOP
   0CC5 12 42 42            177 	lcall	__gptrput
   0CC8 A3                  178 	inc	dptr
   0CC9 74 4F               179 	mov	a,#(_calculator_TOP >> 8)
   0CCB 12 42 42            180 	lcall	__gptrput
   0CCE A3                  181 	inc	dptr
   0CCF 74 80               182 	mov	a,#0x80
   0CD1 12 42 42            183 	lcall	__gptrput
   0CD4 74 02               184 	mov	a,#0x02
   0CD6 2A                  185 	add	a,r2
   0CD7 F5 1C               186 	mov	_calculator_constructor_sloc0_1_0,a
   0CD9 E4                  187 	clr	a
   0CDA 3B                  188 	addc	a,r3
   0CDB F5 1D               189 	mov	(_calculator_constructor_sloc0_1_0 + 1),a
   0CDD 8C 1E               190 	mov	(_calculator_constructor_sloc0_1_0 + 2),r4
   0CDF 90 0E E6            191 	mov	dptr,#_calculator_name
   0CE2 E0                  192 	movx	a,@dptr
   0CE3 F8                  193 	mov	r0,a
   0CE4 A3                  194 	inc	dptr
   0CE5 E0                  195 	movx	a,@dptr
   0CE6 F9                  196 	mov	r1,a
   0CE7 A3                  197 	inc	dptr
   0CE8 E0                  198 	movx	a,@dptr
   0CE9 FD                  199 	mov	r5,a
   0CEA 85 1C 82            200 	mov	dpl,_calculator_constructor_sloc0_1_0
   0CED 85 1D 83            201 	mov	dph,(_calculator_constructor_sloc0_1_0 + 1)
   0CF0 85 1E F0            202 	mov	b,(_calculator_constructor_sloc0_1_0 + 2)
   0CF3 E8                  203 	mov	a,r0
   0CF4 12 42 42            204 	lcall	__gptrput
   0CF7 A3                  205 	inc	dptr
   0CF8 E9                  206 	mov	a,r1
   0CF9 12 42 42            207 	lcall	__gptrput
   0CFC A3                  208 	inc	dptr
   0CFD ED                  209 	mov	a,r5
   0CFE 12 42 42            210 	lcall	__gptrput
   0D01 8A 82               211 	mov	dpl,r2
   0D03 8B 83               212 	mov	dph,r3
   0D05 8C F0               213 	mov	b,r4
   0D07 02 0D 36            214 	ljmp	_calculator_constructor2
                            215 ;------------------------------------------------------------
                            216 ;Allocation info for local variables in function 'calculator_destructor'
                            217 ;------------------------------------------------------------
                            218 ;self                      Allocated with name '_calculator_destructor_self_1_1'
                            219 ;------------------------------------------------------------
                            220 ;	../sm_test_calculator.c:47: 
                            221 ;	-----------------------------------------
                            222 ;	 function calculator_destructor
                            223 ;	-----------------------------------------
   0D0A                     224 _calculator_destructor:
   0D0A AA F0               225 	mov	r2,b
   0D0C AB 83               226 	mov	r3,dph
   0D0E E5 82               227 	mov	a,dpl
   0D10 90 09 0C            228 	mov	dptr,#_calculator_destructor_self_1_1
   0D13 F0                  229 	movx	@dptr,a
   0D14 A3                  230 	inc	dptr
   0D15 EB                  231 	mov	a,r3
   0D16 F0                  232 	movx	@dptr,a
   0D17 A3                  233 	inc	dptr
   0D18 EA                  234 	mov	a,r2
   0D19 F0                  235 	movx	@dptr,a
   0D1A 90 09 0C            236 	mov	dptr,#_calculator_destructor_self_1_1
   0D1D E0                  237 	movx	a,@dptr
   0D1E FA                  238 	mov	r2,a
   0D1F A3                  239 	inc	dptr
   0D20 E0                  240 	movx	a,@dptr
   0D21 FB                  241 	mov	r3,a
   0D22 A3                  242 	inc	dptr
   0D23 E0                  243 	movx	a,@dptr
   0D24 FC                  244 	mov	r4,a
   0D25 8A 82               245 	mov	dpl,r2
   0D27 8B 83               246 	mov	dph,r3
   0D29 8C F0               247 	mov	b,r4
   0D2B 02 0D 71            248 	ljmp	_calculator_destructor2
                            249 ;------------------------------------------------------------
                            250 ;Allocation info for local variables in function 'calculator_getHistoryQueueDepth'
                            251 ;------------------------------------------------------------
                            252 ;------------------------------------------------------------
                            253 ;	../sm_test_calculator.c:47: END_STATE_MACHINE_DEFINITION() ;
                            254 ;	-----------------------------------------
                            255 ;	 function calculator_getHistoryQueueDepth
                            256 ;	-----------------------------------------
   0D2E                     257 _calculator_getHistoryQueueDepth:
   0D2E 90 00 4E            258 	mov	dptr,#0x004E
   0D31 22                  259 	ret
                            260 ;------------------------------------------------------------
                            261 ;Allocation info for local variables in function 'calculator_getMachineSize'
                            262 ;------------------------------------------------------------
                            263 ;------------------------------------------------------------
                            264 ;	../sm_test_calculator.c:47: 
                            265 ;	-----------------------------------------
                            266 ;	 function calculator_getMachineSize
                            267 ;	-----------------------------------------
   0D32                     268 _calculator_getMachineSize:
   0D32 90 00 2F            269 	mov	dptr,#0x002F
   0D35 22                  270 	ret
                            271 ;------------------------------------------------------------
                            272 ;Allocation info for local variables in function 'calculator_constructor2'
                            273 ;------------------------------------------------------------
                            274 ;self                      Allocated with name '_calculator_constructor2_self_1_1'
                            275 ;------------------------------------------------------------
                            276 ;	../sm_test_calculator.c:50: STATE_MACHINE_CONSTRUCTOR()
                            277 ;	-----------------------------------------
                            278 ;	 function calculator_constructor2
                            279 ;	-----------------------------------------
   0D36                     280 _calculator_constructor2:
   0D36 AA F0               281 	mov	r2,b
   0D38 AB 83               282 	mov	r3,dph
   0D3A E5 82               283 	mov	a,dpl
   0D3C 90 09 0F            284 	mov	dptr,#_calculator_constructor2_self_1_1
   0D3F F0                  285 	movx	@dptr,a
   0D40 A3                  286 	inc	dptr
   0D41 EB                  287 	mov	a,r3
   0D42 F0                  288 	movx	@dptr,a
   0D43 A3                  289 	inc	dptr
   0D44 EA                  290 	mov	a,r2
   0D45 F0                  291 	movx	@dptr,a
                            292 ;	../sm_test_calculator.c:52: self->result = 0 ;
   0D46 90 09 0F            293 	mov	dptr,#_calculator_constructor2_self_1_1
   0D49 E0                  294 	movx	a,@dptr
   0D4A FA                  295 	mov	r2,a
   0D4B A3                  296 	inc	dptr
   0D4C E0                  297 	movx	a,@dptr
   0D4D FB                  298 	mov	r3,a
   0D4E A3                  299 	inc	dptr
   0D4F E0                  300 	movx	a,@dptr
   0D50 FC                  301 	mov	r4,a
   0D51 74 2B               302 	mov	a,#0x2B
   0D53 2A                  303 	add	a,r2
   0D54 FA                  304 	mov	r2,a
   0D55 E4                  305 	clr	a
   0D56 3B                  306 	addc	a,r3
   0D57 FB                  307 	mov	r3,a
   0D58 8A 82               308 	mov	dpl,r2
   0D5A 8B 83               309 	mov	dph,r3
   0D5C 8C F0               310 	mov	b,r4
   0D5E E4                  311 	clr	a
   0D5F 12 42 42            312 	lcall	__gptrput
   0D62 A3                  313 	inc	dptr
   0D63 E4                  314 	clr	a
   0D64 12 42 42            315 	lcall	__gptrput
   0D67 A3                  316 	inc	dptr
   0D68 E4                  317 	clr	a
   0D69 12 42 42            318 	lcall	__gptrput
   0D6C A3                  319 	inc	dptr
   0D6D E4                  320 	clr	a
   0D6E 02 42 42            321 	ljmp	__gptrput
                            322 ;------------------------------------------------------------
                            323 ;Allocation info for local variables in function 'calculator_destructor2'
                            324 ;------------------------------------------------------------
                            325 ;self                      Allocated with name '_calculator_destructor2_self_1_1'
                            326 ;------------------------------------------------------------
                            327 ;	../sm_test_calculator.c:56: STATE_MACHINE_DESTRUCTOR()
                            328 ;	-----------------------------------------
                            329 ;	 function calculator_destructor2
                            330 ;	-----------------------------------------
   0D71                     331 _calculator_destructor2:
                            332 ;	../sm_test_calculator.c:58: (void)self ;	/* Nothing to do here */
   0D71 22                  333 	ret
                            334 ;------------------------------------------------------------
                            335 ;Allocation info for local variables in function 'calculator_TOP_handler'
                            336 ;------------------------------------------------------------
                            337 ;event                     Allocated to stack - offset -5
                            338 ;self                      Allocated to registers r2 r3 r4 
                            339 ;stateResponseCode         Allocated to registers 
                            340 ;------------------------------------------------------------
                            341 ;	../sm_test_calculator.c:62: DEFINE_TOP_STATE()
                            342 ;	-----------------------------------------
                            343 ;	 function calculator_TOP_handler
                            344 ;	-----------------------------------------
   0D72                     345 _calculator_TOP_handler:
   0D72 C0 1F               346 	push	_bp
   0D74 85 81 1F            347 	mov	_bp,sp
   0D77 AA 82               348 	mov	r2,dpl
   0D79 AB 83               349 	mov	r3,dph
   0D7B AC F0               350 	mov	r4,b
                            351 ;	../sm_test_calculator.c:64: INITIAL_TRANSITION(TO(begin),																	NO_ACTION) ;
   0D7D E5 1F               352 	mov	a,_bp
   0D7F 24 FB               353 	add	a,#0xfb
   0D81 F8                  354 	mov	r0,a
   0D82 86 05               355 	mov	ar5,@r0
   0D84 08                  356 	inc	r0
   0D85 86 06               357 	mov	ar6,@r0
   0D87 08                  358 	inc	r0
   0D88 86 07               359 	mov	ar7,@r0
   0D8A 8D 82               360 	mov	dpl,r5
   0D8C 8E 83               361 	mov	dph,r6
   0D8E 8F F0               362 	mov	b,r7
   0D90 12 4E 6E            363 	lcall	__gptrget
   0D93 FD                  364 	mov	r5,a
   0D94 BD 02 23            365 	cjne	r5,#0x02,00102$
   0D97 74 08               366 	mov	a,#0x08
   0D99 2A                  367 	add	a,r2
   0D9A FA                  368 	mov	r2,a
   0D9B E4                  369 	clr	a
   0D9C 3B                  370 	addc	a,r3
   0D9D FB                  371 	mov	r3,a
   0D9E 8A 82               372 	mov	dpl,r2
   0DA0 8B 83               373 	mov	dph,r3
   0DA2 8C F0               374 	mov	b,r4
   0DA4 74 65               375 	mov	a,#_calculator_begin
   0DA6 12 42 42            376 	lcall	__gptrput
   0DA9 A3                  377 	inc	dptr
   0DAA 74 4F               378 	mov	a,#(_calculator_begin >> 8)
   0DAC 12 42 42            379 	lcall	__gptrput
   0DAF A3                  380 	inc	dptr
   0DB0 74 80               381 	mov	a,#0x80
   0DB2 12 42 42            382 	lcall	__gptrput
   0DB5 75 82 02            383 	mov	dpl,#0x02
   0DB8 80 03               384 	sjmp	00103$
   0DBA                     385 00102$:
                            386 ;	../sm_test_calculator.c:66: END_DEFINE_STATE()
   0DBA 75 82 00            387 	mov	dpl,#0x00
   0DBD                     388 00103$:
   0DBD D0 1F               389 	pop	_bp
   0DBF 22                  390 	ret
                            391 ;------------------------------------------------------------
                            392 ;Allocation info for local variables in function 'calculator_on_handler'
                            393 ;------------------------------------------------------------
                            394 ;event                     Allocated to stack - offset -5
                            395 ;self                      Allocated to stack - offset 1
                            396 ;stateResponseCode         Allocated to registers 
                            397 ;stateResponseCode         Allocated to registers 
                            398 ;stateResponseCode         Allocated to registers 
                            399 ;------------------------------------------------------------
                            400 ;	../sm_test_calculator.c:69: DEFINE_STATE(on)
                            401 ;	-----------------------------------------
                            402 ;	 function calculator_on_handler
                            403 ;	-----------------------------------------
   0DC0                     404 _calculator_on_handler:
   0DC0 C0 1F               405 	push	_bp
   0DC2 85 81 1F            406 	mov	_bp,sp
   0DC5 C0 82               407 	push	dpl
   0DC7 C0 83               408 	push	dph
   0DC9 C0 F0               409 	push	b
                            410 ;	../sm_test_calculator.c:71: INITIAL_TRANSITION(TO(ready),																NO_ACTION) ;
   0DCB E5 1F               411 	mov	a,_bp
   0DCD 24 FB               412 	add	a,#0xfb
   0DCF F8                  413 	mov	r0,a
   0DD0 86 05               414 	mov	ar5,@r0
   0DD2 08                  415 	inc	r0
   0DD3 86 06               416 	mov	ar6,@r0
   0DD5 08                  417 	inc	r0
   0DD6 86 07               418 	mov	ar7,@r0
   0DD8 8D 82               419 	mov	dpl,r5
   0DDA 8E 83               420 	mov	dph,r6
   0DDC 8F F0               421 	mov	b,r7
   0DDE 12 4E 6E            422 	lcall	__gptrget
   0DE1 FD                  423 	mov	r5,a
   0DE2 BD 02 2A            424 	cjne	r5,#0x02,00102$
   0DE5 A8 1F               425 	mov	r0,_bp
   0DE7 08                  426 	inc	r0
   0DE8 74 08               427 	mov	a,#0x08
   0DEA 26                  428 	add	a,@r0
   0DEB FE                  429 	mov	r6,a
   0DEC E4                  430 	clr	a
   0DED 08                  431 	inc	r0
   0DEE 36                  432 	addc	a,@r0
   0DEF FF                  433 	mov	r7,a
   0DF0 08                  434 	inc	r0
   0DF1 86 02               435 	mov	ar2,@r0
   0DF3 8E 82               436 	mov	dpl,r6
   0DF5 8F 83               437 	mov	dph,r7
   0DF7 8A F0               438 	mov	b,r2
   0DF9 74 53               439 	mov	a,#_calculator_ready
   0DFB 12 42 42            440 	lcall	__gptrput
   0DFE A3                  441 	inc	dptr
   0DFF 74 4F               442 	mov	a,#(_calculator_ready >> 8)
   0E01 12 42 42            443 	lcall	__gptrput
   0E04 A3                  444 	inc	dptr
   0E05 74 80               445 	mov	a,#0x80
   0E07 12 42 42            446 	lcall	__gptrput
   0E0A 75 82 02            447 	mov	dpl,#0x02
   0E0D 80 5D               448 	sjmp	00107$
   0E0F                     449 00102$:
                            450 ;	../sm_test_calculator.c:73: TRANSITION_ON(CLEAR,												TO(on),					NO_ACTION) ;
   0E0F BD 06 2A            451 	cjne	r5,#0x06,00104$
   0E12 A8 1F               452 	mov	r0,_bp
   0E14 08                  453 	inc	r0
   0E15 74 08               454 	mov	a,#0x08
   0E17 26                  455 	add	a,@r0
   0E18 FA                  456 	mov	r2,a
   0E19 E4                  457 	clr	a
   0E1A 08                  458 	inc	r0
   0E1B 36                  459 	addc	a,@r0
   0E1C FB                  460 	mov	r3,a
   0E1D 08                  461 	inc	r0
   0E1E 86 04               462 	mov	ar4,@r0
   0E20 8A 82               463 	mov	dpl,r2
   0E22 8B 83               464 	mov	dph,r3
   0E24 8C F0               465 	mov	b,r4
   0E26 74 4A               466 	mov	a,#_calculator_on
   0E28 12 42 42            467 	lcall	__gptrput
   0E2B A3                  468 	inc	dptr
   0E2C 74 4F               469 	mov	a,#(_calculator_on >> 8)
   0E2E 12 42 42            470 	lcall	__gptrput
   0E31 A3                  471 	inc	dptr
   0E32 74 80               472 	mov	a,#0x80
   0E34 12 42 42            473 	lcall	__gptrput
   0E37 75 82 02            474 	mov	dpl,#0x02
   0E3A 80 30               475 	sjmp	00107$
   0E3C                     476 00104$:
                            477 ;	../sm_test_calculator.c:74: TRANSITION_ON(OFF,													TO(STATE_MACHINE_EXIT),	NO_ACTION) ;
   0E3C BD 0D 2A            478 	cjne	r5,#0x0D,00106$
   0E3F A8 1F               479 	mov	r0,_bp
   0E41 08                  480 	inc	r0
   0E42 74 08               481 	mov	a,#0x08
   0E44 26                  482 	add	a,@r0
   0E45 FA                  483 	mov	r2,a
   0E46 E4                  484 	clr	a
   0E47 08                  485 	inc	r0
   0E48 36                  486 	addc	a,@r0
   0E49 FB                  487 	mov	r3,a
   0E4A 08                  488 	inc	r0
   0E4B 86 04               489 	mov	ar4,@r0
   0E4D 8A 82               490 	mov	dpl,r2
   0E4F 8B 83               491 	mov	dph,r3
   0E51 8C F0               492 	mov	b,r4
   0E53 74 41               493 	mov	a,#_calculator_TOP
   0E55 12 42 42            494 	lcall	__gptrput
   0E58 A3                  495 	inc	dptr
   0E59 74 4F               496 	mov	a,#(_calculator_TOP >> 8)
   0E5B 12 42 42            497 	lcall	__gptrput
   0E5E A3                  498 	inc	dptr
   0E5F 74 80               499 	mov	a,#0x80
   0E61 12 42 42            500 	lcall	__gptrput
   0E64 75 82 02            501 	mov	dpl,#0x02
   0E67 80 03               502 	sjmp	00107$
   0E69                     503 00106$:
                            504 ;	../sm_test_calculator.c:76: END_DEFINE_STATE()
   0E69 75 82 00            505 	mov	dpl,#0x00
   0E6C                     506 00107$:
   0E6C 85 1F 81            507 	mov	sp,_bp
   0E6F D0 1F               508 	pop	_bp
   0E71 22                  509 	ret
                            510 ;------------------------------------------------------------
                            511 ;Allocation info for local variables in function 'calculator_ready_handler'
                            512 ;------------------------------------------------------------
                            513 ;event                     Allocated to stack - offset -5
                            514 ;self                      Allocated to stack - offset 1
                            515 ;stateResponseCode         Allocated to registers 
                            516 ;stateResponseCode         Allocated to registers 
                            517 ;------------------------------------------------------------
                            518 ;	../sm_test_calculator.c:79: DEFINE_STATE(ready)
                            519 ;	-----------------------------------------
                            520 ;	 function calculator_ready_handler
                            521 ;	-----------------------------------------
   0E72                     522 _calculator_ready_handler:
   0E72 C0 1F               523 	push	_bp
   0E74 85 81 1F            524 	mov	_bp,sp
   0E77 C0 82               525 	push	dpl
   0E79 C0 83               526 	push	dph
   0E7B C0 F0               527 	push	b
                            528 ;	../sm_test_calculator.c:81: INITIAL_TRANSITION(TO(zero1),																NO_ACTION) ;
   0E7D E5 1F               529 	mov	a,_bp
   0E7F 24 FB               530 	add	a,#0xfb
   0E81 F8                  531 	mov	r0,a
   0E82 86 05               532 	mov	ar5,@r0
   0E84 08                  533 	inc	r0
   0E85 86 06               534 	mov	ar6,@r0
   0E87 08                  535 	inc	r0
   0E88 86 07               536 	mov	ar7,@r0
   0E8A 8D 82               537 	mov	dpl,r5
   0E8C 8E 83               538 	mov	dph,r6
   0E8E 8F F0               539 	mov	b,r7
   0E90 12 4E 6E            540 	lcall	__gptrget
   0E93 FD                  541 	mov	r5,a
   0E94 BD 02 2A            542 	cjne	r5,#0x02,00102$
   0E97 A8 1F               543 	mov	r0,_bp
   0E99 08                  544 	inc	r0
   0E9A 74 08               545 	mov	a,#0x08
   0E9C 26                  546 	add	a,@r0
   0E9D FE                  547 	mov	r6,a
   0E9E E4                  548 	clr	a
   0E9F 08                  549 	inc	r0
   0EA0 36                  550 	addc	a,@r0
   0EA1 FF                  551 	mov	r7,a
   0EA2 08                  552 	inc	r0
   0EA3 86 02               553 	mov	ar2,@r0
   0EA5 8E 82               554 	mov	dpl,r6
   0EA7 8F 83               555 	mov	dph,r7
   0EA9 8A F0               556 	mov	b,r2
   0EAB 74 80               557 	mov	a,#_calculator_zero1
   0EAD 12 42 42            558 	lcall	__gptrput
   0EB0 A3                  559 	inc	dptr
   0EB1 74 4F               560 	mov	a,#(_calculator_zero1 >> 8)
   0EB3 12 42 42            561 	lcall	__gptrput
   0EB6 A3                  562 	inc	dptr
   0EB7 74 80               563 	mov	a,#0x80
   0EB9 12 42 42            564 	lcall	__gptrput
   0EBC 75 82 02            565 	mov	dpl,#0x02
   0EBF 80 30               566 	sjmp	00105$
   0EC1                     567 00102$:
                            568 ;	../sm_test_calculator.c:83: TRANSITION_ON(OPERATION,											TO(opEntered),			NO_ACTION) ;
   0EC1 BD 0B 2A            569 	cjne	r5,#0x0B,00104$
   0EC4 A8 1F               570 	mov	r0,_bp
   0EC6 08                  571 	inc	r0
   0EC7 74 08               572 	mov	a,#0x08
   0EC9 26                  573 	add	a,@r0
   0ECA FA                  574 	mov	r2,a
   0ECB E4                  575 	clr	a
   0ECC 08                  576 	inc	r0
   0ECD 36                  577 	addc	a,@r0
   0ECE FB                  578 	mov	r3,a
   0ECF 08                  579 	inc	r0
   0ED0 86 04               580 	mov	ar4,@r0
   0ED2 8A 82               581 	mov	dpl,r2
   0ED4 8B 83               582 	mov	dph,r3
   0ED6 8C F0               583 	mov	b,r4
   0ED8 74 A4               584 	mov	a,#_calculator_opEntered
   0EDA 12 42 42            585 	lcall	__gptrput
   0EDD A3                  586 	inc	dptr
   0EDE 74 4F               587 	mov	a,#(_calculator_opEntered >> 8)
   0EE0 12 42 42            588 	lcall	__gptrput
   0EE3 A3                  589 	inc	dptr
   0EE4 74 80               590 	mov	a,#0x80
   0EE6 12 42 42            591 	lcall	__gptrput
   0EE9 75 82 02            592 	mov	dpl,#0x02
   0EEC 80 03               593 	sjmp	00105$
   0EEE                     594 00104$:
                            595 ;	../sm_test_calculator.c:85: END_DEFINE_STATE()
   0EEE 75 82 00            596 	mov	dpl,#0x00
   0EF1                     597 00105$:
   0EF1 85 1F 81            598 	mov	sp,_bp
   0EF4 D0 1F               599 	pop	_bp
   0EF6 22                  600 	ret
                            601 ;------------------------------------------------------------
                            602 ;Allocation info for local variables in function 'calculator_result_handler'
                            603 ;------------------------------------------------------------
                            604 ;event                     Allocated to stack - offset -5
                            605 ;self                      Allocated to registers 
                            606 ;stateResponseCode         Allocated to registers 
                            607 ;------------------------------------------------------------
                            608 ;	../sm_test_calculator.c:88: DEFINE_STATE(result)
                            609 ;	-----------------------------------------
                            610 ;	 function calculator_result_handler
                            611 ;	-----------------------------------------
   0EF7                     612 _calculator_result_handler:
   0EF7 C0 1F               613 	push	_bp
   0EF9 85 81 1F            614 	mov	_bp,sp
                            615 ;	../sm_test_calculator.c:91: END_DEFINE_STATE()
   0EFC 75 82 00            616 	mov	dpl,#0x00
   0EFF D0 1F               617 	pop	_bp
   0F01 22                  618 	ret
                            619 ;------------------------------------------------------------
                            620 ;Allocation info for local variables in function 'calculator_begin_handler'
                            621 ;------------------------------------------------------------
                            622 ;event                     Allocated to stack - offset -5
                            623 ;self                      Allocated to stack - offset 1
                            624 ;stateResponseCode         Allocated to registers 
                            625 ;stateResponseCode         Allocated to registers 
                            626 ;stateResponseCode         Allocated to registers 
                            627 ;stateResponseCode         Allocated to registers 
                            628 ;stateResponseCode         Allocated to registers 
                            629 ;sloc0                     Allocated to stack - offset 9
                            630 ;------------------------------------------------------------
                            631 ;	../sm_test_calculator.c:94: DEFINE_STATE(begin)
                            632 ;	-----------------------------------------
                            633 ;	 function calculator_begin_handler
                            634 ;	-----------------------------------------
   0F02                     635 _calculator_begin_handler:
   0F02 C0 1F               636 	push	_bp
   0F04 85 81 1F            637 	mov	_bp,sp
   0F07 C0 82               638 	push	dpl
   0F09 C0 83               639 	push	dph
   0F0B C0 F0               640 	push	b
                            641 ;	../sm_test_calculator.c:97: INITIAL_TRANSITION(TO(on),																	NO_ACTION) ;
   0F0D E5 1F               642 	mov	a,_bp
   0F0F 24 FB               643 	add	a,#0xfb
   0F11 F8                  644 	mov	r0,a
   0F12 86 05               645 	mov	ar5,@r0
   0F14 08                  646 	inc	r0
   0F15 86 06               647 	mov	ar6,@r0
   0F17 08                  648 	inc	r0
   0F18 86 07               649 	mov	ar7,@r0
   0F1A 8D 82               650 	mov	dpl,r5
   0F1C 8E 83               651 	mov	dph,r6
   0F1E 8F F0               652 	mov	b,r7
   0F20 12 4E 6E            653 	lcall	__gptrget
   0F23 FA                  654 	mov	r2,a
   0F24 BA 02 2B            655 	cjne	r2,#0x02,00102$
   0F27 A8 1F               656 	mov	r0,_bp
   0F29 08                  657 	inc	r0
   0F2A 74 08               658 	mov	a,#0x08
   0F2C 26                  659 	add	a,@r0
   0F2D FA                  660 	mov	r2,a
   0F2E E4                  661 	clr	a
   0F2F 08                  662 	inc	r0
   0F30 36                  663 	addc	a,@r0
   0F31 FB                  664 	mov	r3,a
   0F32 08                  665 	inc	r0
   0F33 86 04               666 	mov	ar4,@r0
   0F35 8A 82               667 	mov	dpl,r2
   0F37 8B 83               668 	mov	dph,r3
   0F39 8C F0               669 	mov	b,r4
   0F3B 74 4A               670 	mov	a,#_calculator_on
   0F3D 12 42 42            671 	lcall	__gptrput
   0F40 A3                  672 	inc	dptr
   0F41 74 4F               673 	mov	a,#(_calculator_on >> 8)
   0F43 12 42 42            674 	lcall	__gptrput
   0F46 A3                  675 	inc	dptr
   0F47 74 80               676 	mov	a,#0x80
   0F49 12 42 42            677 	lcall	__gptrput
   0F4C 75 82 02            678 	mov	dpl,#0x02
   0F4F 02 10 1C            679 	ljmp	00112$
   0F52                     680 00102$:
                            681 ;	../sm_test_calculator.c:99: TRANSITION_ON_IF(OPERATION,	IF(CAST_EVENT(keyEvent_t)->key == '-'),	TO(negated1),			NO_ACTION) ;
   0F52 BA 0B 3D            682 	cjne	r2,#0x0B,00104$
   0F55 0D                  683 	inc	r5
   0F56 BD 00 01            684 	cjne	r5,#0x00,00124$
   0F59 0E                  685 	inc	r6
   0F5A                     686 00124$:
   0F5A 8D 82               687 	mov	dpl,r5
   0F5C 8E 83               688 	mov	dph,r6
   0F5E 8F F0               689 	mov	b,r7
   0F60 12 4E 6E            690 	lcall	__gptrget
   0F63 FD                  691 	mov	r5,a
   0F64 BD 2D 2B            692 	cjne	r5,#0x2D,00104$
   0F67 A8 1F               693 	mov	r0,_bp
   0F69 08                  694 	inc	r0
   0F6A 74 08               695 	mov	a,#0x08
   0F6C 26                  696 	add	a,@r0
   0F6D FA                  697 	mov	r2,a
   0F6E E4                  698 	clr	a
   0F6F 08                  699 	inc	r0
   0F70 36                  700 	addc	a,@r0
   0F71 FB                  701 	mov	r3,a
   0F72 08                  702 	inc	r0
   0F73 86 04               703 	mov	ar4,@r0
   0F75 8A 82               704 	mov	dpl,r2
   0F77 8B 83               705 	mov	dph,r3
   0F79 8C F0               706 	mov	b,r4
   0F7B 74 6E               707 	mov	a,#_calculator_negated1
   0F7D 12 42 42            708 	lcall	__gptrput
   0F80 A3                  709 	inc	dptr
   0F81 74 4F               710 	mov	a,#(_calculator_negated1 >> 8)
   0F83 12 42 42            711 	lcall	__gptrput
   0F86 A3                  712 	inc	dptr
   0F87 74 80               713 	mov	a,#0x80
   0F89 12 42 42            714 	lcall	__gptrput
   0F8C 75 82 02            715 	mov	dpl,#0x02
   0F8F 02 10 1C            716 	ljmp	00112$
   0F92                     717 00104$:
                            718 ;	../sm_test_calculator.c:100: TRANSITION_ON(DIGIT_0,												TO(zero1),				NO_ACTION) ;
   0F92 BA 08 2A            719 	cjne	r2,#0x08,00107$
   0F95 A8 1F               720 	mov	r0,_bp
   0F97 08                  721 	inc	r0
   0F98 74 08               722 	mov	a,#0x08
   0F9A 26                  723 	add	a,@r0
   0F9B FA                  724 	mov	r2,a
   0F9C E4                  725 	clr	a
   0F9D 08                  726 	inc	r0
   0F9E 36                  727 	addc	a,@r0
   0F9F FB                  728 	mov	r3,a
   0FA0 08                  729 	inc	r0
   0FA1 86 04               730 	mov	ar4,@r0
   0FA3 8A 82               731 	mov	dpl,r2
   0FA5 8B 83               732 	mov	dph,r3
   0FA7 8C F0               733 	mov	b,r4
   0FA9 74 80               734 	mov	a,#_calculator_zero1
   0FAB 12 42 42            735 	lcall	__gptrput
   0FAE A3                  736 	inc	dptr
   0FAF 74 4F               737 	mov	a,#(_calculator_zero1 >> 8)
   0FB1 12 42 42            738 	lcall	__gptrput
   0FB4 A3                  739 	inc	dptr
   0FB5 74 80               740 	mov	a,#0x80
   0FB7 12 42 42            741 	lcall	__gptrput
   0FBA 75 82 02            742 	mov	dpl,#0x02
   0FBD 80 5D               743 	sjmp	00112$
   0FBF                     744 00107$:
                            745 ;	../sm_test_calculator.c:101: TRANSITION_ON(DIGIT_1_9,											TO(int1),				NO_ACTION) ;
   0FBF BA 09 2A            746 	cjne	r2,#0x09,00109$
   0FC2 A8 1F               747 	mov	r0,_bp
   0FC4 08                  748 	inc	r0
   0FC5 74 08               749 	mov	a,#0x08
   0FC7 26                  750 	add	a,@r0
   0FC8 FA                  751 	mov	r2,a
   0FC9 E4                  752 	clr	a
   0FCA 08                  753 	inc	r0
   0FCB 36                  754 	addc	a,@r0
   0FCC FB                  755 	mov	r3,a
   0FCD 08                  756 	inc	r0
   0FCE 86 04               757 	mov	ar4,@r0
   0FD0 8A 82               758 	mov	dpl,r2
   0FD2 8B 83               759 	mov	dph,r3
   0FD4 8C F0               760 	mov	b,r4
   0FD6 74 89               761 	mov	a,#_calculator_int1
   0FD8 12 42 42            762 	lcall	__gptrput
   0FDB A3                  763 	inc	dptr
   0FDC 74 4F               764 	mov	a,#(_calculator_int1 >> 8)
   0FDE 12 42 42            765 	lcall	__gptrput
   0FE1 A3                  766 	inc	dptr
   0FE2 74 80               767 	mov	a,#0x80
   0FE4 12 42 42            768 	lcall	__gptrput
   0FE7 75 82 02            769 	mov	dpl,#0x02
   0FEA 80 30               770 	sjmp	00112$
   0FEC                     771 00109$:
                            772 ;	../sm_test_calculator.c:102: TRANSITION_ON(POINT,												TO(frac1),				NO_ACTION) ;
   0FEC BA 0A 2A            773 	cjne	r2,#0x0A,00111$
   0FEF A8 1F               774 	mov	r0,_bp
   0FF1 08                  775 	inc	r0
   0FF2 74 08               776 	mov	a,#0x08
   0FF4 26                  777 	add	a,@r0
   0FF5 FA                  778 	mov	r2,a
   0FF6 E4                  779 	clr	a
   0FF7 08                  780 	inc	r0
   0FF8 36                  781 	addc	a,@r0
   0FF9 FB                  782 	mov	r3,a
   0FFA 08                  783 	inc	r0
   0FFB 86 04               784 	mov	ar4,@r0
   0FFD 8A 82               785 	mov	dpl,r2
   0FFF 8B 83               786 	mov	dph,r3
   1001 8C F0               787 	mov	b,r4
   1003 74 92               788 	mov	a,#_calculator_frac1
   1005 12 42 42            789 	lcall	__gptrput
   1008 A3                  790 	inc	dptr
   1009 74 4F               791 	mov	a,#(_calculator_frac1 >> 8)
   100B 12 42 42            792 	lcall	__gptrput
   100E A3                  793 	inc	dptr
   100F 74 80               794 	mov	a,#0x80
   1011 12 42 42            795 	lcall	__gptrput
   1014 75 82 02            796 	mov	dpl,#0x02
   1017 80 03               797 	sjmp	00112$
   1019                     798 00111$:
                            799 ;	../sm_test_calculator.c:104: END_DEFINE_STATE()
   1019 75 82 00            800 	mov	dpl,#0x00
   101C                     801 00112$:
   101C 85 1F 81            802 	mov	sp,_bp
   101F D0 1F               803 	pop	_bp
   1021 22                  804 	ret
                            805 ;------------------------------------------------------------
                            806 ;Allocation info for local variables in function 'calculator_negated1_handler'
                            807 ;------------------------------------------------------------
                            808 ;event                     Allocated to stack - offset -5
                            809 ;self                      Allocated to stack - offset 1
                            810 ;stateResponseCode         Allocated to registers 
                            811 ;stateResponseCode         Allocated to registers 
                            812 ;stateResponseCode         Allocated to registers 
                            813 ;stateResponseCode         Allocated to registers 
                            814 ;stateResponseCode         Allocated to registers 
                            815 ;sloc0                     Allocated to stack - offset 9
                            816 ;------------------------------------------------------------
                            817 ;	../sm_test_calculator.c:107: DEFINE_STATE(negated1)
                            818 ;	-----------------------------------------
                            819 ;	 function calculator_negated1_handler
                            820 ;	-----------------------------------------
   1022                     821 _calculator_negated1_handler:
   1022 C0 1F               822 	push	_bp
   1024 85 81 1F            823 	mov	_bp,sp
   1027 C0 82               824 	push	dpl
   1029 C0 83               825 	push	dph
   102B C0 F0               826 	push	b
                            827 ;	../sm_test_calculator.c:109: TRANSITION_ON(CLEAR_ENTRY,											TO(begin),				NO_ACTION) ;
   102D E5 1F               828 	mov	a,_bp
   102F 24 FB               829 	add	a,#0xfb
   1031 F8                  830 	mov	r0,a
   1032 86 05               831 	mov	ar5,@r0
   1034 08                  832 	inc	r0
   1035 86 06               833 	mov	ar6,@r0
   1037 08                  834 	inc	r0
   1038 86 07               835 	mov	ar7,@r0
   103A 8D 82               836 	mov	dpl,r5
   103C 8E 83               837 	mov	dph,r6
   103E 8F F0               838 	mov	b,r7
   1040 12 4E 6E            839 	lcall	__gptrget
   1043 FA                  840 	mov	r2,a
   1044 BA 07 2B            841 	cjne	r2,#0x07,00102$
   1047 A8 1F               842 	mov	r0,_bp
   1049 08                  843 	inc	r0
   104A 74 08               844 	mov	a,#0x08
   104C 26                  845 	add	a,@r0
   104D FA                  846 	mov	r2,a
   104E E4                  847 	clr	a
   104F 08                  848 	inc	r0
   1050 36                  849 	addc	a,@r0
   1051 FB                  850 	mov	r3,a
   1052 08                  851 	inc	r0
   1053 86 04               852 	mov	ar4,@r0
   1055 8A 82               853 	mov	dpl,r2
   1057 8B 83               854 	mov	dph,r3
   1059 8C F0               855 	mov	b,r4
   105B 74 65               856 	mov	a,#_calculator_begin
   105D 12 42 42            857 	lcall	__gptrput
   1060 A3                  858 	inc	dptr
   1061 74 4F               859 	mov	a,#(_calculator_begin >> 8)
   1063 12 42 42            860 	lcall	__gptrput
   1066 A3                  861 	inc	dptr
   1067 74 80               862 	mov	a,#0x80
   1069 12 42 42            863 	lcall	__gptrput
   106C 75 82 02            864 	mov	dpl,#0x02
   106F 02 11 17            865 	ljmp	00112$
   1072                     866 00102$:
                            867 ;	../sm_test_calculator.c:110: TRANSITION_ON(DIGIT_0,												TO(zero1),				NO_ACTION) ;
   1072 BA 08 2B            868 	cjne	r2,#0x08,00104$
   1075 A8 1F               869 	mov	r0,_bp
   1077 08                  870 	inc	r0
   1078 74 08               871 	mov	a,#0x08
   107A 26                  872 	add	a,@r0
   107B FA                  873 	mov	r2,a
   107C E4                  874 	clr	a
   107D 08                  875 	inc	r0
   107E 36                  876 	addc	a,@r0
   107F FB                  877 	mov	r3,a
   1080 08                  878 	inc	r0
   1081 86 04               879 	mov	ar4,@r0
   1083 8A 82               880 	mov	dpl,r2
   1085 8B 83               881 	mov	dph,r3
   1087 8C F0               882 	mov	b,r4
   1089 74 80               883 	mov	a,#_calculator_zero1
   108B 12 42 42            884 	lcall	__gptrput
   108E A3                  885 	inc	dptr
   108F 74 4F               886 	mov	a,#(_calculator_zero1 >> 8)
   1091 12 42 42            887 	lcall	__gptrput
   1094 A3                  888 	inc	dptr
   1095 74 80               889 	mov	a,#0x80
   1097 12 42 42            890 	lcall	__gptrput
   109A 75 82 02            891 	mov	dpl,#0x02
   109D 02 11 17            892 	ljmp	00112$
   10A0                     893 00104$:
                            894 ;	../sm_test_calculator.c:111: TRANSITION_ON(DIGIT_1_9,											TO(int1),				NO_ACTION) ;
   10A0 BA 09 2A            895 	cjne	r2,#0x09,00106$
   10A3 A8 1F               896 	mov	r0,_bp
   10A5 08                  897 	inc	r0
   10A6 74 08               898 	mov	a,#0x08
   10A8 26                  899 	add	a,@r0
   10A9 FA                  900 	mov	r2,a
   10AA E4                  901 	clr	a
   10AB 08                  902 	inc	r0
   10AC 36                  903 	addc	a,@r0
   10AD FB                  904 	mov	r3,a
   10AE 08                  905 	inc	r0
   10AF 86 04               906 	mov	ar4,@r0
   10B1 8A 82               907 	mov	dpl,r2
   10B3 8B 83               908 	mov	dph,r3
   10B5 8C F0               909 	mov	b,r4
   10B7 74 89               910 	mov	a,#_calculator_int1
   10B9 12 42 42            911 	lcall	__gptrput
   10BC A3                  912 	inc	dptr
   10BD 74 4F               913 	mov	a,#(_calculator_int1 >> 8)
   10BF 12 42 42            914 	lcall	__gptrput
   10C2 A3                  915 	inc	dptr
   10C3 74 80               916 	mov	a,#0x80
   10C5 12 42 42            917 	lcall	__gptrput
   10C8 75 82 02            918 	mov	dpl,#0x02
   10CB 80 4A               919 	sjmp	00112$
   10CD                     920 00106$:
                            921 ;	../sm_test_calculator.c:112: TRANSITION_ON(POINT,												TO(frac1),				NO_ACTION) ;
   10CD BA 0A 2A            922 	cjne	r2,#0x0A,00108$
   10D0 A8 1F               923 	mov	r0,_bp
   10D2 08                  924 	inc	r0
   10D3 74 08               925 	mov	a,#0x08
   10D5 26                  926 	add	a,@r0
   10D6 FA                  927 	mov	r2,a
   10D7 E4                  928 	clr	a
   10D8 08                  929 	inc	r0
   10D9 36                  930 	addc	a,@r0
   10DA FB                  931 	mov	r3,a
   10DB 08                  932 	inc	r0
   10DC 86 04               933 	mov	ar4,@r0
   10DE 8A 82               934 	mov	dpl,r2
   10E0 8B 83               935 	mov	dph,r3
   10E2 8C F0               936 	mov	b,r4
   10E4 74 92               937 	mov	a,#_calculator_frac1
   10E6 12 42 42            938 	lcall	__gptrput
   10E9 A3                  939 	inc	dptr
   10EA 74 4F               940 	mov	a,#(_calculator_frac1 >> 8)
   10EC 12 42 42            941 	lcall	__gptrput
   10EF A3                  942 	inc	dptr
   10F0 74 80               943 	mov	a,#0x80
   10F2 12 42 42            944 	lcall	__gptrput
   10F5 75 82 02            945 	mov	dpl,#0x02
   10F8 80 1D               946 	sjmp	00112$
   10FA                     947 00108$:
                            948 ;	../sm_test_calculator.c:113: CONSUME_EVENT_IF(OPERATION,	IF(CAST_EVENT(keyEvent_t)->key == '-'),							NO_ACTION) ;
   10FA BA 0B 17            949 	cjne	r2,#0x0B,00110$
   10FD 0D                  950 	inc	r5
   10FE BD 00 01            951 	cjne	r5,#0x00,00130$
   1101 0E                  952 	inc	r6
   1102                     953 00130$:
   1102 8D 82               954 	mov	dpl,r5
   1104 8E 83               955 	mov	dph,r6
   1106 8F F0               956 	mov	b,r7
   1108 12 4E 6E            957 	lcall	__gptrget
   110B FD                  958 	mov	r5,a
   110C BD 2D 05            959 	cjne	r5,#0x2D,00110$
   110F 75 82 01            960 	mov	dpl,#0x01
   1112 80 03               961 	sjmp	00112$
   1114                     962 00110$:
                            963 ;	../sm_test_calculator.c:115: END_DEFINE_STATE()
   1114 75 82 00            964 	mov	dpl,#0x00
   1117                     965 00112$:
   1117 85 1F 81            966 	mov	sp,_bp
   111A D0 1F               967 	pop	_bp
   111C 22                  968 	ret
                            969 ;------------------------------------------------------------
                            970 ;Allocation info for local variables in function 'calculator_operand1_handler'
                            971 ;------------------------------------------------------------
                            972 ;event                     Allocated to stack - offset -5
                            973 ;self                      Allocated to stack - offset 1
                            974 ;stateResponseCode         Allocated to registers 
                            975 ;stateResponseCode         Allocated to registers 
                            976 ;stateResponseCode         Allocated to registers 
                            977 ;------------------------------------------------------------
                            978 ;	../sm_test_calculator.c:118: DEFINE_STATE(operand1)
                            979 ;	-----------------------------------------
                            980 ;	 function calculator_operand1_handler
                            981 ;	-----------------------------------------
   111D                     982 _calculator_operand1_handler:
   111D C0 1F               983 	push	_bp
   111F 85 81 1F            984 	mov	_bp,sp
   1122 C0 82               985 	push	dpl
   1124 C0 83               986 	push	dph
   1126 C0 F0               987 	push	b
                            988 ;	../sm_test_calculator.c:120: TRANSITION_ON(CLEAR_ENTRY,											TO(ready),				NO_ACTION) ;
   1128 E5 1F               989 	mov	a,_bp
   112A 24 FB               990 	add	a,#0xfb
   112C F8                  991 	mov	r0,a
   112D 86 05               992 	mov	ar5,@r0
   112F 08                  993 	inc	r0
   1130 86 06               994 	mov	ar6,@r0
   1132 08                  995 	inc	r0
   1133 86 07               996 	mov	ar7,@r0
   1135 8D 82               997 	mov	dpl,r5
   1137 8E 83               998 	mov	dph,r6
   1139 8F F0               999 	mov	b,r7
   113B 12 4E 6E           1000 	lcall	__gptrget
   113E FD                 1001 	mov	r5,a
   113F BD 07 2A           1002 	cjne	r5,#0x07,00102$
   1142 A8 1F              1003 	mov	r0,_bp
   1144 08                 1004 	inc	r0
   1145 74 08              1005 	mov	a,#0x08
   1147 26                 1006 	add	a,@r0
   1148 FE                 1007 	mov	r6,a
   1149 E4                 1008 	clr	a
   114A 08                 1009 	inc	r0
   114B 36                 1010 	addc	a,@r0
   114C FF                 1011 	mov	r7,a
   114D 08                 1012 	inc	r0
   114E 86 02              1013 	mov	ar2,@r0
   1150 8E 82              1014 	mov	dpl,r6
   1152 8F 83              1015 	mov	dph,r7
   1154 8A F0              1016 	mov	b,r2
   1156 74 53              1017 	mov	a,#_calculator_ready
   1158 12 42 42           1018 	lcall	__gptrput
   115B A3                 1019 	inc	dptr
   115C 74 4F              1020 	mov	a,#(_calculator_ready >> 8)
   115E 12 42 42           1021 	lcall	__gptrput
   1161 A3                 1022 	inc	dptr
   1162 74 80              1023 	mov	a,#0x80
   1164 12 42 42           1024 	lcall	__gptrput
   1167 75 82 02           1025 	mov	dpl,#0x02
   116A 80 30              1026 	sjmp	00105$
   116C                    1027 00102$:
                           1028 ;	../sm_test_calculator.c:121: TRANSITION_ON(OPERATION,											TO(opEntered),			NO_ACTION) ;
   116C BD 0B 2A           1029 	cjne	r5,#0x0B,00104$
   116F A8 1F              1030 	mov	r0,_bp
   1171 08                 1031 	inc	r0
   1172 74 08              1032 	mov	a,#0x08
   1174 26                 1033 	add	a,@r0
   1175 FA                 1034 	mov	r2,a
   1176 E4                 1035 	clr	a
   1177 08                 1036 	inc	r0
   1178 36                 1037 	addc	a,@r0
   1179 FB                 1038 	mov	r3,a
   117A 08                 1039 	inc	r0
   117B 86 04              1040 	mov	ar4,@r0
   117D 8A 82              1041 	mov	dpl,r2
   117F 8B 83              1042 	mov	dph,r3
   1181 8C F0              1043 	mov	b,r4
   1183 74 A4              1044 	mov	a,#_calculator_opEntered
   1185 12 42 42           1045 	lcall	__gptrput
   1188 A3                 1046 	inc	dptr
   1189 74 4F              1047 	mov	a,#(_calculator_opEntered >> 8)
   118B 12 42 42           1048 	lcall	__gptrput
   118E A3                 1049 	inc	dptr
   118F 74 80              1050 	mov	a,#0x80
   1191 12 42 42           1051 	lcall	__gptrput
   1194 75 82 02           1052 	mov	dpl,#0x02
   1197 80 03              1053 	sjmp	00105$
   1199                    1054 00104$:
                           1055 ;	../sm_test_calculator.c:123: END_DEFINE_STATE()
   1199 75 82 00           1056 	mov	dpl,#0x00
   119C                    1057 00105$:
   119C 85 1F 81           1058 	mov	sp,_bp
   119F D0 1F              1059 	pop	_bp
   11A1 22                 1060 	ret
                           1061 ;------------------------------------------------------------
                           1062 ;Allocation info for local variables in function 'calculator_zero1_handler'
                           1063 ;------------------------------------------------------------
                           1064 ;event                     Allocated to stack - offset -5
                           1065 ;self                      Allocated to stack - offset 1
                           1066 ;stateResponseCode         Allocated to registers 
                           1067 ;stateResponseCode         Allocated to registers 
                           1068 ;stateResponseCode         Allocated to registers 
                           1069 ;------------------------------------------------------------
                           1070 ;	../sm_test_calculator.c:126: DEFINE_STATE(zero1)
                           1071 ;	-----------------------------------------
                           1072 ;	 function calculator_zero1_handler
                           1073 ;	-----------------------------------------
   11A2                    1074 _calculator_zero1_handler:
   11A2 C0 1F              1075 	push	_bp
   11A4 85 81 1F           1076 	mov	_bp,sp
   11A7 C0 82              1077 	push	dpl
   11A9 C0 83              1078 	push	dph
   11AB C0 F0              1079 	push	b
                           1080 ;	../sm_test_calculator.c:128: INITIAL_TRANSITION(TO(zero2),																NO_ACTION) ;
   11AD E5 1F              1081 	mov	a,_bp
   11AF 24 FB              1082 	add	a,#0xfb
   11B1 F8                 1083 	mov	r0,a
   11B2 86 05              1084 	mov	ar5,@r0
   11B4 08                 1085 	inc	r0
   11B5 86 06              1086 	mov	ar6,@r0
   11B7 08                 1087 	inc	r0
   11B8 86 07              1088 	mov	ar7,@r0
   11BA 8D 82              1089 	mov	dpl,r5
   11BC 8E 83              1090 	mov	dph,r6
   11BE 8F F0              1091 	mov	b,r7
   11C0 12 4E 6E           1092 	lcall	__gptrget
   11C3 FD                 1093 	mov	r5,a
   11C4 BD 02 2A           1094 	cjne	r5,#0x02,00102$
   11C7 A8 1F              1095 	mov	r0,_bp
   11C9 08                 1096 	inc	r0
   11CA 74 08              1097 	mov	a,#0x08
   11CC 26                 1098 	add	a,@r0
   11CD FE                 1099 	mov	r6,a
   11CE E4                 1100 	clr	a
   11CF 08                 1101 	inc	r0
   11D0 36                 1102 	addc	a,@r0
   11D1 FF                 1103 	mov	r7,a
   11D2 08                 1104 	inc	r0
   11D3 86 02              1105 	mov	ar2,@r0
   11D5 8E 82              1106 	mov	dpl,r6
   11D7 8F 83              1107 	mov	dph,r7
   11D9 8A F0              1108 	mov	b,r2
   11DB 74 BF              1109 	mov	a,#_calculator_zero2
   11DD 12 42 42           1110 	lcall	__gptrput
   11E0 A3                 1111 	inc	dptr
   11E1 74 4F              1112 	mov	a,#(_calculator_zero2 >> 8)
   11E3 12 42 42           1113 	lcall	__gptrput
   11E6 A3                 1114 	inc	dptr
   11E7 74 80              1115 	mov	a,#0x80
   11E9 12 42 42           1116 	lcall	__gptrput
   11EC 75 82 02           1117 	mov	dpl,#0x02
   11EF 80 65              1118 	sjmp	00109$
   11F1                    1119 00102$:
                           1120 ;	../sm_test_calculator.c:129: CONSUME_EVENT(DIGIT_0,																		NO_ACTION) ;
   11F1 BD 08 05           1121 	cjne	r5,#0x08,00104$
   11F4 75 82 01           1122 	mov	dpl,#0x01
   11F7 80 5D              1123 	sjmp	00109$
   11F9                    1124 00104$:
                           1125 ;	../sm_test_calculator.c:130: TRANSITION_ON(DIGIT_1_9,											TO(int1),				NO_ACTION) ;
   11F9 BD 09 2A           1126 	cjne	r5,#0x09,00106$
   11FC A8 1F              1127 	mov	r0,_bp
   11FE 08                 1128 	inc	r0
   11FF 74 08              1129 	mov	a,#0x08
   1201 26                 1130 	add	a,@r0
   1202 FA                 1131 	mov	r2,a
   1203 E4                 1132 	clr	a
   1204 08                 1133 	inc	r0
   1205 36                 1134 	addc	a,@r0
   1206 FB                 1135 	mov	r3,a
   1207 08                 1136 	inc	r0
   1208 86 04              1137 	mov	ar4,@r0
   120A 8A 82              1138 	mov	dpl,r2
   120C 8B 83              1139 	mov	dph,r3
   120E 8C F0              1140 	mov	b,r4
   1210 74 89              1141 	mov	a,#_calculator_int1
   1212 12 42 42           1142 	lcall	__gptrput
   1215 A3                 1143 	inc	dptr
   1216 74 4F              1144 	mov	a,#(_calculator_int1 >> 8)
   1218 12 42 42           1145 	lcall	__gptrput
   121B A3                 1146 	inc	dptr
   121C 74 80              1147 	mov	a,#0x80
   121E 12 42 42           1148 	lcall	__gptrput
   1221 75 82 02           1149 	mov	dpl,#0x02
   1224 80 30              1150 	sjmp	00109$
   1226                    1151 00106$:
                           1152 ;	../sm_test_calculator.c:131: TRANSITION_ON(POINT,												TO(frac1),				NO_ACTION) ;
   1226 BD 0A 2A           1153 	cjne	r5,#0x0A,00108$
   1229 A8 1F              1154 	mov	r0,_bp
   122B 08                 1155 	inc	r0
   122C 74 08              1156 	mov	a,#0x08
   122E 26                 1157 	add	a,@r0
   122F FA                 1158 	mov	r2,a
   1230 E4                 1159 	clr	a
   1231 08                 1160 	inc	r0
   1232 36                 1161 	addc	a,@r0
   1233 FB                 1162 	mov	r3,a
   1234 08                 1163 	inc	r0
   1235 86 04              1164 	mov	ar4,@r0
   1237 8A 82              1165 	mov	dpl,r2
   1239 8B 83              1166 	mov	dph,r3
   123B 8C F0              1167 	mov	b,r4
   123D 74 92              1168 	mov	a,#_calculator_frac1
   123F 12 42 42           1169 	lcall	__gptrput
   1242 A3                 1170 	inc	dptr
   1243 74 4F              1171 	mov	a,#(_calculator_frac1 >> 8)
   1245 12 42 42           1172 	lcall	__gptrput
   1248 A3                 1173 	inc	dptr
   1249 74 80              1174 	mov	a,#0x80
   124B 12 42 42           1175 	lcall	__gptrput
   124E 75 82 02           1176 	mov	dpl,#0x02
   1251 80 03              1177 	sjmp	00109$
   1253                    1178 00108$:
                           1179 ;	../sm_test_calculator.c:133: END_DEFINE_STATE()
   1253 75 82 00           1180 	mov	dpl,#0x00
   1256                    1181 00109$:
   1256 85 1F 81           1182 	mov	sp,_bp
   1259 D0 1F              1183 	pop	_bp
   125B 22                 1184 	ret
                           1185 ;------------------------------------------------------------
                           1186 ;Allocation info for local variables in function 'calculator_int1_handler'
                           1187 ;------------------------------------------------------------
                           1188 ;event                     Allocated to stack - offset -5
                           1189 ;self                      Allocated to registers r2 r3 r4 
                           1190 ;stateResponseCode         Allocated to registers 
                           1191 ;stateResponseCode         Allocated to registers 
                           1192 ;------------------------------------------------------------
                           1193 ;	../sm_test_calculator.c:136: DEFINE_STATE(int1)
                           1194 ;	-----------------------------------------
                           1195 ;	 function calculator_int1_handler
                           1196 ;	-----------------------------------------
   125C                    1197 _calculator_int1_handler:
   125C C0 1F              1198 	push	_bp
   125E 85 81 1F           1199 	mov	_bp,sp
   1261 AA 82              1200 	mov	r2,dpl
   1263 AB 83              1201 	mov	r3,dph
   1265 AC F0              1202 	mov	r4,b
                           1203 ;	../sm_test_calculator.c:138: TRANSITION_ON(POINT,												TO(frac1),				NO_ACTION) ;
   1267 E5 1F              1204 	mov	a,_bp
   1269 24 FB              1205 	add	a,#0xfb
   126B F8                 1206 	mov	r0,a
   126C 86 05              1207 	mov	ar5,@r0
   126E 08                 1208 	inc	r0
   126F 86 06              1209 	mov	ar6,@r0
   1271 08                 1210 	inc	r0
   1272 86 07              1211 	mov	ar7,@r0
   1274 8D 82              1212 	mov	dpl,r5
   1276 8E 83              1213 	mov	dph,r6
   1278 8F F0              1214 	mov	b,r7
   127A 12 4E 6E           1215 	lcall	__gptrget
   127D FD                 1216 	mov	r5,a
   127E BD 0A 23           1217 	cjne	r5,#0x0A,00102$
   1281 74 08              1218 	mov	a,#0x08
   1283 2A                 1219 	add	a,r2
   1284 FA                 1220 	mov	r2,a
   1285 E4                 1221 	clr	a
   1286 3B                 1222 	addc	a,r3
   1287 FB                 1223 	mov	r3,a
   1288 8A 82              1224 	mov	dpl,r2
   128A 8B 83              1225 	mov	dph,r3
   128C 8C F0              1226 	mov	b,r4
   128E 74 92              1227 	mov	a,#_calculator_frac1
   1290 12 42 42           1228 	lcall	__gptrput
   1293 A3                 1229 	inc	dptr
   1294 74 4F              1230 	mov	a,#(_calculator_frac1 >> 8)
   1296 12 42 42           1231 	lcall	__gptrput
   1299 A3                 1232 	inc	dptr
   129A 74 80              1233 	mov	a,#0x80
   129C 12 42 42           1234 	lcall	__gptrput
   129F 75 82 02           1235 	mov	dpl,#0x02
   12A2 80 03              1236 	sjmp	00103$
   12A4                    1237 00102$:
                           1238 ;	../sm_test_calculator.c:140: END_DEFINE_STATE()
   12A4 75 82 00           1239 	mov	dpl,#0x00
   12A7                    1240 00103$:
   12A7 D0 1F              1241 	pop	_bp
   12A9 22                 1242 	ret
                           1243 ;------------------------------------------------------------
                           1244 ;Allocation info for local variables in function 'calculator_frac1_handler'
                           1245 ;------------------------------------------------------------
                           1246 ;event                     Allocated to stack - offset -5
                           1247 ;self                      Allocated to registers 
                           1248 ;stateResponseCode         Allocated to registers 
                           1249 ;------------------------------------------------------------
                           1250 ;	../sm_test_calculator.c:143: DEFINE_STATE(frac1)
                           1251 ;	-----------------------------------------
                           1252 ;	 function calculator_frac1_handler
                           1253 ;	-----------------------------------------
   12AA                    1254 _calculator_frac1_handler:
   12AA C0 1F              1255 	push	_bp
   12AC 85 81 1F           1256 	mov	_bp,sp
                           1257 ;	../sm_test_calculator.c:145: CONSUME_EVENT(POINT,																		NO_ACTION) ;
   12AF E5 1F              1258 	mov	a,_bp
   12B1 24 FB              1259 	add	a,#0xfb
   12B3 F8                 1260 	mov	r0,a
   12B4 86 02              1261 	mov	ar2,@r0
   12B6 08                 1262 	inc	r0
   12B7 86 03              1263 	mov	ar3,@r0
   12B9 08                 1264 	inc	r0
   12BA 86 04              1265 	mov	ar4,@r0
   12BC 8A 82              1266 	mov	dpl,r2
   12BE 8B 83              1267 	mov	dph,r3
   12C0 8C F0              1268 	mov	b,r4
   12C2 12 4E 6E           1269 	lcall	__gptrget
   12C5 FA                 1270 	mov	r2,a
   12C6 BA 0A 05           1271 	cjne	r2,#0x0A,00102$
   12C9 75 82 01           1272 	mov	dpl,#0x01
   12CC 80 03              1273 	sjmp	00103$
   12CE                    1274 00102$:
                           1275 ;	../sm_test_calculator.c:147: END_DEFINE_STATE()
   12CE 75 82 00           1276 	mov	dpl,#0x00
   12D1                    1277 00103$:
   12D1 D0 1F              1278 	pop	_bp
   12D3 22                 1279 	ret
                           1280 ;------------------------------------------------------------
                           1281 ;Allocation info for local variables in function 'calculator_error_handler'
                           1282 ;------------------------------------------------------------
                           1283 ;event                     Allocated to stack - offset -5
                           1284 ;self                      Allocated to registers r2 r3 r4 
                           1285 ;stateResponseCode         Allocated to registers 
                           1286 ;------------------------------------------------------------
                           1287 ;	../sm_test_calculator.c:150: DEFINE_STATE(error)
                           1288 ;	-----------------------------------------
                           1289 ;	 function calculator_error_handler
                           1290 ;	-----------------------------------------
   12D4                    1291 _calculator_error_handler:
   12D4 C0 1F              1292 	push	_bp
   12D6 85 81 1F           1293 	mov	_bp,sp
   12D9 AA 82              1294 	mov	r2,dpl
   12DB AB 83              1295 	mov	r3,dph
   12DD AC F0              1296 	mov	r4,b
                           1297 ;	../sm_test_calculator.c:152: INITIAL_TRANSITION(TO(frac2),																NO_ACTION) ;
   12DF E5 1F              1298 	mov	a,_bp
   12E1 24 FB              1299 	add	a,#0xfb
   12E3 F8                 1300 	mov	r0,a
   12E4 86 05              1301 	mov	ar5,@r0
   12E6 08                 1302 	inc	r0
   12E7 86 06              1303 	mov	ar6,@r0
   12E9 08                 1304 	inc	r0
   12EA 86 07              1305 	mov	ar7,@r0
   12EC 8D 82              1306 	mov	dpl,r5
   12EE 8E 83              1307 	mov	dph,r6
   12F0 8F F0              1308 	mov	b,r7
   12F2 12 4E 6E           1309 	lcall	__gptrget
   12F5 FD                 1310 	mov	r5,a
   12F6 BD 02 23           1311 	cjne	r5,#0x02,00102$
   12F9 74 08              1312 	mov	a,#0x08
   12FB 2A                 1313 	add	a,r2
   12FC FA                 1314 	mov	r2,a
   12FD E4                 1315 	clr	a
   12FE 3B                 1316 	addc	a,r3
   12FF FB                 1317 	mov	r3,a
   1300 8A 82              1318 	mov	dpl,r2
   1302 8B 83              1319 	mov	dph,r3
   1304 8C F0              1320 	mov	b,r4
   1306 74 D1              1321 	mov	a,#_calculator_frac2
   1308 12 42 42           1322 	lcall	__gptrput
   130B A3                 1323 	inc	dptr
   130C 74 4F              1324 	mov	a,#(_calculator_frac2 >> 8)
   130E 12 42 42           1325 	lcall	__gptrput
   1311 A3                 1326 	inc	dptr
   1312 74 80              1327 	mov	a,#0x80
   1314 12 42 42           1328 	lcall	__gptrput
   1317 75 82 02           1329 	mov	dpl,#0x02
   131A 80 03              1330 	sjmp	00103$
   131C                    1331 00102$:
                           1332 ;	../sm_test_calculator.c:154: END_DEFINE_STATE()
   131C 75 82 00           1333 	mov	dpl,#0x00
   131F                    1334 00103$:
   131F D0 1F              1335 	pop	_bp
   1321 22                 1336 	ret
                           1337 ;------------------------------------------------------------
                           1338 ;Allocation info for local variables in function 'calculator_opEntered_handler'
                           1339 ;------------------------------------------------------------
                           1340 ;event                     Allocated to stack - offset -5
                           1341 ;self                      Allocated to registers r2 r3 r4 
                           1342 ;stateResponseCode         Allocated to registers 
                           1343 ;stateResponseCode         Allocated to registers 
                           1344 ;stateResponseCode         Allocated to registers 
                           1345 ;stateResponseCode         Allocated to registers 
                           1346 ;stateResponseCode         Allocated to registers 
                           1347 ;sloc0                     Allocated to stack - offset 1
                           1348 ;------------------------------------------------------------
                           1349 ;	../sm_test_calculator.c:157: DEFINE_STATE(opEntered)
                           1350 ;	-----------------------------------------
                           1351 ;	 function calculator_opEntered_handler
                           1352 ;	-----------------------------------------
   1322                    1353 _calculator_opEntered_handler:
   1322 C0 1F              1354 	push	_bp
   1324 85 81 1F           1355 	mov	_bp,sp
   1327 05 81              1356 	inc	sp
   1329 AA 82              1357 	mov	r2,dpl
   132B AB 83              1358 	mov	r3,dph
   132D AC F0              1359 	mov	r4,b
                           1360 ;	../sm_test_calculator.c:159: TRANSITION_ON_IF(OPERATION,	IF(CAST_EVENT(keyEvent_t)->key == '-'),	TO(negated2),			NO_ACTION) ;
   132F E5 1F              1361 	mov	a,_bp
   1331 24 FB              1362 	add	a,#0xfb
   1333 F8                 1363 	mov	r0,a
   1334 86 05              1364 	mov	ar5,@r0
   1336 08                 1365 	inc	r0
   1337 86 06              1366 	mov	ar6,@r0
   1339 08                 1367 	inc	r0
   133A 86 07              1368 	mov	ar7,@r0
   133C 8D 82              1369 	mov	dpl,r5
   133E 8E 83              1370 	mov	dph,r6
   1340 8F F0              1371 	mov	b,r7
   1342 A8 1F              1372 	mov	r0,_bp
   1344 08                 1373 	inc	r0
   1345 12 4E 6E           1374 	lcall	__gptrget
   1348 F6                 1375 	mov	@r0,a
   1349 A8 1F              1376 	mov	r0,_bp
   134B 08                 1377 	inc	r0
   134C B6 0B 38           1378 	cjne	@r0,#0x0B,00102$
   134F 0D                 1379 	inc	r5
   1350 BD 00 01           1380 	cjne	r5,#0x00,00119$
   1353 0E                 1381 	inc	r6
   1354                    1382 00119$:
   1354 8D 82              1383 	mov	dpl,r5
   1356 8E 83              1384 	mov	dph,r6
   1358 8F F0              1385 	mov	b,r7
   135A 12 4E 6E           1386 	lcall	__gptrget
   135D FD                 1387 	mov	r5,a
   135E BD 2D 26           1388 	cjne	r5,#0x2D,00102$
   1361 74 08              1389 	mov	a,#0x08
   1363 2A                 1390 	add	a,r2
   1364 FD                 1391 	mov	r5,a
   1365 E4                 1392 	clr	a
   1366 3B                 1393 	addc	a,r3
   1367 FE                 1394 	mov	r6,a
   1368 8C 07              1395 	mov	ar7,r4
   136A 8D 82              1396 	mov	dpl,r5
   136C 8E 83              1397 	mov	dph,r6
   136E 8F F0              1398 	mov	b,r7
   1370 74 AD              1399 	mov	a,#_calculator_negated2
   1372 12 42 42           1400 	lcall	__gptrput
   1375 A3                 1401 	inc	dptr
   1376 74 4F              1402 	mov	a,#(_calculator_negated2 >> 8)
   1378 12 42 42           1403 	lcall	__gptrput
   137B A3                 1404 	inc	dptr
   137C 74 80              1405 	mov	a,#0x80
   137E 12 42 42           1406 	lcall	__gptrput
   1381 75 82 02           1407 	mov	dpl,#0x02
   1384 02 14 09           1408 	ljmp	00110$
   1387                    1409 00102$:
                           1410 ;	../sm_test_calculator.c:160: TRANSITION_ON(DIGIT_0,												TO(zero2),				NO_ACTION) ;
   1387 A8 1F              1411 	mov	r0,_bp
   1389 08                 1412 	inc	r0
   138A B6 08 25           1413 	cjne	@r0,#0x08,00105$
   138D 74 08              1414 	mov	a,#0x08
   138F 2A                 1415 	add	a,r2
   1390 FD                 1416 	mov	r5,a
   1391 E4                 1417 	clr	a
   1392 3B                 1418 	addc	a,r3
   1393 FE                 1419 	mov	r6,a
   1394 8C 07              1420 	mov	ar7,r4
   1396 8D 82              1421 	mov	dpl,r5
   1398 8E 83              1422 	mov	dph,r6
   139A 8F F0              1423 	mov	b,r7
   139C 74 BF              1424 	mov	a,#_calculator_zero2
   139E 12 42 42           1425 	lcall	__gptrput
   13A1 A3                 1426 	inc	dptr
   13A2 74 4F              1427 	mov	a,#(_calculator_zero2 >> 8)
   13A4 12 42 42           1428 	lcall	__gptrput
   13A7 A3                 1429 	inc	dptr
   13A8 74 80              1430 	mov	a,#0x80
   13AA 12 42 42           1431 	lcall	__gptrput
   13AD 75 82 02           1432 	mov	dpl,#0x02
   13B0 80 57              1433 	sjmp	00110$
   13B2                    1434 00105$:
                           1435 ;	../sm_test_calculator.c:161: TRANSITION_ON(DIGIT_1_9,											TO(int2),				NO_ACTION) ;
   13B2 A8 1F              1436 	mov	r0,_bp
   13B4 08                 1437 	inc	r0
   13B5 B6 09 25           1438 	cjne	@r0,#0x09,00107$
   13B8 74 08              1439 	mov	a,#0x08
   13BA 2A                 1440 	add	a,r2
   13BB FD                 1441 	mov	r5,a
   13BC E4                 1442 	clr	a
   13BD 3B                 1443 	addc	a,r3
   13BE FE                 1444 	mov	r6,a
   13BF 8C 07              1445 	mov	ar7,r4
   13C1 8D 82              1446 	mov	dpl,r5
   13C3 8E 83              1447 	mov	dph,r6
   13C5 8F F0              1448 	mov	b,r7
   13C7 74 C8              1449 	mov	a,#_calculator_int2
   13C9 12 42 42           1450 	lcall	__gptrput
   13CC A3                 1451 	inc	dptr
   13CD 74 4F              1452 	mov	a,#(_calculator_int2 >> 8)
   13CF 12 42 42           1453 	lcall	__gptrput
   13D2 A3                 1454 	inc	dptr
   13D3 74 80              1455 	mov	a,#0x80
   13D5 12 42 42           1456 	lcall	__gptrput
   13D8 75 82 02           1457 	mov	dpl,#0x02
   13DB 80 2C              1458 	sjmp	00110$
   13DD                    1459 00107$:
                           1460 ;	../sm_test_calculator.c:162: TRANSITION_ON(POINT,												TO(frac2),				NO_ACTION) ;
   13DD A8 1F              1461 	mov	r0,_bp
   13DF 08                 1462 	inc	r0
   13E0 B6 0A 23           1463 	cjne	@r0,#0x0A,00109$
   13E3 74 08              1464 	mov	a,#0x08
   13E5 2A                 1465 	add	a,r2
   13E6 FA                 1466 	mov	r2,a
   13E7 E4                 1467 	clr	a
   13E8 3B                 1468 	addc	a,r3
   13E9 FB                 1469 	mov	r3,a
   13EA 8A 82              1470 	mov	dpl,r2
   13EC 8B 83              1471 	mov	dph,r3
   13EE 8C F0              1472 	mov	b,r4
   13F0 74 D1              1473 	mov	a,#_calculator_frac2
   13F2 12 42 42           1474 	lcall	__gptrput
   13F5 A3                 1475 	inc	dptr
   13F6 74 4F              1476 	mov	a,#(_calculator_frac2 >> 8)
   13F8 12 42 42           1477 	lcall	__gptrput
   13FB A3                 1478 	inc	dptr
   13FC 74 80              1479 	mov	a,#0x80
   13FE 12 42 42           1480 	lcall	__gptrput
   1401 75 82 02           1481 	mov	dpl,#0x02
   1404 80 03              1482 	sjmp	00110$
   1406                    1483 00109$:
                           1484 ;	../sm_test_calculator.c:164: END_DEFINE_STATE()
   1406 75 82 00           1485 	mov	dpl,#0x00
   1409                    1486 00110$:
   1409 85 1F 81           1487 	mov	sp,_bp
   140C D0 1F              1488 	pop	_bp
   140E 22                 1489 	ret
                           1490 ;------------------------------------------------------------
                           1491 ;Allocation info for local variables in function 'calculator_negated2_handler'
                           1492 ;------------------------------------------------------------
                           1493 ;event                     Allocated to stack - offset -5
                           1494 ;self                      Allocated to stack - offset 1
                           1495 ;stateResponseCode         Allocated to registers 
                           1496 ;stateResponseCode         Allocated to registers 
                           1497 ;stateResponseCode         Allocated to registers 
                           1498 ;stateResponseCode         Allocated to registers 
                           1499 ;stateResponseCode         Allocated to registers 
                           1500 ;sloc0                     Allocated to stack - offset 9
                           1501 ;------------------------------------------------------------
                           1502 ;	../sm_test_calculator.c:167: DEFINE_STATE(negated2)
                           1503 ;	-----------------------------------------
                           1504 ;	 function calculator_negated2_handler
                           1505 ;	-----------------------------------------
   140F                    1506 _calculator_negated2_handler:
   140F C0 1F              1507 	push	_bp
   1411 85 81 1F           1508 	mov	_bp,sp
   1414 C0 82              1509 	push	dpl
   1416 C0 83              1510 	push	dph
   1418 C0 F0              1511 	push	b
                           1512 ;	../sm_test_calculator.c:169: TRANSITION_ON(CLEAR_ENTRY,											TO(opEntered),			NO_ACTION) ;
   141A E5 1F              1513 	mov	a,_bp
   141C 24 FB              1514 	add	a,#0xfb
   141E F8                 1515 	mov	r0,a
   141F 86 05              1516 	mov	ar5,@r0
   1421 08                 1517 	inc	r0
   1422 86 06              1518 	mov	ar6,@r0
   1424 08                 1519 	inc	r0
   1425 86 07              1520 	mov	ar7,@r0
   1427 8D 82              1521 	mov	dpl,r5
   1429 8E 83              1522 	mov	dph,r6
   142B 8F F0              1523 	mov	b,r7
   142D 12 4E 6E           1524 	lcall	__gptrget
   1430 FA                 1525 	mov	r2,a
   1431 BA 07 2B           1526 	cjne	r2,#0x07,00102$
   1434 A8 1F              1527 	mov	r0,_bp
   1436 08                 1528 	inc	r0
   1437 74 08              1529 	mov	a,#0x08
   1439 26                 1530 	add	a,@r0
   143A FA                 1531 	mov	r2,a
   143B E4                 1532 	clr	a
   143C 08                 1533 	inc	r0
   143D 36                 1534 	addc	a,@r0
   143E FB                 1535 	mov	r3,a
   143F 08                 1536 	inc	r0
   1440 86 04              1537 	mov	ar4,@r0
   1442 8A 82              1538 	mov	dpl,r2
   1444 8B 83              1539 	mov	dph,r3
   1446 8C F0              1540 	mov	b,r4
   1448 74 A4              1541 	mov	a,#_calculator_opEntered
   144A 12 42 42           1542 	lcall	__gptrput
   144D A3                 1543 	inc	dptr
   144E 74 4F              1544 	mov	a,#(_calculator_opEntered >> 8)
   1450 12 42 42           1545 	lcall	__gptrput
   1453 A3                 1546 	inc	dptr
   1454 74 80              1547 	mov	a,#0x80
   1456 12 42 42           1548 	lcall	__gptrput
   1459 75 82 02           1549 	mov	dpl,#0x02
   145C 02 15 04           1550 	ljmp	00112$
   145F                    1551 00102$:
                           1552 ;	../sm_test_calculator.c:170: TRANSITION_ON(DIGIT_0,												TO(zero2),				NO_ACTION) ;
   145F BA 08 2B           1553 	cjne	r2,#0x08,00104$
   1462 A8 1F              1554 	mov	r0,_bp
   1464 08                 1555 	inc	r0
   1465 74 08              1556 	mov	a,#0x08
   1467 26                 1557 	add	a,@r0
   1468 FA                 1558 	mov	r2,a
   1469 E4                 1559 	clr	a
   146A 08                 1560 	inc	r0
   146B 36                 1561 	addc	a,@r0
   146C FB                 1562 	mov	r3,a
   146D 08                 1563 	inc	r0
   146E 86 04              1564 	mov	ar4,@r0
   1470 8A 82              1565 	mov	dpl,r2
   1472 8B 83              1566 	mov	dph,r3
   1474 8C F0              1567 	mov	b,r4
   1476 74 BF              1568 	mov	a,#_calculator_zero2
   1478 12 42 42           1569 	lcall	__gptrput
   147B A3                 1570 	inc	dptr
   147C 74 4F              1571 	mov	a,#(_calculator_zero2 >> 8)
   147E 12 42 42           1572 	lcall	__gptrput
   1481 A3                 1573 	inc	dptr
   1482 74 80              1574 	mov	a,#0x80
   1484 12 42 42           1575 	lcall	__gptrput
   1487 75 82 02           1576 	mov	dpl,#0x02
   148A 02 15 04           1577 	ljmp	00112$
   148D                    1578 00104$:
                           1579 ;	../sm_test_calculator.c:171: TRANSITION_ON(DIGIT_1_9,											TO(int2),				NO_ACTION) ;
   148D BA 09 2A           1580 	cjne	r2,#0x09,00106$
   1490 A8 1F              1581 	mov	r0,_bp
   1492 08                 1582 	inc	r0
   1493 74 08              1583 	mov	a,#0x08
   1495 26                 1584 	add	a,@r0
   1496 FA                 1585 	mov	r2,a
   1497 E4                 1586 	clr	a
   1498 08                 1587 	inc	r0
   1499 36                 1588 	addc	a,@r0
   149A FB                 1589 	mov	r3,a
   149B 08                 1590 	inc	r0
   149C 86 04              1591 	mov	ar4,@r0
   149E 8A 82              1592 	mov	dpl,r2
   14A0 8B 83              1593 	mov	dph,r3
   14A2 8C F0              1594 	mov	b,r4
   14A4 74 C8              1595 	mov	a,#_calculator_int2
   14A6 12 42 42           1596 	lcall	__gptrput
   14A9 A3                 1597 	inc	dptr
   14AA 74 4F              1598 	mov	a,#(_calculator_int2 >> 8)
   14AC 12 42 42           1599 	lcall	__gptrput
   14AF A3                 1600 	inc	dptr
   14B0 74 80              1601 	mov	a,#0x80
   14B2 12 42 42           1602 	lcall	__gptrput
   14B5 75 82 02           1603 	mov	dpl,#0x02
   14B8 80 4A              1604 	sjmp	00112$
   14BA                    1605 00106$:
                           1606 ;	../sm_test_calculator.c:172: TRANSITION_ON(POINT,												TO(frac2),				NO_ACTION) ;
   14BA BA 0A 2A           1607 	cjne	r2,#0x0A,00108$
   14BD A8 1F              1608 	mov	r0,_bp
   14BF 08                 1609 	inc	r0
   14C0 74 08              1610 	mov	a,#0x08
   14C2 26                 1611 	add	a,@r0
   14C3 FA                 1612 	mov	r2,a
   14C4 E4                 1613 	clr	a
   14C5 08                 1614 	inc	r0
   14C6 36                 1615 	addc	a,@r0
   14C7 FB                 1616 	mov	r3,a
   14C8 08                 1617 	inc	r0
   14C9 86 04              1618 	mov	ar4,@r0
   14CB 8A 82              1619 	mov	dpl,r2
   14CD 8B 83              1620 	mov	dph,r3
   14CF 8C F0              1621 	mov	b,r4
   14D1 74 D1              1622 	mov	a,#_calculator_frac2
   14D3 12 42 42           1623 	lcall	__gptrput
   14D6 A3                 1624 	inc	dptr
   14D7 74 4F              1625 	mov	a,#(_calculator_frac2 >> 8)
   14D9 12 42 42           1626 	lcall	__gptrput
   14DC A3                 1627 	inc	dptr
   14DD 74 80              1628 	mov	a,#0x80
   14DF 12 42 42           1629 	lcall	__gptrput
   14E2 75 82 02           1630 	mov	dpl,#0x02
   14E5 80 1D              1631 	sjmp	00112$
   14E7                    1632 00108$:
                           1633 ;	../sm_test_calculator.c:173: CONSUME_EVENT_IF(OPERATION,	IF(CAST_EVENT(keyEvent_t)->key == '-'),							NO_ACTION) ;
   14E7 BA 0B 17           1634 	cjne	r2,#0x0B,00110$
   14EA 0D                 1635 	inc	r5
   14EB BD 00 01           1636 	cjne	r5,#0x00,00130$
   14EE 0E                 1637 	inc	r6
   14EF                    1638 00130$:
   14EF 8D 82              1639 	mov	dpl,r5
   14F1 8E 83              1640 	mov	dph,r6
   14F3 8F F0              1641 	mov	b,r7
   14F5 12 4E 6E           1642 	lcall	__gptrget
   14F8 FD                 1643 	mov	r5,a
   14F9 BD 2D 05           1644 	cjne	r5,#0x2D,00110$
   14FC 75 82 01           1645 	mov	dpl,#0x01
   14FF 80 03              1646 	sjmp	00112$
   1501                    1647 00110$:
                           1648 ;	../sm_test_calculator.c:175: END_DEFINE_STATE()
   1501 75 82 00           1649 	mov	dpl,#0x00
   1504                    1650 00112$:
   1504 85 1F 81           1651 	mov	sp,_bp
   1507 D0 1F              1652 	pop	_bp
   1509 22                 1653 	ret
                           1654 ;------------------------------------------------------------
                           1655 ;Allocation info for local variables in function 'doCalculation'
                           1656 ;------------------------------------------------------------
                           1657 ;type                      Allocated with name '_doCalculation_type_1_1'
                           1658 ;------------------------------------------------------------
                           1659 ;	../sm_test_calculator.c:178: uint8_t doCalculation(	uint8_t type)
                           1660 ;	-----------------------------------------
                           1661 ;	 function doCalculation
                           1662 ;	-----------------------------------------
   150A                    1663 _doCalculation:
   150A E5 82              1664 	mov	a,dpl
   150C 90 09 12           1665 	mov	dptr,#_doCalculation_type_1_1
   150F F0                 1666 	movx	@dptr,a
                           1667 ;	../sm_test_calculator.c:180: switch(type)
   1510 90 09 12           1668 	mov	dptr,#_doCalculation_type_1_1
   1513 E0                 1669 	movx	a,@dptr
   1514 FA                 1670 	mov	r2,a
   1515 BA 2A 02           1671 	cjne	r2,#0x2A,00113$
   1518 80 17              1672 	sjmp	00103$
   151A                    1673 00113$:
   151A BA 2B 02           1674 	cjne	r2,#0x2B,00114$
   151D 80 0A              1675 	sjmp	00101$
   151F                    1676 00114$:
   151F BA 2D 02           1677 	cjne	r2,#0x2D,00115$
   1522 80 09              1678 	sjmp	00102$
   1524                    1679 00115$:
                           1680 ;	../sm_test_calculator.c:182: case '+': { return true ; }
   1524 BA 2F 12           1681 	cjne	r2,#0x2F,00105$
   1527 80 0C              1682 	sjmp	00104$
   1529                    1683 00101$:
   1529 75 82 01           1684 	mov	dpl,#0x01
                           1685 ;	../sm_test_calculator.c:183: case '-': { return true ; }
   152C 22                 1686 	ret
   152D                    1687 00102$:
   152D 75 82 01           1688 	mov	dpl,#0x01
                           1689 ;	../sm_test_calculator.c:184: case '*': { return true ; }
   1530 22                 1690 	ret
   1531                    1691 00103$:
   1531 75 82 01           1692 	mov	dpl,#0x01
                           1693 ;	../sm_test_calculator.c:185: case '/': { return true ; }
   1534 22                 1694 	ret
   1535                    1695 00104$:
   1535 75 82 01           1696 	mov	dpl,#0x01
                           1697 ;	../sm_test_calculator.c:186: default:  { return false ; }
                           1698 ;	../sm_test_calculator.c:187: }
   1538 22                 1699 	ret
   1539                    1700 00105$:
   1539 75 82 00           1701 	mov	dpl,#0x00
   153C 22                 1702 	ret
                           1703 ;------------------------------------------------------------
                           1704 ;Allocation info for local variables in function 'calculator_operand2_handler'
                           1705 ;------------------------------------------------------------
                           1706 ;event                     Allocated to stack - offset -5
                           1707 ;self                      Allocated to stack - offset 1
                           1708 ;stateResponseCode         Allocated to registers 
                           1709 ;stateResponseCode         Allocated to registers 
                           1710 ;goodCalc                  Allocated to registers r2 
                           1711 ;stateResponseCode         Allocated to registers 
                           1712 ;stateResponseCode         Allocated to registers 
                           1713 ;stateResponseCode         Allocated to registers 
                           1714 ;sloc0                     Allocated to stack - offset 10
                           1715 ;------------------------------------------------------------
                           1716 ;	../sm_test_calculator.c:191: DEFINE_STATE(operand2)
                           1717 ;	-----------------------------------------
                           1718 ;	 function calculator_operand2_handler
                           1719 ;	-----------------------------------------
   153D                    1720 _calculator_operand2_handler:
   153D C0 1F              1721 	push	_bp
   153F 85 81 1F           1722 	mov	_bp,sp
   1542 C0 82              1723 	push	dpl
   1544 C0 83              1724 	push	dph
   1546 C0 F0              1725 	push	b
                           1726 ;	../sm_test_calculator.c:193: TRANSITION_ON(CLEAR_ENTRY,											TO(opEntered),			NO_ACTION) ;
   1548 E5 1F              1727 	mov	a,_bp
   154A 24 FB              1728 	add	a,#0xfb
   154C F8                 1729 	mov	r0,a
   154D 86 05              1730 	mov	ar5,@r0
   154F 08                 1731 	inc	r0
   1550 86 06              1732 	mov	ar6,@r0
   1552 08                 1733 	inc	r0
   1553 86 07              1734 	mov	ar7,@r0
   1555 8D 82              1735 	mov	dpl,r5
   1557 8E 83              1736 	mov	dph,r6
   1559 8F F0              1737 	mov	b,r7
   155B 12 4E 6E           1738 	lcall	__gptrget
   155E FA                 1739 	mov	r2,a
   155F BA 07 2B           1740 	cjne	r2,#0x07,00102$
   1562 A8 1F              1741 	mov	r0,_bp
   1564 08                 1742 	inc	r0
   1565 74 08              1743 	mov	a,#0x08
   1567 26                 1744 	add	a,@r0
   1568 FA                 1745 	mov	r2,a
   1569 E4                 1746 	clr	a
   156A 08                 1747 	inc	r0
   156B 36                 1748 	addc	a,@r0
   156C FB                 1749 	mov	r3,a
   156D 08                 1750 	inc	r0
   156E 86 04              1751 	mov	ar4,@r0
   1570 8A 82              1752 	mov	dpl,r2
   1572 8B 83              1753 	mov	dph,r3
   1574 8C F0              1754 	mov	b,r4
   1576 74 A4              1755 	mov	a,#_calculator_opEntered
   1578 12 42 42           1756 	lcall	__gptrput
   157B A3                 1757 	inc	dptr
   157C 74 4F              1758 	mov	a,#(_calculator_opEntered >> 8)
   157E 12 42 42           1759 	lcall	__gptrput
   1581 A3                 1760 	inc	dptr
   1582 74 80              1761 	mov	a,#0x80
   1584 12 42 42           1762 	lcall	__gptrput
   1587 75 82 02           1763 	mov	dpl,#0x02
   158A 02 16 58           1764 	ljmp	00114$
   158D                    1765 00102$:
                           1766 ;	../sm_test_calculator.c:195: HANDLE_STATE_EVENTS
   158D BA 0B 02           1767 	cjne	r2,#0x0B,00123$
   1590 80 08              1768 	sjmp	00104$
   1592                    1769 00123$:
   1592 BA 0C 02           1770 	cjne	r2,#0x0C,00124$
   1595 80 03              1771 	sjmp	00125$
   1597                    1772 00124$:
   1597 02 16 55           1773 	ljmp	00113$
   159A                    1774 00125$:
                           1775 ;	../sm_test_calculator.c:198: EVENT(EQUALS)
   159A                    1776 00104$:
                           1777 ;	../sm_test_calculator.c:200: uint8_t goodCalc = doCalculation(CAST_EVENT(keyEvent_t)->key) ;
   159A 74 01              1778 	mov	a,#0x01
   159C 2D                 1779 	add	a,r5
   159D FA                 1780 	mov	r2,a
   159E E4                 1781 	clr	a
   159F 3E                 1782 	addc	a,r6
   15A0 FB                 1783 	mov	r3,a
   15A1 8F 04              1784 	mov	ar4,r7
   15A3 8A 82              1785 	mov	dpl,r2
   15A5 8B 83              1786 	mov	dph,r3
   15A7 8C F0              1787 	mov	b,r4
   15A9 12 4E 6E           1788 	lcall	__gptrget
   15AC F5 82              1789 	mov	dpl,a
   15AE C0 05              1790 	push	ar5
   15B0 C0 06              1791 	push	ar6
   15B2 C0 07              1792 	push	ar7
   15B4 12 15 0A           1793 	lcall	_doCalculation
   15B7 AA 82              1794 	mov	r2,dpl
   15B9 D0 07              1795 	pop	ar7
   15BB D0 06              1796 	pop	ar6
   15BD D0 05              1797 	pop	ar5
                           1798 ;	../sm_test_calculator.c:202: if(goodCalc)
   15BF EA                 1799 	mov	a,r2
   15C0 60 64              1800 	jz	00110$
                           1801 ;	../sm_test_calculator.c:204: TRANSITION_ON(OPERATION,								TO(opEntered),			NO_ACTION) ;
   15C2 8D 82              1802 	mov	dpl,r5
   15C4 8E 83              1803 	mov	dph,r6
   15C6 8F F0              1804 	mov	b,r7
   15C8 12 4E 6E           1805 	lcall	__gptrget
   15CB FA                 1806 	mov	r2,a
   15CC BA 0B 2A           1807 	cjne	r2,#0x0B,00106$
   15CF A8 1F              1808 	mov	r0,_bp
   15D1 08                 1809 	inc	r0
   15D2 74 08              1810 	mov	a,#0x08
   15D4 26                 1811 	add	a,@r0
   15D5 FB                 1812 	mov	r3,a
   15D6 E4                 1813 	clr	a
   15D7 08                 1814 	inc	r0
   15D8 36                 1815 	addc	a,@r0
   15D9 FC                 1816 	mov	r4,a
   15DA 08                 1817 	inc	r0
   15DB 86 05              1818 	mov	ar5,@r0
   15DD 8B 82              1819 	mov	dpl,r3
   15DF 8C 83              1820 	mov	dph,r4
   15E1 8D F0              1821 	mov	b,r5
   15E3 74 A4              1822 	mov	a,#_calculator_opEntered
   15E5 12 42 42           1823 	lcall	__gptrput
   15E8 A3                 1824 	inc	dptr
   15E9 74 4F              1825 	mov	a,#(_calculator_opEntered >> 8)
   15EB 12 42 42           1826 	lcall	__gptrput
   15EE A3                 1827 	inc	dptr
   15EF 74 80              1828 	mov	a,#0x80
   15F1 12 42 42           1829 	lcall	__gptrput
   15F4 75 82 02           1830 	mov	dpl,#0x02
   15F7 80 5F              1831 	sjmp	00114$
   15F9                    1832 00106$:
                           1833 ;	../sm_test_calculator.c:205: TRANSITION_ON(EQUALS,									TO(result),				NO_ACTION) ;
   15F9 BA 0C 54           1834 	cjne	r2,#0x0C,00111$
   15FC A8 1F              1835 	mov	r0,_bp
   15FE 08                 1836 	inc	r0
   15FF 74 08              1837 	mov	a,#0x08
   1601 26                 1838 	add	a,@r0
   1602 FA                 1839 	mov	r2,a
   1603 E4                 1840 	clr	a
   1604 08                 1841 	inc	r0
   1605 36                 1842 	addc	a,@r0
   1606 FB                 1843 	mov	r3,a
   1607 08                 1844 	inc	r0
   1608 86 04              1845 	mov	ar4,@r0
   160A 8A 82              1846 	mov	dpl,r2
   160C 8B 83              1847 	mov	dph,r3
   160E 8C F0              1848 	mov	b,r4
   1610 74 5C              1849 	mov	a,#_calculator_result
   1612 12 42 42           1850 	lcall	__gptrput
   1615 A3                 1851 	inc	dptr
   1616 74 4F              1852 	mov	a,#(_calculator_result >> 8)
   1618 12 42 42           1853 	lcall	__gptrput
   161B A3                 1854 	inc	dptr
   161C 74 80              1855 	mov	a,#0x80
   161E 12 42 42           1856 	lcall	__gptrput
   1621 75 82 02           1857 	mov	dpl,#0x02
   1624 80 32              1858 	sjmp	00114$
   1626                    1859 00110$:
                           1860 ;	../sm_test_calculator.c:209: TRANSITION_TO(error, NO_ACTION) ;
   1626 A8 1F              1861 	mov	r0,_bp
   1628 08                 1862 	inc	r0
   1629 74 08              1863 	mov	a,#0x08
   162B 26                 1864 	add	a,@r0
   162C FA                 1865 	mov	r2,a
   162D E4                 1866 	clr	a
   162E 08                 1867 	inc	r0
   162F 36                 1868 	addc	a,@r0
   1630 FB                 1869 	mov	r3,a
   1631 08                 1870 	inc	r0
   1632 86 04              1871 	mov	ar4,@r0
   1634 8A 82              1872 	mov	dpl,r2
   1636 8B 83              1873 	mov	dph,r3
   1638 8C F0              1874 	mov	b,r4
   163A 74 9B              1875 	mov	a,#_calculator_error
   163C 12 42 42           1876 	lcall	__gptrput
   163F A3                 1877 	inc	dptr
   1640 74 4F              1878 	mov	a,#(_calculator_error >> 8)
   1642 12 42 42           1879 	lcall	__gptrput
   1645 A3                 1880 	inc	dptr
   1646 74 80              1881 	mov	a,#0x80
   1648 12 42 42           1882 	lcall	__gptrput
   164B 75 82 02           1883 	mov	dpl,#0x02
   164E 80 08              1884 	sjmp	00114$
   1650                    1885 00111$:
                           1886 ;	../sm_test_calculator.c:212: EVENT_HANDLED
   1650 75 82 01           1887 	mov	dpl,#0x01
                           1888 ;	../sm_test_calculator.c:214: HANDLE_STATE_EVENTS_DONE
   1653 80 03              1889 	sjmp	00114$
   1655                    1890 00113$:
                           1891 ;	../sm_test_calculator.c:216: END_DEFINE_STATE()
   1655 75 82 00           1892 	mov	dpl,#0x00
   1658                    1893 00114$:
   1658 85 1F 81           1894 	mov	sp,_bp
   165B D0 1F              1895 	pop	_bp
   165D 22                 1896 	ret
                           1897 ;------------------------------------------------------------
                           1898 ;Allocation info for local variables in function 'calculator_zero2_handler'
                           1899 ;------------------------------------------------------------
                           1900 ;event                     Allocated to stack - offset -5
                           1901 ;self                      Allocated to stack - offset 1
                           1902 ;stateResponseCode         Allocated to registers 
                           1903 ;stateResponseCode         Allocated to registers 
                           1904 ;stateResponseCode         Allocated to registers 
                           1905 ;------------------------------------------------------------
                           1906 ;	../sm_test_calculator.c:219: DEFINE_STATE(zero2)
                           1907 ;	-----------------------------------------
                           1908 ;	 function calculator_zero2_handler
                           1909 ;	-----------------------------------------
   165E                    1910 _calculator_zero2_handler:
   165E C0 1F              1911 	push	_bp
   1660 85 81 1F           1912 	mov	_bp,sp
   1663 C0 82              1913 	push	dpl
   1665 C0 83              1914 	push	dph
   1667 C0 F0              1915 	push	b
                           1916 ;	../sm_test_calculator.c:221: INITIAL_TRANSITION(TO(negated1),															NO_ACTION) ;
   1669 E5 1F              1917 	mov	a,_bp
   166B 24 FB              1918 	add	a,#0xfb
   166D F8                 1919 	mov	r0,a
   166E 86 05              1920 	mov	ar5,@r0
   1670 08                 1921 	inc	r0
   1671 86 06              1922 	mov	ar6,@r0
   1673 08                 1923 	inc	r0
   1674 86 07              1924 	mov	ar7,@r0
   1676 8D 82              1925 	mov	dpl,r5
   1678 8E 83              1926 	mov	dph,r6
   167A 8F F0              1927 	mov	b,r7
   167C 12 4E 6E           1928 	lcall	__gptrget
   167F FD                 1929 	mov	r5,a
   1680 BD 02 2A           1930 	cjne	r5,#0x02,00102$
   1683 A8 1F              1931 	mov	r0,_bp
   1685 08                 1932 	inc	r0
   1686 74 08              1933 	mov	a,#0x08
   1688 26                 1934 	add	a,@r0
   1689 FE                 1935 	mov	r6,a
   168A E4                 1936 	clr	a
   168B 08                 1937 	inc	r0
   168C 36                 1938 	addc	a,@r0
   168D FF                 1939 	mov	r7,a
   168E 08                 1940 	inc	r0
   168F 86 02              1941 	mov	ar2,@r0
   1691 8E 82              1942 	mov	dpl,r6
   1693 8F 83              1943 	mov	dph,r7
   1695 8A F0              1944 	mov	b,r2
   1697 74 6E              1945 	mov	a,#_calculator_negated1
   1699 12 42 42           1946 	lcall	__gptrput
   169C A3                 1947 	inc	dptr
   169D 74 4F              1948 	mov	a,#(_calculator_negated1 >> 8)
   169F 12 42 42           1949 	lcall	__gptrput
   16A2 A3                 1950 	inc	dptr
   16A3 74 80              1951 	mov	a,#0x80
   16A5 12 42 42           1952 	lcall	__gptrput
   16A8 75 82 02           1953 	mov	dpl,#0x02
   16AB 80 65              1954 	sjmp	00109$
   16AD                    1955 00102$:
                           1956 ;	../sm_test_calculator.c:222: CONSUME_EVENT(DIGIT_0,																		NO_ACTION) ;
   16AD BD 08 05           1957 	cjne	r5,#0x08,00104$
   16B0 75 82 01           1958 	mov	dpl,#0x01
   16B3 80 5D              1959 	sjmp	00109$
   16B5                    1960 00104$:
                           1961 ;	../sm_test_calculator.c:223: TRANSITION_ON(DIGIT_1_9,											TO(int2),				NO_ACTION) ;
   16B5 BD 09 2A           1962 	cjne	r5,#0x09,00106$
   16B8 A8 1F              1963 	mov	r0,_bp
   16BA 08                 1964 	inc	r0
   16BB 74 08              1965 	mov	a,#0x08
   16BD 26                 1966 	add	a,@r0
   16BE FA                 1967 	mov	r2,a
   16BF E4                 1968 	clr	a
   16C0 08                 1969 	inc	r0
   16C1 36                 1970 	addc	a,@r0
   16C2 FB                 1971 	mov	r3,a
   16C3 08                 1972 	inc	r0
   16C4 86 04              1973 	mov	ar4,@r0
   16C6 8A 82              1974 	mov	dpl,r2
   16C8 8B 83              1975 	mov	dph,r3
   16CA 8C F0              1976 	mov	b,r4
   16CC 74 C8              1977 	mov	a,#_calculator_int2
   16CE 12 42 42           1978 	lcall	__gptrput
   16D1 A3                 1979 	inc	dptr
   16D2 74 4F              1980 	mov	a,#(_calculator_int2 >> 8)
   16D4 12 42 42           1981 	lcall	__gptrput
   16D7 A3                 1982 	inc	dptr
   16D8 74 80              1983 	mov	a,#0x80
   16DA 12 42 42           1984 	lcall	__gptrput
   16DD 75 82 02           1985 	mov	dpl,#0x02
   16E0 80 30              1986 	sjmp	00109$
   16E2                    1987 00106$:
                           1988 ;	../sm_test_calculator.c:224: TRANSITION_ON(POINT,												TO(frac2),				NO_ACTION) ;
   16E2 BD 0A 2A           1989 	cjne	r5,#0x0A,00108$
   16E5 A8 1F              1990 	mov	r0,_bp
   16E7 08                 1991 	inc	r0
   16E8 74 08              1992 	mov	a,#0x08
   16EA 26                 1993 	add	a,@r0
   16EB FA                 1994 	mov	r2,a
   16EC E4                 1995 	clr	a
   16ED 08                 1996 	inc	r0
   16EE 36                 1997 	addc	a,@r0
   16EF FB                 1998 	mov	r3,a
   16F0 08                 1999 	inc	r0
   16F1 86 04              2000 	mov	ar4,@r0
   16F3 8A 82              2001 	mov	dpl,r2
   16F5 8B 83              2002 	mov	dph,r3
   16F7 8C F0              2003 	mov	b,r4
   16F9 74 D1              2004 	mov	a,#_calculator_frac2
   16FB 12 42 42           2005 	lcall	__gptrput
   16FE A3                 2006 	inc	dptr
   16FF 74 4F              2007 	mov	a,#(_calculator_frac2 >> 8)
   1701 12 42 42           2008 	lcall	__gptrput
   1704 A3                 2009 	inc	dptr
   1705 74 80              2010 	mov	a,#0x80
   1707 12 42 42           2011 	lcall	__gptrput
   170A 75 82 02           2012 	mov	dpl,#0x02
   170D 80 03              2013 	sjmp	00109$
   170F                    2014 00108$:
                           2015 ;	../sm_test_calculator.c:226: END_DEFINE_STATE()
   170F 75 82 00           2016 	mov	dpl,#0x00
   1712                    2017 00109$:
   1712 85 1F 81           2018 	mov	sp,_bp
   1715 D0 1F              2019 	pop	_bp
   1717 22                 2020 	ret
                           2021 ;------------------------------------------------------------
                           2022 ;Allocation info for local variables in function 'calculator_int2_handler'
                           2023 ;------------------------------------------------------------
                           2024 ;event                     Allocated to stack - offset -5
                           2025 ;self                      Allocated to registers r2 r3 r4 
                           2026 ;stateResponseCode         Allocated to registers 
                           2027 ;stateResponseCode         Allocated to registers 
                           2028 ;------------------------------------------------------------
                           2029 ;	../sm_test_calculator.c:229: DEFINE_STATE(int2)
                           2030 ;	-----------------------------------------
                           2031 ;	 function calculator_int2_handler
                           2032 ;	-----------------------------------------
   1718                    2033 _calculator_int2_handler:
   1718 C0 1F              2034 	push	_bp
   171A 85 81 1F           2035 	mov	_bp,sp
   171D AA 82              2036 	mov	r2,dpl
   171F AB 83              2037 	mov	r3,dph
   1721 AC F0              2038 	mov	r4,b
                           2039 ;	../sm_test_calculator.c:231: TRANSITION_ON(POINT,												TO(frac2),				NO_ACTION) ;
   1723 E5 1F              2040 	mov	a,_bp
   1725 24 FB              2041 	add	a,#0xfb
   1727 F8                 2042 	mov	r0,a
   1728 86 05              2043 	mov	ar5,@r0
   172A 08                 2044 	inc	r0
   172B 86 06              2045 	mov	ar6,@r0
   172D 08                 2046 	inc	r0
   172E 86 07              2047 	mov	ar7,@r0
   1730 8D 82              2048 	mov	dpl,r5
   1732 8E 83              2049 	mov	dph,r6
   1734 8F F0              2050 	mov	b,r7
   1736 12 4E 6E           2051 	lcall	__gptrget
   1739 FD                 2052 	mov	r5,a
   173A BD 0A 23           2053 	cjne	r5,#0x0A,00102$
   173D 74 08              2054 	mov	a,#0x08
   173F 2A                 2055 	add	a,r2
   1740 FA                 2056 	mov	r2,a
   1741 E4                 2057 	clr	a
   1742 3B                 2058 	addc	a,r3
   1743 FB                 2059 	mov	r3,a
   1744 8A 82              2060 	mov	dpl,r2
   1746 8B 83              2061 	mov	dph,r3
   1748 8C F0              2062 	mov	b,r4
   174A 74 D1              2063 	mov	a,#_calculator_frac2
   174C 12 42 42           2064 	lcall	__gptrput
   174F A3                 2065 	inc	dptr
   1750 74 4F              2066 	mov	a,#(_calculator_frac2 >> 8)
   1752 12 42 42           2067 	lcall	__gptrput
   1755 A3                 2068 	inc	dptr
   1756 74 80              2069 	mov	a,#0x80
   1758 12 42 42           2070 	lcall	__gptrput
   175B 75 82 02           2071 	mov	dpl,#0x02
   175E 80 03              2072 	sjmp	00103$
   1760                    2073 00102$:
                           2074 ;	../sm_test_calculator.c:233: END_DEFINE_STATE()
   1760 75 82 00           2075 	mov	dpl,#0x00
   1763                    2076 00103$:
   1763 D0 1F              2077 	pop	_bp
   1765 22                 2078 	ret
                           2079 ;------------------------------------------------------------
                           2080 ;Allocation info for local variables in function 'calculator_frac2_handler'
                           2081 ;------------------------------------------------------------
                           2082 ;event                     Allocated to stack - offset -5
                           2083 ;self                      Allocated to registers 
                           2084 ;stateResponseCode         Allocated to registers 
                           2085 ;------------------------------------------------------------
                           2086 ;	../sm_test_calculator.c:236: DEFINE_STATE(frac2)
                           2087 ;	-----------------------------------------
                           2088 ;	 function calculator_frac2_handler
                           2089 ;	-----------------------------------------
   1766                    2090 _calculator_frac2_handler:
   1766 C0 1F              2091 	push	_bp
   1768 85 81 1F           2092 	mov	_bp,sp
                           2093 ;	../sm_test_calculator.c:238: CONSUME_EVENT(POINT,																		NO_ACTION) ;
   176B E5 1F              2094 	mov	a,_bp
   176D 24 FB              2095 	add	a,#0xfb
   176F F8                 2096 	mov	r0,a
   1770 86 02              2097 	mov	ar2,@r0
   1772 08                 2098 	inc	r0
   1773 86 03              2099 	mov	ar3,@r0
   1775 08                 2100 	inc	r0
   1776 86 04              2101 	mov	ar4,@r0
   1778 8A 82              2102 	mov	dpl,r2
   177A 8B 83              2103 	mov	dph,r3
   177C 8C F0              2104 	mov	b,r4
   177E 12 4E 6E           2105 	lcall	__gptrget
   1781 FA                 2106 	mov	r2,a
   1782 BA 0A 05           2107 	cjne	r2,#0x0A,00102$
   1785 75 82 01           2108 	mov	dpl,#0x01
   1788 80 03              2109 	sjmp	00103$
   178A                    2110 00102$:
                           2111 ;	../sm_test_calculator.c:240: END_DEFINE_STATE()
   178A 75 82 00           2112 	mov	dpl,#0x00
   178D                    2113 00103$:
   178D D0 1F              2114 	pop	_bp
   178F 22                 2115 	ret
                           2116 	.area CSEG    (CODE)
                           2117 	.area CONST   (CODE)
   4F41                    2118 _calculator_TOP:
                           2119 ; generic printIvalPtr
   4F41 00 00 00           2120 	.byte #0x00,#0x00,#0x00
   4F44 00                 2121 	.db #0x00
   4F45 72 0D              2122 	.byte _calculator_TOP_handler,(_calculator_TOP_handler >> 8)
   4F47 E5 4F 80           2123 	.byte _str_1,(_str_1 >> 8),#0x80
   4F4A                    2124 _calculator_on:
   4F4A 41 4F 80           2125 	.byte _calculator_TOP,(_calculator_TOP >> 8),#0x80
   4F4D 00                 2126 	.db #0x00
   4F4E C0 0D              2127 	.byte _calculator_on_handler,(_calculator_on_handler >> 8)
   4F50 F4 4F 80           2128 	.byte _str_2,(_str_2 >> 8),#0x80
   4F53                    2129 _calculator_ready:
   4F53 4A 4F 80           2130 	.byte _calculator_on,(_calculator_on >> 8),#0x80
   4F56 00                 2131 	.db #0x00
   4F57 72 0E              2132 	.byte _calculator_ready_handler,(_calculator_ready_handler >> 8)
   4F59 02 50 80           2133 	.byte _str_3,(_str_3 >> 8),#0x80
   4F5C                    2134 _calculator_result:
   4F5C 53 4F 80           2135 	.byte _calculator_ready,(_calculator_ready >> 8),#0x80
   4F5F 00                 2136 	.db #0x00
   4F60 F7 0E              2137 	.byte _calculator_result_handler,(_calculator_result_handler >> 8)
   4F62 13 50 80           2138 	.byte _str_4,(_str_4 >> 8),#0x80
   4F65                    2139 _calculator_begin:
   4F65 53 4F 80           2140 	.byte _calculator_ready,(_calculator_ready >> 8),#0x80
   4F68 00                 2141 	.db #0x00
   4F69 02 0F              2142 	.byte _calculator_begin_handler,(_calculator_begin_handler >> 8)
   4F6B 25 50 80           2143 	.byte _str_5,(_str_5 >> 8),#0x80
   4F6E                    2144 _calculator_negated1:
   4F6E 4A 4F 80           2145 	.byte _calculator_on,(_calculator_on >> 8),#0x80
   4F71 00                 2146 	.db #0x00
   4F72 22 10              2147 	.byte _calculator_negated1_handler,(_calculator_negated1_handler >> 8)
   4F74 36 50 80           2148 	.byte _str_6,(_str_6 >> 8),#0x80
   4F77                    2149 _calculator_operand1:
   4F77 4A 4F 80           2150 	.byte _calculator_on,(_calculator_on >> 8),#0x80
   4F7A 00                 2151 	.db #0x00
   4F7B 1D 11              2152 	.byte _calculator_operand1_handler,(_calculator_operand1_handler >> 8)
   4F7D 4A 50 80           2153 	.byte _str_7,(_str_7 >> 8),#0x80
   4F80                    2154 _calculator_zero1:
   4F80 77 4F 80           2155 	.byte _calculator_operand1,(_calculator_operand1 >> 8),#0x80
   4F83 00                 2156 	.db #0x00
   4F84 A2 11              2157 	.byte _calculator_zero1_handler,(_calculator_zero1_handler >> 8)
   4F86 5E 50 80           2158 	.byte _str_8,(_str_8 >> 8),#0x80
   4F89                    2159 _calculator_int1:
   4F89 77 4F 80           2160 	.byte _calculator_operand1,(_calculator_operand1 >> 8),#0x80
   4F8C 00                 2161 	.db #0x00
   4F8D 5C 12              2162 	.byte _calculator_int1_handler,(_calculator_int1_handler >> 8)
   4F8F 6F 50 80           2163 	.byte _str_9,(_str_9 >> 8),#0x80
   4F92                    2164 _calculator_frac1:
   4F92 77 4F 80           2165 	.byte _calculator_operand1,(_calculator_operand1 >> 8),#0x80
   4F95 00                 2166 	.db #0x00
   4F96 AA 12              2167 	.byte _calculator_frac1_handler,(_calculator_frac1_handler >> 8)
   4F98 7F 50 80           2168 	.byte _str_10,(_str_10 >> 8),#0x80
   4F9B                    2169 _calculator_error:
   4F9B 4A 4F 80           2170 	.byte _calculator_on,(_calculator_on >> 8),#0x80
   4F9E 00                 2171 	.db #0x00
   4F9F D4 12              2172 	.byte _calculator_error_handler,(_calculator_error_handler >> 8)
   4FA1 90 50 80           2173 	.byte _str_11,(_str_11 >> 8),#0x80
   4FA4                    2174 _calculator_opEntered:
   4FA4 4A 4F 80           2175 	.byte _calculator_on,(_calculator_on >> 8),#0x80
   4FA7 00                 2176 	.db #0x00
   4FA8 22 13              2177 	.byte _calculator_opEntered_handler,(_calculator_opEntered_handler >> 8)
   4FAA A1 50 80           2178 	.byte _str_12,(_str_12 >> 8),#0x80
   4FAD                    2179 _calculator_negated2:
   4FAD 4A 4F 80           2180 	.byte _calculator_on,(_calculator_on >> 8),#0x80
   4FB0 00                 2181 	.db #0x00
   4FB1 0F 14              2182 	.byte _calculator_negated2_handler,(_calculator_negated2_handler >> 8)
   4FB3 B6 50 80           2183 	.byte _str_13,(_str_13 >> 8),#0x80
   4FB6                    2184 _calculator_operand2:
   4FB6 4A 4F 80           2185 	.byte _calculator_on,(_calculator_on >> 8),#0x80
   4FB9 00                 2186 	.db #0x00
   4FBA 3D 15              2187 	.byte _calculator_operand2_handler,(_calculator_operand2_handler >> 8)
   4FBC CA 50 80           2188 	.byte _str_14,(_str_14 >> 8),#0x80
   4FBF                    2189 _calculator_zero2:
   4FBF B6 4F 80           2190 	.byte _calculator_operand2,(_calculator_operand2 >> 8),#0x80
   4FC2 00                 2191 	.db #0x00
   4FC3 5E 16              2192 	.byte _calculator_zero2_handler,(_calculator_zero2_handler >> 8)
   4FC5 DE 50 80           2193 	.byte _str_15,(_str_15 >> 8),#0x80
   4FC8                    2194 _calculator_int2:
   4FC8 B6 4F 80           2195 	.byte _calculator_operand2,(_calculator_operand2 >> 8),#0x80
   4FCB 00                 2196 	.db #0x00
   4FCC 18 17              2197 	.byte _calculator_int2_handler,(_calculator_int2_handler >> 8)
   4FCE EF 50 80           2198 	.byte _str_16,(_str_16 >> 8),#0x80
   4FD1                    2199 _calculator_frac2:
   4FD1 B6 4F 80           2200 	.byte _calculator_operand2,(_calculator_operand2 >> 8),#0x80
   4FD4 00                 2201 	.db #0x00
   4FD5 66 17              2202 	.byte _calculator_frac2_handler,(_calculator_frac2_handler >> 8)
   4FD7 FF 50 80           2203 	.byte _str_17,(_str_17 >> 8),#0x80
   4FDA                    2204 __str_0:
   4FDA 63 61 6C 63 75 6C  2205 	.ascii "calculator"
        61 74 6F 72
   4FE4 00                 2206 	.db 0x00
   4FE5                    2207 _str_1:
   4FE5 63 61 6C 63 75 6C  2208 	.ascii "calculator_TOP"
        61 74 6F 72 5F 54
        4F 50
   4FF3 00                 2209 	.db 0x00
   4FF4                    2210 _str_2:
   4FF4 63 61 6C 63 75 6C  2211 	.ascii "calculator_on"
        61 74 6F 72 5F 6F
        6E
   5001 00                 2212 	.db 0x00
   5002                    2213 _str_3:
   5002 63 61 6C 63 75 6C  2214 	.ascii "calculator_ready"
        61 74 6F 72 5F 72
        65 61 64 79
   5012 00                 2215 	.db 0x00
   5013                    2216 _str_4:
   5013 63 61 6C 63 75 6C  2217 	.ascii "calculator_result"
        61 74 6F 72 5F 72
        65 73 75 6C 74
   5024 00                 2218 	.db 0x00
   5025                    2219 _str_5:
   5025 63 61 6C 63 75 6C  2220 	.ascii "calculator_begin"
        61 74 6F 72 5F 62
        65 67 69 6E
   5035 00                 2221 	.db 0x00
   5036                    2222 _str_6:
   5036 63 61 6C 63 75 6C  2223 	.ascii "calculator_negated1"
        61 74 6F 72 5F 6E
        65 67 61 74 65 64
        31
   5049 00                 2224 	.db 0x00
   504A                    2225 _str_7:
   504A 63 61 6C 63 75 6C  2226 	.ascii "calculator_operand1"
        61 74 6F 72 5F 6F
        70 65 72 61 6E 64
        31
   505D 00                 2227 	.db 0x00
   505E                    2228 _str_8:
   505E 63 61 6C 63 75 6C  2229 	.ascii "calculator_zero1"
        61 74 6F 72 5F 7A
        65 72 6F 31
   506E 00                 2230 	.db 0x00
   506F                    2231 _str_9:
   506F 63 61 6C 63 75 6C  2232 	.ascii "calculator_int1"
        61 74 6F 72 5F 69
        6E 74 31
   507E 00                 2233 	.db 0x00
   507F                    2234 _str_10:
   507F 63 61 6C 63 75 6C  2235 	.ascii "calculator_frac1"
        61 74 6F 72 5F 66
        72 61 63 31
   508F 00                 2236 	.db 0x00
   5090                    2237 _str_11:
   5090 63 61 6C 63 75 6C  2238 	.ascii "calculator_error"
        61 74 6F 72 5F 65
        72 72 6F 72
   50A0 00                 2239 	.db 0x00
   50A1                    2240 _str_12:
   50A1 63 61 6C 63 75 6C  2241 	.ascii "calculator_opEntered"
        61 74 6F 72 5F 6F
        70 45 6E 74 65 72
        65 64
   50B5 00                 2242 	.db 0x00
   50B6                    2243 _str_13:
   50B6 63 61 6C 63 75 6C  2244 	.ascii "calculator_negated2"
        61 74 6F 72 5F 6E
        65 67 61 74 65 64
        32
   50C9 00                 2245 	.db 0x00
   50CA                    2246 _str_14:
   50CA 63 61 6C 63 75 6C  2247 	.ascii "calculator_operand2"
        61 74 6F 72 5F 6F
        70 65 72 61 6E 64
        32
   50DD 00                 2248 	.db 0x00
   50DE                    2249 _str_15:
   50DE 63 61 6C 63 75 6C  2250 	.ascii "calculator_zero2"
        61 74 6F 72 5F 7A
        65 72 6F 32
   50EE 00                 2251 	.db 0x00
   50EF                    2252 _str_16:
   50EF 63 61 6C 63 75 6C  2253 	.ascii "calculator_int2"
        61 74 6F 72 5F 69
        6E 74 32
   50FE 00                 2254 	.db 0x00
   50FF                    2255 _str_17:
   50FF 63 61 6C 63 75 6C  2256 	.ascii "calculator_frac2"
        61 74 6F 72 5F 66
        72 61 63 32
   510F 00                 2257 	.db 0x00
                           2258 	.area XINIT   (CODE)
   55CD                    2259 __xinit__calculator_name:
   55CD DA 4F 80           2260 	.byte __str_0,(__str_0 >> 8),#0x80
                           2261 	.area CABS    (ABS,CODE)
