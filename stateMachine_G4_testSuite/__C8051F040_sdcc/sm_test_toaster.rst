                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 2.9.0 #5416 (Mar 22 2009) (MINGW32)
                              4 ; This file was generated Sat Jan 02 19:24:44 2010
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
                             19 	.globl _toaster_getHistoryQueueDepth
                             20 	.globl _toaster_getMachineSize
                             21 	.globl _toaster_constructor2
                             22 	.globl _toaster_destructor2
                             23 ;--------------------------------------------------------
                             24 ; special function registers
                             25 ;--------------------------------------------------------
                             26 	.area RSEG    (DATA)
                             27 ;--------------------------------------------------------
                             28 ; special function bits
                             29 ;--------------------------------------------------------
                             30 	.area RSEG    (DATA)
                             31 ;--------------------------------------------------------
                             32 ; overlayable register banks
                             33 ;--------------------------------------------------------
                             34 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                      35 	.ds 8
                             36 ;--------------------------------------------------------
                             37 ; internal ram data
                             38 ;--------------------------------------------------------
                             39 	.area DSEG    (DATA)
   0027                      40 _toaster_constructor_sloc0_1_0:
   0027                      41 	.ds 3
                             42 ;--------------------------------------------------------
                             43 ; overlayable items in internal ram 
                             44 ;--------------------------------------------------------
                             45 	.area OSEG    (OVR,DATA)
                             46 ;--------------------------------------------------------
                             47 ; indirectly addressable internal ram data
                             48 ;--------------------------------------------------------
                             49 	.area ISEG    (DATA)
                             50 ;--------------------------------------------------------
                             51 ; absolute internal ram data
                             52 ;--------------------------------------------------------
                             53 	.area IABS    (ABS,DATA)
                             54 	.area IABS    (ABS,DATA)
                             55 ;--------------------------------------------------------
                             56 ; bit data
                             57 ;--------------------------------------------------------
                             58 	.area BSEG    (BIT)
                             59 ;--------------------------------------------------------
                             60 ; paged external ram data
                             61 ;--------------------------------------------------------
                             62 	.area PSEG    (PAG,XDATA)
                             63 ;--------------------------------------------------------
                             64 ; external ram data
                             65 ;--------------------------------------------------------
                             66 	.area XSEG    (XDATA)
   091C                      67 _toaster_constructor_base_1_1:
   091C                      68 	.ds 3
   091F                      69 _toaster_destructor_self_1_1:
   091F                      70 	.ds 3
   0922                      71 _toaster_constructor2_self_1_1:
   0922                      72 	.ds 3
                             73 ;--------------------------------------------------------
                             74 ; absolute external ram data
                             75 ;--------------------------------------------------------
                             76 	.area XABS    (ABS,XDATA)
                             77 ;--------------------------------------------------------
                             78 ; external initialized ram data
                             79 ;--------------------------------------------------------
                             80 	.area XISEG   (XDATA)
   0EEC                      81 _toaster_name:
   0EEC                      82 	.ds 3
                             83 	.area HOME    (CODE)
                             84 	.area GSINIT0 (CODE)
                             85 	.area GSINIT1 (CODE)
                             86 	.area GSINIT2 (CODE)
                             87 	.area GSINIT3 (CODE)
                             88 	.area GSINIT4 (CODE)
                             89 	.area GSINIT5 (CODE)
                             90 	.area GSINIT  (CODE)
                             91 	.area GSFINAL (CODE)
                             92 	.area CSEG    (CODE)
                             93 ;--------------------------------------------------------
                             94 ; global & static initialisations
                             95 ;--------------------------------------------------------
                             96 	.area HOME    (CODE)
                             97 	.area GSINIT  (CODE)
                             98 	.area GSFINAL (CODE)
                             99 	.area GSINIT  (CODE)
                            100 ;--------------------------------------------------------
                            101 ; Home
                            102 ;--------------------------------------------------------
                            103 	.area HOME    (CODE)
                            104 	.area HOME    (CODE)
                            105 ;--------------------------------------------------------
                            106 ; code
                            107 ;--------------------------------------------------------
                            108 	.area CSEG    (CODE)
                            109 ;------------------------------------------------------------
                            110 ;Allocation info for local variables in function 'toaster_getEventQueueDepth'
                            111 ;------------------------------------------------------------
                            112 ;------------------------------------------------------------
                            113 ;	../sm_test_toaster.c:26: SET_EVENT_QUEUE_DEPTH(config_toastEVENT_QUEUE_DEPTH) ;
                            114 ;	-----------------------------------------
                            115 ;	 function toaster_getEventQueueDepth
                            116 ;	-----------------------------------------
   1BD4                     117 _toaster_getEventQueueDepth:
                    0002    118 	ar2 = 0x02
                    0003    119 	ar3 = 0x03
                    0004    120 	ar4 = 0x04
                    0005    121 	ar5 = 0x05
                    0006    122 	ar6 = 0x06
                    0007    123 	ar7 = 0x07
                    0000    124 	ar0 = 0x00
                    0001    125 	ar1 = 0x01
   1BD4 90 00 08            126 	mov	dptr,#0x0008
   1BD7 22                  127 	ret
                            128 ;------------------------------------------------------------
                            129 ;Allocation info for local variables in function 'toaster_constructor'
                            130 ;------------------------------------------------------------
                            131 ;sloc0                     Allocated with name '_toaster_constructor_sloc0_1_0'
                            132 ;base                      Allocated with name '_toaster_constructor_base_1_1'
                            133 ;------------------------------------------------------------
                            134 ;	../sm_test_toaster.c:40: END_STATE_MACHINE_DEFINITION() ;
                            135 ;	-----------------------------------------
                            136 ;	 function toaster_constructor
                            137 ;	-----------------------------------------
   1BD8                     138 _toaster_constructor:
   1BD8 AA F0               139 	mov	r2,b
   1BDA AB 83               140 	mov	r3,dph
   1BDC E5 82               141 	mov	a,dpl
   1BDE 90 09 1C            142 	mov	dptr,#_toaster_constructor_base_1_1
   1BE1 F0                  143 	movx	@dptr,a
   1BE2 A3                  144 	inc	dptr
   1BE3 EB                  145 	mov	a,r3
   1BE4 F0                  146 	movx	@dptr,a
   1BE5 A3                  147 	inc	dptr
   1BE6 EA                  148 	mov	a,r2
   1BE7 F0                  149 	movx	@dptr,a
   1BE8 90 09 1C            150 	mov	dptr,#_toaster_constructor_base_1_1
   1BEB E0                  151 	movx	a,@dptr
   1BEC FA                  152 	mov	r2,a
   1BED A3                  153 	inc	dptr
   1BEE E0                  154 	movx	a,@dptr
   1BEF FB                  155 	mov	r3,a
   1BF0 A3                  156 	inc	dptr
   1BF1 E0                  157 	movx	a,@dptr
   1BF2 FC                  158 	mov	r4,a
   1BF3 8A 82               159 	mov	dpl,r2
   1BF5 8B 83               160 	mov	dph,r3
   1BF7 8C F0               161 	mov	b,r4
   1BF9 74 51               162 	mov	a,#_toaster_TOP
   1BFB 12 41 10            163 	lcall	__gptrput
   1BFE A3                  164 	inc	dptr
   1BFF 74 50               165 	mov	a,#(_toaster_TOP >> 8)
   1C01 12 41 10            166 	lcall	__gptrput
   1C04 74 05               167 	mov	a,#0x05
   1C06 2A                  168 	add	a,r2
   1C07 FD                  169 	mov	r5,a
   1C08 E4                  170 	clr	a
   1C09 3B                  171 	addc	a,r3
   1C0A FE                  172 	mov	r6,a
   1C0B 8C 07               173 	mov	ar7,r4
   1C0D 8D 82               174 	mov	dpl,r5
   1C0F 8E 83               175 	mov	dph,r6
   1C11 8F F0               176 	mov	b,r7
   1C13 74 51               177 	mov	a,#_toaster_TOP
   1C15 12 41 10            178 	lcall	__gptrput
   1C18 A3                  179 	inc	dptr
   1C19 74 50               180 	mov	a,#(_toaster_TOP >> 8)
   1C1B 12 41 10            181 	lcall	__gptrput
   1C1E A3                  182 	inc	dptr
   1C1F 74 80               183 	mov	a,#0x80
   1C21 12 41 10            184 	lcall	__gptrput
   1C24 74 02               185 	mov	a,#0x02
   1C26 2A                  186 	add	a,r2
   1C27 F5 27               187 	mov	_toaster_constructor_sloc0_1_0,a
   1C29 E4                  188 	clr	a
   1C2A 3B                  189 	addc	a,r3
   1C2B F5 28               190 	mov	(_toaster_constructor_sloc0_1_0 + 1),a
   1C2D 8C 29               191 	mov	(_toaster_constructor_sloc0_1_0 + 2),r4
   1C2F 90 0E EC            192 	mov	dptr,#_toaster_name
   1C32 E0                  193 	movx	a,@dptr
   1C33 F8                  194 	mov	r0,a
   1C34 A3                  195 	inc	dptr
   1C35 E0                  196 	movx	a,@dptr
   1C36 F9                  197 	mov	r1,a
   1C37 A3                  198 	inc	dptr
   1C38 E0                  199 	movx	a,@dptr
   1C39 FD                  200 	mov	r5,a
   1C3A 85 27 82            201 	mov	dpl,_toaster_constructor_sloc0_1_0
   1C3D 85 28 83            202 	mov	dph,(_toaster_constructor_sloc0_1_0 + 1)
   1C40 85 29 F0            203 	mov	b,(_toaster_constructor_sloc0_1_0 + 2)
   1C43 E8                  204 	mov	a,r0
   1C44 12 41 10            205 	lcall	__gptrput
   1C47 A3                  206 	inc	dptr
   1C48 E9                  207 	mov	a,r1
   1C49 12 41 10            208 	lcall	__gptrput
   1C4C A3                  209 	inc	dptr
   1C4D ED                  210 	mov	a,r5
   1C4E 12 41 10            211 	lcall	__gptrput
   1C51 8A 82               212 	mov	dpl,r2
   1C53 8B 83               213 	mov	dph,r3
   1C55 8C F0               214 	mov	b,r4
   1C57 02 1C 86            215 	ljmp	_toaster_constructor2
                            216 ;------------------------------------------------------------
                            217 ;Allocation info for local variables in function 'toaster_destructor'
                            218 ;------------------------------------------------------------
                            219 ;self                      Allocated with name '_toaster_destructor_self_1_1'
                            220 ;------------------------------------------------------------
                            221 ;	../sm_test_toaster.c:40: 
                            222 ;	-----------------------------------------
                            223 ;	 function toaster_destructor
                            224 ;	-----------------------------------------
   1C5A                     225 _toaster_destructor:
   1C5A AA F0               226 	mov	r2,b
   1C5C AB 83               227 	mov	r3,dph
   1C5E E5 82               228 	mov	a,dpl
   1C60 90 09 1F            229 	mov	dptr,#_toaster_destructor_self_1_1
   1C63 F0                  230 	movx	@dptr,a
   1C64 A3                  231 	inc	dptr
   1C65 EB                  232 	mov	a,r3
   1C66 F0                  233 	movx	@dptr,a
   1C67 A3                  234 	inc	dptr
   1C68 EA                  235 	mov	a,r2
   1C69 F0                  236 	movx	@dptr,a
   1C6A 90 09 1F            237 	mov	dptr,#_toaster_destructor_self_1_1
   1C6D E0                  238 	movx	a,@dptr
   1C6E FA                  239 	mov	r2,a
   1C6F A3                  240 	inc	dptr
   1C70 E0                  241 	movx	a,@dptr
   1C71 FB                  242 	mov	r3,a
   1C72 A3                  243 	inc	dptr
   1C73 E0                  244 	movx	a,@dptr
   1C74 FC                  245 	mov	r4,a
   1C75 8A 82               246 	mov	dpl,r2
   1C77 8B 83               247 	mov	dph,r3
   1C79 8C F0               248 	mov	b,r4
   1C7B 02 1C D8            249 	ljmp	_toaster_destructor2
                            250 ;------------------------------------------------------------
                            251 ;Allocation info for local variables in function 'toaster_getHistoryQueueDepth'
                            252 ;------------------------------------------------------------
                            253 ;------------------------------------------------------------
                            254 ;	../sm_test_toaster.c:40: END_STATE_MACHINE_DEFINITION() ;
                            255 ;	-----------------------------------------
                            256 ;	 function toaster_getHistoryQueueDepth
                            257 ;	-----------------------------------------
   1C7E                     258 _toaster_getHistoryQueueDepth:
   1C7E 90 00 30            259 	mov	dptr,#0x0030
   1C81 22                  260 	ret
                            261 ;------------------------------------------------------------
                            262 ;Allocation info for local variables in function 'toaster_getMachineSize'
                            263 ;------------------------------------------------------------
                            264 ;------------------------------------------------------------
                            265 ;	../sm_test_toaster.c:40: 
                            266 ;	-----------------------------------------
                            267 ;	 function toaster_getMachineSize
                            268 ;	-----------------------------------------
   1C82                     269 _toaster_getMachineSize:
   1C82 90 00 2E            270 	mov	dptr,#0x002E
   1C85 22                  271 	ret
                            272 ;------------------------------------------------------------
                            273 ;Allocation info for local variables in function 'toaster_constructor2'
                            274 ;------------------------------------------------------------
                            275 ;self                      Allocated with name '_toaster_constructor2_self_1_1'
                            276 ;------------------------------------------------------------
                            277 ;	../sm_test_toaster.c:43: STATE_MACHINE_CONSTRUCTOR()
                            278 ;	-----------------------------------------
                            279 ;	 function toaster_constructor2
                            280 ;	-----------------------------------------
   1C86                     281 _toaster_constructor2:
   1C86 AA F0               282 	mov	r2,b
   1C88 AB 83               283 	mov	r3,dph
   1C8A E5 82               284 	mov	a,dpl
   1C8C 90 09 22            285 	mov	dptr,#_toaster_constructor2_self_1_1
   1C8F F0                  286 	movx	@dptr,a
   1C90 A3                  287 	inc	dptr
   1C91 EB                  288 	mov	a,r3
   1C92 F0                  289 	movx	@dptr,a
   1C93 A3                  290 	inc	dptr
   1C94 EA                  291 	mov	a,r2
   1C95 F0                  292 	movx	@dptr,a
                            293 ;	../sm_test_toaster.c:45: self->cookingTime_hours		= 0 ;
   1C96 90 09 22            294 	mov	dptr,#_toaster_constructor2_self_1_1
   1C99 E0                  295 	movx	a,@dptr
   1C9A FA                  296 	mov	r2,a
   1C9B A3                  297 	inc	dptr
   1C9C E0                  298 	movx	a,@dptr
   1C9D FB                  299 	mov	r3,a
   1C9E A3                  300 	inc	dptr
   1C9F E0                  301 	movx	a,@dptr
   1CA0 FC                  302 	mov	r4,a
   1CA1 74 2B               303 	mov	a,#0x2B
   1CA3 2A                  304 	add	a,r2
   1CA4 FD                  305 	mov	r5,a
   1CA5 E4                  306 	clr	a
   1CA6 3B                  307 	addc	a,r3
   1CA7 FE                  308 	mov	r6,a
   1CA8 8C 07               309 	mov	ar7,r4
   1CAA 8D 82               310 	mov	dpl,r5
   1CAC 8E 83               311 	mov	dph,r6
   1CAE 8F F0               312 	mov	b,r7
   1CB0 E4                  313 	clr	a
   1CB1 12 41 10            314 	lcall	__gptrput
                            315 ;	../sm_test_toaster.c:46: self->cookingTime_minutes	= 0 ;
   1CB4 74 2C               316 	mov	a,#0x2C
   1CB6 2A                  317 	add	a,r2
   1CB7 FD                  318 	mov	r5,a
   1CB8 E4                  319 	clr	a
   1CB9 3B                  320 	addc	a,r3
   1CBA FE                  321 	mov	r6,a
   1CBB 8C 07               322 	mov	ar7,r4
   1CBD 8D 82               323 	mov	dpl,r5
   1CBF 8E 83               324 	mov	dph,r6
   1CC1 8F F0               325 	mov	b,r7
   1CC3 E4                  326 	clr	a
   1CC4 12 41 10            327 	lcall	__gptrput
                            328 ;	../sm_test_toaster.c:47: self->cookingTime_seconds	= 0 ;
   1CC7 74 2D               329 	mov	a,#0x2D
   1CC9 2A                  330 	add	a,r2
   1CCA FA                  331 	mov	r2,a
   1CCB E4                  332 	clr	a
   1CCC 3B                  333 	addc	a,r3
   1CCD FB                  334 	mov	r3,a
   1CCE 8A 82               335 	mov	dpl,r2
   1CD0 8B 83               336 	mov	dph,r3
   1CD2 8C F0               337 	mov	b,r4
   1CD4 E4                  338 	clr	a
   1CD5 02 41 10            339 	ljmp	__gptrput
                            340 ;------------------------------------------------------------
                            341 ;Allocation info for local variables in function 'toaster_destructor2'
                            342 ;------------------------------------------------------------
                            343 ;self                      Allocated with name '_toaster_destructor2_self_1_1'
                            344 ;------------------------------------------------------------
                            345 ;	../sm_test_toaster.c:51: STATE_MACHINE_DESTRUCTOR()
                            346 ;	-----------------------------------------
                            347 ;	 function toaster_destructor2
                            348 ;	-----------------------------------------
   1CD8                     349 _toaster_destructor2:
                            350 ;	../sm_test_toaster.c:53: (void)self ;	/* Nothing to do here */
   1CD8 22                  351 	ret
                            352 ;------------------------------------------------------------
                            353 ;Allocation info for local variables in function 'heaterOn'
                            354 ;------------------------------------------------------------
                            355 ;------------------------------------------------------------
                            356 ;	../sm_test_toaster.c:57: void heaterOn(	void)
                            357 ;	-----------------------------------------
                            358 ;	 function heaterOn
                            359 ;	-----------------------------------------
   1CD9                     360 _heaterOn:
                            361 ;	../sm_test_toaster.c:59: }
   1CD9 22                  362 	ret
                            363 ;------------------------------------------------------------
                            364 ;Allocation info for local variables in function 'heaterOff'
                            365 ;------------------------------------------------------------
                            366 ;------------------------------------------------------------
                            367 ;	../sm_test_toaster.c:62: void heaterOff(	void)
                            368 ;	-----------------------------------------
                            369 ;	 function heaterOff
                            370 ;	-----------------------------------------
   1CDA                     371 _heaterOff:
                            372 ;	../sm_test_toaster.c:64: }
   1CDA 22                  373 	ret
                            374 ;------------------------------------------------------------
                            375 ;Allocation info for local variables in function 'lampOn'
                            376 ;------------------------------------------------------------
                            377 ;------------------------------------------------------------
                            378 ;	../sm_test_toaster.c:67: void lampOn(	void)
                            379 ;	-----------------------------------------
                            380 ;	 function lampOn
                            381 ;	-----------------------------------------
   1CDB                     382 _lampOn:
                            383 ;	../sm_test_toaster.c:69: }
   1CDB 22                  384 	ret
                            385 ;------------------------------------------------------------
                            386 ;Allocation info for local variables in function 'lampOff'
                            387 ;------------------------------------------------------------
                            388 ;------------------------------------------------------------
                            389 ;	../sm_test_toaster.c:72: void lampOff(	void)
                            390 ;	-----------------------------------------
                            391 ;	 function lampOff
                            392 ;	-----------------------------------------
   1CDC                     393 _lampOff:
                            394 ;	../sm_test_toaster.c:74: }
   1CDC 22                  395 	ret
                            396 ;------------------------------------------------------------
                            397 ;Allocation info for local variables in function 'toaster_TOP_handler'
                            398 ;------------------------------------------------------------
                            399 ;event                     Allocated to stack - offset -5
                            400 ;self                      Allocated to registers r2 r3 r4 
                            401 ;stateResponseCode         Allocated to registers 
                            402 ;------------------------------------------------------------
                            403 ;	../sm_test_toaster.c:77: DEFINE_TOP_STATE()
                            404 ;	-----------------------------------------
                            405 ;	 function toaster_TOP_handler
                            406 ;	-----------------------------------------
   1CDD                     407 _toaster_TOP_handler:
   1CDD C0 1F               408 	push	_bp
   1CDF 85 81 1F            409 	mov	_bp,sp
   1CE2 AA 82               410 	mov	r2,dpl
   1CE4 AB 83               411 	mov	r3,dph
   1CE6 AC F0               412 	mov	r4,b
                            413 ;	../sm_test_toaster.c:79: self->cookingTime_hours		= 0 ;
   1CE8 74 2B               414 	mov	a,#0x2B
   1CEA 2A                  415 	add	a,r2
   1CEB FD                  416 	mov	r5,a
   1CEC E4                  417 	clr	a
   1CED 3B                  418 	addc	a,r3
   1CEE FE                  419 	mov	r6,a
   1CEF 8C 07               420 	mov	ar7,r4
   1CF1 8D 82               421 	mov	dpl,r5
   1CF3 8E 83               422 	mov	dph,r6
   1CF5 8F F0               423 	mov	b,r7
   1CF7 E4                  424 	clr	a
   1CF8 12 41 10            425 	lcall	__gptrput
                            426 ;	../sm_test_toaster.c:80: self->cookingTime_minutes	= 0 ;
   1CFB 74 2C               427 	mov	a,#0x2C
   1CFD 2A                  428 	add	a,r2
   1CFE FD                  429 	mov	r5,a
   1CFF E4                  430 	clr	a
   1D00 3B                  431 	addc	a,r3
   1D01 FE                  432 	mov	r6,a
   1D02 8C 07               433 	mov	ar7,r4
   1D04 8D 82               434 	mov	dpl,r5
   1D06 8E 83               435 	mov	dph,r6
   1D08 8F F0               436 	mov	b,r7
   1D0A E4                  437 	clr	a
   1D0B 12 41 10            438 	lcall	__gptrput
                            439 ;	../sm_test_toaster.c:81: self->cookingTime_seconds	= 0 ;
   1D0E 74 2D               440 	mov	a,#0x2D
   1D10 2A                  441 	add	a,r2
   1D11 FD                  442 	mov	r5,a
   1D12 E4                  443 	clr	a
   1D13 3B                  444 	addc	a,r3
   1D14 FE                  445 	mov	r6,a
   1D15 8C 07               446 	mov	ar7,r4
   1D17 8D 82               447 	mov	dpl,r5
   1D19 8E 83               448 	mov	dph,r6
   1D1B 8F F0               449 	mov	b,r7
   1D1D E4                  450 	clr	a
   1D1E 12 41 10            451 	lcall	__gptrput
                            452 ;	../sm_test_toaster.c:83: INITIAL_TRANSITION(TO(doorClosed),						NO_ACTION) ;
   1D21 E5 1F               453 	mov	a,_bp
   1D23 24 FB               454 	add	a,#0xfb
   1D25 F8                  455 	mov	r0,a
   1D26 86 05               456 	mov	ar5,@r0
   1D28 08                  457 	inc	r0
   1D29 86 06               458 	mov	ar6,@r0
   1D2B 08                  459 	inc	r0
   1D2C 86 07               460 	mov	ar7,@r0
   1D2E 8D 82               461 	mov	dpl,r5
   1D30 8E 83               462 	mov	dph,r6
   1D32 8F F0               463 	mov	b,r7
   1D34 12 4D 3C            464 	lcall	__gptrget
   1D37 FD                  465 	mov	r5,a
   1D38 BD 02 23            466 	cjne	r5,#0x02,00102$
   1D3B 74 08               467 	mov	a,#0x08
   1D3D 2A                  468 	add	a,r2
   1D3E FA                  469 	mov	r2,a
   1D3F E4                  470 	clr	a
   1D40 3B                  471 	addc	a,r3
   1D41 FB                  472 	mov	r3,a
   1D42 8A 82               473 	mov	dpl,r2
   1D44 8B 83               474 	mov	dph,r3
   1D46 8C F0               475 	mov	b,r4
   1D48 74 5A               476 	mov	a,#_toaster_doorClosed
   1D4A 12 41 10            477 	lcall	__gptrput
   1D4D A3                  478 	inc	dptr
   1D4E 74 50               479 	mov	a,#(_toaster_doorClosed >> 8)
   1D50 12 41 10            480 	lcall	__gptrput
   1D53 A3                  481 	inc	dptr
   1D54 74 80               482 	mov	a,#0x80
   1D56 12 41 10            483 	lcall	__gptrput
   1D59 75 82 02            484 	mov	dpl,#0x02
   1D5C 80 03               485 	sjmp	00103$
   1D5E                     486 00102$:
                            487 ;	../sm_test_toaster.c:85: END_DEFINE_STATE()
   1D5E 75 82 00            488 	mov	dpl,#0x00
   1D61                     489 00103$:
   1D61 D0 1F               490 	pop	_bp
   1D63 22                  491 	ret
                            492 ;------------------------------------------------------------
                            493 ;Allocation info for local variables in function 'toaster_doorClosed_handler'
                            494 ;------------------------------------------------------------
                            495 ;event                     Allocated to stack - offset -5
                            496 ;self                      Allocated to stack - offset 1
                            497 ;stateResponseCode         Allocated to registers 
                            498 ;stateResponseCode         Allocated to registers 
                            499 ;stateResponseCode         Allocated to registers 
                            500 ;stateResponseCode         Allocated to registers 
                            501 ;stateResponseCode         Allocated to registers 
                            502 ;stateResponseCode         Allocated to registers 
                            503 ;stateResponseCode         Allocated to registers 
                            504 ;------------------------------------------------------------
                            505 ;	../sm_test_toaster.c:88: DEFINE_STATE(doorClosed)
                            506 ;	-----------------------------------------
                            507 ;	 function toaster_doorClosed_handler
                            508 ;	-----------------------------------------
   1D64                     509 _toaster_doorClosed_handler:
   1D64 C0 1F               510 	push	_bp
   1D66 85 81 1F            511 	mov	_bp,sp
   1D69 C0 82               512 	push	dpl
   1D6B C0 83               513 	push	dph
   1D6D C0 F0               514 	push	b
                            515 ;	../sm_test_toaster.c:90: SET_HISTORY_DEFAULT_STATE(off,							NO_ACTION) ;
   1D6F E5 1F               516 	mov	a,_bp
   1D71 24 FB               517 	add	a,#0xfb
   1D73 F8                  518 	mov	r0,a
   1D74 86 05               519 	mov	ar5,@r0
   1D76 08                  520 	inc	r0
   1D77 86 06               521 	mov	ar6,@r0
   1D79 08                  522 	inc	r0
   1D7A 86 07               523 	mov	ar7,@r0
   1D7C 8D 82               524 	mov	dpl,r5
   1D7E 8E 83               525 	mov	dph,r6
   1D80 8F F0               526 	mov	b,r7
   1D82 12 4D 3C            527 	lcall	__gptrget
   1D85 FD                  528 	mov	r5,a
   1D86 E4                  529 	clr	a
   1D87 BD 03 01            530 	cjne	r5,#0x03,00124$
   1D8A 04                  531 	inc	a
   1D8B                     532 00124$:
   1D8B FE                  533 	mov	r6,a
   1D8C 60 2B               534 	jz	00102$
   1D8E A8 1F               535 	mov	r0,_bp
   1D90 08                  536 	inc	r0
   1D91 74 08               537 	mov	a,#0x08
   1D93 26                  538 	add	a,@r0
   1D94 FF                  539 	mov	r7,a
   1D95 E4                  540 	clr	a
   1D96 08                  541 	inc	r0
   1D97 36                  542 	addc	a,@r0
   1D98 FA                  543 	mov	r2,a
   1D99 08                  544 	inc	r0
   1D9A 86 03               545 	mov	ar3,@r0
   1D9C 8F 82               546 	mov	dpl,r7
   1D9E 8A 83               547 	mov	dph,r2
   1DA0 8B F0               548 	mov	b,r3
   1DA2 74 80               549 	mov	a,#_toaster_off
   1DA4 12 41 10            550 	lcall	__gptrput
   1DA7 A3                  551 	inc	dptr
   1DA8 74 50               552 	mov	a,#(_toaster_off >> 8)
   1DAA 12 41 10            553 	lcall	__gptrput
   1DAD A3                  554 	inc	dptr
   1DAE 74 80               555 	mov	a,#0x80
   1DB0 12 41 10            556 	lcall	__gptrput
   1DB3 75 82 02            557 	mov	dpl,#0x02
   1DB6 02 1E CD            558 	ljmp	00115$
   1DB9                     559 00102$:
                            560 ;	../sm_test_toaster.c:91: SET_HISTORY_DEFAULT_STATE(HISTORY_OF(off),				NO_ACTION) ;
   1DB9 EE                  561 	mov	a,r6
   1DBA 60 2B               562 	jz	00104$
   1DBC A8 1F               563 	mov	r0,_bp
   1DBE 08                  564 	inc	r0
   1DBF 74 08               565 	mov	a,#0x08
   1DC1 26                  566 	add	a,@r0
   1DC2 FA                  567 	mov	r2,a
   1DC3 E4                  568 	clr	a
   1DC4 08                  569 	inc	r0
   1DC5 36                  570 	addc	a,@r0
   1DC6 FB                  571 	mov	r3,a
   1DC7 08                  572 	inc	r0
   1DC8 86 04               573 	mov	ar4,@r0
   1DCA 8A 82               574 	mov	dpl,r2
   1DCC 8B 83               575 	mov	dph,r3
   1DCE 8C F0               576 	mov	b,r4
   1DD0 74 80               577 	mov	a,#_toaster_off
   1DD2 12 41 10            578 	lcall	__gptrput
   1DD5 A3                  579 	inc	dptr
   1DD6 74 50               580 	mov	a,#(_toaster_off >> 8)
   1DD8 12 41 10            581 	lcall	__gptrput
   1DDB A3                  582 	inc	dptr
   1DDC 74 80               583 	mov	a,#0x80
   1DDE 12 41 10            584 	lcall	__gptrput
   1DE1 75 82 03            585 	mov	dpl,#0x03
   1DE4 02 1E CD            586 	ljmp	00115$
   1DE7                     587 00104$:
                            588 ;	../sm_test_toaster.c:93: INITIAL_TRANSITION(TO(off),								NO_ACTION) ;
   1DE7 BD 02 2B            589 	cjne	r5,#0x02,00106$
   1DEA A8 1F               590 	mov	r0,_bp
   1DEC 08                  591 	inc	r0
   1DED 74 08               592 	mov	a,#0x08
   1DEF 26                  593 	add	a,@r0
   1DF0 FA                  594 	mov	r2,a
   1DF1 E4                  595 	clr	a
   1DF2 08                  596 	inc	r0
   1DF3 36                  597 	addc	a,@r0
   1DF4 FB                  598 	mov	r3,a
   1DF5 08                  599 	inc	r0
   1DF6 86 04               600 	mov	ar4,@r0
   1DF8 8A 82               601 	mov	dpl,r2
   1DFA 8B 83               602 	mov	dph,r3
   1DFC 8C F0               603 	mov	b,r4
   1DFE 74 80               604 	mov	a,#_toaster_off
   1E00 12 41 10            605 	lcall	__gptrput
   1E03 A3                  606 	inc	dptr
   1E04 74 50               607 	mov	a,#(_toaster_off >> 8)
   1E06 12 41 10            608 	lcall	__gptrput
   1E09 A3                  609 	inc	dptr
   1E0A 74 80               610 	mov	a,#0x80
   1E0C 12 41 10            611 	lcall	__gptrput
   1E0F 75 82 02            612 	mov	dpl,#0x02
   1E12 02 1E CD            613 	ljmp	00115$
   1E15                     614 00106$:
                            615 ;	../sm_test_toaster.c:95: TRANSITION_ON(BAKE,		TO(baking),	NO_ACTION) ;
   1E15 BD 06 2B            616 	cjne	r5,#0x06,00108$
   1E18 A8 1F               617 	mov	r0,_bp
   1E1A 08                  618 	inc	r0
   1E1B 74 08               619 	mov	a,#0x08
   1E1D 26                  620 	add	a,@r0
   1E1E FA                  621 	mov	r2,a
   1E1F E4                  622 	clr	a
   1E20 08                  623 	inc	r0
   1E21 36                  624 	addc	a,@r0
   1E22 FB                  625 	mov	r3,a
   1E23 08                  626 	inc	r0
   1E24 86 04               627 	mov	ar4,@r0
   1E26 8A 82               628 	mov	dpl,r2
   1E28 8B 83               629 	mov	dph,r3
   1E2A 8C F0               630 	mov	b,r4
   1E2C 74 6E               631 	mov	a,#_toaster_baking
   1E2E 12 41 10            632 	lcall	__gptrput
   1E31 A3                  633 	inc	dptr
   1E32 74 50               634 	mov	a,#(_toaster_baking >> 8)
   1E34 12 41 10            635 	lcall	__gptrput
   1E37 A3                  636 	inc	dptr
   1E38 74 80               637 	mov	a,#0x80
   1E3A 12 41 10            638 	lcall	__gptrput
   1E3D 75 82 02            639 	mov	dpl,#0x02
   1E40 02 1E CD            640 	ljmp	00115$
   1E43                     641 00108$:
                            642 ;	../sm_test_toaster.c:96: TRANSITION_ON(TOAST,	TO(toasting),	NO_ACTION) ;
   1E43 BD 07 2A            643 	cjne	r5,#0x07,00110$
   1E46 A8 1F               644 	mov	r0,_bp
   1E48 08                  645 	inc	r0
   1E49 74 08               646 	mov	a,#0x08
   1E4B 26                  647 	add	a,@r0
   1E4C FA                  648 	mov	r2,a
   1E4D E4                  649 	clr	a
   1E4E 08                  650 	inc	r0
   1E4F 36                  651 	addc	a,@r0
   1E50 FB                  652 	mov	r3,a
   1E51 08                  653 	inc	r0
   1E52 86 04               654 	mov	ar4,@r0
   1E54 8A 82               655 	mov	dpl,r2
   1E56 8B 83               656 	mov	dph,r3
   1E58 8C F0               657 	mov	b,r4
   1E5A 74 77               658 	mov	a,#_toaster_toasting
   1E5C 12 41 10            659 	lcall	__gptrput
   1E5F A3                  660 	inc	dptr
   1E60 74 50               661 	mov	a,#(_toaster_toasting >> 8)
   1E62 12 41 10            662 	lcall	__gptrput
   1E65 A3                  663 	inc	dptr
   1E66 74 80               664 	mov	a,#0x80
   1E68 12 41 10            665 	lcall	__gptrput
   1E6B 75 82 02            666 	mov	dpl,#0x02
   1E6E 80 5D               667 	sjmp	00115$
   1E70                     668 00110$:
                            669 ;	../sm_test_toaster.c:97: TRANSITION_ON(OFF,		TO(off),		NO_ACTION) ;
   1E70 BD 08 2A            670 	cjne	r5,#0x08,00112$
   1E73 A8 1F               671 	mov	r0,_bp
   1E75 08                  672 	inc	r0
   1E76 74 08               673 	mov	a,#0x08
   1E78 26                  674 	add	a,@r0
   1E79 FA                  675 	mov	r2,a
   1E7A E4                  676 	clr	a
   1E7B 08                  677 	inc	r0
   1E7C 36                  678 	addc	a,@r0
   1E7D FB                  679 	mov	r3,a
   1E7E 08                  680 	inc	r0
   1E7F 86 04               681 	mov	ar4,@r0
   1E81 8A 82               682 	mov	dpl,r2
   1E83 8B 83               683 	mov	dph,r3
   1E85 8C F0               684 	mov	b,r4
   1E87 74 80               685 	mov	a,#_toaster_off
   1E89 12 41 10            686 	lcall	__gptrput
   1E8C A3                  687 	inc	dptr
   1E8D 74 50               688 	mov	a,#(_toaster_off >> 8)
   1E8F 12 41 10            689 	lcall	__gptrput
   1E92 A3                  690 	inc	dptr
   1E93 74 80               691 	mov	a,#0x80
   1E95 12 41 10            692 	lcall	__gptrput
   1E98 75 82 02            693 	mov	dpl,#0x02
   1E9B 80 30               694 	sjmp	00115$
   1E9D                     695 00112$:
                            696 ;	../sm_test_toaster.c:98: TRANSITION_ON(OPEN,		TO(off),		NO_ACTION) ;
   1E9D BD 09 2A            697 	cjne	r5,#0x09,00114$
   1EA0 A8 1F               698 	mov	r0,_bp
   1EA2 08                  699 	inc	r0
   1EA3 74 08               700 	mov	a,#0x08
   1EA5 26                  701 	add	a,@r0
   1EA6 FA                  702 	mov	r2,a
   1EA7 E4                  703 	clr	a
   1EA8 08                  704 	inc	r0
   1EA9 36                  705 	addc	a,@r0
   1EAA FB                  706 	mov	r3,a
   1EAB 08                  707 	inc	r0
   1EAC 86 04               708 	mov	ar4,@r0
   1EAE 8A 82               709 	mov	dpl,r2
   1EB0 8B 83               710 	mov	dph,r3
   1EB2 8C F0               711 	mov	b,r4
   1EB4 74 80               712 	mov	a,#_toaster_off
   1EB6 12 41 10            713 	lcall	__gptrput
   1EB9 A3                  714 	inc	dptr
   1EBA 74 50               715 	mov	a,#(_toaster_off >> 8)
   1EBC 12 41 10            716 	lcall	__gptrput
   1EBF A3                  717 	inc	dptr
   1EC0 74 80               718 	mov	a,#0x80
   1EC2 12 41 10            719 	lcall	__gptrput
   1EC5 75 82 02            720 	mov	dpl,#0x02
   1EC8 80 03               721 	sjmp	00115$
   1ECA                     722 00114$:
                            723 ;	../sm_test_toaster.c:100: END_DEFINE_STATE()
   1ECA 75 82 00            724 	mov	dpl,#0x00
   1ECD                     725 00115$:
   1ECD 85 1F 81            726 	mov	sp,_bp
   1ED0 D0 1F               727 	pop	_bp
   1ED2 22                  728 	ret
                            729 ;------------------------------------------------------------
                            730 ;Allocation info for local variables in function 'toaster_heating_handler'
                            731 ;------------------------------------------------------------
                            732 ;event                     Allocated to stack - offset -5
                            733 ;self                      Allocated to registers 
                            734 ;stateResponseCode         Allocated to registers 
                            735 ;------------------------------------------------------------
                            736 ;	../sm_test_toaster.c:103: DEFINE_STATE(heating)
                            737 ;	-----------------------------------------
                            738 ;	 function toaster_heating_handler
                            739 ;	-----------------------------------------
   1ED3                     740 _toaster_heating_handler:
   1ED3 C0 1F               741 	push	_bp
   1ED5 85 81 1F            742 	mov	_bp,sp
                            743 ;	../sm_test_toaster.c:105: ON_ENTRY(	heaterOn()) ;
   1ED8 E5 1F               744 	mov	a,_bp
   1EDA 24 FB               745 	add	a,#0xfb
   1EDC F8                  746 	mov	r0,a
   1EDD 86 02               747 	mov	ar2,@r0
   1EDF 08                  748 	inc	r0
   1EE0 86 03               749 	mov	ar3,@r0
   1EE2 08                  750 	inc	r0
   1EE3 86 04               751 	mov	ar4,@r0
   1EE5 8A 82               752 	mov	dpl,r2
   1EE7 8B 83               753 	mov	dph,r3
   1EE9 8C F0               754 	mov	b,r4
   1EEB 12 4D 3C            755 	lcall	__gptrget
   1EEE FA                  756 	mov	r2,a
   1EEF BA 01 08            757 	cjne	r2,#0x01,00102$
   1EF2 12 1C D9            758 	lcall	_heaterOn
   1EF5 75 82 01            759 	mov	dpl,#0x01
   1EF8 80 0E               760 	sjmp	00105$
   1EFA                     761 00102$:
                            762 ;	../sm_test_toaster.c:106: ON_EXIT(	heaterOff()) ;
   1EFA BA 05 08            763 	cjne	r2,#0x05,00104$
   1EFD 12 1C DA            764 	lcall	_heaterOff
   1F00 75 82 01            765 	mov	dpl,#0x01
   1F03 80 03               766 	sjmp	00105$
   1F05                     767 00104$:
                            768 ;	../sm_test_toaster.c:108: END_DEFINE_STATE()
   1F05 75 82 00            769 	mov	dpl,#0x00
   1F08                     770 00105$:
   1F08 D0 1F               771 	pop	_bp
   1F0A 22                  772 	ret
                            773 ;------------------------------------------------------------
                            774 ;Allocation info for local variables in function 'toaster_baking_handler'
                            775 ;------------------------------------------------------------
                            776 ;event                     Allocated to stack - offset -5
                            777 ;self                      Allocated to registers 
                            778 ;stateResponseCode         Allocated to registers 
                            779 ;------------------------------------------------------------
                            780 ;	../sm_test_toaster.c:111: DEFINE_STATE(baking)
                            781 ;	-----------------------------------------
                            782 ;	 function toaster_baking_handler
                            783 ;	-----------------------------------------
   1F0B                     784 _toaster_baking_handler:
   1F0B C0 1F               785 	push	_bp
   1F0D 85 81 1F            786 	mov	_bp,sp
                            787 ;	../sm_test_toaster.c:114: END_DEFINE_STATE()
   1F10 75 82 00            788 	mov	dpl,#0x00
   1F13 D0 1F               789 	pop	_bp
   1F15 22                  790 	ret
                            791 ;------------------------------------------------------------
                            792 ;Allocation info for local variables in function 'toaster_toasting_handler'
                            793 ;------------------------------------------------------------
                            794 ;event                     Allocated to stack - offset -5
                            795 ;self                      Allocated to registers 
                            796 ;stateResponseCode         Allocated to registers 
                            797 ;------------------------------------------------------------
                            798 ;	../sm_test_toaster.c:117: DEFINE_STATE(toasting)
                            799 ;	-----------------------------------------
                            800 ;	 function toaster_toasting_handler
                            801 ;	-----------------------------------------
   1F16                     802 _toaster_toasting_handler:
   1F16 C0 1F               803 	push	_bp
   1F18 85 81 1F            804 	mov	_bp,sp
                            805 ;	../sm_test_toaster.c:120: END_DEFINE_STATE()
   1F1B 75 82 00            806 	mov	dpl,#0x00
   1F1E D0 1F               807 	pop	_bp
   1F20 22                  808 	ret
                            809 ;------------------------------------------------------------
                            810 ;Allocation info for local variables in function 'toaster_off_handler'
                            811 ;------------------------------------------------------------
                            812 ;event                     Allocated to stack - offset -5
                            813 ;self                      Allocated to registers 
                            814 ;stateResponseCode         Allocated to registers 
                            815 ;------------------------------------------------------------
                            816 ;	../sm_test_toaster.c:123: DEFINE_STATE(off)
                            817 ;	-----------------------------------------
                            818 ;	 function toaster_off_handler
                            819 ;	-----------------------------------------
   1F21                     820 _toaster_off_handler:
   1F21 C0 1F               821 	push	_bp
   1F23 85 81 1F            822 	mov	_bp,sp
                            823 ;	../sm_test_toaster.c:125: heaterOff() ;
   1F26 12 1C DA            824 	lcall	_heaterOff
                            825 ;	../sm_test_toaster.c:126: lampOff() ;
   1F29 12 1C DC            826 	lcall	_lampOff
                            827 ;	../sm_test_toaster.c:128: END_DEFINE_STATE()
   1F2C 75 82 00            828 	mov	dpl,#0x00
   1F2F D0 1F               829 	pop	_bp
   1F31 22                  830 	ret
                            831 ;------------------------------------------------------------
                            832 ;Allocation info for local variables in function 'toaster_doorOpen_handler'
                            833 ;------------------------------------------------------------
                            834 ;event                     Allocated to stack - offset -5
                            835 ;self                      Allocated to registers r2 r3 r4 
                            836 ;stateResponseCode         Allocated to registers 
                            837 ;stateResponseCode         Allocated to registers 
                            838 ;sloc0                     Allocated to stack - offset 1
                            839 ;------------------------------------------------------------
                            840 ;	../sm_test_toaster.c:131: DEFINE_STATE(doorOpen)
                            841 ;	-----------------------------------------
                            842 ;	 function toaster_doorOpen_handler
                            843 ;	-----------------------------------------
   1F32                     844 _toaster_doorOpen_handler:
   1F32 C0 1F               845 	push	_bp
   1F34 85 81 1F            846 	mov	_bp,sp
   1F37 05 81               847 	inc	sp
   1F39 AA 82               848 	mov	r2,dpl
   1F3B AB 83               849 	mov	r3,dph
   1F3D AC F0               850 	mov	r4,b
                            851 ;	../sm_test_toaster.c:133: DEFER_EVENT(BAKE) ;
   1F3F E5 1F               852 	mov	a,_bp
   1F41 24 FB               853 	add	a,#0xfb
   1F43 F8                  854 	mov	r0,a
   1F44 86 05               855 	mov	ar5,@r0
   1F46 08                  856 	inc	r0
   1F47 86 06               857 	mov	ar6,@r0
   1F49 08                  858 	inc	r0
   1F4A 86 07               859 	mov	ar7,@r0
   1F4C 8D 82               860 	mov	dpl,r5
   1F4E 8E 83               861 	mov	dph,r6
   1F50 8F F0               862 	mov	b,r7
   1F52 A8 1F               863 	mov	r0,_bp
   1F54 08                  864 	inc	r0
   1F55 12 4D 3C            865 	lcall	__gptrget
   1F58 F6                  866 	mov	@r0,a
   1F59 A8 1F               867 	mov	r0,_bp
   1F5B 08                  868 	inc	r0
   1F5C B6 01 29            869 	cjne	@r0,#0x01,00104$
   1F5F 90 09 3F            870 	mov	dptr,#_addToDeferredTypeList_PARM_2
   1F62 74 06               871 	mov	a,#0x06
   1F64 F0                  872 	movx	@dptr,a
   1F65 8A 82               873 	mov	dpl,r2
   1F67 8B 83               874 	mov	dph,r3
   1F69 8C F0               875 	mov	b,r4
   1F6B C0 02               876 	push	ar2
   1F6D C0 03               877 	push	ar3
   1F6F C0 04               878 	push	ar4
   1F71 C0 05               879 	push	ar5
   1F73 C0 06               880 	push	ar6
   1F75 C0 07               881 	push	ar7
   1F77 12 23 FE            882 	lcall	_addToDeferredTypeList
   1F7A D0 07               883 	pop	ar7
   1F7C D0 06               884 	pop	ar6
   1F7E D0 05               885 	pop	ar5
   1F80 D0 04               886 	pop	ar4
   1F82 D0 03               887 	pop	ar3
   1F84 D0 02               888 	pop	ar2
   1F86 80 2D               889 	sjmp	00105$
   1F88                     890 00104$:
   1F88 A8 1F               891 	mov	r0,_bp
   1F8A 08                  892 	inc	r0
   1F8B B6 05 27            893 	cjne	@r0,#0x05,00105$
   1F8E 90 09 47            894 	mov	dptr,#_removeFromDeferredTypeList_PARM_2
   1F91 74 06               895 	mov	a,#0x06
   1F93 F0                  896 	movx	@dptr,a
   1F94 8A 82               897 	mov	dpl,r2
   1F96 8B 83               898 	mov	dph,r3
   1F98 8C F0               899 	mov	b,r4
   1F9A C0 02               900 	push	ar2
   1F9C C0 03               901 	push	ar3
   1F9E C0 04               902 	push	ar4
   1FA0 C0 05               903 	push	ar5
   1FA2 C0 06               904 	push	ar6
   1FA4 C0 07               905 	push	ar7
   1FA6 12 25 1B            906 	lcall	_removeFromDeferredTypeList
   1FA9 D0 07               907 	pop	ar7
   1FAB D0 06               908 	pop	ar6
   1FAD D0 05               909 	pop	ar5
   1FAF D0 04               910 	pop	ar4
   1FB1 D0 03               911 	pop	ar3
   1FB3 D0 02               912 	pop	ar2
   1FB5                     913 00105$:
                            914 ;	../sm_test_toaster.c:134: DEFER_EVENT(TOAST) ;
   1FB5 8D 82               915 	mov	dpl,r5
   1FB7 8E 83               916 	mov	dph,r6
   1FB9 8F F0               917 	mov	b,r7
   1FBB A8 1F               918 	mov	r0,_bp
   1FBD 08                  919 	inc	r0
   1FBE 12 4D 3C            920 	lcall	__gptrget
   1FC1 F6                  921 	mov	@r0,a
   1FC2 A8 1F               922 	mov	r0,_bp
   1FC4 08                  923 	inc	r0
   1FC5 B6 01 29            924 	cjne	@r0,#0x01,00109$
   1FC8 90 09 3F            925 	mov	dptr,#_addToDeferredTypeList_PARM_2
   1FCB 74 07               926 	mov	a,#0x07
   1FCD F0                  927 	movx	@dptr,a
   1FCE 8A 82               928 	mov	dpl,r2
   1FD0 8B 83               929 	mov	dph,r3
   1FD2 8C F0               930 	mov	b,r4
   1FD4 C0 02               931 	push	ar2
   1FD6 C0 03               932 	push	ar3
   1FD8 C0 04               933 	push	ar4
   1FDA C0 05               934 	push	ar5
   1FDC C0 06               935 	push	ar6
   1FDE C0 07               936 	push	ar7
   1FE0 12 23 FE            937 	lcall	_addToDeferredTypeList
   1FE3 D0 07               938 	pop	ar7
   1FE5 D0 06               939 	pop	ar6
   1FE7 D0 05               940 	pop	ar5
   1FE9 D0 04               941 	pop	ar4
   1FEB D0 03               942 	pop	ar3
   1FED D0 02               943 	pop	ar2
   1FEF 80 2D               944 	sjmp	00110$
   1FF1                     945 00109$:
   1FF1 A8 1F               946 	mov	r0,_bp
   1FF3 08                  947 	inc	r0
   1FF4 B6 05 27            948 	cjne	@r0,#0x05,00110$
   1FF7 90 09 47            949 	mov	dptr,#_removeFromDeferredTypeList_PARM_2
   1FFA 74 07               950 	mov	a,#0x07
   1FFC F0                  951 	movx	@dptr,a
   1FFD 8A 82               952 	mov	dpl,r2
   1FFF 8B 83               953 	mov	dph,r3
   2001 8C F0               954 	mov	b,r4
   2003 C0 02               955 	push	ar2
   2005 C0 03               956 	push	ar3
   2007 C0 04               957 	push	ar4
   2009 C0 05               958 	push	ar5
   200B C0 06               959 	push	ar6
   200D C0 07               960 	push	ar7
   200F 12 25 1B            961 	lcall	_removeFromDeferredTypeList
   2012 D0 07               962 	pop	ar7
   2014 D0 06               963 	pop	ar6
   2016 D0 05               964 	pop	ar5
   2018 D0 04               965 	pop	ar4
   201A D0 03               966 	pop	ar3
   201C D0 02               967 	pop	ar2
   201E                     968 00110$:
                            969 ;	../sm_test_toaster.c:136: ON_ENTRY(	lampOn()) ;
   201E 8D 82               970 	mov	dpl,r5
   2020 8E 83               971 	mov	dph,r6
   2022 8F F0               972 	mov	b,r7
   2024 12 4D 3C            973 	lcall	__gptrget
   2027 FD                  974 	mov	r5,a
   2028 BD 01 08            975 	cjne	r5,#0x01,00112$
   202B 12 1C DB            976 	lcall	_lampOn
   202E 75 82 01            977 	mov	dpl,#0x01
   2031 80 34               978 	sjmp	00117$
   2033                     979 00112$:
                            980 ;	../sm_test_toaster.c:137: ON_EXIT(	lampOff()) ;
   2033 BD 05 08            981 	cjne	r5,#0x05,00114$
   2036 12 1C DC            982 	lcall	_lampOff
   2039 75 82 01            983 	mov	dpl,#0x01
   203C 80 29               984 	sjmp	00117$
   203E                     985 00114$:
                            986 ;	../sm_test_toaster.c:139: TRANSITION_ON(CLOSE,	HISTORY_OF(doorClosed),		NO_ACTION) ;
   203E BD 0A 23            987 	cjne	r5,#0x0A,00116$
   2041 74 08               988 	mov	a,#0x08
   2043 2A                  989 	add	a,r2
   2044 FA                  990 	mov	r2,a
   2045 E4                  991 	clr	a
   2046 3B                  992 	addc	a,r3
   2047 FB                  993 	mov	r3,a
   2048 8A 82               994 	mov	dpl,r2
   204A 8B 83               995 	mov	dph,r3
   204C 8C F0               996 	mov	b,r4
   204E 74 5A               997 	mov	a,#_toaster_doorClosed
   2050 12 41 10            998 	lcall	__gptrput
   2053 A3                  999 	inc	dptr
   2054 74 50              1000 	mov	a,#(_toaster_doorClosed >> 8)
   2056 12 41 10           1001 	lcall	__gptrput
   2059 A3                 1002 	inc	dptr
   205A 74 80              1003 	mov	a,#0x80
   205C 12 41 10           1004 	lcall	__gptrput
   205F 75 82 03           1005 	mov	dpl,#0x03
   2062 80 03              1006 	sjmp	00117$
   2064                    1007 00116$:
                           1008 ;	../sm_test_toaster.c:141: END_DEFINE_STATE()
   2064 75 82 00           1009 	mov	dpl,#0x00
   2067                    1010 00117$:
   2067 85 1F 81           1011 	mov	sp,_bp
   206A D0 1F              1012 	pop	_bp
   206C 22                 1013 	ret
                           1014 	.area CSEG    (CODE)
                           1015 	.area CONST   (CODE)
   5051                    1016 _toaster_TOP:
                           1017 ; generic printIvalPtr
   5051 00 00 00           1018 	.byte #0x00,#0x00,#0x00
   5054 00                 1019 	.db #0x00
   5055 DD 1C              1020 	.byte _toaster_TOP_handler,(_toaster_TOP_handler >> 8)
   5057 9A 50 80           1021 	.byte _str_1,(_str_1 >> 8),#0x80
   505A                    1022 _toaster_doorClosed:
   505A 51 50 80           1023 	.byte _toaster_TOP,(_toaster_TOP >> 8),#0x80
   505D 03                 1024 	.db #0x03
   505E 64 1D              1025 	.byte _toaster_doorClosed_handler,(_toaster_doorClosed_handler >> 8)
   5060 A6 50 80           1026 	.byte _str_2,(_str_2 >> 8),#0x80
   5063 04 00              1027 	.byte #0x04,#0x00
   5065                    1028 _toaster_heating:
   5065 5A 50 80           1029 	.byte _toaster_doorClosed,(_toaster_doorClosed >> 8),#0x80
   5068 00                 1030 	.db #0x00
   5069 D3 1E              1031 	.byte _toaster_heating_handler,(_toaster_heating_handler >> 8)
   506B B9 50 80           1032 	.byte _str_3,(_str_3 >> 8),#0x80
   506E                    1033 _toaster_baking:
   506E 65 50 80           1034 	.byte _toaster_heating,(_toaster_heating >> 8),#0x80
   5071 00                 1035 	.db #0x00
   5072 0B 1F              1036 	.byte _toaster_baking_handler,(_toaster_baking_handler >> 8)
   5074 C9 50 80           1037 	.byte _str_4,(_str_4 >> 8),#0x80
   5077                    1038 _toaster_toasting:
   5077 65 50 80           1039 	.byte _toaster_heating,(_toaster_heating >> 8),#0x80
   507A 00                 1040 	.db #0x00
   507B 16 1F              1041 	.byte _toaster_toasting_handler,(_toaster_toasting_handler >> 8)
   507D D8 50 80           1042 	.byte _str_5,(_str_5 >> 8),#0x80
   5080                    1043 _toaster_off:
   5080 5A 50 80           1044 	.byte _toaster_doorClosed,(_toaster_doorClosed >> 8),#0x80
   5083 00                 1045 	.db #0x00
   5084 21 1F              1046 	.byte _toaster_off_handler,(_toaster_off_handler >> 8)
   5086 E9 50 80           1047 	.byte _str_6,(_str_6 >> 8),#0x80
   5089                    1048 _toaster_doorOpen:
   5089 51 50 80           1049 	.byte _toaster_TOP,(_toaster_TOP >> 8),#0x80
   508C 00                 1050 	.db #0x00
   508D 32 1F              1051 	.byte _toaster_doorOpen_handler,(_toaster_doorOpen_handler >> 8)
   508F F5 50 80           1052 	.byte _str_7,(_str_7 >> 8),#0x80
   5092                    1053 __str_0:
   5092 74 6F 61 73 74 65  1054 	.ascii "toaster"
        72
   5099 00                 1055 	.db 0x00
   509A                    1056 _str_1:
   509A 74 6F 61 73 74 65  1057 	.ascii "toaster_TOP"
        72 5F 54 4F 50
   50A5 00                 1058 	.db 0x00
   50A6                    1059 _str_2:
   50A6 74 6F 61 73 74 65  1060 	.ascii "toaster_doorClosed"
        72 5F 64 6F 6F 72
        43 6C 6F 73 65 64
   50B8 00                 1061 	.db 0x00
   50B9                    1062 _str_3:
   50B9 74 6F 61 73 74 65  1063 	.ascii "toaster_heating"
        72 5F 68 65 61 74
        69 6E 67
   50C8 00                 1064 	.db 0x00
   50C9                    1065 _str_4:
   50C9 74 6F 61 73 74 65  1066 	.ascii "toaster_baking"
        72 5F 62 61 6B 69
        6E 67
   50D7 00                 1067 	.db 0x00
   50D8                    1068 _str_5:
   50D8 74 6F 61 73 74 65  1069 	.ascii "toaster_toasting"
        72 5F 74 6F 61 73
        74 69 6E 67
   50E8 00                 1070 	.db 0x00
   50E9                    1071 _str_6:
   50E9 74 6F 61 73 74 65  1072 	.ascii "toaster_off"
        72 5F 6F 66 66
   50F4 00                 1073 	.db 0x00
   50F5                    1074 _str_7:
   50F5 74 6F 61 73 74 65  1075 	.ascii "toaster_doorOpen"
        72 5F 64 6F 6F 72
        4F 70 65 6E
   5105 00                 1076 	.db 0x00
                           1077 	.area XINIT   (CODE)
   54A1                    1078 __xinit__toaster_name:
   54A1 92 50 80           1079 	.byte __str_0,(__str_0 >> 8),#0x80
                           1080 	.area CABS    (ABS,CODE)
