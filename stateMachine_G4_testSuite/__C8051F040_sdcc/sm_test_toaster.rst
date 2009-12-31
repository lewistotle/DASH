                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 2.9.0 #5416 (Mar 22 2009) (MINGW32)
                              4 ; This file was generated Wed Dec 30 22:11:49 2009
                              5 ;--------------------------------------------------------
                              6 	.module sm_test_toaster
                              7 	.optsdcc -mmcs51 --model-large
                              8 	
                              9 ;--------------------------------------------------------
                             10 ; Public variables in this module
                             11 ;--------------------------------------------------------
                             12 	.globl _lampOff
                             13 	.globl _lampOn
                             14 	.globl _heaterOff
                             15 	.globl _heaterOn
                             16 	.globl _toaster_getEventQueueDepth
                             17 	.globl _toaster_constructor
                             18 	.globl _toaster_destructor
                             19 	.globl _toaster_getMachineSize
                             20 	.globl _toaster_constructor2
                             21 	.globl _toaster_destructor2
                             22 ;--------------------------------------------------------
                             23 ; special function registers
                             24 ;--------------------------------------------------------
                             25 	.area RSEG    (DATA)
                             26 ;--------------------------------------------------------
                             27 ; special function bits
                             28 ;--------------------------------------------------------
                             29 	.area RSEG    (DATA)
                             30 ;--------------------------------------------------------
                             31 ; overlayable register banks
                             32 ;--------------------------------------------------------
                             33 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                      34 	.ds 8
                             35 ;--------------------------------------------------------
                             36 ; internal ram data
                             37 ;--------------------------------------------------------
                             38 	.area DSEG    (DATA)
   0026                      39 _toaster_constructor_sloc0_1_0:
   0026                      40 	.ds 3
                             41 ;--------------------------------------------------------
                             42 ; overlayable items in internal ram 
                             43 ;--------------------------------------------------------
                             44 	.area OSEG    (OVR,DATA)
                             45 ;--------------------------------------------------------
                             46 ; indirectly addressable internal ram data
                             47 ;--------------------------------------------------------
                             48 	.area ISEG    (DATA)
                             49 ;--------------------------------------------------------
                             50 ; absolute internal ram data
                             51 ;--------------------------------------------------------
                             52 	.area IABS    (ABS,DATA)
                             53 	.area IABS    (ABS,DATA)
                             54 ;--------------------------------------------------------
                             55 ; bit data
                             56 ;--------------------------------------------------------
                             57 	.area BSEG    (BIT)
                             58 ;--------------------------------------------------------
                             59 ; paged external ram data
                             60 ;--------------------------------------------------------
                             61 	.area PSEG    (PAG,XDATA)
                             62 ;--------------------------------------------------------
                             63 ; external ram data
                             64 ;--------------------------------------------------------
                             65 	.area XSEG    (XDATA)
   091C                      66 _toaster_constructor_base_1_1:
   091C                      67 	.ds 3
   091F                      68 _toaster_destructor_self_1_1:
   091F                      69 	.ds 3
   0922                      70 _toaster_constructor2_self_1_1:
   0922                      71 	.ds 3
                             72 ;--------------------------------------------------------
                             73 ; absolute external ram data
                             74 ;--------------------------------------------------------
                             75 	.area XABS    (ABS,XDATA)
                             76 ;--------------------------------------------------------
                             77 ; external initialized ram data
                             78 ;--------------------------------------------------------
                             79 	.area XISEG   (XDATA)
   0EDF                      80 _toaster_name:
   0EDF                      81 	.ds 3
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
                            109 ;Allocation info for local variables in function 'toaster_getEventQueueDepth'
                            110 ;------------------------------------------------------------
                            111 ;------------------------------------------------------------
                            112 ;	../sm_test_toaster.c:29: SET_EVENT_QUEUE_DEPTH(config_toastEVENT_QUEUE_DEPTH) ;
                            113 ;	-----------------------------------------
                            114 ;	 function toaster_getEventQueueDepth
                            115 ;	-----------------------------------------
   1C36                     116 _toaster_getEventQueueDepth:
                    0002    117 	ar2 = 0x02
                    0003    118 	ar3 = 0x03
                    0004    119 	ar4 = 0x04
                    0005    120 	ar5 = 0x05
                    0006    121 	ar6 = 0x06
                    0007    122 	ar7 = 0x07
                    0000    123 	ar0 = 0x00
                    0001    124 	ar1 = 0x01
   1C36 90 00 08            125 	mov	dptr,#0x0008
   1C39 22                  126 	ret
                            127 ;------------------------------------------------------------
                            128 ;Allocation info for local variables in function 'toaster_constructor'
                            129 ;------------------------------------------------------------
                            130 ;sloc0                     Allocated with name '_toaster_constructor_sloc0_1_0'
                            131 ;base                      Allocated with name '_toaster_constructor_base_1_1'
                            132 ;------------------------------------------------------------
                            133 ;	../sm_test_toaster.c:45: END_STATE_MACHINE_DEFINITION() ;
                            134 ;	-----------------------------------------
                            135 ;	 function toaster_constructor
                            136 ;	-----------------------------------------
   1C3A                     137 _toaster_constructor:
   1C3A AA F0               138 	mov	r2,b
   1C3C AB 83               139 	mov	r3,dph
   1C3E E5 82               140 	mov	a,dpl
   1C40 90 09 1C            141 	mov	dptr,#_toaster_constructor_base_1_1
   1C43 F0                  142 	movx	@dptr,a
   1C44 A3                  143 	inc	dptr
   1C45 EB                  144 	mov	a,r3
   1C46 F0                  145 	movx	@dptr,a
   1C47 A3                  146 	inc	dptr
   1C48 EA                  147 	mov	a,r2
   1C49 F0                  148 	movx	@dptr,a
   1C4A 90 09 1C            149 	mov	dptr,#_toaster_constructor_base_1_1
   1C4D E0                  150 	movx	a,@dptr
   1C4E FA                  151 	mov	r2,a
   1C4F A3                  152 	inc	dptr
   1C50 E0                  153 	movx	a,@dptr
   1C51 FB                  154 	mov	r3,a
   1C52 A3                  155 	inc	dptr
   1C53 E0                  156 	movx	a,@dptr
   1C54 FC                  157 	mov	r4,a
   1C55 8A 82               158 	mov	dpl,r2
   1C57 8B 83               159 	mov	dph,r3
   1C59 8C F0               160 	mov	b,r4
   1C5B 74 42               161 	mov	a,#_toaster_TOP
   1C5D 12 38 0B            162 	lcall	__gptrput
   1C60 A3                  163 	inc	dptr
   1C61 74 47               164 	mov	a,#(_toaster_TOP >> 8)
   1C63 12 38 0B            165 	lcall	__gptrput
   1C66 74 06               166 	mov	a,#0x06
   1C68 2A                  167 	add	a,r2
   1C69 FD                  168 	mov	r5,a
   1C6A E4                  169 	clr	a
   1C6B 3B                  170 	addc	a,r3
   1C6C FE                  171 	mov	r6,a
   1C6D 8C 07               172 	mov	ar7,r4
   1C6F 8D 82               173 	mov	dpl,r5
   1C71 8E 83               174 	mov	dph,r6
   1C73 8F F0               175 	mov	b,r7
   1C75 74 42               176 	mov	a,#_toaster_TOP
   1C77 12 38 0B            177 	lcall	__gptrput
   1C7A A3                  178 	inc	dptr
   1C7B 74 47               179 	mov	a,#(_toaster_TOP >> 8)
   1C7D 12 38 0B            180 	lcall	__gptrput
   1C80 A3                  181 	inc	dptr
   1C81 74 80               182 	mov	a,#0x80
   1C83 12 38 0B            183 	lcall	__gptrput
   1C86 74 02               184 	mov	a,#0x02
   1C88 2A                  185 	add	a,r2
   1C89 FD                  186 	mov	r5,a
   1C8A E4                  187 	clr	a
   1C8B 3B                  188 	addc	a,r3
   1C8C FE                  189 	mov	r6,a
   1C8D 8C 07               190 	mov	ar7,r4
   1C8F 8D 82               191 	mov	dpl,r5
   1C91 8E 83               192 	mov	dph,r6
   1C93 8F F0               193 	mov	b,r7
   1C95 E4                  194 	clr	a
   1C96 12 38 0B            195 	lcall	__gptrput
   1C99 74 03               196 	mov	a,#0x03
   1C9B 2A                  197 	add	a,r2
   1C9C F5 26               198 	mov	_toaster_constructor_sloc0_1_0,a
   1C9E E4                  199 	clr	a
   1C9F 3B                  200 	addc	a,r3
   1CA0 F5 27               201 	mov	(_toaster_constructor_sloc0_1_0 + 1),a
   1CA2 8C 28               202 	mov	(_toaster_constructor_sloc0_1_0 + 2),r4
   1CA4 90 0E DF            203 	mov	dptr,#_toaster_name
   1CA7 E0                  204 	movx	a,@dptr
   1CA8 F8                  205 	mov	r0,a
   1CA9 A3                  206 	inc	dptr
   1CAA E0                  207 	movx	a,@dptr
   1CAB F9                  208 	mov	r1,a
   1CAC A3                  209 	inc	dptr
   1CAD E0                  210 	movx	a,@dptr
   1CAE FD                  211 	mov	r5,a
   1CAF 85 26 82            212 	mov	dpl,_toaster_constructor_sloc0_1_0
   1CB2 85 27 83            213 	mov	dph,(_toaster_constructor_sloc0_1_0 + 1)
   1CB5 85 28 F0            214 	mov	b,(_toaster_constructor_sloc0_1_0 + 2)
   1CB8 E8                  215 	mov	a,r0
   1CB9 12 38 0B            216 	lcall	__gptrput
   1CBC A3                  217 	inc	dptr
   1CBD E9                  218 	mov	a,r1
   1CBE 12 38 0B            219 	lcall	__gptrput
   1CC1 A3                  220 	inc	dptr
   1CC2 ED                  221 	mov	a,r5
   1CC3 12 38 0B            222 	lcall	__gptrput
   1CC6 8A 82               223 	mov	dpl,r2
   1CC8 8B 83               224 	mov	dph,r3
   1CCA 8C F0               225 	mov	b,r4
   1CCC 02 1C F7            226 	ljmp	_toaster_constructor2
                            227 ;------------------------------------------------------------
                            228 ;Allocation info for local variables in function 'toaster_destructor'
                            229 ;------------------------------------------------------------
                            230 ;self                      Allocated with name '_toaster_destructor_self_1_1'
                            231 ;------------------------------------------------------------
                            232 ;	../sm_test_toaster.c:45: 
                            233 ;	-----------------------------------------
                            234 ;	 function toaster_destructor
                            235 ;	-----------------------------------------
   1CCF                     236 _toaster_destructor:
   1CCF AA F0               237 	mov	r2,b
   1CD1 AB 83               238 	mov	r3,dph
   1CD3 E5 82               239 	mov	a,dpl
   1CD5 90 09 1F            240 	mov	dptr,#_toaster_destructor_self_1_1
   1CD8 F0                  241 	movx	@dptr,a
   1CD9 A3                  242 	inc	dptr
   1CDA EB                  243 	mov	a,r3
   1CDB F0                  244 	movx	@dptr,a
   1CDC A3                  245 	inc	dptr
   1CDD EA                  246 	mov	a,r2
   1CDE F0                  247 	movx	@dptr,a
   1CDF 90 09 1F            248 	mov	dptr,#_toaster_destructor_self_1_1
   1CE2 E0                  249 	movx	a,@dptr
   1CE3 FA                  250 	mov	r2,a
   1CE4 A3                  251 	inc	dptr
   1CE5 E0                  252 	movx	a,@dptr
   1CE6 FB                  253 	mov	r3,a
   1CE7 A3                  254 	inc	dptr
   1CE8 E0                  255 	movx	a,@dptr
   1CE9 FC                  256 	mov	r4,a
   1CEA 8A 82               257 	mov	dpl,r2
   1CEC 8B 83               258 	mov	dph,r3
   1CEE 8C F0               259 	mov	b,r4
   1CF0 02 1D 49            260 	ljmp	_toaster_destructor2
                            261 ;------------------------------------------------------------
                            262 ;Allocation info for local variables in function 'toaster_getMachineSize'
                            263 ;------------------------------------------------------------
                            264 ;------------------------------------------------------------
                            265 ;	../sm_test_toaster.c:45: END_STATE_MACHINE_DEFINITION() ;
                            266 ;	-----------------------------------------
                            267 ;	 function toaster_getMachineSize
                            268 ;	-----------------------------------------
   1CF3                     269 _toaster_getMachineSize:
   1CF3 90 00 18            270 	mov	dptr,#0x0018
   1CF6 22                  271 	ret
                            272 ;------------------------------------------------------------
                            273 ;Allocation info for local variables in function 'toaster_constructor2'
                            274 ;------------------------------------------------------------
                            275 ;self                      Allocated with name '_toaster_constructor2_self_1_1'
                            276 ;------------------------------------------------------------
                            277 ;	../sm_test_toaster.c:48: STATE_MACHINE_CONSTRUCTOR()
                            278 ;	-----------------------------------------
                            279 ;	 function toaster_constructor2
                            280 ;	-----------------------------------------
   1CF7                     281 _toaster_constructor2:
   1CF7 AA F0               282 	mov	r2,b
   1CF9 AB 83               283 	mov	r3,dph
   1CFB E5 82               284 	mov	a,dpl
   1CFD 90 09 22            285 	mov	dptr,#_toaster_constructor2_self_1_1
   1D00 F0                  286 	movx	@dptr,a
   1D01 A3                  287 	inc	dptr
   1D02 EB                  288 	mov	a,r3
   1D03 F0                  289 	movx	@dptr,a
   1D04 A3                  290 	inc	dptr
   1D05 EA                  291 	mov	a,r2
   1D06 F0                  292 	movx	@dptr,a
                            293 ;	../sm_test_toaster.c:50: self->cookingTime_hours		= 0 ;
   1D07 90 09 22            294 	mov	dptr,#_toaster_constructor2_self_1_1
   1D0A E0                  295 	movx	a,@dptr
   1D0B FA                  296 	mov	r2,a
   1D0C A3                  297 	inc	dptr
   1D0D E0                  298 	movx	a,@dptr
   1D0E FB                  299 	mov	r3,a
   1D0F A3                  300 	inc	dptr
   1D10 E0                  301 	movx	a,@dptr
   1D11 FC                  302 	mov	r4,a
   1D12 74 15               303 	mov	a,#0x15
   1D14 2A                  304 	add	a,r2
   1D15 FD                  305 	mov	r5,a
   1D16 E4                  306 	clr	a
   1D17 3B                  307 	addc	a,r3
   1D18 FE                  308 	mov	r6,a
   1D19 8C 07               309 	mov	ar7,r4
   1D1B 8D 82               310 	mov	dpl,r5
   1D1D 8E 83               311 	mov	dph,r6
   1D1F 8F F0               312 	mov	b,r7
   1D21 E4                  313 	clr	a
   1D22 12 38 0B            314 	lcall	__gptrput
                            315 ;	../sm_test_toaster.c:51: self->cookingTime_minutes	= 0 ;
   1D25 74 16               316 	mov	a,#0x16
   1D27 2A                  317 	add	a,r2
   1D28 FD                  318 	mov	r5,a
   1D29 E4                  319 	clr	a
   1D2A 3B                  320 	addc	a,r3
   1D2B FE                  321 	mov	r6,a
   1D2C 8C 07               322 	mov	ar7,r4
   1D2E 8D 82               323 	mov	dpl,r5
   1D30 8E 83               324 	mov	dph,r6
   1D32 8F F0               325 	mov	b,r7
   1D34 E4                  326 	clr	a
   1D35 12 38 0B            327 	lcall	__gptrput
                            328 ;	../sm_test_toaster.c:52: self->cookingTime_seconds	= 0 ;
   1D38 74 17               329 	mov	a,#0x17
   1D3A 2A                  330 	add	a,r2
   1D3B FA                  331 	mov	r2,a
   1D3C E4                  332 	clr	a
   1D3D 3B                  333 	addc	a,r3
   1D3E FB                  334 	mov	r3,a
   1D3F 8A 82               335 	mov	dpl,r2
   1D41 8B 83               336 	mov	dph,r3
   1D43 8C F0               337 	mov	b,r4
   1D45 E4                  338 	clr	a
   1D46 02 38 0B            339 	ljmp	__gptrput
                            340 ;------------------------------------------------------------
                            341 ;Allocation info for local variables in function 'toaster_destructor2'
                            342 ;------------------------------------------------------------
                            343 ;self                      Allocated with name '_toaster_destructor2_self_1_1'
                            344 ;------------------------------------------------------------
                            345 ;	../sm_test_toaster.c:56: STATE_MACHINE_DESTRUCTOR()
                            346 ;	-----------------------------------------
                            347 ;	 function toaster_destructor2
                            348 ;	-----------------------------------------
   1D49                     349 _toaster_destructor2:
                            350 ;	../sm_test_toaster.c:58: (void)self ;	/* Nothing to do here */
   1D49 22                  351 	ret
                            352 ;------------------------------------------------------------
                            353 ;Allocation info for local variables in function 'heaterOn'
                            354 ;------------------------------------------------------------
                            355 ;------------------------------------------------------------
                            356 ;	../sm_test_toaster.c:62: void heaterOn(	void)
                            357 ;	-----------------------------------------
                            358 ;	 function heaterOn
                            359 ;	-----------------------------------------
   1D4A                     360 _heaterOn:
                            361 ;	../sm_test_toaster.c:64: }
   1D4A 22                  362 	ret
                            363 ;------------------------------------------------------------
                            364 ;Allocation info for local variables in function 'heaterOff'
                            365 ;------------------------------------------------------------
                            366 ;------------------------------------------------------------
                            367 ;	../sm_test_toaster.c:67: void heaterOff(	void)
                            368 ;	-----------------------------------------
                            369 ;	 function heaterOff
                            370 ;	-----------------------------------------
   1D4B                     371 _heaterOff:
                            372 ;	../sm_test_toaster.c:69: }
   1D4B 22                  373 	ret
                            374 ;------------------------------------------------------------
                            375 ;Allocation info for local variables in function 'lampOn'
                            376 ;------------------------------------------------------------
                            377 ;------------------------------------------------------------
                            378 ;	../sm_test_toaster.c:71: void lampOn(	void)
                            379 ;	-----------------------------------------
                            380 ;	 function lampOn
                            381 ;	-----------------------------------------
   1D4C                     382 _lampOn:
                            383 ;	../sm_test_toaster.c:73: }
   1D4C 22                  384 	ret
                            385 ;------------------------------------------------------------
                            386 ;Allocation info for local variables in function 'lampOff'
                            387 ;------------------------------------------------------------
                            388 ;------------------------------------------------------------
                            389 ;	../sm_test_toaster.c:75: void lampOff(	void)
                            390 ;	-----------------------------------------
                            391 ;	 function lampOff
                            392 ;	-----------------------------------------
   1D4D                     393 _lampOff:
                            394 ;	../sm_test_toaster.c:77: }
   1D4D 22                  395 	ret
                            396 ;------------------------------------------------------------
                            397 ;Allocation info for local variables in function 'toaster_TOP_handler'
                            398 ;------------------------------------------------------------
                            399 ;event                     Allocated to stack - offset -5
                            400 ;self                      Allocated to registers r2 r3 r4 
                            401 ;stateResponseCode         Allocated to registers 
                            402 ;------------------------------------------------------------
                            403 ;	../sm_test_toaster.c:80: DEFINE_TOP_STATE()
                            404 ;	-----------------------------------------
                            405 ;	 function toaster_TOP_handler
                            406 ;	-----------------------------------------
   1D4E                     407 _toaster_TOP_handler:
   1D4E C0 1F               408 	push	_bp
   1D50 85 81 1F            409 	mov	_bp,sp
   1D53 AA 82               410 	mov	r2,dpl
   1D55 AB 83               411 	mov	r3,dph
   1D57 AC F0               412 	mov	r4,b
                            413 ;	../sm_test_toaster.c:82: self->cookingTime_hours		= 0 ;
   1D59 74 15               414 	mov	a,#0x15
   1D5B 2A                  415 	add	a,r2
   1D5C FD                  416 	mov	r5,a
   1D5D E4                  417 	clr	a
   1D5E 3B                  418 	addc	a,r3
   1D5F FE                  419 	mov	r6,a
   1D60 8C 07               420 	mov	ar7,r4
   1D62 8D 82               421 	mov	dpl,r5
   1D64 8E 83               422 	mov	dph,r6
   1D66 8F F0               423 	mov	b,r7
   1D68 E4                  424 	clr	a
   1D69 12 38 0B            425 	lcall	__gptrput
                            426 ;	../sm_test_toaster.c:83: self->cookingTime_minutes	= 0 ;
   1D6C 74 16               427 	mov	a,#0x16
   1D6E 2A                  428 	add	a,r2
   1D6F FD                  429 	mov	r5,a
   1D70 E4                  430 	clr	a
   1D71 3B                  431 	addc	a,r3
   1D72 FE                  432 	mov	r6,a
   1D73 8C 07               433 	mov	ar7,r4
   1D75 8D 82               434 	mov	dpl,r5
   1D77 8E 83               435 	mov	dph,r6
   1D79 8F F0               436 	mov	b,r7
   1D7B E4                  437 	clr	a
   1D7C 12 38 0B            438 	lcall	__gptrput
                            439 ;	../sm_test_toaster.c:84: self->cookingTime_seconds	= 0 ;
   1D7F 74 17               440 	mov	a,#0x17
   1D81 2A                  441 	add	a,r2
   1D82 FD                  442 	mov	r5,a
   1D83 E4                  443 	clr	a
   1D84 3B                  444 	addc	a,r3
   1D85 FE                  445 	mov	r6,a
   1D86 8C 07               446 	mov	ar7,r4
   1D88 8D 82               447 	mov	dpl,r5
   1D8A 8E 83               448 	mov	dph,r6
   1D8C 8F F0               449 	mov	b,r7
   1D8E E4                  450 	clr	a
   1D8F 12 38 0B            451 	lcall	__gptrput
                            452 ;	../sm_test_toaster.c:86: INITIAL_TRANSITION(TO(doorClosed),						NO_ACTION) ;
   1D92 E5 1F               453 	mov	a,_bp
   1D94 24 FB               454 	add	a,#0xfb
   1D96 F8                  455 	mov	r0,a
   1D97 86 05               456 	mov	ar5,@r0
   1D99 08                  457 	inc	r0
   1D9A 86 06               458 	mov	ar6,@r0
   1D9C 08                  459 	inc	r0
   1D9D 86 07               460 	mov	ar7,@r0
   1D9F 8D 82               461 	mov	dpl,r5
   1DA1 8E 83               462 	mov	dph,r6
   1DA3 8F F0               463 	mov	b,r7
   1DA5 12 44 37            464 	lcall	__gptrget
   1DA8 FD                  465 	mov	r5,a
   1DA9 BD 02 23            466 	cjne	r5,#0x02,00102$
   1DAC 74 09               467 	mov	a,#0x09
   1DAE 2A                  468 	add	a,r2
   1DAF FA                  469 	mov	r2,a
   1DB0 E4                  470 	clr	a
   1DB1 3B                  471 	addc	a,r3
   1DB2 FB                  472 	mov	r3,a
   1DB3 8A 82               473 	mov	dpl,r2
   1DB5 8B 83               474 	mov	dph,r3
   1DB7 8C F0               475 	mov	b,r4
   1DB9 74 4B               476 	mov	a,#_toaster_doorClosed
   1DBB 12 38 0B            477 	lcall	__gptrput
   1DBE A3                  478 	inc	dptr
   1DBF 74 47               479 	mov	a,#(_toaster_doorClosed >> 8)
   1DC1 12 38 0B            480 	lcall	__gptrput
   1DC4 A3                  481 	inc	dptr
   1DC5 74 80               482 	mov	a,#0x80
   1DC7 12 38 0B            483 	lcall	__gptrput
   1DCA 75 82 02            484 	mov	dpl,#0x02
   1DCD 80 03               485 	sjmp	00103$
   1DCF                     486 00102$:
                            487 ;	../sm_test_toaster.c:88: END_DEFINE_STATE()
   1DCF 75 82 00            488 	mov	dpl,#0x00
   1DD2                     489 00103$:
   1DD2 D0 1F               490 	pop	_bp
   1DD4 22                  491 	ret
                            492 ;------------------------------------------------------------
                            493 ;Allocation info for local variables in function 'toaster_doorClosed_handler'
                            494 ;------------------------------------------------------------
                            495 ;event                     Allocated to stack - offset -5
                            496 ;self                      Allocated to stack - offset 1
                            497 ;stateResponseCode         Allocated to registers 
                            498 ;------------------------------------------------------------
                            499 ;	../sm_test_toaster.c:91: DEFINE_STATE(doorClosed)
                            500 ;	-----------------------------------------
                            501 ;	 function toaster_doorClosed_handler
                            502 ;	-----------------------------------------
   1DD5                     503 _toaster_doorClosed_handler:
   1DD5 C0 1F               504 	push	_bp
   1DD7 85 81 1F            505 	mov	_bp,sp
   1DDA C0 82               506 	push	dpl
   1DDC C0 83               507 	push	dph
   1DDE C0 F0               508 	push	b
                            509 ;	../sm_test_toaster.c:93: INITIAL_TRANSITION(TO(off),								NO_ACTION) ;
   1DE0 E5 1F               510 	mov	a,_bp
   1DE2 24 FB               511 	add	a,#0xfb
   1DE4 F8                  512 	mov	r0,a
   1DE5 86 05               513 	mov	ar5,@r0
   1DE7 08                  514 	inc	r0
   1DE8 86 06               515 	mov	ar6,@r0
   1DEA 08                  516 	inc	r0
   1DEB 86 07               517 	mov	ar7,@r0
   1DED 8D 82               518 	mov	dpl,r5
   1DEF 8E 83               519 	mov	dph,r6
   1DF1 8F F0               520 	mov	b,r7
   1DF3 12 44 37            521 	lcall	__gptrget
   1DF6 FD                  522 	mov	r5,a
   1DF7 BD 02 2B            523 	cjne	r5,#0x02,00102$
   1DFA A8 1F               524 	mov	r0,_bp
   1DFC 08                  525 	inc	r0
   1DFD 74 09               526 	mov	a,#0x09
   1DFF 26                  527 	add	a,@r0
   1E00 FE                  528 	mov	r6,a
   1E01 E4                  529 	clr	a
   1E02 08                  530 	inc	r0
   1E03 36                  531 	addc	a,@r0
   1E04 FF                  532 	mov	r7,a
   1E05 08                  533 	inc	r0
   1E06 86 02               534 	mov	ar2,@r0
   1E08 8E 82               535 	mov	dpl,r6
   1E0A 8F 83               536 	mov	dph,r7
   1E0C 8A F0               537 	mov	b,r2
   1E0E 74 6F               538 	mov	a,#_toaster_off
   1E10 12 38 0B            539 	lcall	__gptrput
   1E13 A3                  540 	inc	dptr
   1E14 74 47               541 	mov	a,#(_toaster_off >> 8)
   1E16 12 38 0B            542 	lcall	__gptrput
   1E19 A3                  543 	inc	dptr
   1E1A 74 80               544 	mov	a,#0x80
   1E1C 12 38 0B            545 	lcall	__gptrput
   1E1F 75 82 02            546 	mov	dpl,#0x02
   1E22 02 1E DD            547 	ljmp	00115$
   1E25                     548 00102$:
                            549 ;	../sm_test_toaster.c:95: TRANSITION_ON(BAKE,		UNCONDITIONALLY, TO(baking),	NO_ACTION) ;
   1E25 BD 04 2B            550 	cjne	r5,#0x04,00104$
   1E28 A8 1F               551 	mov	r0,_bp
   1E2A 08                  552 	inc	r0
   1E2B 74 09               553 	mov	a,#0x09
   1E2D 26                  554 	add	a,@r0
   1E2E FA                  555 	mov	r2,a
   1E2F E4                  556 	clr	a
   1E30 08                  557 	inc	r0
   1E31 36                  558 	addc	a,@r0
   1E32 FB                  559 	mov	r3,a
   1E33 08                  560 	inc	r0
   1E34 86 04               561 	mov	ar4,@r0
   1E36 8A 82               562 	mov	dpl,r2
   1E38 8B 83               563 	mov	dph,r3
   1E3A 8C F0               564 	mov	b,r4
   1E3C 74 5D               565 	mov	a,#_toaster_baking
   1E3E 12 38 0B            566 	lcall	__gptrput
   1E41 A3                  567 	inc	dptr
   1E42 74 47               568 	mov	a,#(_toaster_baking >> 8)
   1E44 12 38 0B            569 	lcall	__gptrput
   1E47 A3                  570 	inc	dptr
   1E48 74 80               571 	mov	a,#0x80
   1E4A 12 38 0B            572 	lcall	__gptrput
   1E4D 75 82 02            573 	mov	dpl,#0x02
   1E50 02 1E DD            574 	ljmp	00115$
   1E53                     575 00104$:
                            576 ;	../sm_test_toaster.c:96: TRANSITION_ON(TOAST,	UNCONDITIONALLY, TO(toasting),	NO_ACTION) ;
   1E53 BD 05 2A            577 	cjne	r5,#0x05,00107$
   1E56 A8 1F               578 	mov	r0,_bp
   1E58 08                  579 	inc	r0
   1E59 74 09               580 	mov	a,#0x09
   1E5B 26                  581 	add	a,@r0
   1E5C FA                  582 	mov	r2,a
   1E5D E4                  583 	clr	a
   1E5E 08                  584 	inc	r0
   1E5F 36                  585 	addc	a,@r0
   1E60 FB                  586 	mov	r3,a
   1E61 08                  587 	inc	r0
   1E62 86 04               588 	mov	ar4,@r0
   1E64 8A 82               589 	mov	dpl,r2
   1E66 8B 83               590 	mov	dph,r3
   1E68 8C F0               591 	mov	b,r4
   1E6A 74 66               592 	mov	a,#_toaster_toasting
   1E6C 12 38 0B            593 	lcall	__gptrput
   1E6F A3                  594 	inc	dptr
   1E70 74 47               595 	mov	a,#(_toaster_toasting >> 8)
   1E72 12 38 0B            596 	lcall	__gptrput
   1E75 A3                  597 	inc	dptr
   1E76 74 80               598 	mov	a,#0x80
   1E78 12 38 0B            599 	lcall	__gptrput
   1E7B 75 82 02            600 	mov	dpl,#0x02
   1E7E 80 5D               601 	sjmp	00115$
   1E80                     602 00107$:
                            603 ;	../sm_test_toaster.c:97: TRANSITION_ON(OFF,		UNCONDITIONALLY, TO(off),		NO_ACTION) ;
   1E80 BD 06 2A            604 	cjne	r5,#0x06,00110$
   1E83 A8 1F               605 	mov	r0,_bp
   1E85 08                  606 	inc	r0
   1E86 74 09               607 	mov	a,#0x09
   1E88 26                  608 	add	a,@r0
   1E89 FA                  609 	mov	r2,a
   1E8A E4                  610 	clr	a
   1E8B 08                  611 	inc	r0
   1E8C 36                  612 	addc	a,@r0
   1E8D FB                  613 	mov	r3,a
   1E8E 08                  614 	inc	r0
   1E8F 86 04               615 	mov	ar4,@r0
   1E91 8A 82               616 	mov	dpl,r2
   1E93 8B 83               617 	mov	dph,r3
   1E95 8C F0               618 	mov	b,r4
   1E97 74 6F               619 	mov	a,#_toaster_off
   1E99 12 38 0B            620 	lcall	__gptrput
   1E9C A3                  621 	inc	dptr
   1E9D 74 47               622 	mov	a,#(_toaster_off >> 8)
   1E9F 12 38 0B            623 	lcall	__gptrput
   1EA2 A3                  624 	inc	dptr
   1EA3 74 80               625 	mov	a,#0x80
   1EA5 12 38 0B            626 	lcall	__gptrput
   1EA8 75 82 02            627 	mov	dpl,#0x02
   1EAB 80 30               628 	sjmp	00115$
   1EAD                     629 00110$:
                            630 ;	../sm_test_toaster.c:98: TRANSITION_ON(OPEN,		UNCONDITIONALLY, TO(off),		NO_ACTION) ;
   1EAD BD 07 2A            631 	cjne	r5,#0x07,00113$
   1EB0 A8 1F               632 	mov	r0,_bp
   1EB2 08                  633 	inc	r0
   1EB3 74 09               634 	mov	a,#0x09
   1EB5 26                  635 	add	a,@r0
   1EB6 FA                  636 	mov	r2,a
   1EB7 E4                  637 	clr	a
   1EB8 08                  638 	inc	r0
   1EB9 36                  639 	addc	a,@r0
   1EBA FB                  640 	mov	r3,a
   1EBB 08                  641 	inc	r0
   1EBC 86 04               642 	mov	ar4,@r0
   1EBE 8A 82               643 	mov	dpl,r2
   1EC0 8B 83               644 	mov	dph,r3
   1EC2 8C F0               645 	mov	b,r4
   1EC4 74 6F               646 	mov	a,#_toaster_off
   1EC6 12 38 0B            647 	lcall	__gptrput
   1EC9 A3                  648 	inc	dptr
   1ECA 74 47               649 	mov	a,#(_toaster_off >> 8)
   1ECC 12 38 0B            650 	lcall	__gptrput
   1ECF A3                  651 	inc	dptr
   1ED0 74 80               652 	mov	a,#0x80
   1ED2 12 38 0B            653 	lcall	__gptrput
   1ED5 75 82 02            654 	mov	dpl,#0x02
   1ED8 80 03               655 	sjmp	00115$
   1EDA                     656 00113$:
                            657 ;	../sm_test_toaster.c:100: END_DEFINE_STATE()
   1EDA 75 82 00            658 	mov	dpl,#0x00
   1EDD                     659 00115$:
   1EDD 85 1F 81            660 	mov	sp,_bp
   1EE0 D0 1F               661 	pop	_bp
   1EE2 22                  662 	ret
                            663 ;------------------------------------------------------------
                            664 ;Allocation info for local variables in function 'toaster_heating_handler'
                            665 ;------------------------------------------------------------
                            666 ;event                     Allocated to stack - offset -5
                            667 ;self                      Allocated to registers 
                            668 ;stateResponseCode         Allocated to registers 
                            669 ;------------------------------------------------------------
                            670 ;	../sm_test_toaster.c:103: DEFINE_STATE(heating)
                            671 ;	-----------------------------------------
                            672 ;	 function toaster_heating_handler
                            673 ;	-----------------------------------------
   1EE3                     674 _toaster_heating_handler:
   1EE3 C0 1F               675 	push	_bp
   1EE5 85 81 1F            676 	mov	_bp,sp
                            677 ;	../sm_test_toaster.c:105: ON_ENTRY(	heaterOn()) ;
   1EE8 E5 1F               678 	mov	a,_bp
   1EEA 24 FB               679 	add	a,#0xfb
   1EEC F8                  680 	mov	r0,a
   1EED 86 02               681 	mov	ar2,@r0
   1EEF 08                  682 	inc	r0
   1EF0 86 03               683 	mov	ar3,@r0
   1EF2 08                  684 	inc	r0
   1EF3 86 04               685 	mov	ar4,@r0
   1EF5 8A 82               686 	mov	dpl,r2
   1EF7 8B 83               687 	mov	dph,r3
   1EF9 8C F0               688 	mov	b,r4
   1EFB 12 44 37            689 	lcall	__gptrget
   1EFE FD                  690 	mov	r5,a
   1EFF BD 01 0F            691 	cjne	r5,#0x01,00102$
   1F02 C0 02               692 	push	ar2
   1F04 C0 03               693 	push	ar3
   1F06 C0 04               694 	push	ar4
   1F08 12 1D 4A            695 	lcall	_heaterOn
   1F0B D0 04               696 	pop	ar4
   1F0D D0 03               697 	pop	ar3
   1F0F D0 02               698 	pop	ar2
   1F11                     699 00102$:
                            700 ;	../sm_test_toaster.c:106: ON_EXIT(	heaterOff()) ;
   1F11 8A 82               701 	mov	dpl,r2
   1F13 8B 83               702 	mov	dph,r3
   1F15 8C F0               703 	mov	b,r4
   1F17 12 44 37            704 	lcall	__gptrget
   1F1A FA                  705 	mov	r2,a
   1F1B BA 01 03            706 	cjne	r2,#0x01,00104$
   1F1E 12 1D 4B            707 	lcall	_heaterOff
   1F21                     708 00104$:
                            709 ;	../sm_test_toaster.c:108: END_DEFINE_STATE()
   1F21 75 82 00            710 	mov	dpl,#0x00
   1F24 D0 1F               711 	pop	_bp
   1F26 22                  712 	ret
                            713 ;------------------------------------------------------------
                            714 ;Allocation info for local variables in function 'toaster_baking_handler'
                            715 ;------------------------------------------------------------
                            716 ;event                     Allocated to stack - offset -5
                            717 ;self                      Allocated to registers 
                            718 ;stateResponseCode         Allocated to registers 
                            719 ;------------------------------------------------------------
                            720 ;	../sm_test_toaster.c:111: DEFINE_STATE(baking)
                            721 ;	-----------------------------------------
                            722 ;	 function toaster_baking_handler
                            723 ;	-----------------------------------------
   1F27                     724 _toaster_baking_handler:
   1F27 C0 1F               725 	push	_bp
   1F29 85 81 1F            726 	mov	_bp,sp
                            727 ;	../sm_test_toaster.c:114: END_DEFINE_STATE()
   1F2C 75 82 00            728 	mov	dpl,#0x00
   1F2F D0 1F               729 	pop	_bp
   1F31 22                  730 	ret
                            731 ;------------------------------------------------------------
                            732 ;Allocation info for local variables in function 'toaster_toasting_handler'
                            733 ;------------------------------------------------------------
                            734 ;event                     Allocated to stack - offset -5
                            735 ;self                      Allocated to registers 
                            736 ;stateResponseCode         Allocated to registers 
                            737 ;------------------------------------------------------------
                            738 ;	../sm_test_toaster.c:117: DEFINE_STATE(toasting)
                            739 ;	-----------------------------------------
                            740 ;	 function toaster_toasting_handler
                            741 ;	-----------------------------------------
   1F32                     742 _toaster_toasting_handler:
   1F32 C0 1F               743 	push	_bp
   1F34 85 81 1F            744 	mov	_bp,sp
                            745 ;	../sm_test_toaster.c:120: END_DEFINE_STATE()
   1F37 75 82 00            746 	mov	dpl,#0x00
   1F3A D0 1F               747 	pop	_bp
   1F3C 22                  748 	ret
                            749 ;------------------------------------------------------------
                            750 ;Allocation info for local variables in function 'toaster_off_handler'
                            751 ;------------------------------------------------------------
                            752 ;event                     Allocated to stack - offset -5
                            753 ;self                      Allocated to registers 
                            754 ;stateResponseCode         Allocated to registers 
                            755 ;------------------------------------------------------------
                            756 ;	../sm_test_toaster.c:123: DEFINE_STATE(off)
                            757 ;	-----------------------------------------
                            758 ;	 function toaster_off_handler
                            759 ;	-----------------------------------------
   1F3D                     760 _toaster_off_handler:
   1F3D C0 1F               761 	push	_bp
   1F3F 85 81 1F            762 	mov	_bp,sp
                            763 ;	../sm_test_toaster.c:126: END_DEFINE_STATE()
   1F42 75 82 00            764 	mov	dpl,#0x00
   1F45 D0 1F               765 	pop	_bp
   1F47 22                  766 	ret
                            767 ;------------------------------------------------------------
                            768 ;Allocation info for local variables in function 'toaster_doorOpen_handler'
                            769 ;------------------------------------------------------------
                            770 ;event                     Allocated to stack - offset -5
                            771 ;self                      Allocated to registers 
                            772 ;stateResponseCode         Allocated to registers 
                            773 ;------------------------------------------------------------
                            774 ;	../sm_test_toaster.c:129: DEFINE_STATE(doorOpen)
                            775 ;	-----------------------------------------
                            776 ;	 function toaster_doorOpen_handler
                            777 ;	-----------------------------------------
   1F48                     778 _toaster_doorOpen_handler:
   1F48 C0 1F               779 	push	_bp
   1F4A 85 81 1F            780 	mov	_bp,sp
                            781 ;	../sm_test_toaster.c:134: ON_ENTRY(	lampOn()) ;
   1F4D E5 1F               782 	mov	a,_bp
   1F4F 24 FB               783 	add	a,#0xfb
   1F51 F8                  784 	mov	r0,a
   1F52 86 02               785 	mov	ar2,@r0
   1F54 08                  786 	inc	r0
   1F55 86 03               787 	mov	ar3,@r0
   1F57 08                  788 	inc	r0
   1F58 86 04               789 	mov	ar4,@r0
   1F5A 8A 82               790 	mov	dpl,r2
   1F5C 8B 83               791 	mov	dph,r3
   1F5E 8C F0               792 	mov	b,r4
   1F60 12 44 37            793 	lcall	__gptrget
   1F63 FD                  794 	mov	r5,a
   1F64 BD 01 0F            795 	cjne	r5,#0x01,00102$
   1F67 C0 02               796 	push	ar2
   1F69 C0 03               797 	push	ar3
   1F6B C0 04               798 	push	ar4
   1F6D 12 1D 4C            799 	lcall	_lampOn
   1F70 D0 04               800 	pop	ar4
   1F72 D0 03               801 	pop	ar3
   1F74 D0 02               802 	pop	ar2
   1F76                     803 00102$:
                            804 ;	../sm_test_toaster.c:135: ON_EXIT(	lampOff()) ;
   1F76 8A 82               805 	mov	dpl,r2
   1F78 8B 83               806 	mov	dph,r3
   1F7A 8C F0               807 	mov	b,r4
   1F7C 12 44 37            808 	lcall	__gptrget
   1F7F FA                  809 	mov	r2,a
   1F80 BA 01 03            810 	cjne	r2,#0x01,00104$
   1F83 12 1D 4D            811 	lcall	_lampOff
   1F86                     812 00104$:
                            813 ;	../sm_test_toaster.c:139: END_DEFINE_STATE()
   1F86 75 82 00            814 	mov	dpl,#0x00
   1F89 D0 1F               815 	pop	_bp
   1F8B 22                  816 	ret
                            817 	.area CSEG    (CODE)
                            818 	.area CONST   (CODE)
   4742                     819 _toaster_TOP:
                            820 ; generic printIvalPtr
   4742 00 00 00            821 	.byte #0x00,#0x00,#0x00
   4745 00                  822 	.db #0x00
   4746 4E 1D               823 	.byte _toaster_TOP_handler,(_toaster_TOP_handler >> 8)
   4748 89 47 80            824 	.byte _str_1,(_str_1 >> 8),#0x80
   474B                     825 _toaster_doorClosed:
   474B 42 47 80            826 	.byte _toaster_TOP,(_toaster_TOP >> 8),#0x80
   474E 00                  827 	.db #0x00
   474F D5 1D               828 	.byte _toaster_doorClosed_handler,(_toaster_doorClosed_handler >> 8)
   4751 95 47 80            829 	.byte _str_2,(_str_2 >> 8),#0x80
   4754                     830 _toaster_heating:
   4754 4B 47 80            831 	.byte _toaster_doorClosed,(_toaster_doorClosed >> 8),#0x80
   4757 00                  832 	.db #0x00
   4758 E3 1E               833 	.byte _toaster_heating_handler,(_toaster_heating_handler >> 8)
   475A A8 47 80            834 	.byte _str_3,(_str_3 >> 8),#0x80
   475D                     835 _toaster_baking:
   475D 4B 47 80            836 	.byte _toaster_doorClosed,(_toaster_doorClosed >> 8),#0x80
   4760 00                  837 	.db #0x00
   4761 27 1F               838 	.byte _toaster_baking_handler,(_toaster_baking_handler >> 8)
   4763 B8 47 80            839 	.byte _str_4,(_str_4 >> 8),#0x80
   4766                     840 _toaster_toasting:
   4766 4B 47 80            841 	.byte _toaster_doorClosed,(_toaster_doorClosed >> 8),#0x80
   4769 00                  842 	.db #0x00
   476A 32 1F               843 	.byte _toaster_toasting_handler,(_toaster_toasting_handler >> 8)
   476C C7 47 80            844 	.byte _str_5,(_str_5 >> 8),#0x80
   476F                     845 _toaster_off:
   476F 4B 47 80            846 	.byte _toaster_doorClosed,(_toaster_doorClosed >> 8),#0x80
   4772 00                  847 	.db #0x00
   4773 3D 1F               848 	.byte _toaster_off_handler,(_toaster_off_handler >> 8)
   4775 D8 47 80            849 	.byte _str_6,(_str_6 >> 8),#0x80
   4778                     850 _toaster_doorOpen:
   4778 42 47 80            851 	.byte _toaster_TOP,(_toaster_TOP >> 8),#0x80
   477B 00                  852 	.db #0x00
   477C 48 1F               853 	.byte _toaster_doorOpen_handler,(_toaster_doorOpen_handler >> 8)
   477E E4 47 80            854 	.byte _str_7,(_str_7 >> 8),#0x80
   4781                     855 __str_0:
   4781 74 6F 61 73 74 65   856 	.ascii "toaster"
        72
   4788 00                  857 	.db 0x00
   4789                     858 _str_1:
   4789 74 6F 61 73 74 65   859 	.ascii "toaster_TOP"
        72 5F 54 4F 50
   4794 00                  860 	.db 0x00
   4795                     861 _str_2:
   4795 74 6F 61 73 74 65   862 	.ascii "toaster_doorClosed"
        72 5F 64 6F 6F 72
        43 6C 6F 73 65 64
   47A7 00                  863 	.db 0x00
   47A8                     864 _str_3:
   47A8 74 6F 61 73 74 65   865 	.ascii "toaster_heating"
        72 5F 68 65 61 74
        69 6E 67
   47B7 00                  866 	.db 0x00
   47B8                     867 _str_4:
   47B8 74 6F 61 73 74 65   868 	.ascii "toaster_baking"
        72 5F 62 61 6B 69
        6E 67
   47C6 00                  869 	.db 0x00
   47C7                     870 _str_5:
   47C7 74 6F 61 73 74 65   871 	.ascii "toaster_toasting"
        72 5F 74 6F 61 73
        74 69 6E 67
   47D7 00                  872 	.db 0x00
   47D8                     873 _str_6:
   47D8 74 6F 61 73 74 65   874 	.ascii "toaster_off"
        72 5F 6F 66 66
   47E3 00                  875 	.db 0x00
   47E4                     876 _str_7:
   47E4 74 6F 61 73 74 65   877 	.ascii "toaster_doorOpen"
        72 5F 64 6F 6F 72
        4F 70 65 6E
   47F4 00                  878 	.db 0x00
                            879 	.area XINIT   (CODE)
   4B4D                     880 __xinit__toaster_name:
   4B4D 81 47 80            881 	.byte __str_0,(__str_0 >> 8),#0x80
                            882 	.area CABS    (ABS,CODE)
