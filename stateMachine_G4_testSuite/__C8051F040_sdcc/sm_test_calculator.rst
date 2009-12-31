                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 2.9.0 #5416 (Mar 22 2009) (MINGW32)
                              4 ; This file was generated Wed Dec 30 22:11:48 2009
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
                             16 	.globl _calculator_getMachineSize
                             17 	.globl _calculator_constructor2
                             18 	.globl _calculator_destructor2
                             19 ;--------------------------------------------------------
                             20 ; special function registers
                             21 ;--------------------------------------------------------
                             22 	.area RSEG    (DATA)
                             23 ;--------------------------------------------------------
                             24 ; special function bits
                             25 ;--------------------------------------------------------
                             26 	.area RSEG    (DATA)
                             27 ;--------------------------------------------------------
                             28 ; overlayable register banks
                             29 ;--------------------------------------------------------
                             30 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                      31 	.ds 8
                             32 ;--------------------------------------------------------
                             33 ; internal ram data
                             34 ;--------------------------------------------------------
                             35 	.area DSEG    (DATA)
   001C                      36 _calculator_constructor_sloc0_1_0:
   001C                      37 	.ds 3
                             38 ;--------------------------------------------------------
                             39 ; overlayable items in internal ram 
                             40 ;--------------------------------------------------------
                             41 	.area OSEG    (OVR,DATA)
                             42 ;--------------------------------------------------------
                             43 ; indirectly addressable internal ram data
                             44 ;--------------------------------------------------------
                             45 	.area ISEG    (DATA)
                             46 ;--------------------------------------------------------
                             47 ; absolute internal ram data
                             48 ;--------------------------------------------------------
                             49 	.area IABS    (ABS,DATA)
                             50 	.area IABS    (ABS,DATA)
                             51 ;--------------------------------------------------------
                             52 ; bit data
                             53 ;--------------------------------------------------------
                             54 	.area BSEG    (BIT)
                             55 ;--------------------------------------------------------
                             56 ; paged external ram data
                             57 ;--------------------------------------------------------
                             58 	.area PSEG    (PAG,XDATA)
                             59 ;--------------------------------------------------------
                             60 ; external ram data
                             61 ;--------------------------------------------------------
                             62 	.area XSEG    (XDATA)
   0909                      63 _calculator_constructor_base_1_1:
   0909                      64 	.ds 3
   090C                      65 _calculator_destructor_self_1_1:
   090C                      66 	.ds 3
   090F                      67 _calculator_constructor2_self_1_1:
   090F                      68 	.ds 3
   0912                      69 _doCalculation_type_1_1:
   0912                      70 	.ds 1
                             71 ;--------------------------------------------------------
                             72 ; absolute external ram data
                             73 ;--------------------------------------------------------
                             74 	.area XABS    (ABS,XDATA)
                             75 ;--------------------------------------------------------
                             76 ; external initialized ram data
                             77 ;--------------------------------------------------------
                             78 	.area XISEG   (XDATA)
   0ED9                      79 _calculator_name:
   0ED9                      80 	.ds 3
                             81 	.area HOME    (CODE)
                             82 	.area GSINIT0 (CODE)
                             83 	.area GSINIT1 (CODE)
                             84 	.area GSINIT2 (CODE)
                             85 	.area GSINIT3 (CODE)
                             86 	.area GSINIT4 (CODE)
                             87 	.area GSINIT5 (CODE)
                             88 	.area GSINIT  (CODE)
                             89 	.area GSFINAL (CODE)
                             90 	.area CSEG    (CODE)
                             91 ;--------------------------------------------------------
                             92 ; global & static initialisations
                             93 ;--------------------------------------------------------
                             94 	.area HOME    (CODE)
                             95 	.area GSINIT  (CODE)
                             96 	.area GSFINAL (CODE)
                             97 	.area GSINIT  (CODE)
                             98 ;--------------------------------------------------------
                             99 ; Home
                            100 ;--------------------------------------------------------
                            101 	.area HOME    (CODE)
                            102 	.area HOME    (CODE)
                            103 ;--------------------------------------------------------
                            104 ; code
                            105 ;--------------------------------------------------------
                            106 	.area CSEG    (CODE)
                            107 ;------------------------------------------------------------
                            108 ;Allocation info for local variables in function 'calculator_getEventQueueDepth'
                            109 ;------------------------------------------------------------
                            110 ;------------------------------------------------------------
                            111 ;	../sm_test_calculator.c:23: SET_EVENT_QUEUE_DEPTH(config_CalcEVENT_QUEUE_DEPTH) ;
                            112 ;	-----------------------------------------
                            113 ;	 function calculator_getEventQueueDepth
                            114 ;	-----------------------------------------
   0CCC                     115 _calculator_getEventQueueDepth:
                    0002    116 	ar2 = 0x02
                    0003    117 	ar3 = 0x03
                    0004    118 	ar4 = 0x04
                    0005    119 	ar5 = 0x05
                    0006    120 	ar6 = 0x06
                    0007    121 	ar7 = 0x07
                    0000    122 	ar0 = 0x00
                    0001    123 	ar1 = 0x01
   0CCC 90 00 10            124 	mov	dptr,#0x0010
   0CCF 22                  125 	ret
                            126 ;------------------------------------------------------------
                            127 ;Allocation info for local variables in function 'calculator_constructor'
                            128 ;------------------------------------------------------------
                            129 ;sloc0                     Allocated with name '_calculator_constructor_sloc0_1_0'
                            130 ;base                      Allocated with name '_calculator_constructor_base_1_1'
                            131 ;------------------------------------------------------------
                            132 ;	../sm_test_calculator.c:47: END_STATE_MACHINE_DEFINITION() ;
                            133 ;	-----------------------------------------
                            134 ;	 function calculator_constructor
                            135 ;	-----------------------------------------
   0CD0                     136 _calculator_constructor:
   0CD0 AA F0               137 	mov	r2,b
   0CD2 AB 83               138 	mov	r3,dph
   0CD4 E5 82               139 	mov	a,dpl
   0CD6 90 09 09            140 	mov	dptr,#_calculator_constructor_base_1_1
   0CD9 F0                  141 	movx	@dptr,a
   0CDA A3                  142 	inc	dptr
   0CDB EB                  143 	mov	a,r3
   0CDC F0                  144 	movx	@dptr,a
   0CDD A3                  145 	inc	dptr
   0CDE EA                  146 	mov	a,r2
   0CDF F0                  147 	movx	@dptr,a
   0CE0 90 09 09            148 	mov	dptr,#_calculator_constructor_base_1_1
   0CE3 E0                  149 	movx	a,@dptr
   0CE4 FA                  150 	mov	r2,a
   0CE5 A3                  151 	inc	dptr
   0CE6 E0                  152 	movx	a,@dptr
   0CE7 FB                  153 	mov	r3,a
   0CE8 A3                  154 	inc	dptr
   0CE9 E0                  155 	movx	a,@dptr
   0CEA FC                  156 	mov	r4,a
   0CEB 8A 82               157 	mov	dpl,r2
   0CED 8B 83               158 	mov	dph,r3
   0CEF 8C F0               159 	mov	b,r4
   0CF1 74 0A               160 	mov	a,#_calculator_TOP
   0CF3 12 38 0B            161 	lcall	__gptrput
   0CF6 A3                  162 	inc	dptr
   0CF7 74 45               163 	mov	a,#(_calculator_TOP >> 8)
   0CF9 12 38 0B            164 	lcall	__gptrput
   0CFC 74 06               165 	mov	a,#0x06
   0CFE 2A                  166 	add	a,r2
   0CFF FD                  167 	mov	r5,a
   0D00 E4                  168 	clr	a
   0D01 3B                  169 	addc	a,r3
   0D02 FE                  170 	mov	r6,a
   0D03 8C 07               171 	mov	ar7,r4
   0D05 8D 82               172 	mov	dpl,r5
   0D07 8E 83               173 	mov	dph,r6
   0D09 8F F0               174 	mov	b,r7
   0D0B 74 0A               175 	mov	a,#_calculator_TOP
   0D0D 12 38 0B            176 	lcall	__gptrput
   0D10 A3                  177 	inc	dptr
   0D11 74 45               178 	mov	a,#(_calculator_TOP >> 8)
   0D13 12 38 0B            179 	lcall	__gptrput
   0D16 A3                  180 	inc	dptr
   0D17 74 80               181 	mov	a,#0x80
   0D19 12 38 0B            182 	lcall	__gptrput
   0D1C 74 02               183 	mov	a,#0x02
   0D1E 2A                  184 	add	a,r2
   0D1F FD                  185 	mov	r5,a
   0D20 E4                  186 	clr	a
   0D21 3B                  187 	addc	a,r3
   0D22 FE                  188 	mov	r6,a
   0D23 8C 07               189 	mov	ar7,r4
   0D25 8D 82               190 	mov	dpl,r5
   0D27 8E 83               191 	mov	dph,r6
   0D29 8F F0               192 	mov	b,r7
   0D2B E4                  193 	clr	a
   0D2C 12 38 0B            194 	lcall	__gptrput
   0D2F 74 03               195 	mov	a,#0x03
   0D31 2A                  196 	add	a,r2
   0D32 F5 1C               197 	mov	_calculator_constructor_sloc0_1_0,a
   0D34 E4                  198 	clr	a
   0D35 3B                  199 	addc	a,r3
   0D36 F5 1D               200 	mov	(_calculator_constructor_sloc0_1_0 + 1),a
   0D38 8C 1E               201 	mov	(_calculator_constructor_sloc0_1_0 + 2),r4
   0D3A 90 0E D9            202 	mov	dptr,#_calculator_name
   0D3D E0                  203 	movx	a,@dptr
   0D3E F8                  204 	mov	r0,a
   0D3F A3                  205 	inc	dptr
   0D40 E0                  206 	movx	a,@dptr
   0D41 F9                  207 	mov	r1,a
   0D42 A3                  208 	inc	dptr
   0D43 E0                  209 	movx	a,@dptr
   0D44 FD                  210 	mov	r5,a
   0D45 85 1C 82            211 	mov	dpl,_calculator_constructor_sloc0_1_0
   0D48 85 1D 83            212 	mov	dph,(_calculator_constructor_sloc0_1_0 + 1)
   0D4B 85 1E F0            213 	mov	b,(_calculator_constructor_sloc0_1_0 + 2)
   0D4E E8                  214 	mov	a,r0
   0D4F 12 38 0B            215 	lcall	__gptrput
   0D52 A3                  216 	inc	dptr
   0D53 E9                  217 	mov	a,r1
   0D54 12 38 0B            218 	lcall	__gptrput
   0D57 A3                  219 	inc	dptr
   0D58 ED                  220 	mov	a,r5
   0D59 12 38 0B            221 	lcall	__gptrput
   0D5C 8A 82               222 	mov	dpl,r2
   0D5E 8B 83               223 	mov	dph,r3
   0D60 8C F0               224 	mov	b,r4
   0D62 02 0D 8D            225 	ljmp	_calculator_constructor2
                            226 ;------------------------------------------------------------
                            227 ;Allocation info for local variables in function 'calculator_destructor'
                            228 ;------------------------------------------------------------
                            229 ;self                      Allocated with name '_calculator_destructor_self_1_1'
                            230 ;------------------------------------------------------------
                            231 ;	../sm_test_calculator.c:47: 
                            232 ;	-----------------------------------------
                            233 ;	 function calculator_destructor
                            234 ;	-----------------------------------------
   0D65                     235 _calculator_destructor:
   0D65 AA F0               236 	mov	r2,b
   0D67 AB 83               237 	mov	r3,dph
   0D69 E5 82               238 	mov	a,dpl
   0D6B 90 09 0C            239 	mov	dptr,#_calculator_destructor_self_1_1
   0D6E F0                  240 	movx	@dptr,a
   0D6F A3                  241 	inc	dptr
   0D70 EB                  242 	mov	a,r3
   0D71 F0                  243 	movx	@dptr,a
   0D72 A3                  244 	inc	dptr
   0D73 EA                  245 	mov	a,r2
   0D74 F0                  246 	movx	@dptr,a
   0D75 90 09 0C            247 	mov	dptr,#_calculator_destructor_self_1_1
   0D78 E0                  248 	movx	a,@dptr
   0D79 FA                  249 	mov	r2,a
   0D7A A3                  250 	inc	dptr
   0D7B E0                  251 	movx	a,@dptr
   0D7C FB                  252 	mov	r3,a
   0D7D A3                  253 	inc	dptr
   0D7E E0                  254 	movx	a,@dptr
   0D7F FC                  255 	mov	r4,a
   0D80 8A 82               256 	mov	dpl,r2
   0D82 8B 83               257 	mov	dph,r3
   0D84 8C F0               258 	mov	b,r4
   0D86 02 0D C8            259 	ljmp	_calculator_destructor2
                            260 ;------------------------------------------------------------
                            261 ;Allocation info for local variables in function 'calculator_getMachineSize'
                            262 ;------------------------------------------------------------
                            263 ;------------------------------------------------------------
                            264 ;	../sm_test_calculator.c:47: END_STATE_MACHINE_DEFINITION() ;
                            265 ;	-----------------------------------------
                            266 ;	 function calculator_getMachineSize
                            267 ;	-----------------------------------------
   0D89                     268 _calculator_getMachineSize:
   0D89 90 00 19            269 	mov	dptr,#0x0019
   0D8C 22                  270 	ret
                            271 ;------------------------------------------------------------
                            272 ;Allocation info for local variables in function 'calculator_constructor2'
                            273 ;------------------------------------------------------------
                            274 ;self                      Allocated with name '_calculator_constructor2_self_1_1'
                            275 ;------------------------------------------------------------
                            276 ;	../sm_test_calculator.c:50: STATE_MACHINE_CONSTRUCTOR()
                            277 ;	-----------------------------------------
                            278 ;	 function calculator_constructor2
                            279 ;	-----------------------------------------
   0D8D                     280 _calculator_constructor2:
   0D8D AA F0               281 	mov	r2,b
   0D8F AB 83               282 	mov	r3,dph
   0D91 E5 82               283 	mov	a,dpl
   0D93 90 09 0F            284 	mov	dptr,#_calculator_constructor2_self_1_1
   0D96 F0                  285 	movx	@dptr,a
   0D97 A3                  286 	inc	dptr
   0D98 EB                  287 	mov	a,r3
   0D99 F0                  288 	movx	@dptr,a
   0D9A A3                  289 	inc	dptr
   0D9B EA                  290 	mov	a,r2
   0D9C F0                  291 	movx	@dptr,a
                            292 ;	../sm_test_calculator.c:52: self->result = 0 ;
   0D9D 90 09 0F            293 	mov	dptr,#_calculator_constructor2_self_1_1
   0DA0 E0                  294 	movx	a,@dptr
   0DA1 FA                  295 	mov	r2,a
   0DA2 A3                  296 	inc	dptr
   0DA3 E0                  297 	movx	a,@dptr
   0DA4 FB                  298 	mov	r3,a
   0DA5 A3                  299 	inc	dptr
   0DA6 E0                  300 	movx	a,@dptr
   0DA7 FC                  301 	mov	r4,a
   0DA8 74 15               302 	mov	a,#0x15
   0DAA 2A                  303 	add	a,r2
   0DAB FA                  304 	mov	r2,a
   0DAC E4                  305 	clr	a
   0DAD 3B                  306 	addc	a,r3
   0DAE FB                  307 	mov	r3,a
   0DAF 8A 82               308 	mov	dpl,r2
   0DB1 8B 83               309 	mov	dph,r3
   0DB3 8C F0               310 	mov	b,r4
   0DB5 E4                  311 	clr	a
   0DB6 12 38 0B            312 	lcall	__gptrput
   0DB9 A3                  313 	inc	dptr
   0DBA E4                  314 	clr	a
   0DBB 12 38 0B            315 	lcall	__gptrput
   0DBE A3                  316 	inc	dptr
   0DBF E4                  317 	clr	a
   0DC0 12 38 0B            318 	lcall	__gptrput
   0DC3 A3                  319 	inc	dptr
   0DC4 E4                  320 	clr	a
   0DC5 02 38 0B            321 	ljmp	__gptrput
                            322 ;------------------------------------------------------------
                            323 ;Allocation info for local variables in function 'calculator_destructor2'
                            324 ;------------------------------------------------------------
                            325 ;self                      Allocated with name '_calculator_destructor2_self_1_1'
                            326 ;------------------------------------------------------------
                            327 ;	../sm_test_calculator.c:56: STATE_MACHINE_DESTRUCTOR()
                            328 ;	-----------------------------------------
                            329 ;	 function calculator_destructor2
                            330 ;	-----------------------------------------
   0DC8                     331 _calculator_destructor2:
                            332 ;	../sm_test_calculator.c:58: (void)self ;	/* Nothing to do here */
   0DC8 22                  333 	ret
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
   0DC9                     345 _calculator_TOP_handler:
   0DC9 C0 1F               346 	push	_bp
   0DCB 85 81 1F            347 	mov	_bp,sp
   0DCE AA 82               348 	mov	r2,dpl
   0DD0 AB 83               349 	mov	r3,dph
   0DD2 AC F0               350 	mov	r4,b
                            351 ;	../sm_test_calculator.c:64: INITIAL_TRANSITION(TO(begin),																	NO_ACTION) ;
   0DD4 E5 1F               352 	mov	a,_bp
   0DD6 24 FB               353 	add	a,#0xfb
   0DD8 F8                  354 	mov	r0,a
   0DD9 86 05               355 	mov	ar5,@r0
   0DDB 08                  356 	inc	r0
   0DDC 86 06               357 	mov	ar6,@r0
   0DDE 08                  358 	inc	r0
   0DDF 86 07               359 	mov	ar7,@r0
   0DE1 8D 82               360 	mov	dpl,r5
   0DE3 8E 83               361 	mov	dph,r6
   0DE5 8F F0               362 	mov	b,r7
   0DE7 12 44 37            363 	lcall	__gptrget
   0DEA FD                  364 	mov	r5,a
   0DEB BD 02 23            365 	cjne	r5,#0x02,00102$
   0DEE 74 09               366 	mov	a,#0x09
   0DF0 2A                  367 	add	a,r2
   0DF1 FA                  368 	mov	r2,a
   0DF2 E4                  369 	clr	a
   0DF3 3B                  370 	addc	a,r3
   0DF4 FB                  371 	mov	r3,a
   0DF5 8A 82               372 	mov	dpl,r2
   0DF7 8B 83               373 	mov	dph,r3
   0DF9 8C F0               374 	mov	b,r4
   0DFB 74 2E               375 	mov	a,#_calculator_begin
   0DFD 12 38 0B            376 	lcall	__gptrput
   0E00 A3                  377 	inc	dptr
   0E01 74 45               378 	mov	a,#(_calculator_begin >> 8)
   0E03 12 38 0B            379 	lcall	__gptrput
   0E06 A3                  380 	inc	dptr
   0E07 74 80               381 	mov	a,#0x80
   0E09 12 38 0B            382 	lcall	__gptrput
   0E0C 75 82 02            383 	mov	dpl,#0x02
   0E0F 80 03               384 	sjmp	00103$
   0E11                     385 00102$:
                            386 ;	../sm_test_calculator.c:66: END_DEFINE_STATE()
   0E11 75 82 00            387 	mov	dpl,#0x00
   0E14                     388 00103$:
   0E14 D0 1F               389 	pop	_bp
   0E16 22                  390 	ret
                            391 ;------------------------------------------------------------
                            392 ;Allocation info for local variables in function 'calculator_on_handler'
                            393 ;------------------------------------------------------------
                            394 ;event                     Allocated to stack - offset -5
                            395 ;self                      Allocated to stack - offset 1
                            396 ;stateResponseCode         Allocated to registers 
                            397 ;------------------------------------------------------------
                            398 ;	../sm_test_calculator.c:69: DEFINE_STATE(on)
                            399 ;	-----------------------------------------
                            400 ;	 function calculator_on_handler
                            401 ;	-----------------------------------------
   0E17                     402 _calculator_on_handler:
   0E17 C0 1F               403 	push	_bp
   0E19 85 81 1F            404 	mov	_bp,sp
   0E1C C0 82               405 	push	dpl
   0E1E C0 83               406 	push	dph
   0E20 C0 F0               407 	push	b
                            408 ;	../sm_test_calculator.c:71: INITIAL_TRANSITION(TO(ready),																NO_ACTION) ;
   0E22 E5 1F               409 	mov	a,_bp
   0E24 24 FB               410 	add	a,#0xfb
   0E26 F8                  411 	mov	r0,a
   0E27 86 05               412 	mov	ar5,@r0
   0E29 08                  413 	inc	r0
   0E2A 86 06               414 	mov	ar6,@r0
   0E2C 08                  415 	inc	r0
   0E2D 86 07               416 	mov	ar7,@r0
   0E2F 8D 82               417 	mov	dpl,r5
   0E31 8E 83               418 	mov	dph,r6
   0E33 8F F0               419 	mov	b,r7
   0E35 12 44 37            420 	lcall	__gptrget
   0E38 FD                  421 	mov	r5,a
   0E39 BD 02 2A            422 	cjne	r5,#0x02,00102$
   0E3C A8 1F               423 	mov	r0,_bp
   0E3E 08                  424 	inc	r0
   0E3F 74 09               425 	mov	a,#0x09
   0E41 26                  426 	add	a,@r0
   0E42 FE                  427 	mov	r6,a
   0E43 E4                  428 	clr	a
   0E44 08                  429 	inc	r0
   0E45 36                  430 	addc	a,@r0
   0E46 FF                  431 	mov	r7,a
   0E47 08                  432 	inc	r0
   0E48 86 02               433 	mov	ar2,@r0
   0E4A 8E 82               434 	mov	dpl,r6
   0E4C 8F 83               435 	mov	dph,r7
   0E4E 8A F0               436 	mov	b,r2
   0E50 74 1C               437 	mov	a,#_calculator_ready
   0E52 12 38 0B            438 	lcall	__gptrput
   0E55 A3                  439 	inc	dptr
   0E56 74 45               440 	mov	a,#(_calculator_ready >> 8)
   0E58 12 38 0B            441 	lcall	__gptrput
   0E5B A3                  442 	inc	dptr
   0E5C 74 80               443 	mov	a,#0x80
   0E5E 12 38 0B            444 	lcall	__gptrput
   0E61 75 82 02            445 	mov	dpl,#0x02
   0E64 80 5D               446 	sjmp	00109$
   0E66                     447 00102$:
                            448 ;	../sm_test_calculator.c:73: TRANSITION_ON(CLEAR,		UNCONDITIONALLY,						TO(on),					NO_ACTION) ;
   0E66 BD 04 2A            449 	cjne	r5,#0x04,00104$
   0E69 A8 1F               450 	mov	r0,_bp
   0E6B 08                  451 	inc	r0
   0E6C 74 09               452 	mov	a,#0x09
   0E6E 26                  453 	add	a,@r0
   0E6F FA                  454 	mov	r2,a
   0E70 E4                  455 	clr	a
   0E71 08                  456 	inc	r0
   0E72 36                  457 	addc	a,@r0
   0E73 FB                  458 	mov	r3,a
   0E74 08                  459 	inc	r0
   0E75 86 04               460 	mov	ar4,@r0
   0E77 8A 82               461 	mov	dpl,r2
   0E79 8B 83               462 	mov	dph,r3
   0E7B 8C F0               463 	mov	b,r4
   0E7D 74 13               464 	mov	a,#_calculator_on
   0E7F 12 38 0B            465 	lcall	__gptrput
   0E82 A3                  466 	inc	dptr
   0E83 74 45               467 	mov	a,#(_calculator_on >> 8)
   0E85 12 38 0B            468 	lcall	__gptrput
   0E88 A3                  469 	inc	dptr
   0E89 74 80               470 	mov	a,#0x80
   0E8B 12 38 0B            471 	lcall	__gptrput
   0E8E 75 82 02            472 	mov	dpl,#0x02
   0E91 80 30               473 	sjmp	00109$
   0E93                     474 00104$:
                            475 ;	../sm_test_calculator.c:74: TRANSITION_ON(OFF,			UNCONDITIONALLY,						TO(STATE_MACHINE_EXIT),	NO_ACTION) ;
   0E93 BD 0B 2A            476 	cjne	r5,#0x0B,00107$
   0E96 A8 1F               477 	mov	r0,_bp
   0E98 08                  478 	inc	r0
   0E99 74 09               479 	mov	a,#0x09
   0E9B 26                  480 	add	a,@r0
   0E9C FA                  481 	mov	r2,a
   0E9D E4                  482 	clr	a
   0E9E 08                  483 	inc	r0
   0E9F 36                  484 	addc	a,@r0
   0EA0 FB                  485 	mov	r3,a
   0EA1 08                  486 	inc	r0
   0EA2 86 04               487 	mov	ar4,@r0
   0EA4 8A 82               488 	mov	dpl,r2
   0EA6 8B 83               489 	mov	dph,r3
   0EA8 8C F0               490 	mov	b,r4
   0EAA 74 0A               491 	mov	a,#_calculator_TOP
   0EAC 12 38 0B            492 	lcall	__gptrput
   0EAF A3                  493 	inc	dptr
   0EB0 74 45               494 	mov	a,#(_calculator_TOP >> 8)
   0EB2 12 38 0B            495 	lcall	__gptrput
   0EB5 A3                  496 	inc	dptr
   0EB6 74 80               497 	mov	a,#0x80
   0EB8 12 38 0B            498 	lcall	__gptrput
   0EBB 75 82 02            499 	mov	dpl,#0x02
   0EBE 80 03               500 	sjmp	00109$
   0EC0                     501 00107$:
                            502 ;	../sm_test_calculator.c:76: END_DEFINE_STATE()
   0EC0 75 82 00            503 	mov	dpl,#0x00
   0EC3                     504 00109$:
   0EC3 85 1F 81            505 	mov	sp,_bp
   0EC6 D0 1F               506 	pop	_bp
   0EC8 22                  507 	ret
                            508 ;------------------------------------------------------------
                            509 ;Allocation info for local variables in function 'calculator_ready_handler'
                            510 ;------------------------------------------------------------
                            511 ;event                     Allocated to stack - offset -5
                            512 ;self                      Allocated to stack - offset 1
                            513 ;stateResponseCode         Allocated to registers 
                            514 ;------------------------------------------------------------
                            515 ;	../sm_test_calculator.c:79: DEFINE_STATE(ready)
                            516 ;	-----------------------------------------
                            517 ;	 function calculator_ready_handler
                            518 ;	-----------------------------------------
   0EC9                     519 _calculator_ready_handler:
   0EC9 C0 1F               520 	push	_bp
   0ECB 85 81 1F            521 	mov	_bp,sp
   0ECE C0 82               522 	push	dpl
   0ED0 C0 83               523 	push	dph
   0ED2 C0 F0               524 	push	b
                            525 ;	../sm_test_calculator.c:81: INITIAL_TRANSITION(TO(zero1),																NO_ACTION) ;
   0ED4 E5 1F               526 	mov	a,_bp
   0ED6 24 FB               527 	add	a,#0xfb
   0ED8 F8                  528 	mov	r0,a
   0ED9 86 05               529 	mov	ar5,@r0
   0EDB 08                  530 	inc	r0
   0EDC 86 06               531 	mov	ar6,@r0
   0EDE 08                  532 	inc	r0
   0EDF 86 07               533 	mov	ar7,@r0
   0EE1 8D 82               534 	mov	dpl,r5
   0EE3 8E 83               535 	mov	dph,r6
   0EE5 8F F0               536 	mov	b,r7
   0EE7 12 44 37            537 	lcall	__gptrget
   0EEA FD                  538 	mov	r5,a
   0EEB BD 02 2A            539 	cjne	r5,#0x02,00102$
   0EEE A8 1F               540 	mov	r0,_bp
   0EF0 08                  541 	inc	r0
   0EF1 74 09               542 	mov	a,#0x09
   0EF3 26                  543 	add	a,@r0
   0EF4 FE                  544 	mov	r6,a
   0EF5 E4                  545 	clr	a
   0EF6 08                  546 	inc	r0
   0EF7 36                  547 	addc	a,@r0
   0EF8 FF                  548 	mov	r7,a
   0EF9 08                  549 	inc	r0
   0EFA 86 02               550 	mov	ar2,@r0
   0EFC 8E 82               551 	mov	dpl,r6
   0EFE 8F 83               552 	mov	dph,r7
   0F00 8A F0               553 	mov	b,r2
   0F02 74 49               554 	mov	a,#_calculator_zero1
   0F04 12 38 0B            555 	lcall	__gptrput
   0F07 A3                  556 	inc	dptr
   0F08 74 45               557 	mov	a,#(_calculator_zero1 >> 8)
   0F0A 12 38 0B            558 	lcall	__gptrput
   0F0D A3                  559 	inc	dptr
   0F0E 74 80               560 	mov	a,#0x80
   0F10 12 38 0B            561 	lcall	__gptrput
   0F13 75 82 02            562 	mov	dpl,#0x02
   0F16 80 30               563 	sjmp	00106$
   0F18                     564 00102$:
                            565 ;	../sm_test_calculator.c:83: TRANSITION_ON(OPERATION,	UNCONDITIONALLY,						TO(opEntered),			NO_ACTION) ;
   0F18 BD 09 2A            566 	cjne	r5,#0x09,00104$
   0F1B A8 1F               567 	mov	r0,_bp
   0F1D 08                  568 	inc	r0
   0F1E 74 09               569 	mov	a,#0x09
   0F20 26                  570 	add	a,@r0
   0F21 FA                  571 	mov	r2,a
   0F22 E4                  572 	clr	a
   0F23 08                  573 	inc	r0
   0F24 36                  574 	addc	a,@r0
   0F25 FB                  575 	mov	r3,a
   0F26 08                  576 	inc	r0
   0F27 86 04               577 	mov	ar4,@r0
   0F29 8A 82               578 	mov	dpl,r2
   0F2B 8B 83               579 	mov	dph,r3
   0F2D 8C F0               580 	mov	b,r4
   0F2F 74 6D               581 	mov	a,#_calculator_opEntered
   0F31 12 38 0B            582 	lcall	__gptrput
   0F34 A3                  583 	inc	dptr
   0F35 74 45               584 	mov	a,#(_calculator_opEntered >> 8)
   0F37 12 38 0B            585 	lcall	__gptrput
   0F3A A3                  586 	inc	dptr
   0F3B 74 80               587 	mov	a,#0x80
   0F3D 12 38 0B            588 	lcall	__gptrput
   0F40 75 82 02            589 	mov	dpl,#0x02
   0F43 80 03               590 	sjmp	00106$
   0F45                     591 00104$:
                            592 ;	../sm_test_calculator.c:85: END_DEFINE_STATE()
   0F45 75 82 00            593 	mov	dpl,#0x00
   0F48                     594 00106$:
   0F48 85 1F 81            595 	mov	sp,_bp
   0F4B D0 1F               596 	pop	_bp
   0F4D 22                  597 	ret
                            598 ;------------------------------------------------------------
                            599 ;Allocation info for local variables in function 'calculator_result_handler'
                            600 ;------------------------------------------------------------
                            601 ;event                     Allocated to stack - offset -5
                            602 ;self                      Allocated to registers 
                            603 ;stateResponseCode         Allocated to registers 
                            604 ;------------------------------------------------------------
                            605 ;	../sm_test_calculator.c:88: DEFINE_STATE(result)
                            606 ;	-----------------------------------------
                            607 ;	 function calculator_result_handler
                            608 ;	-----------------------------------------
   0F4E                     609 _calculator_result_handler:
   0F4E C0 1F               610 	push	_bp
   0F50 85 81 1F            611 	mov	_bp,sp
                            612 ;	../sm_test_calculator.c:91: END_DEFINE_STATE()
   0F53 75 82 00            613 	mov	dpl,#0x00
   0F56 D0 1F               614 	pop	_bp
   0F58 22                  615 	ret
                            616 ;------------------------------------------------------------
                            617 ;Allocation info for local variables in function 'calculator_begin_handler'
                            618 ;------------------------------------------------------------
                            619 ;event                     Allocated to stack - offset -5
                            620 ;self                      Allocated to stack - offset 1
                            621 ;stateResponseCode         Allocated to registers 
                            622 ;sloc0                     Allocated to stack - offset 5
                            623 ;------------------------------------------------------------
                            624 ;	../sm_test_calculator.c:94: DEFINE_STATE(begin)
                            625 ;	-----------------------------------------
                            626 ;	 function calculator_begin_handler
                            627 ;	-----------------------------------------
   0F59                     628 _calculator_begin_handler:
   0F59 C0 1F               629 	push	_bp
   0F5B 85 81 1F            630 	mov	_bp,sp
   0F5E C0 82               631 	push	dpl
   0F60 C0 83               632 	push	dph
   0F62 C0 F0               633 	push	b
                            634 ;	../sm_test_calculator.c:97: INITIAL_TRANSITION(TO(on),																	NO_ACTION) ;
   0F64 E5 1F               635 	mov	a,_bp
   0F66 24 FB               636 	add	a,#0xfb
   0F68 F8                  637 	mov	r0,a
   0F69 86 05               638 	mov	ar5,@r0
   0F6B 08                  639 	inc	r0
   0F6C 86 06               640 	mov	ar6,@r0
   0F6E 08                  641 	inc	r0
   0F6F 86 07               642 	mov	ar7,@r0
   0F71 8D 82               643 	mov	dpl,r5
   0F73 8E 83               644 	mov	dph,r6
   0F75 8F F0               645 	mov	b,r7
   0F77 12 44 37            646 	lcall	__gptrget
   0F7A FA                  647 	mov	r2,a
   0F7B BA 02 2B            648 	cjne	r2,#0x02,00102$
   0F7E A8 1F               649 	mov	r0,_bp
   0F80 08                  650 	inc	r0
   0F81 74 09               651 	mov	a,#0x09
   0F83 26                  652 	add	a,@r0
   0F84 FA                  653 	mov	r2,a
   0F85 E4                  654 	clr	a
   0F86 08                  655 	inc	r0
   0F87 36                  656 	addc	a,@r0
   0F88 FB                  657 	mov	r3,a
   0F89 08                  658 	inc	r0
   0F8A 86 04               659 	mov	ar4,@r0
   0F8C 8A 82               660 	mov	dpl,r2
   0F8E 8B 83               661 	mov	dph,r3
   0F90 8C F0               662 	mov	b,r4
   0F92 74 13               663 	mov	a,#_calculator_on
   0F94 12 38 0B            664 	lcall	__gptrput
   0F97 A3                  665 	inc	dptr
   0F98 74 45               666 	mov	a,#(_calculator_on >> 8)
   0F9A 12 38 0B            667 	lcall	__gptrput
   0F9D A3                  668 	inc	dptr
   0F9E 74 80               669 	mov	a,#0x80
   0FA0 12 38 0B            670 	lcall	__gptrput
   0FA3 75 82 02            671 	mov	dpl,#0x02
   0FA6 02 10 73            672 	ljmp	00115$
   0FA9                     673 00102$:
                            674 ;	../sm_test_calculator.c:99: TRANSITION_ON(OPERATION,	IF(EVENT_IS(keyEvent_t)->key == '-'),	TO(negated1),			NO_ACTION) ;
   0FA9 BA 09 3D            675 	cjne	r2,#0x09,00104$
   0FAC 0D                  676 	inc	r5
   0FAD BD 00 01            677 	cjne	r5,#0x00,00127$
   0FB0 0E                  678 	inc	r6
   0FB1                     679 00127$:
   0FB1 8D 82               680 	mov	dpl,r5
   0FB3 8E 83               681 	mov	dph,r6
   0FB5 8F F0               682 	mov	b,r7
   0FB7 12 44 37            683 	lcall	__gptrget
   0FBA FD                  684 	mov	r5,a
   0FBB BD 2D 2B            685 	cjne	r5,#0x2D,00104$
   0FBE A8 1F               686 	mov	r0,_bp
   0FC0 08                  687 	inc	r0
   0FC1 74 09               688 	mov	a,#0x09
   0FC3 26                  689 	add	a,@r0
   0FC4 FA                  690 	mov	r2,a
   0FC5 E4                  691 	clr	a
   0FC6 08                  692 	inc	r0
   0FC7 36                  693 	addc	a,@r0
   0FC8 FB                  694 	mov	r3,a
   0FC9 08                  695 	inc	r0
   0FCA 86 04               696 	mov	ar4,@r0
   0FCC 8A 82               697 	mov	dpl,r2
   0FCE 8B 83               698 	mov	dph,r3
   0FD0 8C F0               699 	mov	b,r4
   0FD2 74 37               700 	mov	a,#_calculator_negated1
   0FD4 12 38 0B            701 	lcall	__gptrput
   0FD7 A3                  702 	inc	dptr
   0FD8 74 45               703 	mov	a,#(_calculator_negated1 >> 8)
   0FDA 12 38 0B            704 	lcall	__gptrput
   0FDD A3                  705 	inc	dptr
   0FDE 74 80               706 	mov	a,#0x80
   0FE0 12 38 0B            707 	lcall	__gptrput
   0FE3 75 82 02            708 	mov	dpl,#0x02
   0FE6 02 10 73            709 	ljmp	00115$
   0FE9                     710 00104$:
                            711 ;	../sm_test_calculator.c:100: TRANSITION_ON(DIGIT_0,		UNCONDITIONALLY,						TO(zero1),				NO_ACTION) ;
   0FE9 BA 06 2A            712 	cjne	r2,#0x06,00107$
   0FEC A8 1F               713 	mov	r0,_bp
   0FEE 08                  714 	inc	r0
   0FEF 74 09               715 	mov	a,#0x09
   0FF1 26                  716 	add	a,@r0
   0FF2 FA                  717 	mov	r2,a
   0FF3 E4                  718 	clr	a
   0FF4 08                  719 	inc	r0
   0FF5 36                  720 	addc	a,@r0
   0FF6 FB                  721 	mov	r3,a
   0FF7 08                  722 	inc	r0
   0FF8 86 04               723 	mov	ar4,@r0
   0FFA 8A 82               724 	mov	dpl,r2
   0FFC 8B 83               725 	mov	dph,r3
   0FFE 8C F0               726 	mov	b,r4
   1000 74 49               727 	mov	a,#_calculator_zero1
   1002 12 38 0B            728 	lcall	__gptrput
   1005 A3                  729 	inc	dptr
   1006 74 45               730 	mov	a,#(_calculator_zero1 >> 8)
   1008 12 38 0B            731 	lcall	__gptrput
   100B A3                  732 	inc	dptr
   100C 74 80               733 	mov	a,#0x80
   100E 12 38 0B            734 	lcall	__gptrput
   1011 75 82 02            735 	mov	dpl,#0x02
   1014 80 5D               736 	sjmp	00115$
   1016                     737 00107$:
                            738 ;	../sm_test_calculator.c:101: TRANSITION_ON(DIGIT_1_9,	UNCONDITIONALLY,						TO(int1),				NO_ACTION) ;
   1016 BA 07 2A            739 	cjne	r2,#0x07,00110$
   1019 A8 1F               740 	mov	r0,_bp
   101B 08                  741 	inc	r0
   101C 74 09               742 	mov	a,#0x09
   101E 26                  743 	add	a,@r0
   101F FA                  744 	mov	r2,a
   1020 E4                  745 	clr	a
   1021 08                  746 	inc	r0
   1022 36                  747 	addc	a,@r0
   1023 FB                  748 	mov	r3,a
   1024 08                  749 	inc	r0
   1025 86 04               750 	mov	ar4,@r0
   1027 8A 82               751 	mov	dpl,r2
   1029 8B 83               752 	mov	dph,r3
   102B 8C F0               753 	mov	b,r4
   102D 74 52               754 	mov	a,#_calculator_int1
   102F 12 38 0B            755 	lcall	__gptrput
   1032 A3                  756 	inc	dptr
   1033 74 45               757 	mov	a,#(_calculator_int1 >> 8)
   1035 12 38 0B            758 	lcall	__gptrput
   1038 A3                  759 	inc	dptr
   1039 74 80               760 	mov	a,#0x80
   103B 12 38 0B            761 	lcall	__gptrput
   103E 75 82 02            762 	mov	dpl,#0x02
   1041 80 30               763 	sjmp	00115$
   1043                     764 00110$:
                            765 ;	../sm_test_calculator.c:102: TRANSITION_ON(POINT,		UNCONDITIONALLY,						TO(frac1),				NO_ACTION) ;
   1043 BA 08 2A            766 	cjne	r2,#0x08,00113$
   1046 A8 1F               767 	mov	r0,_bp
   1048 08                  768 	inc	r0
   1049 74 09               769 	mov	a,#0x09
   104B 26                  770 	add	a,@r0
   104C FA                  771 	mov	r2,a
   104D E4                  772 	clr	a
   104E 08                  773 	inc	r0
   104F 36                  774 	addc	a,@r0
   1050 FB                  775 	mov	r3,a
   1051 08                  776 	inc	r0
   1052 86 04               777 	mov	ar4,@r0
   1054 8A 82               778 	mov	dpl,r2
   1056 8B 83               779 	mov	dph,r3
   1058 8C F0               780 	mov	b,r4
   105A 74 5B               781 	mov	a,#_calculator_frac1
   105C 12 38 0B            782 	lcall	__gptrput
   105F A3                  783 	inc	dptr
   1060 74 45               784 	mov	a,#(_calculator_frac1 >> 8)
   1062 12 38 0B            785 	lcall	__gptrput
   1065 A3                  786 	inc	dptr
   1066 74 80               787 	mov	a,#0x80
   1068 12 38 0B            788 	lcall	__gptrput
   106B 75 82 02            789 	mov	dpl,#0x02
   106E 80 03               790 	sjmp	00115$
   1070                     791 00113$:
                            792 ;	../sm_test_calculator.c:104: END_DEFINE_STATE()
   1070 75 82 00            793 	mov	dpl,#0x00
   1073                     794 00115$:
   1073 85 1F 81            795 	mov	sp,_bp
   1076 D0 1F               796 	pop	_bp
   1078 22                  797 	ret
                            798 ;------------------------------------------------------------
                            799 ;Allocation info for local variables in function 'calculator_negated1_handler'
                            800 ;------------------------------------------------------------
                            801 ;event                     Allocated to stack - offset -5
                            802 ;self                      Allocated to stack - offset 1
                            803 ;stateResponseCode         Allocated to registers 
                            804 ;sloc0                     Allocated to stack - offset 5
                            805 ;------------------------------------------------------------
                            806 ;	../sm_test_calculator.c:107: DEFINE_STATE(negated1)
                            807 ;	-----------------------------------------
                            808 ;	 function calculator_negated1_handler
                            809 ;	-----------------------------------------
   1079                     810 _calculator_negated1_handler:
   1079 C0 1F               811 	push	_bp
   107B 85 81 1F            812 	mov	_bp,sp
   107E C0 82               813 	push	dpl
   1080 C0 83               814 	push	dph
   1082 C0 F0               815 	push	b
                            816 ;	../sm_test_calculator.c:109: TRANSITION_ON(CLEAR_ENTRY,	UNCONDITIONALLY,						TO(begin),				NO_ACTION) ;
   1084 E5 1F               817 	mov	a,_bp
   1086 24 FB               818 	add	a,#0xfb
   1088 F8                  819 	mov	r0,a
   1089 86 05               820 	mov	ar5,@r0
   108B 08                  821 	inc	r0
   108C 86 06               822 	mov	ar6,@r0
   108E 08                  823 	inc	r0
   108F 86 07               824 	mov	ar7,@r0
   1091 8D 82               825 	mov	dpl,r5
   1093 8E 83               826 	mov	dph,r6
   1095 8F F0               827 	mov	b,r7
   1097 12 44 37            828 	lcall	__gptrget
   109A FA                  829 	mov	r2,a
   109B BA 05 2B            830 	cjne	r2,#0x05,00102$
   109E A8 1F               831 	mov	r0,_bp
   10A0 08                  832 	inc	r0
   10A1 74 09               833 	mov	a,#0x09
   10A3 26                  834 	add	a,@r0
   10A4 FA                  835 	mov	r2,a
   10A5 E4                  836 	clr	a
   10A6 08                  837 	inc	r0
   10A7 36                  838 	addc	a,@r0
   10A8 FB                  839 	mov	r3,a
   10A9 08                  840 	inc	r0
   10AA 86 04               841 	mov	ar4,@r0
   10AC 8A 82               842 	mov	dpl,r2
   10AE 8B 83               843 	mov	dph,r3
   10B0 8C F0               844 	mov	b,r4
   10B2 74 2E               845 	mov	a,#_calculator_begin
   10B4 12 38 0B            846 	lcall	__gptrput
   10B7 A3                  847 	inc	dptr
   10B8 74 45               848 	mov	a,#(_calculator_begin >> 8)
   10BA 12 38 0B            849 	lcall	__gptrput
   10BD A3                  850 	inc	dptr
   10BE 74 80               851 	mov	a,#0x80
   10C0 12 38 0B            852 	lcall	__gptrput
   10C3 75 82 02            853 	mov	dpl,#0x02
   10C6 02 11 6E            854 	ljmp	00116$
   10C9                     855 00102$:
                            856 ;	../sm_test_calculator.c:110: TRANSITION_ON(DIGIT_0,		UNCONDITIONALLY,						TO(zero1),				NO_ACTION) ;
   10C9 BA 06 2B            857 	cjne	r2,#0x06,00105$
   10CC A8 1F               858 	mov	r0,_bp
   10CE 08                  859 	inc	r0
   10CF 74 09               860 	mov	a,#0x09
   10D1 26                  861 	add	a,@r0
   10D2 FA                  862 	mov	r2,a
   10D3 E4                  863 	clr	a
   10D4 08                  864 	inc	r0
   10D5 36                  865 	addc	a,@r0
   10D6 FB                  866 	mov	r3,a
   10D7 08                  867 	inc	r0
   10D8 86 04               868 	mov	ar4,@r0
   10DA 8A 82               869 	mov	dpl,r2
   10DC 8B 83               870 	mov	dph,r3
   10DE 8C F0               871 	mov	b,r4
   10E0 74 49               872 	mov	a,#_calculator_zero1
   10E2 12 38 0B            873 	lcall	__gptrput
   10E5 A3                  874 	inc	dptr
   10E6 74 45               875 	mov	a,#(_calculator_zero1 >> 8)
   10E8 12 38 0B            876 	lcall	__gptrput
   10EB A3                  877 	inc	dptr
   10EC 74 80               878 	mov	a,#0x80
   10EE 12 38 0B            879 	lcall	__gptrput
   10F1 75 82 02            880 	mov	dpl,#0x02
   10F4 02 11 6E            881 	ljmp	00116$
   10F7                     882 00105$:
                            883 ;	../sm_test_calculator.c:111: TRANSITION_ON(DIGIT_1_9,	UNCONDITIONALLY,						TO(int1),				NO_ACTION) ;
   10F7 BA 07 2A            884 	cjne	r2,#0x07,00108$
   10FA A8 1F               885 	mov	r0,_bp
   10FC 08                  886 	inc	r0
   10FD 74 09               887 	mov	a,#0x09
   10FF 26                  888 	add	a,@r0
   1100 FA                  889 	mov	r2,a
   1101 E4                  890 	clr	a
   1102 08                  891 	inc	r0
   1103 36                  892 	addc	a,@r0
   1104 FB                  893 	mov	r3,a
   1105 08                  894 	inc	r0
   1106 86 04               895 	mov	ar4,@r0
   1108 8A 82               896 	mov	dpl,r2
   110A 8B 83               897 	mov	dph,r3
   110C 8C F0               898 	mov	b,r4
   110E 74 52               899 	mov	a,#_calculator_int1
   1110 12 38 0B            900 	lcall	__gptrput
   1113 A3                  901 	inc	dptr
   1114 74 45               902 	mov	a,#(_calculator_int1 >> 8)
   1116 12 38 0B            903 	lcall	__gptrput
   1119 A3                  904 	inc	dptr
   111A 74 80               905 	mov	a,#0x80
   111C 12 38 0B            906 	lcall	__gptrput
   111F 75 82 02            907 	mov	dpl,#0x02
   1122 80 4A               908 	sjmp	00116$
   1124                     909 00108$:
                            910 ;	../sm_test_calculator.c:112: TRANSITION_ON(POINT,		UNCONDITIONALLY,						TO(frac1),				NO_ACTION) ;
   1124 BA 08 2A            911 	cjne	r2,#0x08,00111$
   1127 A8 1F               912 	mov	r0,_bp
   1129 08                  913 	inc	r0
   112A 74 09               914 	mov	a,#0x09
   112C 26                  915 	add	a,@r0
   112D FA                  916 	mov	r2,a
   112E E4                  917 	clr	a
   112F 08                  918 	inc	r0
   1130 36                  919 	addc	a,@r0
   1131 FB                  920 	mov	r3,a
   1132 08                  921 	inc	r0
   1133 86 04               922 	mov	ar4,@r0
   1135 8A 82               923 	mov	dpl,r2
   1137 8B 83               924 	mov	dph,r3
   1139 8C F0               925 	mov	b,r4
   113B 74 5B               926 	mov	a,#_calculator_frac1
   113D 12 38 0B            927 	lcall	__gptrput
   1140 A3                  928 	inc	dptr
   1141 74 45               929 	mov	a,#(_calculator_frac1 >> 8)
   1143 12 38 0B            930 	lcall	__gptrput
   1146 A3                  931 	inc	dptr
   1147 74 80               932 	mov	a,#0x80
   1149 12 38 0B            933 	lcall	__gptrput
   114C 75 82 02            934 	mov	dpl,#0x02
   114F 80 1D               935 	sjmp	00116$
   1151                     936 00111$:
                            937 ;	../sm_test_calculator.c:113: CONSUME_EVENT_IF(OPERATION,	IF(EVENT_IS(keyEvent_t)->key == '-'),							NO_ACTION) ;
   1151 BA 09 17            938 	cjne	r2,#0x09,00114$
   1154 0D                  939 	inc	r5
   1155 BD 00 01            940 	cjne	r5,#0x00,00134$
   1158 0E                  941 	inc	r6
   1159                     942 00134$:
   1159 8D 82               943 	mov	dpl,r5
   115B 8E 83               944 	mov	dph,r6
   115D 8F F0               945 	mov	b,r7
   115F 12 44 37            946 	lcall	__gptrget
   1162 FD                  947 	mov	r5,a
   1163 BD 2D 05            948 	cjne	r5,#0x2D,00114$
   1166 75 82 01            949 	mov	dpl,#0x01
   1169 80 03               950 	sjmp	00116$
   116B                     951 00114$:
                            952 ;	../sm_test_calculator.c:115: END_DEFINE_STATE()
   116B 75 82 00            953 	mov	dpl,#0x00
   116E                     954 00116$:
   116E 85 1F 81            955 	mov	sp,_bp
   1171 D0 1F               956 	pop	_bp
   1173 22                  957 	ret
                            958 ;------------------------------------------------------------
                            959 ;Allocation info for local variables in function 'calculator_operand1_handler'
                            960 ;------------------------------------------------------------
                            961 ;event                     Allocated to stack - offset -5
                            962 ;self                      Allocated to stack - offset 1
                            963 ;stateResponseCode         Allocated to registers 
                            964 ;------------------------------------------------------------
                            965 ;	../sm_test_calculator.c:118: DEFINE_STATE(operand1)
                            966 ;	-----------------------------------------
                            967 ;	 function calculator_operand1_handler
                            968 ;	-----------------------------------------
   1174                     969 _calculator_operand1_handler:
   1174 C0 1F               970 	push	_bp
   1176 85 81 1F            971 	mov	_bp,sp
   1179 C0 82               972 	push	dpl
   117B C0 83               973 	push	dph
   117D C0 F0               974 	push	b
                            975 ;	../sm_test_calculator.c:120: TRANSITION_ON(CLEAR_ENTRY,	UNCONDITIONALLY,						TO(ready),				NO_ACTION) ;
   117F E5 1F               976 	mov	a,_bp
   1181 24 FB               977 	add	a,#0xfb
   1183 F8                  978 	mov	r0,a
   1184 86 05               979 	mov	ar5,@r0
   1186 08                  980 	inc	r0
   1187 86 06               981 	mov	ar6,@r0
   1189 08                  982 	inc	r0
   118A 86 07               983 	mov	ar7,@r0
   118C 8D 82               984 	mov	dpl,r5
   118E 8E 83               985 	mov	dph,r6
   1190 8F F0               986 	mov	b,r7
   1192 12 44 37            987 	lcall	__gptrget
   1195 FD                  988 	mov	r5,a
   1196 BD 05 2A            989 	cjne	r5,#0x05,00102$
   1199 A8 1F               990 	mov	r0,_bp
   119B 08                  991 	inc	r0
   119C 74 09               992 	mov	a,#0x09
   119E 26                  993 	add	a,@r0
   119F FE                  994 	mov	r6,a
   11A0 E4                  995 	clr	a
   11A1 08                  996 	inc	r0
   11A2 36                  997 	addc	a,@r0
   11A3 FF                  998 	mov	r7,a
   11A4 08                  999 	inc	r0
   11A5 86 02              1000 	mov	ar2,@r0
   11A7 8E 82              1001 	mov	dpl,r6
   11A9 8F 83              1002 	mov	dph,r7
   11AB 8A F0              1003 	mov	b,r2
   11AD 74 1C              1004 	mov	a,#_calculator_ready
   11AF 12 38 0B           1005 	lcall	__gptrput
   11B2 A3                 1006 	inc	dptr
   11B3 74 45              1007 	mov	a,#(_calculator_ready >> 8)
   11B5 12 38 0B           1008 	lcall	__gptrput
   11B8 A3                 1009 	inc	dptr
   11B9 74 80              1010 	mov	a,#0x80
   11BB 12 38 0B           1011 	lcall	__gptrput
   11BE 75 82 02           1012 	mov	dpl,#0x02
   11C1 80 30              1013 	sjmp	00107$
   11C3                    1014 00102$:
                           1015 ;	../sm_test_calculator.c:121: TRANSITION_ON(OPERATION,	UNCONDITIONALLY,						TO(opEntered),			NO_ACTION) ;
   11C3 BD 09 2A           1016 	cjne	r5,#0x09,00105$
   11C6 A8 1F              1017 	mov	r0,_bp
   11C8 08                 1018 	inc	r0
   11C9 74 09              1019 	mov	a,#0x09
   11CB 26                 1020 	add	a,@r0
   11CC FA                 1021 	mov	r2,a
   11CD E4                 1022 	clr	a
   11CE 08                 1023 	inc	r0
   11CF 36                 1024 	addc	a,@r0
   11D0 FB                 1025 	mov	r3,a
   11D1 08                 1026 	inc	r0
   11D2 86 04              1027 	mov	ar4,@r0
   11D4 8A 82              1028 	mov	dpl,r2
   11D6 8B 83              1029 	mov	dph,r3
   11D8 8C F0              1030 	mov	b,r4
   11DA 74 6D              1031 	mov	a,#_calculator_opEntered
   11DC 12 38 0B           1032 	lcall	__gptrput
   11DF A3                 1033 	inc	dptr
   11E0 74 45              1034 	mov	a,#(_calculator_opEntered >> 8)
   11E2 12 38 0B           1035 	lcall	__gptrput
   11E5 A3                 1036 	inc	dptr
   11E6 74 80              1037 	mov	a,#0x80
   11E8 12 38 0B           1038 	lcall	__gptrput
   11EB 75 82 02           1039 	mov	dpl,#0x02
   11EE 80 03              1040 	sjmp	00107$
   11F0                    1041 00105$:
                           1042 ;	../sm_test_calculator.c:123: END_DEFINE_STATE()
   11F0 75 82 00           1043 	mov	dpl,#0x00
   11F3                    1044 00107$:
   11F3 85 1F 81           1045 	mov	sp,_bp
   11F6 D0 1F              1046 	pop	_bp
   11F8 22                 1047 	ret
                           1048 ;------------------------------------------------------------
                           1049 ;Allocation info for local variables in function 'calculator_zero1_handler'
                           1050 ;------------------------------------------------------------
                           1051 ;event                     Allocated to stack - offset -5
                           1052 ;self                      Allocated to stack - offset 1
                           1053 ;stateResponseCode         Allocated to registers 
                           1054 ;------------------------------------------------------------
                           1055 ;	../sm_test_calculator.c:126: DEFINE_STATE(zero1)
                           1056 ;	-----------------------------------------
                           1057 ;	 function calculator_zero1_handler
                           1058 ;	-----------------------------------------
   11F9                    1059 _calculator_zero1_handler:
   11F9 C0 1F              1060 	push	_bp
   11FB 85 81 1F           1061 	mov	_bp,sp
   11FE C0 82              1062 	push	dpl
   1200 C0 83              1063 	push	dph
   1202 C0 F0              1064 	push	b
                           1065 ;	../sm_test_calculator.c:128: INITIAL_TRANSITION(TO(zero2),																NO_ACTION) ;
   1204 E5 1F              1066 	mov	a,_bp
   1206 24 FB              1067 	add	a,#0xfb
   1208 F8                 1068 	mov	r0,a
   1209 86 05              1069 	mov	ar5,@r0
   120B 08                 1070 	inc	r0
   120C 86 06              1071 	mov	ar6,@r0
   120E 08                 1072 	inc	r0
   120F 86 07              1073 	mov	ar7,@r0
   1211 8D 82              1074 	mov	dpl,r5
   1213 8E 83              1075 	mov	dph,r6
   1215 8F F0              1076 	mov	b,r7
   1217 12 44 37           1077 	lcall	__gptrget
   121A FD                 1078 	mov	r5,a
   121B BD 02 2A           1079 	cjne	r5,#0x02,00102$
   121E A8 1F              1080 	mov	r0,_bp
   1220 08                 1081 	inc	r0
   1221 74 09              1082 	mov	a,#0x09
   1223 26                 1083 	add	a,@r0
   1224 FE                 1084 	mov	r6,a
   1225 E4                 1085 	clr	a
   1226 08                 1086 	inc	r0
   1227 36                 1087 	addc	a,@r0
   1228 FF                 1088 	mov	r7,a
   1229 08                 1089 	inc	r0
   122A 86 02              1090 	mov	ar2,@r0
   122C 8E 82              1091 	mov	dpl,r6
   122E 8F 83              1092 	mov	dph,r7
   1230 8A F0              1093 	mov	b,r2
   1232 74 88              1094 	mov	a,#_calculator_zero2
   1234 12 38 0B           1095 	lcall	__gptrput
   1237 A3                 1096 	inc	dptr
   1238 74 45              1097 	mov	a,#(_calculator_zero2 >> 8)
   123A 12 38 0B           1098 	lcall	__gptrput
   123D A3                 1099 	inc	dptr
   123E 74 80              1100 	mov	a,#0x80
   1240 12 38 0B           1101 	lcall	__gptrput
   1243 75 82 02           1102 	mov	dpl,#0x02
   1246 80 65              1103 	sjmp	00111$
   1248                    1104 00102$:
                           1105 ;	../sm_test_calculator.c:129: CONSUME_EVENT(DIGIT_0,																		NO_ACTION) ;
   1248 BD 06 05           1106 	cjne	r5,#0x06,00104$
   124B 75 82 01           1107 	mov	dpl,#0x01
   124E 80 5D              1108 	sjmp	00111$
   1250                    1109 00104$:
                           1110 ;	../sm_test_calculator.c:130: TRANSITION_ON(DIGIT_1_9,	UNCONDITIONALLY,						TO(int1),				NO_ACTION) ;
   1250 BD 07 2A           1111 	cjne	r5,#0x07,00106$
   1253 A8 1F              1112 	mov	r0,_bp
   1255 08                 1113 	inc	r0
   1256 74 09              1114 	mov	a,#0x09
   1258 26                 1115 	add	a,@r0
   1259 FA                 1116 	mov	r2,a
   125A E4                 1117 	clr	a
   125B 08                 1118 	inc	r0
   125C 36                 1119 	addc	a,@r0
   125D FB                 1120 	mov	r3,a
   125E 08                 1121 	inc	r0
   125F 86 04              1122 	mov	ar4,@r0
   1261 8A 82              1123 	mov	dpl,r2
   1263 8B 83              1124 	mov	dph,r3
   1265 8C F0              1125 	mov	b,r4
   1267 74 52              1126 	mov	a,#_calculator_int1
   1269 12 38 0B           1127 	lcall	__gptrput
   126C A3                 1128 	inc	dptr
   126D 74 45              1129 	mov	a,#(_calculator_int1 >> 8)
   126F 12 38 0B           1130 	lcall	__gptrput
   1272 A3                 1131 	inc	dptr
   1273 74 80              1132 	mov	a,#0x80
   1275 12 38 0B           1133 	lcall	__gptrput
   1278 75 82 02           1134 	mov	dpl,#0x02
   127B 80 30              1135 	sjmp	00111$
   127D                    1136 00106$:
                           1137 ;	../sm_test_calculator.c:131: TRANSITION_ON(POINT,		UNCONDITIONALLY,						TO(frac1),				NO_ACTION) ;
   127D BD 08 2A           1138 	cjne	r5,#0x08,00109$
   1280 A8 1F              1139 	mov	r0,_bp
   1282 08                 1140 	inc	r0
   1283 74 09              1141 	mov	a,#0x09
   1285 26                 1142 	add	a,@r0
   1286 FA                 1143 	mov	r2,a
   1287 E4                 1144 	clr	a
   1288 08                 1145 	inc	r0
   1289 36                 1146 	addc	a,@r0
   128A FB                 1147 	mov	r3,a
   128B 08                 1148 	inc	r0
   128C 86 04              1149 	mov	ar4,@r0
   128E 8A 82              1150 	mov	dpl,r2
   1290 8B 83              1151 	mov	dph,r3
   1292 8C F0              1152 	mov	b,r4
   1294 74 5B              1153 	mov	a,#_calculator_frac1
   1296 12 38 0B           1154 	lcall	__gptrput
   1299 A3                 1155 	inc	dptr
   129A 74 45              1156 	mov	a,#(_calculator_frac1 >> 8)
   129C 12 38 0B           1157 	lcall	__gptrput
   129F A3                 1158 	inc	dptr
   12A0 74 80              1159 	mov	a,#0x80
   12A2 12 38 0B           1160 	lcall	__gptrput
   12A5 75 82 02           1161 	mov	dpl,#0x02
   12A8 80 03              1162 	sjmp	00111$
   12AA                    1163 00109$:
                           1164 ;	../sm_test_calculator.c:133: END_DEFINE_STATE()
   12AA 75 82 00           1165 	mov	dpl,#0x00
   12AD                    1166 00111$:
   12AD 85 1F 81           1167 	mov	sp,_bp
   12B0 D0 1F              1168 	pop	_bp
   12B2 22                 1169 	ret
                           1170 ;------------------------------------------------------------
                           1171 ;Allocation info for local variables in function 'calculator_int1_handler'
                           1172 ;------------------------------------------------------------
                           1173 ;event                     Allocated to stack - offset -5
                           1174 ;self                      Allocated to registers r2 r3 r4 
                           1175 ;stateResponseCode         Allocated to registers 
                           1176 ;------------------------------------------------------------
                           1177 ;	../sm_test_calculator.c:136: DEFINE_STATE(int1)
                           1178 ;	-----------------------------------------
                           1179 ;	 function calculator_int1_handler
                           1180 ;	-----------------------------------------
   12B3                    1181 _calculator_int1_handler:
   12B3 C0 1F              1182 	push	_bp
   12B5 85 81 1F           1183 	mov	_bp,sp
   12B8 AA 82              1184 	mov	r2,dpl
   12BA AB 83              1185 	mov	r3,dph
   12BC AC F0              1186 	mov	r4,b
                           1187 ;	../sm_test_calculator.c:138: TRANSITION_ON(POINT,		UNCONDITIONALLY,						TO(frac1),				NO_ACTION) ;
   12BE E5 1F              1188 	mov	a,_bp
   12C0 24 FB              1189 	add	a,#0xfb
   12C2 F8                 1190 	mov	r0,a
   12C3 86 05              1191 	mov	ar5,@r0
   12C5 08                 1192 	inc	r0
   12C6 86 06              1193 	mov	ar6,@r0
   12C8 08                 1194 	inc	r0
   12C9 86 07              1195 	mov	ar7,@r0
   12CB 8D 82              1196 	mov	dpl,r5
   12CD 8E 83              1197 	mov	dph,r6
   12CF 8F F0              1198 	mov	b,r7
   12D1 12 44 37           1199 	lcall	__gptrget
   12D4 FD                 1200 	mov	r5,a
   12D5 BD 08 23           1201 	cjne	r5,#0x08,00102$
   12D8 74 09              1202 	mov	a,#0x09
   12DA 2A                 1203 	add	a,r2
   12DB FA                 1204 	mov	r2,a
   12DC E4                 1205 	clr	a
   12DD 3B                 1206 	addc	a,r3
   12DE FB                 1207 	mov	r3,a
   12DF 8A 82              1208 	mov	dpl,r2
   12E1 8B 83              1209 	mov	dph,r3
   12E3 8C F0              1210 	mov	b,r4
   12E5 74 5B              1211 	mov	a,#_calculator_frac1
   12E7 12 38 0B           1212 	lcall	__gptrput
   12EA A3                 1213 	inc	dptr
   12EB 74 45              1214 	mov	a,#(_calculator_frac1 >> 8)
   12ED 12 38 0B           1215 	lcall	__gptrput
   12F0 A3                 1216 	inc	dptr
   12F1 74 80              1217 	mov	a,#0x80
   12F3 12 38 0B           1218 	lcall	__gptrput
   12F6 75 82 02           1219 	mov	dpl,#0x02
   12F9 80 03              1220 	sjmp	00104$
   12FB                    1221 00102$:
                           1222 ;	../sm_test_calculator.c:140: END_DEFINE_STATE()
   12FB 75 82 00           1223 	mov	dpl,#0x00
   12FE                    1224 00104$:
   12FE D0 1F              1225 	pop	_bp
   1300 22                 1226 	ret
                           1227 ;------------------------------------------------------------
                           1228 ;Allocation info for local variables in function 'calculator_frac1_handler'
                           1229 ;------------------------------------------------------------
                           1230 ;event                     Allocated to stack - offset -5
                           1231 ;self                      Allocated to registers 
                           1232 ;stateResponseCode         Allocated to registers 
                           1233 ;------------------------------------------------------------
                           1234 ;	../sm_test_calculator.c:143: DEFINE_STATE(frac1)
                           1235 ;	-----------------------------------------
                           1236 ;	 function calculator_frac1_handler
                           1237 ;	-----------------------------------------
   1301                    1238 _calculator_frac1_handler:
   1301 C0 1F              1239 	push	_bp
   1303 85 81 1F           1240 	mov	_bp,sp
                           1241 ;	../sm_test_calculator.c:145: CONSUME_EVENT(POINT,																		NO_ACTION) ;
   1306 E5 1F              1242 	mov	a,_bp
   1308 24 FB              1243 	add	a,#0xfb
   130A F8                 1244 	mov	r0,a
   130B 86 02              1245 	mov	ar2,@r0
   130D 08                 1246 	inc	r0
   130E 86 03              1247 	mov	ar3,@r0
   1310 08                 1248 	inc	r0
   1311 86 04              1249 	mov	ar4,@r0
   1313 8A 82              1250 	mov	dpl,r2
   1315 8B 83              1251 	mov	dph,r3
   1317 8C F0              1252 	mov	b,r4
   1319 12 44 37           1253 	lcall	__gptrget
   131C FA                 1254 	mov	r2,a
   131D BA 08 05           1255 	cjne	r2,#0x08,00102$
   1320 75 82 01           1256 	mov	dpl,#0x01
   1323 80 03              1257 	sjmp	00103$
   1325                    1258 00102$:
                           1259 ;	../sm_test_calculator.c:147: END_DEFINE_STATE()
   1325 75 82 00           1260 	mov	dpl,#0x00
   1328                    1261 00103$:
   1328 D0 1F              1262 	pop	_bp
   132A 22                 1263 	ret
                           1264 ;------------------------------------------------------------
                           1265 ;Allocation info for local variables in function 'calculator_error_handler'
                           1266 ;------------------------------------------------------------
                           1267 ;event                     Allocated to stack - offset -5
                           1268 ;self                      Allocated to registers r2 r3 r4 
                           1269 ;stateResponseCode         Allocated to registers 
                           1270 ;------------------------------------------------------------
                           1271 ;	../sm_test_calculator.c:150: DEFINE_STATE(error)
                           1272 ;	-----------------------------------------
                           1273 ;	 function calculator_error_handler
                           1274 ;	-----------------------------------------
   132B                    1275 _calculator_error_handler:
   132B C0 1F              1276 	push	_bp
   132D 85 81 1F           1277 	mov	_bp,sp
   1330 AA 82              1278 	mov	r2,dpl
   1332 AB 83              1279 	mov	r3,dph
   1334 AC F0              1280 	mov	r4,b
                           1281 ;	../sm_test_calculator.c:152: INITIAL_TRANSITION(TO(frac2),																NO_ACTION) ;
   1336 E5 1F              1282 	mov	a,_bp
   1338 24 FB              1283 	add	a,#0xfb
   133A F8                 1284 	mov	r0,a
   133B 86 05              1285 	mov	ar5,@r0
   133D 08                 1286 	inc	r0
   133E 86 06              1287 	mov	ar6,@r0
   1340 08                 1288 	inc	r0
   1341 86 07              1289 	mov	ar7,@r0
   1343 8D 82              1290 	mov	dpl,r5
   1345 8E 83              1291 	mov	dph,r6
   1347 8F F0              1292 	mov	b,r7
   1349 12 44 37           1293 	lcall	__gptrget
   134C FD                 1294 	mov	r5,a
   134D BD 02 23           1295 	cjne	r5,#0x02,00102$
   1350 74 09              1296 	mov	a,#0x09
   1352 2A                 1297 	add	a,r2
   1353 FA                 1298 	mov	r2,a
   1354 E4                 1299 	clr	a
   1355 3B                 1300 	addc	a,r3
   1356 FB                 1301 	mov	r3,a
   1357 8A 82              1302 	mov	dpl,r2
   1359 8B 83              1303 	mov	dph,r3
   135B 8C F0              1304 	mov	b,r4
   135D 74 9A              1305 	mov	a,#_calculator_frac2
   135F 12 38 0B           1306 	lcall	__gptrput
   1362 A3                 1307 	inc	dptr
   1363 74 45              1308 	mov	a,#(_calculator_frac2 >> 8)
   1365 12 38 0B           1309 	lcall	__gptrput
   1368 A3                 1310 	inc	dptr
   1369 74 80              1311 	mov	a,#0x80
   136B 12 38 0B           1312 	lcall	__gptrput
   136E 75 82 02           1313 	mov	dpl,#0x02
   1371 80 03              1314 	sjmp	00103$
   1373                    1315 00102$:
                           1316 ;	../sm_test_calculator.c:154: END_DEFINE_STATE()
   1373 75 82 00           1317 	mov	dpl,#0x00
   1376                    1318 00103$:
   1376 D0 1F              1319 	pop	_bp
   1378 22                 1320 	ret
                           1321 ;------------------------------------------------------------
                           1322 ;Allocation info for local variables in function 'calculator_opEntered_handler'
                           1323 ;------------------------------------------------------------
                           1324 ;event                     Allocated to stack - offset -5
                           1325 ;self                      Allocated to registers r2 r3 r4 
                           1326 ;stateResponseCode         Allocated to registers 
                           1327 ;sloc0                     Allocated to stack - offset 1
                           1328 ;------------------------------------------------------------
                           1329 ;	../sm_test_calculator.c:157: DEFINE_STATE(opEntered)
                           1330 ;	-----------------------------------------
                           1331 ;	 function calculator_opEntered_handler
                           1332 ;	-----------------------------------------
   1379                    1333 _calculator_opEntered_handler:
   1379 C0 1F              1334 	push	_bp
   137B 85 81 1F           1335 	mov	_bp,sp
   137E 05 81              1336 	inc	sp
   1380 AA 82              1337 	mov	r2,dpl
   1382 AB 83              1338 	mov	r3,dph
   1384 AC F0              1339 	mov	r4,b
                           1340 ;	../sm_test_calculator.c:159: TRANSITION_ON(OPERATION,	IF(EVENT_IS(keyEvent_t)->key == '-'),	TO(negated2),			NO_ACTION) ;
   1386 E5 1F              1341 	mov	a,_bp
   1388 24 FB              1342 	add	a,#0xfb
   138A F8                 1343 	mov	r0,a
   138B 86 05              1344 	mov	ar5,@r0
   138D 08                 1345 	inc	r0
   138E 86 06              1346 	mov	ar6,@r0
   1390 08                 1347 	inc	r0
   1391 86 07              1348 	mov	ar7,@r0
   1393 8D 82              1349 	mov	dpl,r5
   1395 8E 83              1350 	mov	dph,r6
   1397 8F F0              1351 	mov	b,r7
   1399 A8 1F              1352 	mov	r0,_bp
   139B 08                 1353 	inc	r0
   139C 12 44 37           1354 	lcall	__gptrget
   139F F6                 1355 	mov	@r0,a
   13A0 A8 1F              1356 	mov	r0,_bp
   13A2 08                 1357 	inc	r0
   13A3 B6 09 38           1358 	cjne	@r0,#0x09,00102$
   13A6 0D                 1359 	inc	r5
   13A7 BD 00 01           1360 	cjne	r5,#0x00,00122$
   13AA 0E                 1361 	inc	r6
   13AB                    1362 00122$:
   13AB 8D 82              1363 	mov	dpl,r5
   13AD 8E 83              1364 	mov	dph,r6
   13AF 8F F0              1365 	mov	b,r7
   13B1 12 44 37           1366 	lcall	__gptrget
   13B4 FD                 1367 	mov	r5,a
   13B5 BD 2D 26           1368 	cjne	r5,#0x2D,00102$
   13B8 74 09              1369 	mov	a,#0x09
   13BA 2A                 1370 	add	a,r2
   13BB FD                 1371 	mov	r5,a
   13BC E4                 1372 	clr	a
   13BD 3B                 1373 	addc	a,r3
   13BE FE                 1374 	mov	r6,a
   13BF 8C 07              1375 	mov	ar7,r4
   13C1 8D 82              1376 	mov	dpl,r5
   13C3 8E 83              1377 	mov	dph,r6
   13C5 8F F0              1378 	mov	b,r7
   13C7 74 76              1379 	mov	a,#_calculator_negated2
   13C9 12 38 0B           1380 	lcall	__gptrput
   13CC A3                 1381 	inc	dptr
   13CD 74 45              1382 	mov	a,#(_calculator_negated2 >> 8)
   13CF 12 38 0B           1383 	lcall	__gptrput
   13D2 A3                 1384 	inc	dptr
   13D3 74 80              1385 	mov	a,#0x80
   13D5 12 38 0B           1386 	lcall	__gptrput
   13D8 75 82 02           1387 	mov	dpl,#0x02
   13DB 02 14 60           1388 	ljmp	00113$
   13DE                    1389 00102$:
                           1390 ;	../sm_test_calculator.c:160: TRANSITION_ON(DIGIT_0,		UNCONDITIONALLY,						TO(zero2),				NO_ACTION) ;
   13DE A8 1F              1391 	mov	r0,_bp
   13E0 08                 1392 	inc	r0
   13E1 B6 06 25           1393 	cjne	@r0,#0x06,00105$
   13E4 74 09              1394 	mov	a,#0x09
   13E6 2A                 1395 	add	a,r2
   13E7 FD                 1396 	mov	r5,a
   13E8 E4                 1397 	clr	a
   13E9 3B                 1398 	addc	a,r3
   13EA FE                 1399 	mov	r6,a
   13EB 8C 07              1400 	mov	ar7,r4
   13ED 8D 82              1401 	mov	dpl,r5
   13EF 8E 83              1402 	mov	dph,r6
   13F1 8F F0              1403 	mov	b,r7
   13F3 74 88              1404 	mov	a,#_calculator_zero2
   13F5 12 38 0B           1405 	lcall	__gptrput
   13F8 A3                 1406 	inc	dptr
   13F9 74 45              1407 	mov	a,#(_calculator_zero2 >> 8)
   13FB 12 38 0B           1408 	lcall	__gptrput
   13FE A3                 1409 	inc	dptr
   13FF 74 80              1410 	mov	a,#0x80
   1401 12 38 0B           1411 	lcall	__gptrput
   1404 75 82 02           1412 	mov	dpl,#0x02
   1407 80 57              1413 	sjmp	00113$
   1409                    1414 00105$:
                           1415 ;	../sm_test_calculator.c:161: TRANSITION_ON(DIGIT_1_9,	UNCONDITIONALLY,						TO(int2),				NO_ACTION) ;
   1409 A8 1F              1416 	mov	r0,_bp
   140B 08                 1417 	inc	r0
   140C B6 07 25           1418 	cjne	@r0,#0x07,00108$
   140F 74 09              1419 	mov	a,#0x09
   1411 2A                 1420 	add	a,r2
   1412 FD                 1421 	mov	r5,a
   1413 E4                 1422 	clr	a
   1414 3B                 1423 	addc	a,r3
   1415 FE                 1424 	mov	r6,a
   1416 8C 07              1425 	mov	ar7,r4
   1418 8D 82              1426 	mov	dpl,r5
   141A 8E 83              1427 	mov	dph,r6
   141C 8F F0              1428 	mov	b,r7
   141E 74 91              1429 	mov	a,#_calculator_int2
   1420 12 38 0B           1430 	lcall	__gptrput
   1423 A3                 1431 	inc	dptr
   1424 74 45              1432 	mov	a,#(_calculator_int2 >> 8)
   1426 12 38 0B           1433 	lcall	__gptrput
   1429 A3                 1434 	inc	dptr
   142A 74 80              1435 	mov	a,#0x80
   142C 12 38 0B           1436 	lcall	__gptrput
   142F 75 82 02           1437 	mov	dpl,#0x02
   1432 80 2C              1438 	sjmp	00113$
   1434                    1439 00108$:
                           1440 ;	../sm_test_calculator.c:162: TRANSITION_ON(POINT,		UNCONDITIONALLY,						TO(frac2),				NO_ACTION) ;
   1434 A8 1F              1441 	mov	r0,_bp
   1436 08                 1442 	inc	r0
   1437 B6 08 23           1443 	cjne	@r0,#0x08,00111$
   143A 74 09              1444 	mov	a,#0x09
   143C 2A                 1445 	add	a,r2
   143D FA                 1446 	mov	r2,a
   143E E4                 1447 	clr	a
   143F 3B                 1448 	addc	a,r3
   1440 FB                 1449 	mov	r3,a
   1441 8A 82              1450 	mov	dpl,r2
   1443 8B 83              1451 	mov	dph,r3
   1445 8C F0              1452 	mov	b,r4
   1447 74 9A              1453 	mov	a,#_calculator_frac2
   1449 12 38 0B           1454 	lcall	__gptrput
   144C A3                 1455 	inc	dptr
   144D 74 45              1456 	mov	a,#(_calculator_frac2 >> 8)
   144F 12 38 0B           1457 	lcall	__gptrput
   1452 A3                 1458 	inc	dptr
   1453 74 80              1459 	mov	a,#0x80
   1455 12 38 0B           1460 	lcall	__gptrput
   1458 75 82 02           1461 	mov	dpl,#0x02
   145B 80 03              1462 	sjmp	00113$
   145D                    1463 00111$:
                           1464 ;	../sm_test_calculator.c:164: END_DEFINE_STATE()
   145D 75 82 00           1465 	mov	dpl,#0x00
   1460                    1466 00113$:
   1460 85 1F 81           1467 	mov	sp,_bp
   1463 D0 1F              1468 	pop	_bp
   1465 22                 1469 	ret
                           1470 ;------------------------------------------------------------
                           1471 ;Allocation info for local variables in function 'calculator_negated2_handler'
                           1472 ;------------------------------------------------------------
                           1473 ;event                     Allocated to stack - offset -5
                           1474 ;self                      Allocated to stack - offset 1
                           1475 ;stateResponseCode         Allocated to registers 
                           1476 ;sloc0                     Allocated to stack - offset 5
                           1477 ;------------------------------------------------------------
                           1478 ;	../sm_test_calculator.c:167: DEFINE_STATE(negated2)
                           1479 ;	-----------------------------------------
                           1480 ;	 function calculator_negated2_handler
                           1481 ;	-----------------------------------------
   1466                    1482 _calculator_negated2_handler:
   1466 C0 1F              1483 	push	_bp
   1468 85 81 1F           1484 	mov	_bp,sp
   146B C0 82              1485 	push	dpl
   146D C0 83              1486 	push	dph
   146F C0 F0              1487 	push	b
                           1488 ;	../sm_test_calculator.c:169: TRANSITION_ON(CLEAR_ENTRY,	UNCONDITIONALLY,						TO(opEntered),			NO_ACTION) ;
   1471 E5 1F              1489 	mov	a,_bp
   1473 24 FB              1490 	add	a,#0xfb
   1475 F8                 1491 	mov	r0,a
   1476 86 05              1492 	mov	ar5,@r0
   1478 08                 1493 	inc	r0
   1479 86 06              1494 	mov	ar6,@r0
   147B 08                 1495 	inc	r0
   147C 86 07              1496 	mov	ar7,@r0
   147E 8D 82              1497 	mov	dpl,r5
   1480 8E 83              1498 	mov	dph,r6
   1482 8F F0              1499 	mov	b,r7
   1484 12 44 37           1500 	lcall	__gptrget
   1487 FA                 1501 	mov	r2,a
   1488 BA 05 2B           1502 	cjne	r2,#0x05,00102$
   148B A8 1F              1503 	mov	r0,_bp
   148D 08                 1504 	inc	r0
   148E 74 09              1505 	mov	a,#0x09
   1490 26                 1506 	add	a,@r0
   1491 FA                 1507 	mov	r2,a
   1492 E4                 1508 	clr	a
   1493 08                 1509 	inc	r0
   1494 36                 1510 	addc	a,@r0
   1495 FB                 1511 	mov	r3,a
   1496 08                 1512 	inc	r0
   1497 86 04              1513 	mov	ar4,@r0
   1499 8A 82              1514 	mov	dpl,r2
   149B 8B 83              1515 	mov	dph,r3
   149D 8C F0              1516 	mov	b,r4
   149F 74 6D              1517 	mov	a,#_calculator_opEntered
   14A1 12 38 0B           1518 	lcall	__gptrput
   14A4 A3                 1519 	inc	dptr
   14A5 74 45              1520 	mov	a,#(_calculator_opEntered >> 8)
   14A7 12 38 0B           1521 	lcall	__gptrput
   14AA A3                 1522 	inc	dptr
   14AB 74 80              1523 	mov	a,#0x80
   14AD 12 38 0B           1524 	lcall	__gptrput
   14B0 75 82 02           1525 	mov	dpl,#0x02
   14B3 02 15 5B           1526 	ljmp	00116$
   14B6                    1527 00102$:
                           1528 ;	../sm_test_calculator.c:170: TRANSITION_ON(DIGIT_0,		UNCONDITIONALLY,						TO(zero2),				NO_ACTION) ;
   14B6 BA 06 2B           1529 	cjne	r2,#0x06,00105$
   14B9 A8 1F              1530 	mov	r0,_bp
   14BB 08                 1531 	inc	r0
   14BC 74 09              1532 	mov	a,#0x09
   14BE 26                 1533 	add	a,@r0
   14BF FA                 1534 	mov	r2,a
   14C0 E4                 1535 	clr	a
   14C1 08                 1536 	inc	r0
   14C2 36                 1537 	addc	a,@r0
   14C3 FB                 1538 	mov	r3,a
   14C4 08                 1539 	inc	r0
   14C5 86 04              1540 	mov	ar4,@r0
   14C7 8A 82              1541 	mov	dpl,r2
   14C9 8B 83              1542 	mov	dph,r3
   14CB 8C F0              1543 	mov	b,r4
   14CD 74 88              1544 	mov	a,#_calculator_zero2
   14CF 12 38 0B           1545 	lcall	__gptrput
   14D2 A3                 1546 	inc	dptr
   14D3 74 45              1547 	mov	a,#(_calculator_zero2 >> 8)
   14D5 12 38 0B           1548 	lcall	__gptrput
   14D8 A3                 1549 	inc	dptr
   14D9 74 80              1550 	mov	a,#0x80
   14DB 12 38 0B           1551 	lcall	__gptrput
   14DE 75 82 02           1552 	mov	dpl,#0x02
   14E1 02 15 5B           1553 	ljmp	00116$
   14E4                    1554 00105$:
                           1555 ;	../sm_test_calculator.c:171: TRANSITION_ON(DIGIT_1_9,	UNCONDITIONALLY,						TO(int2),				NO_ACTION) ;
   14E4 BA 07 2A           1556 	cjne	r2,#0x07,00108$
   14E7 A8 1F              1557 	mov	r0,_bp
   14E9 08                 1558 	inc	r0
   14EA 74 09              1559 	mov	a,#0x09
   14EC 26                 1560 	add	a,@r0
   14ED FA                 1561 	mov	r2,a
   14EE E4                 1562 	clr	a
   14EF 08                 1563 	inc	r0
   14F0 36                 1564 	addc	a,@r0
   14F1 FB                 1565 	mov	r3,a
   14F2 08                 1566 	inc	r0
   14F3 86 04              1567 	mov	ar4,@r0
   14F5 8A 82              1568 	mov	dpl,r2
   14F7 8B 83              1569 	mov	dph,r3
   14F9 8C F0              1570 	mov	b,r4
   14FB 74 91              1571 	mov	a,#_calculator_int2
   14FD 12 38 0B           1572 	lcall	__gptrput
   1500 A3                 1573 	inc	dptr
   1501 74 45              1574 	mov	a,#(_calculator_int2 >> 8)
   1503 12 38 0B           1575 	lcall	__gptrput
   1506 A3                 1576 	inc	dptr
   1507 74 80              1577 	mov	a,#0x80
   1509 12 38 0B           1578 	lcall	__gptrput
   150C 75 82 02           1579 	mov	dpl,#0x02
   150F 80 4A              1580 	sjmp	00116$
   1511                    1581 00108$:
                           1582 ;	../sm_test_calculator.c:172: TRANSITION_ON(POINT,		UNCONDITIONALLY,						TO(frac2),				NO_ACTION) ;
   1511 BA 08 2A           1583 	cjne	r2,#0x08,00111$
   1514 A8 1F              1584 	mov	r0,_bp
   1516 08                 1585 	inc	r0
   1517 74 09              1586 	mov	a,#0x09
   1519 26                 1587 	add	a,@r0
   151A FA                 1588 	mov	r2,a
   151B E4                 1589 	clr	a
   151C 08                 1590 	inc	r0
   151D 36                 1591 	addc	a,@r0
   151E FB                 1592 	mov	r3,a
   151F 08                 1593 	inc	r0
   1520 86 04              1594 	mov	ar4,@r0
   1522 8A 82              1595 	mov	dpl,r2
   1524 8B 83              1596 	mov	dph,r3
   1526 8C F0              1597 	mov	b,r4
   1528 74 9A              1598 	mov	a,#_calculator_frac2
   152A 12 38 0B           1599 	lcall	__gptrput
   152D A3                 1600 	inc	dptr
   152E 74 45              1601 	mov	a,#(_calculator_frac2 >> 8)
   1530 12 38 0B           1602 	lcall	__gptrput
   1533 A3                 1603 	inc	dptr
   1534 74 80              1604 	mov	a,#0x80
   1536 12 38 0B           1605 	lcall	__gptrput
   1539 75 82 02           1606 	mov	dpl,#0x02
   153C 80 1D              1607 	sjmp	00116$
   153E                    1608 00111$:
                           1609 ;	../sm_test_calculator.c:173: CONSUME_EVENT_IF(OPERATION,	IF(EVENT_IS(keyEvent_t)->key == '-'),							NO_ACTION) ;
   153E BA 09 17           1610 	cjne	r2,#0x09,00114$
   1541 0D                 1611 	inc	r5
   1542 BD 00 01           1612 	cjne	r5,#0x00,00134$
   1545 0E                 1613 	inc	r6
   1546                    1614 00134$:
   1546 8D 82              1615 	mov	dpl,r5
   1548 8E 83              1616 	mov	dph,r6
   154A 8F F0              1617 	mov	b,r7
   154C 12 44 37           1618 	lcall	__gptrget
   154F FD                 1619 	mov	r5,a
   1550 BD 2D 05           1620 	cjne	r5,#0x2D,00114$
   1553 75 82 01           1621 	mov	dpl,#0x01
   1556 80 03              1622 	sjmp	00116$
   1558                    1623 00114$:
                           1624 ;	../sm_test_calculator.c:175: END_DEFINE_STATE()
   1558 75 82 00           1625 	mov	dpl,#0x00
   155B                    1626 00116$:
   155B 85 1F 81           1627 	mov	sp,_bp
   155E D0 1F              1628 	pop	_bp
   1560 22                 1629 	ret
                           1630 ;------------------------------------------------------------
                           1631 ;Allocation info for local variables in function 'doCalculation'
                           1632 ;------------------------------------------------------------
                           1633 ;type                      Allocated with name '_doCalculation_type_1_1'
                           1634 ;------------------------------------------------------------
                           1635 ;	../sm_test_calculator.c:178: uint8_t doCalculation(	uint8_t type)
                           1636 ;	-----------------------------------------
                           1637 ;	 function doCalculation
                           1638 ;	-----------------------------------------
   1561                    1639 _doCalculation:
   1561 E5 82              1640 	mov	a,dpl
   1563 90 09 12           1641 	mov	dptr,#_doCalculation_type_1_1
   1566 F0                 1642 	movx	@dptr,a
                           1643 ;	../sm_test_calculator.c:180: switch(type)
   1567 90 09 12           1644 	mov	dptr,#_doCalculation_type_1_1
   156A E0                 1645 	movx	a,@dptr
   156B FA                 1646 	mov	r2,a
   156C BA 2A 02           1647 	cjne	r2,#0x2A,00113$
   156F 80 17              1648 	sjmp	00103$
   1571                    1649 00113$:
   1571 BA 2B 02           1650 	cjne	r2,#0x2B,00114$
   1574 80 0A              1651 	sjmp	00101$
   1576                    1652 00114$:
   1576 BA 2D 02           1653 	cjne	r2,#0x2D,00115$
   1579 80 09              1654 	sjmp	00102$
   157B                    1655 00115$:
                           1656 ;	../sm_test_calculator.c:182: case '+': { return true ; }
   157B BA 2F 12           1657 	cjne	r2,#0x2F,00105$
   157E 80 0C              1658 	sjmp	00104$
   1580                    1659 00101$:
   1580 75 82 01           1660 	mov	dpl,#0x01
                           1661 ;	../sm_test_calculator.c:183: case '-': { return true ; }
   1583 22                 1662 	ret
   1584                    1663 00102$:
   1584 75 82 01           1664 	mov	dpl,#0x01
                           1665 ;	../sm_test_calculator.c:184: case '*': { return true ; }
   1587 22                 1666 	ret
   1588                    1667 00103$:
   1588 75 82 01           1668 	mov	dpl,#0x01
                           1669 ;	../sm_test_calculator.c:185: case '/': { return true ; }
   158B 22                 1670 	ret
   158C                    1671 00104$:
   158C 75 82 01           1672 	mov	dpl,#0x01
                           1673 ;	../sm_test_calculator.c:186: default:  { return false ; }
                           1674 ;	../sm_test_calculator.c:187: }
   158F 22                 1675 	ret
   1590                    1676 00105$:
   1590 75 82 00           1677 	mov	dpl,#0x00
   1593 22                 1678 	ret
                           1679 ;------------------------------------------------------------
                           1680 ;Allocation info for local variables in function 'calculator_operand2_handler'
                           1681 ;------------------------------------------------------------
                           1682 ;event                     Allocated to stack - offset -5
                           1683 ;self                      Allocated to stack - offset 1
                           1684 ;stateResponseCode         Allocated to registers 
                           1685 ;goodCalc                  Allocated to registers r2 
                           1686 ;sloc0                     Allocated to stack - offset 6
                           1687 ;------------------------------------------------------------
                           1688 ;	../sm_test_calculator.c:191: DEFINE_STATE(operand2)
                           1689 ;	-----------------------------------------
                           1690 ;	 function calculator_operand2_handler
                           1691 ;	-----------------------------------------
   1594                    1692 _calculator_operand2_handler:
   1594 C0 1F              1693 	push	_bp
   1596 85 81 1F           1694 	mov	_bp,sp
   1599 C0 82              1695 	push	dpl
   159B C0 83              1696 	push	dph
   159D C0 F0              1697 	push	b
                           1698 ;	../sm_test_calculator.c:193: TRANSITION_ON(CLEAR_ENTRY,	UNCONDITIONALLY,						TO(opEntered),			NO_ACTION) ;
   159F E5 1F              1699 	mov	a,_bp
   15A1 24 FB              1700 	add	a,#0xfb
   15A3 F8                 1701 	mov	r0,a
   15A4 86 05              1702 	mov	ar5,@r0
   15A6 08                 1703 	inc	r0
   15A7 86 06              1704 	mov	ar6,@r0
   15A9 08                 1705 	inc	r0
   15AA 86 07              1706 	mov	ar7,@r0
   15AC 8D 82              1707 	mov	dpl,r5
   15AE 8E 83              1708 	mov	dph,r6
   15B0 8F F0              1709 	mov	b,r7
   15B2 12 44 37           1710 	lcall	__gptrget
   15B5 FA                 1711 	mov	r2,a
   15B6 BA 05 2B           1712 	cjne	r2,#0x05,00102$
   15B9 A8 1F              1713 	mov	r0,_bp
   15BB 08                 1714 	inc	r0
   15BC 74 09              1715 	mov	a,#0x09
   15BE 26                 1716 	add	a,@r0
   15BF FA                 1717 	mov	r2,a
   15C0 E4                 1718 	clr	a
   15C1 08                 1719 	inc	r0
   15C2 36                 1720 	addc	a,@r0
   15C3 FB                 1721 	mov	r3,a
   15C4 08                 1722 	inc	r0
   15C5 86 04              1723 	mov	ar4,@r0
   15C7 8A 82              1724 	mov	dpl,r2
   15C9 8B 83              1725 	mov	dph,r3
   15CB 8C F0              1726 	mov	b,r4
   15CD 74 6D              1727 	mov	a,#_calculator_opEntered
   15CF 12 38 0B           1728 	lcall	__gptrput
   15D2 A3                 1729 	inc	dptr
   15D3 74 45              1730 	mov	a,#(_calculator_opEntered >> 8)
   15D5 12 38 0B           1731 	lcall	__gptrput
   15D8 A3                 1732 	inc	dptr
   15D9 74 80              1733 	mov	a,#0x80
   15DB 12 38 0B           1734 	lcall	__gptrput
   15DE 75 82 02           1735 	mov	dpl,#0x02
   15E1 02 16 AF           1736 	ljmp	00117$
   15E4                    1737 00102$:
                           1738 ;	../sm_test_calculator.c:195: HANDLE_STATE_EVENTS
   15E4 BA 09 02           1739 	cjne	r2,#0x09,00126$
   15E7 80 08              1740 	sjmp	00105$
   15E9                    1741 00126$:
   15E9 BA 0A 02           1742 	cjne	r2,#0x0A,00127$
   15EC 80 03              1743 	sjmp	00128$
   15EE                    1744 00127$:
   15EE 02 16 AC           1745 	ljmp	00116$
   15F1                    1746 00128$:
                           1747 ;	../sm_test_calculator.c:198: EVENT(EQUALS)
   15F1                    1748 00105$:
                           1749 ;	../sm_test_calculator.c:200: uint8_t goodCalc = doCalculation(EVENT_IS(keyEvent_t)->key) ;
   15F1 74 01              1750 	mov	a,#0x01
   15F3 2D                 1751 	add	a,r5
   15F4 FA                 1752 	mov	r2,a
   15F5 E4                 1753 	clr	a
   15F6 3E                 1754 	addc	a,r6
   15F7 FB                 1755 	mov	r3,a
   15F8 8F 04              1756 	mov	ar4,r7
   15FA 8A 82              1757 	mov	dpl,r2
   15FC 8B 83              1758 	mov	dph,r3
   15FE 8C F0              1759 	mov	b,r4
   1600 12 44 37           1760 	lcall	__gptrget
   1603 F5 82              1761 	mov	dpl,a
   1605 C0 05              1762 	push	ar5
   1607 C0 06              1763 	push	ar6
   1609 C0 07              1764 	push	ar7
   160B 12 15 61           1765 	lcall	_doCalculation
   160E AA 82              1766 	mov	r2,dpl
   1610 D0 07              1767 	pop	ar7
   1612 D0 06              1768 	pop	ar6
   1614 D0 05              1769 	pop	ar5
                           1770 ;	../sm_test_calculator.c:202: if(goodCalc)
   1616 EA                 1771 	mov	a,r2
   1617 60 64              1772 	jz	00113$
                           1773 ;	../sm_test_calculator.c:204: TRANSITION_ON(OPERATION,	UNCONDITIONALLY,			TO(opEntered),			NO_ACTION) ;
   1619 8D 82              1774 	mov	dpl,r5
   161B 8E 83              1775 	mov	dph,r6
   161D 8F F0              1776 	mov	b,r7
   161F 12 44 37           1777 	lcall	__gptrget
   1622 FA                 1778 	mov	r2,a
   1623 BA 09 2A           1779 	cjne	r2,#0x09,00107$
   1626 A8 1F              1780 	mov	r0,_bp
   1628 08                 1781 	inc	r0
   1629 74 09              1782 	mov	a,#0x09
   162B 26                 1783 	add	a,@r0
   162C FB                 1784 	mov	r3,a
   162D E4                 1785 	clr	a
   162E 08                 1786 	inc	r0
   162F 36                 1787 	addc	a,@r0
   1630 FC                 1788 	mov	r4,a
   1631 08                 1789 	inc	r0
   1632 86 05              1790 	mov	ar5,@r0
   1634 8B 82              1791 	mov	dpl,r3
   1636 8C 83              1792 	mov	dph,r4
   1638 8D F0              1793 	mov	b,r5
   163A 74 6D              1794 	mov	a,#_calculator_opEntered
   163C 12 38 0B           1795 	lcall	__gptrput
   163F A3                 1796 	inc	dptr
   1640 74 45              1797 	mov	a,#(_calculator_opEntered >> 8)
   1642 12 38 0B           1798 	lcall	__gptrput
   1645 A3                 1799 	inc	dptr
   1646 74 80              1800 	mov	a,#0x80
   1648 12 38 0B           1801 	lcall	__gptrput
   164B 75 82 02           1802 	mov	dpl,#0x02
   164E 80 5F              1803 	sjmp	00117$
   1650                    1804 00107$:
                           1805 ;	../sm_test_calculator.c:205: TRANSITION_ON(EQUALS,		UNCONDITIONALLY,			TO(result),				NO_ACTION) ;
   1650 BA 0A 54           1806 	cjne	r2,#0x0A,00114$
   1653 A8 1F              1807 	mov	r0,_bp
   1655 08                 1808 	inc	r0
   1656 74 09              1809 	mov	a,#0x09
   1658 26                 1810 	add	a,@r0
   1659 FA                 1811 	mov	r2,a
   165A E4                 1812 	clr	a
   165B 08                 1813 	inc	r0
   165C 36                 1814 	addc	a,@r0
   165D FB                 1815 	mov	r3,a
   165E 08                 1816 	inc	r0
   165F 86 04              1817 	mov	ar4,@r0
   1661 8A 82              1818 	mov	dpl,r2
   1663 8B 83              1819 	mov	dph,r3
   1665 8C F0              1820 	mov	b,r4
   1667 74 25              1821 	mov	a,#_calculator_result
   1669 12 38 0B           1822 	lcall	__gptrput
   166C A3                 1823 	inc	dptr
   166D 74 45              1824 	mov	a,#(_calculator_result >> 8)
   166F 12 38 0B           1825 	lcall	__gptrput
   1672 A3                 1826 	inc	dptr
   1673 74 80              1827 	mov	a,#0x80
   1675 12 38 0B           1828 	lcall	__gptrput
   1678 75 82 02           1829 	mov	dpl,#0x02
   167B 80 32              1830 	sjmp	00117$
   167D                    1831 00113$:
                           1832 ;	../sm_test_calculator.c:209: TRANSITION_TO(error, NO_ACTION) ;
   167D A8 1F              1833 	mov	r0,_bp
   167F 08                 1834 	inc	r0
   1680 74 09              1835 	mov	a,#0x09
   1682 26                 1836 	add	a,@r0
   1683 FA                 1837 	mov	r2,a
   1684 E4                 1838 	clr	a
   1685 08                 1839 	inc	r0
   1686 36                 1840 	addc	a,@r0
   1687 FB                 1841 	mov	r3,a
   1688 08                 1842 	inc	r0
   1689 86 04              1843 	mov	ar4,@r0
   168B 8A 82              1844 	mov	dpl,r2
   168D 8B 83              1845 	mov	dph,r3
   168F 8C F0              1846 	mov	b,r4
   1691 74 64              1847 	mov	a,#_calculator_error
   1693 12 38 0B           1848 	lcall	__gptrput
   1696 A3                 1849 	inc	dptr
   1697 74 45              1850 	mov	a,#(_calculator_error >> 8)
   1699 12 38 0B           1851 	lcall	__gptrput
   169C A3                 1852 	inc	dptr
   169D 74 80              1853 	mov	a,#0x80
   169F 12 38 0B           1854 	lcall	__gptrput
   16A2 75 82 02           1855 	mov	dpl,#0x02
   16A5 80 08              1856 	sjmp	00117$
   16A7                    1857 00114$:
                           1858 ;	../sm_test_calculator.c:212: EVENT_HANDLED
   16A7 75 82 01           1859 	mov	dpl,#0x01
                           1860 ;	../sm_test_calculator.c:214: HANDLE_STATE_EVENTS_DONE
   16AA 80 03              1861 	sjmp	00117$
   16AC                    1862 00116$:
                           1863 ;	../sm_test_calculator.c:216: END_DEFINE_STATE()
   16AC 75 82 00           1864 	mov	dpl,#0x00
   16AF                    1865 00117$:
   16AF 85 1F 81           1866 	mov	sp,_bp
   16B2 D0 1F              1867 	pop	_bp
   16B4 22                 1868 	ret
                           1869 ;------------------------------------------------------------
                           1870 ;Allocation info for local variables in function 'calculator_zero2_handler'
                           1871 ;------------------------------------------------------------
                           1872 ;event                     Allocated to stack - offset -5
                           1873 ;self                      Allocated to stack - offset 1
                           1874 ;stateResponseCode         Allocated to registers 
                           1875 ;------------------------------------------------------------
                           1876 ;	../sm_test_calculator.c:219: DEFINE_STATE(zero2)
                           1877 ;	-----------------------------------------
                           1878 ;	 function calculator_zero2_handler
                           1879 ;	-----------------------------------------
   16B5                    1880 _calculator_zero2_handler:
   16B5 C0 1F              1881 	push	_bp
   16B7 85 81 1F           1882 	mov	_bp,sp
   16BA C0 82              1883 	push	dpl
   16BC C0 83              1884 	push	dph
   16BE C0 F0              1885 	push	b
                           1886 ;	../sm_test_calculator.c:221: INITIAL_TRANSITION(TO(negated1),															NO_ACTION) ;
   16C0 E5 1F              1887 	mov	a,_bp
   16C2 24 FB              1888 	add	a,#0xfb
   16C4 F8                 1889 	mov	r0,a
   16C5 86 05              1890 	mov	ar5,@r0
   16C7 08                 1891 	inc	r0
   16C8 86 06              1892 	mov	ar6,@r0
   16CA 08                 1893 	inc	r0
   16CB 86 07              1894 	mov	ar7,@r0
   16CD 8D 82              1895 	mov	dpl,r5
   16CF 8E 83              1896 	mov	dph,r6
   16D1 8F F0              1897 	mov	b,r7
   16D3 12 44 37           1898 	lcall	__gptrget
   16D6 FD                 1899 	mov	r5,a
   16D7 BD 02 2A           1900 	cjne	r5,#0x02,00102$
   16DA A8 1F              1901 	mov	r0,_bp
   16DC 08                 1902 	inc	r0
   16DD 74 09              1903 	mov	a,#0x09
   16DF 26                 1904 	add	a,@r0
   16E0 FE                 1905 	mov	r6,a
   16E1 E4                 1906 	clr	a
   16E2 08                 1907 	inc	r0
   16E3 36                 1908 	addc	a,@r0
   16E4 FF                 1909 	mov	r7,a
   16E5 08                 1910 	inc	r0
   16E6 86 02              1911 	mov	ar2,@r0
   16E8 8E 82              1912 	mov	dpl,r6
   16EA 8F 83              1913 	mov	dph,r7
   16EC 8A F0              1914 	mov	b,r2
   16EE 74 37              1915 	mov	a,#_calculator_negated1
   16F0 12 38 0B           1916 	lcall	__gptrput
   16F3 A3                 1917 	inc	dptr
   16F4 74 45              1918 	mov	a,#(_calculator_negated1 >> 8)
   16F6 12 38 0B           1919 	lcall	__gptrput
   16F9 A3                 1920 	inc	dptr
   16FA 74 80              1921 	mov	a,#0x80
   16FC 12 38 0B           1922 	lcall	__gptrput
   16FF 75 82 02           1923 	mov	dpl,#0x02
   1702 80 65              1924 	sjmp	00111$
   1704                    1925 00102$:
                           1926 ;	../sm_test_calculator.c:222: CONSUME_EVENT(DIGIT_0,																		NO_ACTION) ;
   1704 BD 06 05           1927 	cjne	r5,#0x06,00104$
   1707 75 82 01           1928 	mov	dpl,#0x01
   170A 80 5D              1929 	sjmp	00111$
   170C                    1930 00104$:
                           1931 ;	../sm_test_calculator.c:223: TRANSITION_ON(DIGIT_1_9,	UNCONDITIONALLY,						TO(int2),				NO_ACTION) ;
   170C BD 07 2A           1932 	cjne	r5,#0x07,00106$
   170F A8 1F              1933 	mov	r0,_bp
   1711 08                 1934 	inc	r0
   1712 74 09              1935 	mov	a,#0x09
   1714 26                 1936 	add	a,@r0
   1715 FA                 1937 	mov	r2,a
   1716 E4                 1938 	clr	a
   1717 08                 1939 	inc	r0
   1718 36                 1940 	addc	a,@r0
   1719 FB                 1941 	mov	r3,a
   171A 08                 1942 	inc	r0
   171B 86 04              1943 	mov	ar4,@r0
   171D 8A 82              1944 	mov	dpl,r2
   171F 8B 83              1945 	mov	dph,r3
   1721 8C F0              1946 	mov	b,r4
   1723 74 91              1947 	mov	a,#_calculator_int2
   1725 12 38 0B           1948 	lcall	__gptrput
   1728 A3                 1949 	inc	dptr
   1729 74 45              1950 	mov	a,#(_calculator_int2 >> 8)
   172B 12 38 0B           1951 	lcall	__gptrput
   172E A3                 1952 	inc	dptr
   172F 74 80              1953 	mov	a,#0x80
   1731 12 38 0B           1954 	lcall	__gptrput
   1734 75 82 02           1955 	mov	dpl,#0x02
   1737 80 30              1956 	sjmp	00111$
   1739                    1957 00106$:
                           1958 ;	../sm_test_calculator.c:224: TRANSITION_ON(POINT,		UNCONDITIONALLY,						TO(frac2),				NO_ACTION) ;
   1739 BD 08 2A           1959 	cjne	r5,#0x08,00109$
   173C A8 1F              1960 	mov	r0,_bp
   173E 08                 1961 	inc	r0
   173F 74 09              1962 	mov	a,#0x09
   1741 26                 1963 	add	a,@r0
   1742 FA                 1964 	mov	r2,a
   1743 E4                 1965 	clr	a
   1744 08                 1966 	inc	r0
   1745 36                 1967 	addc	a,@r0
   1746 FB                 1968 	mov	r3,a
   1747 08                 1969 	inc	r0
   1748 86 04              1970 	mov	ar4,@r0
   174A 8A 82              1971 	mov	dpl,r2
   174C 8B 83              1972 	mov	dph,r3
   174E 8C F0              1973 	mov	b,r4
   1750 74 9A              1974 	mov	a,#_calculator_frac2
   1752 12 38 0B           1975 	lcall	__gptrput
   1755 A3                 1976 	inc	dptr
   1756 74 45              1977 	mov	a,#(_calculator_frac2 >> 8)
   1758 12 38 0B           1978 	lcall	__gptrput
   175B A3                 1979 	inc	dptr
   175C 74 80              1980 	mov	a,#0x80
   175E 12 38 0B           1981 	lcall	__gptrput
   1761 75 82 02           1982 	mov	dpl,#0x02
   1764 80 03              1983 	sjmp	00111$
   1766                    1984 00109$:
                           1985 ;	../sm_test_calculator.c:226: END_DEFINE_STATE()
   1766 75 82 00           1986 	mov	dpl,#0x00
   1769                    1987 00111$:
   1769 85 1F 81           1988 	mov	sp,_bp
   176C D0 1F              1989 	pop	_bp
   176E 22                 1990 	ret
                           1991 ;------------------------------------------------------------
                           1992 ;Allocation info for local variables in function 'calculator_int2_handler'
                           1993 ;------------------------------------------------------------
                           1994 ;event                     Allocated to stack - offset -5
                           1995 ;self                      Allocated to registers r2 r3 r4 
                           1996 ;stateResponseCode         Allocated to registers 
                           1997 ;------------------------------------------------------------
                           1998 ;	../sm_test_calculator.c:229: DEFINE_STATE(int2)
                           1999 ;	-----------------------------------------
                           2000 ;	 function calculator_int2_handler
                           2001 ;	-----------------------------------------
   176F                    2002 _calculator_int2_handler:
   176F C0 1F              2003 	push	_bp
   1771 85 81 1F           2004 	mov	_bp,sp
   1774 AA 82              2005 	mov	r2,dpl
   1776 AB 83              2006 	mov	r3,dph
   1778 AC F0              2007 	mov	r4,b
                           2008 ;	../sm_test_calculator.c:231: TRANSITION_ON(POINT,		UNCONDITIONALLY,						TO(frac2),				NO_ACTION) ;
   177A E5 1F              2009 	mov	a,_bp
   177C 24 FB              2010 	add	a,#0xfb
   177E F8                 2011 	mov	r0,a
   177F 86 05              2012 	mov	ar5,@r0
   1781 08                 2013 	inc	r0
   1782 86 06              2014 	mov	ar6,@r0
   1784 08                 2015 	inc	r0
   1785 86 07              2016 	mov	ar7,@r0
   1787 8D 82              2017 	mov	dpl,r5
   1789 8E 83              2018 	mov	dph,r6
   178B 8F F0              2019 	mov	b,r7
   178D 12 44 37           2020 	lcall	__gptrget
   1790 FD                 2021 	mov	r5,a
   1791 BD 08 23           2022 	cjne	r5,#0x08,00102$
   1794 74 09              2023 	mov	a,#0x09
   1796 2A                 2024 	add	a,r2
   1797 FA                 2025 	mov	r2,a
   1798 E4                 2026 	clr	a
   1799 3B                 2027 	addc	a,r3
   179A FB                 2028 	mov	r3,a
   179B 8A 82              2029 	mov	dpl,r2
   179D 8B 83              2030 	mov	dph,r3
   179F 8C F0              2031 	mov	b,r4
   17A1 74 9A              2032 	mov	a,#_calculator_frac2
   17A3 12 38 0B           2033 	lcall	__gptrput
   17A6 A3                 2034 	inc	dptr
   17A7 74 45              2035 	mov	a,#(_calculator_frac2 >> 8)
   17A9 12 38 0B           2036 	lcall	__gptrput
   17AC A3                 2037 	inc	dptr
   17AD 74 80              2038 	mov	a,#0x80
   17AF 12 38 0B           2039 	lcall	__gptrput
   17B2 75 82 02           2040 	mov	dpl,#0x02
   17B5 80 03              2041 	sjmp	00104$
   17B7                    2042 00102$:
                           2043 ;	../sm_test_calculator.c:233: END_DEFINE_STATE()
   17B7 75 82 00           2044 	mov	dpl,#0x00
   17BA                    2045 00104$:
   17BA D0 1F              2046 	pop	_bp
   17BC 22                 2047 	ret
                           2048 ;------------------------------------------------------------
                           2049 ;Allocation info for local variables in function 'calculator_frac2_handler'
                           2050 ;------------------------------------------------------------
                           2051 ;event                     Allocated to stack - offset -5
                           2052 ;self                      Allocated to registers 
                           2053 ;stateResponseCode         Allocated to registers 
                           2054 ;------------------------------------------------------------
                           2055 ;	../sm_test_calculator.c:236: DEFINE_STATE(frac2)
                           2056 ;	-----------------------------------------
                           2057 ;	 function calculator_frac2_handler
                           2058 ;	-----------------------------------------
   17BD                    2059 _calculator_frac2_handler:
   17BD C0 1F              2060 	push	_bp
   17BF 85 81 1F           2061 	mov	_bp,sp
                           2062 ;	../sm_test_calculator.c:238: CONSUME_EVENT(POINT,																		NO_ACTION) ;
   17C2 E5 1F              2063 	mov	a,_bp
   17C4 24 FB              2064 	add	a,#0xfb
   17C6 F8                 2065 	mov	r0,a
   17C7 86 02              2066 	mov	ar2,@r0
   17C9 08                 2067 	inc	r0
   17CA 86 03              2068 	mov	ar3,@r0
   17CC 08                 2069 	inc	r0
   17CD 86 04              2070 	mov	ar4,@r0
   17CF 8A 82              2071 	mov	dpl,r2
   17D1 8B 83              2072 	mov	dph,r3
   17D3 8C F0              2073 	mov	b,r4
   17D5 12 44 37           2074 	lcall	__gptrget
   17D8 FA                 2075 	mov	r2,a
   17D9 BA 08 05           2076 	cjne	r2,#0x08,00102$
   17DC 75 82 01           2077 	mov	dpl,#0x01
   17DF 80 03              2078 	sjmp	00103$
   17E1                    2079 00102$:
                           2080 ;	../sm_test_calculator.c:240: END_DEFINE_STATE()
   17E1 75 82 00           2081 	mov	dpl,#0x00
   17E4                    2082 00103$:
   17E4 D0 1F              2083 	pop	_bp
   17E6 22                 2084 	ret
                           2085 	.area CSEG    (CODE)
                           2086 	.area CONST   (CODE)
   450A                    2087 _calculator_TOP:
                           2088 ; generic printIvalPtr
   450A 00 00 00           2089 	.byte #0x00,#0x00,#0x00
   450D 00                 2090 	.db #0x00
   450E C9 0D              2091 	.byte _calculator_TOP_handler,(_calculator_TOP_handler >> 8)
   4510 AE 45 80           2092 	.byte _str_1,(_str_1 >> 8),#0x80
   4513                    2093 _calculator_on:
   4513 0A 45 80           2094 	.byte _calculator_TOP,(_calculator_TOP >> 8),#0x80
   4516 00                 2095 	.db #0x00
   4517 17 0E              2096 	.byte _calculator_on_handler,(_calculator_on_handler >> 8)
   4519 BD 45 80           2097 	.byte _str_2,(_str_2 >> 8),#0x80
   451C                    2098 _calculator_ready:
   451C 13 45 80           2099 	.byte _calculator_on,(_calculator_on >> 8),#0x80
   451F 00                 2100 	.db #0x00
   4520 C9 0E              2101 	.byte _calculator_ready_handler,(_calculator_ready_handler >> 8)
   4522 CB 45 80           2102 	.byte _str_3,(_str_3 >> 8),#0x80
   4525                    2103 _calculator_result:
   4525 1C 45 80           2104 	.byte _calculator_ready,(_calculator_ready >> 8),#0x80
   4528 00                 2105 	.db #0x00
   4529 4E 0F              2106 	.byte _calculator_result_handler,(_calculator_result_handler >> 8)
   452B DC 45 80           2107 	.byte _str_4,(_str_4 >> 8),#0x80
   452E                    2108 _calculator_begin:
   452E 1C 45 80           2109 	.byte _calculator_ready,(_calculator_ready >> 8),#0x80
   4531 00                 2110 	.db #0x00
   4532 59 0F              2111 	.byte _calculator_begin_handler,(_calculator_begin_handler >> 8)
   4534 EE 45 80           2112 	.byte _str_5,(_str_5 >> 8),#0x80
   4537                    2113 _calculator_negated1:
   4537 13 45 80           2114 	.byte _calculator_on,(_calculator_on >> 8),#0x80
   453A 00                 2115 	.db #0x00
   453B 79 10              2116 	.byte _calculator_negated1_handler,(_calculator_negated1_handler >> 8)
   453D FF 45 80           2117 	.byte _str_6,(_str_6 >> 8),#0x80
   4540                    2118 _calculator_operand1:
   4540 13 45 80           2119 	.byte _calculator_on,(_calculator_on >> 8),#0x80
   4543 00                 2120 	.db #0x00
   4544 74 11              2121 	.byte _calculator_operand1_handler,(_calculator_operand1_handler >> 8)
   4546 13 46 80           2122 	.byte _str_7,(_str_7 >> 8),#0x80
   4549                    2123 _calculator_zero1:
   4549 40 45 80           2124 	.byte _calculator_operand1,(_calculator_operand1 >> 8),#0x80
   454C 00                 2125 	.db #0x00
   454D F9 11              2126 	.byte _calculator_zero1_handler,(_calculator_zero1_handler >> 8)
   454F 27 46 80           2127 	.byte _str_8,(_str_8 >> 8),#0x80
   4552                    2128 _calculator_int1:
   4552 40 45 80           2129 	.byte _calculator_operand1,(_calculator_operand1 >> 8),#0x80
   4555 00                 2130 	.db #0x00
   4556 B3 12              2131 	.byte _calculator_int1_handler,(_calculator_int1_handler >> 8)
   4558 38 46 80           2132 	.byte _str_9,(_str_9 >> 8),#0x80
   455B                    2133 _calculator_frac1:
   455B 40 45 80           2134 	.byte _calculator_operand1,(_calculator_operand1 >> 8),#0x80
   455E 00                 2135 	.db #0x00
   455F 01 13              2136 	.byte _calculator_frac1_handler,(_calculator_frac1_handler >> 8)
   4561 48 46 80           2137 	.byte _str_10,(_str_10 >> 8),#0x80
   4564                    2138 _calculator_error:
   4564 13 45 80           2139 	.byte _calculator_on,(_calculator_on >> 8),#0x80
   4567 00                 2140 	.db #0x00
   4568 2B 13              2141 	.byte _calculator_error_handler,(_calculator_error_handler >> 8)
   456A 59 46 80           2142 	.byte _str_11,(_str_11 >> 8),#0x80
   456D                    2143 _calculator_opEntered:
   456D 13 45 80           2144 	.byte _calculator_on,(_calculator_on >> 8),#0x80
   4570 00                 2145 	.db #0x00
   4571 79 13              2146 	.byte _calculator_opEntered_handler,(_calculator_opEntered_handler >> 8)
   4573 6A 46 80           2147 	.byte _str_12,(_str_12 >> 8),#0x80
   4576                    2148 _calculator_negated2:
   4576 13 45 80           2149 	.byte _calculator_on,(_calculator_on >> 8),#0x80
   4579 00                 2150 	.db #0x00
   457A 66 14              2151 	.byte _calculator_negated2_handler,(_calculator_negated2_handler >> 8)
   457C 7F 46 80           2152 	.byte _str_13,(_str_13 >> 8),#0x80
   457F                    2153 _calculator_operand2:
   457F 13 45 80           2154 	.byte _calculator_on,(_calculator_on >> 8),#0x80
   4582 00                 2155 	.db #0x00
   4583 94 15              2156 	.byte _calculator_operand2_handler,(_calculator_operand2_handler >> 8)
   4585 93 46 80           2157 	.byte _str_14,(_str_14 >> 8),#0x80
   4588                    2158 _calculator_zero2:
   4588 7F 45 80           2159 	.byte _calculator_operand2,(_calculator_operand2 >> 8),#0x80
   458B 00                 2160 	.db #0x00
   458C B5 16              2161 	.byte _calculator_zero2_handler,(_calculator_zero2_handler >> 8)
   458E A7 46 80           2162 	.byte _str_15,(_str_15 >> 8),#0x80
   4591                    2163 _calculator_int2:
   4591 7F 45 80           2164 	.byte _calculator_operand2,(_calculator_operand2 >> 8),#0x80
   4594 00                 2165 	.db #0x00
   4595 6F 17              2166 	.byte _calculator_int2_handler,(_calculator_int2_handler >> 8)
   4597 B8 46 80           2167 	.byte _str_16,(_str_16 >> 8),#0x80
   459A                    2168 _calculator_frac2:
   459A 7F 45 80           2169 	.byte _calculator_operand2,(_calculator_operand2 >> 8),#0x80
   459D 00                 2170 	.db #0x00
   459E BD 17              2171 	.byte _calculator_frac2_handler,(_calculator_frac2_handler >> 8)
   45A0 C8 46 80           2172 	.byte _str_17,(_str_17 >> 8),#0x80
   45A3                    2173 __str_0:
   45A3 63 61 6C 63 75 6C  2174 	.ascii "calculator"
        61 74 6F 72
   45AD 00                 2175 	.db 0x00
   45AE                    2176 _str_1:
   45AE 63 61 6C 63 75 6C  2177 	.ascii "calculator_TOP"
        61 74 6F 72 5F 54
        4F 50
   45BC 00                 2178 	.db 0x00
   45BD                    2179 _str_2:
   45BD 63 61 6C 63 75 6C  2180 	.ascii "calculator_on"
        61 74 6F 72 5F 6F
        6E
   45CA 00                 2181 	.db 0x00
   45CB                    2182 _str_3:
   45CB 63 61 6C 63 75 6C  2183 	.ascii "calculator_ready"
        61 74 6F 72 5F 72
        65 61 64 79
   45DB 00                 2184 	.db 0x00
   45DC                    2185 _str_4:
   45DC 63 61 6C 63 75 6C  2186 	.ascii "calculator_result"
        61 74 6F 72 5F 72
        65 73 75 6C 74
   45ED 00                 2187 	.db 0x00
   45EE                    2188 _str_5:
   45EE 63 61 6C 63 75 6C  2189 	.ascii "calculator_begin"
        61 74 6F 72 5F 62
        65 67 69 6E
   45FE 00                 2190 	.db 0x00
   45FF                    2191 _str_6:
   45FF 63 61 6C 63 75 6C  2192 	.ascii "calculator_negated1"
        61 74 6F 72 5F 6E
        65 67 61 74 65 64
        31
   4612 00                 2193 	.db 0x00
   4613                    2194 _str_7:
   4613 63 61 6C 63 75 6C  2195 	.ascii "calculator_operand1"
        61 74 6F 72 5F 6F
        70 65 72 61 6E 64
        31
   4626 00                 2196 	.db 0x00
   4627                    2197 _str_8:
   4627 63 61 6C 63 75 6C  2198 	.ascii "calculator_zero1"
        61 74 6F 72 5F 7A
        65 72 6F 31
   4637 00                 2199 	.db 0x00
   4638                    2200 _str_9:
   4638 63 61 6C 63 75 6C  2201 	.ascii "calculator_int1"
        61 74 6F 72 5F 69
        6E 74 31
   4647 00                 2202 	.db 0x00
   4648                    2203 _str_10:
   4648 63 61 6C 63 75 6C  2204 	.ascii "calculator_frac1"
        61 74 6F 72 5F 66
        72 61 63 31
   4658 00                 2205 	.db 0x00
   4659                    2206 _str_11:
   4659 63 61 6C 63 75 6C  2207 	.ascii "calculator_error"
        61 74 6F 72 5F 65
        72 72 6F 72
   4669 00                 2208 	.db 0x00
   466A                    2209 _str_12:
   466A 63 61 6C 63 75 6C  2210 	.ascii "calculator_opEntered"
        61 74 6F 72 5F 6F
        70 45 6E 74 65 72
        65 64
   467E 00                 2211 	.db 0x00
   467F                    2212 _str_13:
   467F 63 61 6C 63 75 6C  2213 	.ascii "calculator_negated2"
        61 74 6F 72 5F 6E
        65 67 61 74 65 64
        32
   4692 00                 2214 	.db 0x00
   4693                    2215 _str_14:
   4693 63 61 6C 63 75 6C  2216 	.ascii "calculator_operand2"
        61 74 6F 72 5F 6F
        70 65 72 61 6E 64
        32
   46A6 00                 2217 	.db 0x00
   46A7                    2218 _str_15:
   46A7 63 61 6C 63 75 6C  2219 	.ascii "calculator_zero2"
        61 74 6F 72 5F 7A
        65 72 6F 32
   46B7 00                 2220 	.db 0x00
   46B8                    2221 _str_16:
   46B8 63 61 6C 63 75 6C  2222 	.ascii "calculator_int2"
        61 74 6F 72 5F 69
        6E 74 32
   46C7 00                 2223 	.db 0x00
   46C8                    2224 _str_17:
   46C8 63 61 6C 63 75 6C  2225 	.ascii "calculator_frac2"
        61 74 6F 72 5F 66
        72 61 63 32
   46D8 00                 2226 	.db 0x00
                           2227 	.area XINIT   (CODE)
   4B47                    2228 __xinit__calculator_name:
   4B47 A3 45 80           2229 	.byte __str_0,(__str_0 >> 8),#0x80
                           2230 	.area CABS    (ABS,CODE)
