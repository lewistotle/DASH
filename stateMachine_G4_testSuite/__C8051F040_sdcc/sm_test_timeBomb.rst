                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 2.9.0 #5416 (Mar 22 2009) (MINGW32)
                              4 ; This file was generated Sat Jan 02 19:24:44 2010
                              5 ;--------------------------------------------------------
                              6 	.module sm_test_timeBomb
                              7 	.optsdcc -mmcs51 --model-large
                              8 	
                              9 ;--------------------------------------------------------
                             10 ; Public variables in this module
                             11 ;--------------------------------------------------------
                             12 	.globl _goBOOM
                             13 	.globl _updateDisplay
                             14 	.globl _timeBomb_getEventQueueDepth
                             15 	.globl _timeBomb_constructor
                             16 	.globl _timeBomb_destructor
                             17 	.globl _timeBomb_getHistoryQueueDepth
                             18 	.globl _timeBomb_getMachineSize
                             19 	.globl _timeBomb_constructor2
                             20 	.globl _timeBomb_destructor2
                             21 ;--------------------------------------------------------
                             22 ; special function registers
                             23 ;--------------------------------------------------------
                             24 	.area RSEG    (DATA)
                             25 ;--------------------------------------------------------
                             26 ; special function bits
                             27 ;--------------------------------------------------------
                             28 	.area RSEG    (DATA)
                             29 ;--------------------------------------------------------
                             30 ; overlayable register banks
                             31 ;--------------------------------------------------------
                             32 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                      33 	.ds 8
                             34 ;--------------------------------------------------------
                             35 ; internal ram data
                             36 ;--------------------------------------------------------
                             37 	.area DSEG    (DATA)
   0024                      38 _timeBomb_constructor_sloc0_1_0:
   0024                      39 	.ds 3
                             40 ;--------------------------------------------------------
                             41 ; overlayable items in internal ram 
                             42 ;--------------------------------------------------------
                             43 	.area OSEG    (OVR,DATA)
                             44 ;--------------------------------------------------------
                             45 ; indirectly addressable internal ram data
                             46 ;--------------------------------------------------------
                             47 	.area ISEG    (DATA)
                             48 ;--------------------------------------------------------
                             49 ; absolute internal ram data
                             50 ;--------------------------------------------------------
                             51 	.area IABS    (ABS,DATA)
                             52 	.area IABS    (ABS,DATA)
                             53 ;--------------------------------------------------------
                             54 ; bit data
                             55 ;--------------------------------------------------------
                             56 	.area BSEG    (BIT)
                             57 ;--------------------------------------------------------
                             58 ; paged external ram data
                             59 ;--------------------------------------------------------
                             60 	.area PSEG    (PAG,XDATA)
                             61 ;--------------------------------------------------------
                             62 ; external ram data
                             63 ;--------------------------------------------------------
                             64 	.area XSEG    (XDATA)
   0913                      65 _timeBomb_constructor_base_1_1:
   0913                      66 	.ds 3
   0916                      67 _timeBomb_destructor_self_1_1:
   0916                      68 	.ds 3
   0919                      69 _timeBomb_constructor2_self_1_1:
   0919                      70 	.ds 3
                             71 ;--------------------------------------------------------
                             72 ; absolute external ram data
                             73 ;--------------------------------------------------------
                             74 	.area XABS    (ABS,XDATA)
                             75 ;--------------------------------------------------------
                             76 ; external initialized ram data
                             77 ;--------------------------------------------------------
                             78 	.area XISEG   (XDATA)
   0EE9                      79 _timeBomb_name:
   0EE9                      80 	.ds 3
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
                            108 ;Allocation info for local variables in function 'timeBomb_getEventQueueDepth'
                            109 ;------------------------------------------------------------
                            110 ;------------------------------------------------------------
                            111 ;	../sm_test_timeBomb.c:28: SET_EVENT_QUEUE_DEPTH(config_tbEVENT_QUEUE_DEPTH) ;
                            112 ;	-----------------------------------------
                            113 ;	 function timeBomb_getEventQueueDepth
                            114 ;	-----------------------------------------
   1790                     115 _timeBomb_getEventQueueDepth:
                    0002    116 	ar2 = 0x02
                    0003    117 	ar3 = 0x03
                    0004    118 	ar4 = 0x04
                    0005    119 	ar5 = 0x05
                    0006    120 	ar6 = 0x06
                    0007    121 	ar7 = 0x07
                    0000    122 	ar0 = 0x00
                    0001    123 	ar1 = 0x01
   1790 90 00 10            124 	mov	dptr,#0x0010
   1793 22                  125 	ret
                            126 ;------------------------------------------------------------
                            127 ;Allocation info for local variables in function 'timeBomb_constructor'
                            128 ;------------------------------------------------------------
                            129 ;sloc0                     Allocated with name '_timeBomb_constructor_sloc0_1_0'
                            130 ;base                      Allocated with name '_timeBomb_constructor_base_1_1'
                            131 ;------------------------------------------------------------
                            132 ;	../sm_test_timeBomb.c:36: END_STATE_MACHINE_DEFINITION() ;
                            133 ;	-----------------------------------------
                            134 ;	 function timeBomb_constructor
                            135 ;	-----------------------------------------
   1794                     136 _timeBomb_constructor:
   1794 AA F0               137 	mov	r2,b
   1796 AB 83               138 	mov	r3,dph
   1798 E5 82               139 	mov	a,dpl
   179A 90 09 13            140 	mov	dptr,#_timeBomb_constructor_base_1_1
   179D F0                  141 	movx	@dptr,a
   179E A3                  142 	inc	dptr
   179F EB                  143 	mov	a,r3
   17A0 F0                  144 	movx	@dptr,a
   17A1 A3                  145 	inc	dptr
   17A2 EA                  146 	mov	a,r2
   17A3 F0                  147 	movx	@dptr,a
   17A4 90 09 13            148 	mov	dptr,#_timeBomb_constructor_base_1_1
   17A7 E0                  149 	movx	a,@dptr
   17A8 FA                  150 	mov	r2,a
   17A9 A3                  151 	inc	dptr
   17AA E0                  152 	movx	a,@dptr
   17AB FB                  153 	mov	r3,a
   17AC A3                  154 	inc	dptr
   17AD E0                  155 	movx	a,@dptr
   17AE FC                  156 	mov	r4,a
   17AF 8A 82               157 	mov	dpl,r2
   17B1 8B 83               158 	mov	dph,r3
   17B3 8C F0               159 	mov	b,r4
   17B5 74 10               160 	mov	a,#_timeBomb_TOP
   17B7 12 42 42            161 	lcall	__gptrput
   17BA A3                  162 	inc	dptr
   17BB 74 51               163 	mov	a,#(_timeBomb_TOP >> 8)
   17BD 12 42 42            164 	lcall	__gptrput
   17C0 74 05               165 	mov	a,#0x05
   17C2 2A                  166 	add	a,r2
   17C3 FD                  167 	mov	r5,a
   17C4 E4                  168 	clr	a
   17C5 3B                  169 	addc	a,r3
   17C6 FE                  170 	mov	r6,a
   17C7 8C 07               171 	mov	ar7,r4
   17C9 8D 82               172 	mov	dpl,r5
   17CB 8E 83               173 	mov	dph,r6
   17CD 8F F0               174 	mov	b,r7
   17CF 74 10               175 	mov	a,#_timeBomb_TOP
   17D1 12 42 42            176 	lcall	__gptrput
   17D4 A3                  177 	inc	dptr
   17D5 74 51               178 	mov	a,#(_timeBomb_TOP >> 8)
   17D7 12 42 42            179 	lcall	__gptrput
   17DA A3                  180 	inc	dptr
   17DB 74 80               181 	mov	a,#0x80
   17DD 12 42 42            182 	lcall	__gptrput
   17E0 74 02               183 	mov	a,#0x02
   17E2 2A                  184 	add	a,r2
   17E3 F5 24               185 	mov	_timeBomb_constructor_sloc0_1_0,a
   17E5 E4                  186 	clr	a
   17E6 3B                  187 	addc	a,r3
   17E7 F5 25               188 	mov	(_timeBomb_constructor_sloc0_1_0 + 1),a
   17E9 8C 26               189 	mov	(_timeBomb_constructor_sloc0_1_0 + 2),r4
   17EB 90 0E E9            190 	mov	dptr,#_timeBomb_name
   17EE E0                  191 	movx	a,@dptr
   17EF F8                  192 	mov	r0,a
   17F0 A3                  193 	inc	dptr
   17F1 E0                  194 	movx	a,@dptr
   17F2 F9                  195 	mov	r1,a
   17F3 A3                  196 	inc	dptr
   17F4 E0                  197 	movx	a,@dptr
   17F5 FD                  198 	mov	r5,a
   17F6 85 24 82            199 	mov	dpl,_timeBomb_constructor_sloc0_1_0
   17F9 85 25 83            200 	mov	dph,(_timeBomb_constructor_sloc0_1_0 + 1)
   17FC 85 26 F0            201 	mov	b,(_timeBomb_constructor_sloc0_1_0 + 2)
   17FF E8                  202 	mov	a,r0
   1800 12 42 42            203 	lcall	__gptrput
   1803 A3                  204 	inc	dptr
   1804 E9                  205 	mov	a,r1
   1805 12 42 42            206 	lcall	__gptrput
   1808 A3                  207 	inc	dptr
   1809 ED                  208 	mov	a,r5
   180A 12 42 42            209 	lcall	__gptrput
   180D 8A 82               210 	mov	dpl,r2
   180F 8B 83               211 	mov	dph,r3
   1811 8C F0               212 	mov	b,r4
   1813 02 18 42            213 	ljmp	_timeBomb_constructor2
                            214 ;------------------------------------------------------------
                            215 ;Allocation info for local variables in function 'timeBomb_destructor'
                            216 ;------------------------------------------------------------
                            217 ;self                      Allocated with name '_timeBomb_destructor_self_1_1'
                            218 ;------------------------------------------------------------
                            219 ;	../sm_test_timeBomb.c:36: 
                            220 ;	-----------------------------------------
                            221 ;	 function timeBomb_destructor
                            222 ;	-----------------------------------------
   1816                     223 _timeBomb_destructor:
   1816 AA F0               224 	mov	r2,b
   1818 AB 83               225 	mov	r3,dph
   181A E5 82               226 	mov	a,dpl
   181C 90 09 16            227 	mov	dptr,#_timeBomb_destructor_self_1_1
   181F F0                  228 	movx	@dptr,a
   1820 A3                  229 	inc	dptr
   1821 EB                  230 	mov	a,r3
   1822 F0                  231 	movx	@dptr,a
   1823 A3                  232 	inc	dptr
   1824 EA                  233 	mov	a,r2
   1825 F0                  234 	movx	@dptr,a
   1826 90 09 16            235 	mov	dptr,#_timeBomb_destructor_self_1_1
   1829 E0                  236 	movx	a,@dptr
   182A FA                  237 	mov	r2,a
   182B A3                  238 	inc	dptr
   182C E0                  239 	movx	a,@dptr
   182D FB                  240 	mov	r3,a
   182E A3                  241 	inc	dptr
   182F E0                  242 	movx	a,@dptr
   1830 FC                  243 	mov	r4,a
   1831 8A 82               244 	mov	dpl,r2
   1833 8B 83               245 	mov	dph,r3
   1835 8C F0               246 	mov	b,r4
   1837 02 18 94            247 	ljmp	_timeBomb_destructor2
                            248 ;------------------------------------------------------------
                            249 ;Allocation info for local variables in function 'timeBomb_getHistoryQueueDepth'
                            250 ;------------------------------------------------------------
                            251 ;------------------------------------------------------------
                            252 ;	../sm_test_timeBomb.c:36: END_STATE_MACHINE_DEFINITION() ;
                            253 ;	-----------------------------------------
                            254 ;	 function timeBomb_getHistoryQueueDepth
                            255 ;	-----------------------------------------
   183A                     256 _timeBomb_getHistoryQueueDepth:
   183A 90 00 1E            257 	mov	dptr,#0x001E
   183D 22                  258 	ret
                            259 ;------------------------------------------------------------
                            260 ;Allocation info for local variables in function 'timeBomb_getMachineSize'
                            261 ;------------------------------------------------------------
                            262 ;------------------------------------------------------------
                            263 ;	../sm_test_timeBomb.c:36: 
                            264 ;	-----------------------------------------
                            265 ;	 function timeBomb_getMachineSize
                            266 ;	-----------------------------------------
   183E                     267 _timeBomb_getMachineSize:
   183E 90 00 2E            268 	mov	dptr,#0x002E
   1841 22                  269 	ret
                            270 ;------------------------------------------------------------
                            271 ;Allocation info for local variables in function 'timeBomb_constructor2'
                            272 ;------------------------------------------------------------
                            273 ;self                      Allocated with name '_timeBomb_constructor2_self_1_1'
                            274 ;------------------------------------------------------------
                            275 ;	../sm_test_timeBomb.c:39: STATE_MACHINE_CONSTRUCTOR()
                            276 ;	-----------------------------------------
                            277 ;	 function timeBomb_constructor2
                            278 ;	-----------------------------------------
   1842                     279 _timeBomb_constructor2:
   1842 AA F0               280 	mov	r2,b
   1844 AB 83               281 	mov	r3,dph
   1846 E5 82               282 	mov	a,dpl
   1848 90 09 19            283 	mov	dptr,#_timeBomb_constructor2_self_1_1
   184B F0                  284 	movx	@dptr,a
   184C A3                  285 	inc	dptr
   184D EB                  286 	mov	a,r3
   184E F0                  287 	movx	@dptr,a
   184F A3                  288 	inc	dptr
   1850 EA                  289 	mov	a,r2
   1851 F0                  290 	movx	@dptr,a
                            291 ;	../sm_test_timeBomb.c:41: self->timeout			= 0 ;
   1852 90 09 19            292 	mov	dptr,#_timeBomb_constructor2_self_1_1
   1855 E0                  293 	movx	a,@dptr
   1856 FA                  294 	mov	r2,a
   1857 A3                  295 	inc	dptr
   1858 E0                  296 	movx	a,@dptr
   1859 FB                  297 	mov	r3,a
   185A A3                  298 	inc	dptr
   185B E0                  299 	movx	a,@dptr
   185C FC                  300 	mov	r4,a
   185D 74 2B               301 	mov	a,#0x2B
   185F 2A                  302 	add	a,r2
   1860 FD                  303 	mov	r5,a
   1861 E4                  304 	clr	a
   1862 3B                  305 	addc	a,r3
   1863 FE                  306 	mov	r6,a
   1864 8C 07               307 	mov	ar7,r4
   1866 8D 82               308 	mov	dpl,r5
   1868 8E 83               309 	mov	dph,r6
   186A 8F F0               310 	mov	b,r7
   186C E4                  311 	clr	a
   186D 12 42 42            312 	lcall	__gptrput
                            313 ;	../sm_test_timeBomb.c:42: self->codeBeingEntered	= 0 ;
   1870 74 2C               314 	mov	a,#0x2C
   1872 2A                  315 	add	a,r2
   1873 FD                  316 	mov	r5,a
   1874 E4                  317 	clr	a
   1875 3B                  318 	addc	a,r3
   1876 FE                  319 	mov	r6,a
   1877 8C 07               320 	mov	ar7,r4
   1879 8D 82               321 	mov	dpl,r5
   187B 8E 83               322 	mov	dph,r6
   187D 8F F0               323 	mov	b,r7
   187F E4                  324 	clr	a
   1880 12 42 42            325 	lcall	__gptrput
                            326 ;	../sm_test_timeBomb.c:43: self->disarmCode		= 0 ;
   1883 74 2D               327 	mov	a,#0x2D
   1885 2A                  328 	add	a,r2
   1886 FA                  329 	mov	r2,a
   1887 E4                  330 	clr	a
   1888 3B                  331 	addc	a,r3
   1889 FB                  332 	mov	r3,a
   188A 8A 82               333 	mov	dpl,r2
   188C 8B 83               334 	mov	dph,r3
   188E 8C F0               335 	mov	b,r4
   1890 E4                  336 	clr	a
   1891 02 42 42            337 	ljmp	__gptrput
                            338 ;------------------------------------------------------------
                            339 ;Allocation info for local variables in function 'timeBomb_destructor2'
                            340 ;------------------------------------------------------------
                            341 ;self                      Allocated with name '_timeBomb_destructor2_self_1_1'
                            342 ;------------------------------------------------------------
                            343 ;	../sm_test_timeBomb.c:47: STATE_MACHINE_DESTRUCTOR()
                            344 ;	-----------------------------------------
                            345 ;	 function timeBomb_destructor2
                            346 ;	-----------------------------------------
   1894                     347 _timeBomb_destructor2:
                            348 ;	../sm_test_timeBomb.c:49: (void)self ;	/* Nothing to do here */
   1894 22                  349 	ret
                            350 ;------------------------------------------------------------
                            351 ;Allocation info for local variables in function 'updateDisplay'
                            352 ;------------------------------------------------------------
                            353 ;value                     Allocated with name '_updateDisplay_value_1_1'
                            354 ;------------------------------------------------------------
                            355 ;	../sm_test_timeBomb.c:53: void updateDisplay(	uint8_t value)
                            356 ;	-----------------------------------------
                            357 ;	 function updateDisplay
                            358 ;	-----------------------------------------
   1895                     359 _updateDisplay:
                            360 ;	../sm_test_timeBomb.c:55: (void)value ;
   1895 22                  361 	ret
                            362 ;------------------------------------------------------------
                            363 ;Allocation info for local variables in function 'goBOOM'
                            364 ;------------------------------------------------------------
                            365 ;------------------------------------------------------------
                            366 ;	../sm_test_timeBomb.c:59: void goBOOM(		void)
                            367 ;	-----------------------------------------
                            368 ;	 function goBOOM
                            369 ;	-----------------------------------------
   1896                     370 _goBOOM:
                            371 ;	../sm_test_timeBomb.c:61: }
   1896 22                  372 	ret
                            373 ;------------------------------------------------------------
                            374 ;Allocation info for local variables in function 'timeBomb_TOP_handler'
                            375 ;------------------------------------------------------------
                            376 ;event                     Allocated to stack - offset -5
                            377 ;self                      Allocated to stack - offset 1
                            378 ;stateResponseCode         Allocated to registers 
                            379 ;------------------------------------------------------------
                            380 ;	../sm_test_timeBomb.c:64: DEFINE_TOP_STATE()
                            381 ;	-----------------------------------------
                            382 ;	 function timeBomb_TOP_handler
                            383 ;	-----------------------------------------
   1897                     384 _timeBomb_TOP_handler:
   1897 C0 1F               385 	push	_bp
   1899 85 81 1F            386 	mov	_bp,sp
   189C C0 82               387 	push	dpl
   189E C0 83               388 	push	dph
   18A0 C0 F0               389 	push	b
                            390 ;	../sm_test_timeBomb.c:66: INITIAL_TRANSITION(TO(setting), ACTION(self->timeout = INIT_TIMEOUT)) ;
   18A2 E5 1F               391 	mov	a,_bp
   18A4 24 FB               392 	add	a,#0xfb
   18A6 F8                  393 	mov	r0,a
   18A7 86 05               394 	mov	ar5,@r0
   18A9 08                  395 	inc	r0
   18AA 86 06               396 	mov	ar6,@r0
   18AC 08                  397 	inc	r0
   18AD 86 07               398 	mov	ar7,@r0
   18AF 8D 82               399 	mov	dpl,r5
   18B1 8E 83               400 	mov	dph,r6
   18B3 8F F0               401 	mov	b,r7
   18B5 12 4E 6E            402 	lcall	__gptrget
   18B8 FD                  403 	mov	r5,a
   18B9 BD 02 43            404 	cjne	r5,#0x02,00102$
   18BC A8 1F               405 	mov	r0,_bp
   18BE 08                  406 	inc	r0
   18BF 74 2B               407 	mov	a,#0x2B
   18C1 26                  408 	add	a,@r0
   18C2 FE                  409 	mov	r6,a
   18C3 E4                  410 	clr	a
   18C4 08                  411 	inc	r0
   18C5 36                  412 	addc	a,@r0
   18C6 FF                  413 	mov	r7,a
   18C7 08                  414 	inc	r0
   18C8 86 02               415 	mov	ar2,@r0
   18CA 8E 82               416 	mov	dpl,r6
   18CC 8F 83               417 	mov	dph,r7
   18CE 8A F0               418 	mov	b,r2
   18D0 74 1E               419 	mov	a,#0x1E
   18D2 12 42 42            420 	lcall	__gptrput
   18D5 A8 1F               421 	mov	r0,_bp
   18D7 08                  422 	inc	r0
   18D8 74 08               423 	mov	a,#0x08
   18DA 26                  424 	add	a,@r0
   18DB FA                  425 	mov	r2,a
   18DC E4                  426 	clr	a
   18DD 08                  427 	inc	r0
   18DE 36                  428 	addc	a,@r0
   18DF FB                  429 	mov	r3,a
   18E0 08                  430 	inc	r0
   18E1 86 04               431 	mov	ar4,@r0
   18E3 8A 82               432 	mov	dpl,r2
   18E5 8B 83               433 	mov	dph,r3
   18E7 8C F0               434 	mov	b,r4
   18E9 74 19               435 	mov	a,#_timeBomb_setting
   18EB 12 42 42            436 	lcall	__gptrput
   18EE A3                  437 	inc	dptr
   18EF 74 51               438 	mov	a,#(_timeBomb_setting >> 8)
   18F1 12 42 42            439 	lcall	__gptrput
   18F4 A3                  440 	inc	dptr
   18F5 74 80               441 	mov	a,#0x80
   18F7 12 42 42            442 	lcall	__gptrput
   18FA 75 82 02            443 	mov	dpl,#0x02
   18FD 80 0B               444 	sjmp	00106$
   18FF                     445 00102$:
                            446 ;	../sm_test_timeBomb.c:68: HANDLE_STATE_EVENTS
   18FF BD 05 05            447 	cjne	r5,#0x05,00105$
                            448 ;	../sm_test_timeBomb.c:74: EXIT_HANDLED
   1902 75 82 01            449 	mov	dpl,#0x01
                            450 ;	../sm_test_timeBomb.c:76: HANDLE_STATE_EVENTS_DONE
   1905 80 03               451 	sjmp	00106$
   1907                     452 00105$:
                            453 ;	../sm_test_timeBomb.c:78: END_DEFINE_STATE()
   1907 75 82 00            454 	mov	dpl,#0x00
   190A                     455 00106$:
   190A 85 1F 81            456 	mov	sp,_bp
   190D D0 1F               457 	pop	_bp
   190F 22                  458 	ret
                            459 ;------------------------------------------------------------
                            460 ;Allocation info for local variables in function 'timeBomb_setting_handler'
                            461 ;------------------------------------------------------------
                            462 ;event                     Allocated to stack - offset -5
                            463 ;self                      Allocated to stack - offset 1
                            464 ;stateResponseCode         Allocated to registers 
                            465 ;stateResponseCode         Allocated to registers 
                            466 ;------------------------------------------------------------
                            467 ;	../sm_test_timeBomb.c:81: DEFINE_STATE(setting)
                            468 ;	-----------------------------------------
                            469 ;	 function timeBomb_setting_handler
                            470 ;	-----------------------------------------
   1910                     471 _timeBomb_setting_handler:
   1910 C0 1F               472 	push	_bp
   1912 85 81 1F            473 	mov	_bp,sp
   1915 C0 82               474 	push	dpl
   1917 C0 83               475 	push	dph
   1919 C0 F0               476 	push	b
                            477 ;	../sm_test_timeBomb.c:83: TRANSITION_ON(ARM, TO(timing), ACTION(self->codeBeingEntered = 0)) ;
   191B E5 1F               478 	mov	a,_bp
   191D 24 FB               479 	add	a,#0xfb
   191F F8                  480 	mov	r0,a
   1920 86 05               481 	mov	ar5,@r0
   1922 08                  482 	inc	r0
   1923 86 06               483 	mov	ar6,@r0
   1925 08                  484 	inc	r0
   1926 86 07               485 	mov	ar7,@r0
   1928 8D 82               486 	mov	dpl,r5
   192A 8E 83               487 	mov	dph,r6
   192C 8F F0               488 	mov	b,r7
   192E 12 4E 6E            489 	lcall	__gptrget
   1931 FD                  490 	mov	r5,a
   1932 BD 08 42            491 	cjne	r5,#0x08,00102$
   1935 A8 1F               492 	mov	r0,_bp
   1937 08                  493 	inc	r0
   1938 74 2C               494 	mov	a,#0x2C
   193A 26                  495 	add	a,@r0
   193B FE                  496 	mov	r6,a
   193C E4                  497 	clr	a
   193D 08                  498 	inc	r0
   193E 36                  499 	addc	a,@r0
   193F FF                  500 	mov	r7,a
   1940 08                  501 	inc	r0
   1941 86 02               502 	mov	ar2,@r0
   1943 8E 82               503 	mov	dpl,r6
   1945 8F 83               504 	mov	dph,r7
   1947 8A F0               505 	mov	b,r2
   1949 E4                  506 	clr	a
   194A 12 42 42            507 	lcall	__gptrput
   194D A8 1F               508 	mov	r0,_bp
   194F 08                  509 	inc	r0
   1950 74 08               510 	mov	a,#0x08
   1952 26                  511 	add	a,@r0
   1953 FA                  512 	mov	r2,a
   1954 E4                  513 	clr	a
   1955 08                  514 	inc	r0
   1956 36                  515 	addc	a,@r0
   1957 FB                  516 	mov	r3,a
   1958 08                  517 	inc	r0
   1959 86 04               518 	mov	ar4,@r0
   195B 8A 82               519 	mov	dpl,r2
   195D 8B 83               520 	mov	dph,r3
   195F 8C F0               521 	mov	b,r4
   1961 74 22               522 	mov	a,#_timeBomb_timing
   1963 12 42 42            523 	lcall	__gptrput
   1966 A3                  524 	inc	dptr
   1967 74 51               525 	mov	a,#(_timeBomb_timing >> 8)
   1969 12 42 42            526 	lcall	__gptrput
   196C A3                  527 	inc	dptr
   196D 74 80               528 	mov	a,#0x80
   196F 12 42 42            529 	lcall	__gptrput
   1972 75 82 02            530 	mov	dpl,#0x02
   1975 80 70               531 	sjmp	00111$
   1977                     532 00102$:
                            533 ;	../sm_test_timeBomb.c:85: HANDLE_STATE_EVENTS
   1977 BD 06 02            534 	cjne	r5,#0x06,00120$
   197A 80 05               535 	sjmp	00103$
   197C                     536 00120$:
                            537 ;	../sm_test_timeBomb.c:87: EVENT(UP)
   197C BD 07 65            538 	cjne	r5,#0x07,00110$
   197F 80 32               539 	sjmp	00106$
   1981                     540 00103$:
                            541 ;	../sm_test_timeBomb.c:89: if(self->timeout < 60)
   1981 A8 1F               542 	mov	r0,_bp
   1983 08                  543 	inc	r0
   1984 74 2B               544 	mov	a,#0x2B
   1986 26                  545 	add	a,@r0
   1987 FA                  546 	mov	r2,a
   1988 E4                  547 	clr	a
   1989 08                  548 	inc	r0
   198A 36                  549 	addc	a,@r0
   198B FB                  550 	mov	r3,a
   198C 08                  551 	inc	r0
   198D 86 04               552 	mov	ar4,@r0
   198F 8A 82               553 	mov	dpl,r2
   1991 8B 83               554 	mov	dph,r3
   1993 8C F0               555 	mov	b,r4
   1995 12 4E 6E            556 	lcall	__gptrget
   1998 FD                  557 	mov	r5,a
   1999 BD 3C 00            558 	cjne	r5,#0x3C,00122$
   199C                     559 00122$:
   199C 50 10               560 	jnc	00105$
                            561 ;	../sm_test_timeBomb.c:91: self->timeout++ ;
   199E 0D                  562 	inc	r5
   199F 8A 82               563 	mov	dpl,r2
   19A1 8B 83               564 	mov	dph,r3
   19A3 8C F0               565 	mov	b,r4
   19A5 ED                  566 	mov	a,r5
   19A6 12 42 42            567 	lcall	__gptrput
                            568 ;	../sm_test_timeBomb.c:93: updateDisplay(self->timeout) ;
   19A9 8D 82               569 	mov	dpl,r5
   19AB 12 18 95            570 	lcall	_updateDisplay
   19AE                     571 00105$:
                            572 ;	../sm_test_timeBomb.c:96: EVENT_HANDLED
   19AE 75 82 01            573 	mov	dpl,#0x01
                            574 ;	../sm_test_timeBomb.c:98: EVENT(DOWN)
   19B1 80 34               575 	sjmp	00111$
   19B3                     576 00106$:
                            577 ;	../sm_test_timeBomb.c:100: if(self->timeout > 1)
   19B3 A8 1F               578 	mov	r0,_bp
   19B5 08                  579 	inc	r0
   19B6 74 2B               580 	mov	a,#0x2B
   19B8 26                  581 	add	a,@r0
   19B9 FA                  582 	mov	r2,a
   19BA E4                  583 	clr	a
   19BB 08                  584 	inc	r0
   19BC 36                  585 	addc	a,@r0
   19BD FB                  586 	mov	r3,a
   19BE 08                  587 	inc	r0
   19BF 86 04               588 	mov	ar4,@r0
   19C1 8A 82               589 	mov	dpl,r2
   19C3 8B 83               590 	mov	dph,r3
   19C5 8C F0               591 	mov	b,r4
   19C7 12 4E 6E            592 	lcall	__gptrget
   19CA FD                  593 	mov  r5,a
   19CB 24 FE               594 	add	a,#0xff - 0x01
   19CD 50 10               595 	jnc	00108$
                            596 ;	../sm_test_timeBomb.c:102: self->timeout-- ;
   19CF 1D                  597 	dec	r5
   19D0 8A 82               598 	mov	dpl,r2
   19D2 8B 83               599 	mov	dph,r3
   19D4 8C F0               600 	mov	b,r4
   19D6 ED                  601 	mov	a,r5
   19D7 12 42 42            602 	lcall	__gptrput
                            603 ;	../sm_test_timeBomb.c:104: updateDisplay(self->timeout) ;
   19DA 8D 82               604 	mov	dpl,r5
   19DC 12 18 95            605 	lcall	_updateDisplay
   19DF                     606 00108$:
                            607 ;	../sm_test_timeBomb.c:107: EVENT_HANDLED
   19DF 75 82 01            608 	mov	dpl,#0x01
                            609 ;	../sm_test_timeBomb.c:109: HANDLE_STATE_EVENTS_DONE
   19E2 80 03               610 	sjmp	00111$
   19E4                     611 00110$:
                            612 ;	../sm_test_timeBomb.c:111: END_DEFINE_STATE()
   19E4 75 82 00            613 	mov	dpl,#0x00
   19E7                     614 00111$:
   19E7 85 1F 81            615 	mov	sp,_bp
   19EA D0 1F               616 	pop	_bp
   19EC 22                  617 	ret
                            618 ;------------------------------------------------------------
                            619 ;Allocation info for local variables in function 'timeBomb_timing_handler'
                            620 ;------------------------------------------------------------
                            621 ;event                     Allocated to stack - offset -5
                            622 ;self                      Allocated to stack - offset 1
                            623 ;stateResponseCode         Allocated to registers 
                            624 ;stateResponseCode         Allocated to registers 
                            625 ;stateResponseCode         Allocated to registers 
                            626 ;------------------------------------------------------------
                            627 ;	../sm_test_timeBomb.c:114: DEFINE_STATE(timing)
                            628 ;	-----------------------------------------
                            629 ;	 function timeBomb_timing_handler
                            630 ;	-----------------------------------------
   19ED                     631 _timeBomb_timing_handler:
   19ED C0 1F               632 	push	_bp
   19EF 85 81 1F            633 	mov	_bp,sp
   19F2 C0 82               634 	push	dpl
   19F4 C0 83               635 	push	dph
   19F6 C0 F0               636 	push	b
                            637 ;	../sm_test_timeBomb.c:116: TRANSITION_ON_IF(ARM, self->codeBeingEntered == self->disarmCode, TO(setting), ACTION(updateDisplay(self->timeout))) ;
   19F8 E5 1F               638 	mov	a,_bp
   19FA 24 FB               639 	add	a,#0xfb
   19FC F8                  640 	mov	r0,a
   19FD 86 05               641 	mov	ar5,@r0
   19FF 08                  642 	inc	r0
   1A00 86 06               643 	mov	ar6,@r0
   1A02 08                  644 	inc	r0
   1A03 86 07               645 	mov	ar7,@r0
   1A05 8D 82               646 	mov	dpl,r5
   1A07 8E 83               647 	mov	dph,r6
   1A09 8F F0               648 	mov	b,r7
   1A0B 12 4E 6E            649 	lcall	__gptrget
   1A0E FD                  650 	mov	r5,a
   1A0F BD 08 02            651 	cjne	r5,#0x08,00116$
   1A12 80 03               652 	sjmp	00117$
   1A14                     653 00116$:
   1A14 02 1A 9C            654 	ljmp	00102$
   1A17                     655 00117$:
   1A17 C0 05               656 	push	ar5
   1A19 A8 1F               657 	mov	r0,_bp
   1A1B 08                  658 	inc	r0
   1A1C 74 2C               659 	mov	a,#0x2C
   1A1E 26                  660 	add	a,@r0
   1A1F FE                  661 	mov	r6,a
   1A20 E4                  662 	clr	a
   1A21 08                  663 	inc	r0
   1A22 36                  664 	addc	a,@r0
   1A23 FF                  665 	mov	r7,a
   1A24 08                  666 	inc	r0
   1A25 86 05               667 	mov	ar5,@r0
   1A27 8E 82               668 	mov	dpl,r6
   1A29 8F 83               669 	mov	dph,r7
   1A2B 8D F0               670 	mov	b,r5
   1A2D 12 4E 6E            671 	lcall	__gptrget
   1A30 FE                  672 	mov	r6,a
   1A31 A8 1F               673 	mov	r0,_bp
   1A33 08                  674 	inc	r0
   1A34 74 2D               675 	mov	a,#0x2D
   1A36 26                  676 	add	a,@r0
   1A37 FD                  677 	mov	r5,a
   1A38 E4                  678 	clr	a
   1A39 08                  679 	inc	r0
   1A3A 36                  680 	addc	a,@r0
   1A3B FF                  681 	mov	r7,a
   1A3C 08                  682 	inc	r0
   1A3D 86 02               683 	mov	ar2,@r0
   1A3F 8D 82               684 	mov	dpl,r5
   1A41 8F 83               685 	mov	dph,r7
   1A43 8A F0               686 	mov	b,r2
   1A45 12 4E 6E            687 	lcall	__gptrget
   1A48 FD                  688 	mov	r5,a
   1A49 EE                  689 	mov	a,r6
   1A4A B5 05 02            690 	cjne	a,ar5,00118$
   1A4D 80 04               691 	sjmp	00119$
   1A4F                     692 00118$:
   1A4F D0 05               693 	pop	ar5
   1A51 80 49               694 	sjmp	00102$
   1A53                     695 00119$:
   1A53 D0 05               696 	pop	ar5
   1A55 A8 1F               697 	mov	r0,_bp
   1A57 08                  698 	inc	r0
   1A58 74 2B               699 	mov	a,#0x2B
   1A5A 26                  700 	add	a,@r0
   1A5B FA                  701 	mov	r2,a
   1A5C E4                  702 	clr	a
   1A5D 08                  703 	inc	r0
   1A5E 36                  704 	addc	a,@r0
   1A5F FB                  705 	mov	r3,a
   1A60 08                  706 	inc	r0
   1A61 86 04               707 	mov	ar4,@r0
   1A63 8A 82               708 	mov	dpl,r2
   1A65 8B 83               709 	mov	dph,r3
   1A67 8C F0               710 	mov	b,r4
   1A69 12 4E 6E            711 	lcall	__gptrget
   1A6C F5 82               712 	mov	dpl,a
   1A6E 12 18 95            713 	lcall	_updateDisplay
   1A71 A8 1F               714 	mov	r0,_bp
   1A73 08                  715 	inc	r0
   1A74 74 08               716 	mov	a,#0x08
   1A76 26                  717 	add	a,@r0
   1A77 FA                  718 	mov	r2,a
   1A78 E4                  719 	clr	a
   1A79 08                  720 	inc	r0
   1A7A 36                  721 	addc	a,@r0
   1A7B FB                  722 	mov	r3,a
   1A7C 08                  723 	inc	r0
   1A7D 86 04               724 	mov	ar4,@r0
   1A7F 8A 82               725 	mov	dpl,r2
   1A81 8B 83               726 	mov	dph,r3
   1A83 8C F0               727 	mov	b,r4
   1A85 74 19               728 	mov	a,#_timeBomb_setting
   1A87 12 42 42            729 	lcall	__gptrput
   1A8A A3                  730 	inc	dptr
   1A8B 74 51               731 	mov	a,#(_timeBomb_setting >> 8)
   1A8D 12 42 42            732 	lcall	__gptrput
   1A90 A3                  733 	inc	dptr
   1A91 74 80               734 	mov	a,#0x80
   1A93 12 42 42            735 	lcall	__gptrput
   1A96 75 82 02            736 	mov	dpl,#0x02
   1A99 02 1B 61            737 	ljmp	00109$
   1A9C                     738 00102$:
                            739 ;	../sm_test_timeBomb.c:118: HANDLE_STATE_EVENTS
   1A9C BD 06 02            740 	cjne	r5,#0x06,00120$
   1A9F 80 0D               741 	sjmp	00104$
   1AA1                     742 00120$:
   1AA1 BD 07 02            743 	cjne	r5,#0x07,00121$
   1AA4 80 3E               744 	sjmp	00105$
   1AA6                     745 00121$:
   1AA6 BD 09 02            746 	cjne	r5,#0x09,00122$
   1AA9 80 61               747 	sjmp	00106$
   1AAB                     748 00122$:
   1AAB 02 1B 5E            749 	ljmp	00108$
                            750 ;	../sm_test_timeBomb.c:120: EVENT(UP)
   1AAE                     751 00104$:
                            752 ;	../sm_test_timeBomb.c:122: self->codeBeingEntered <<= 1 ;
   1AAE A8 1F               753 	mov	r0,_bp
   1AB0 08                  754 	inc	r0
   1AB1 74 2C               755 	mov	a,#0x2C
   1AB3 26                  756 	add	a,@r0
   1AB4 FA                  757 	mov	r2,a
   1AB5 E4                  758 	clr	a
   1AB6 08                  759 	inc	r0
   1AB7 36                  760 	addc	a,@r0
   1AB8 FB                  761 	mov	r3,a
   1AB9 08                  762 	inc	r0
   1ABA 86 04               763 	mov	ar4,@r0
   1ABC 8A 82               764 	mov	dpl,r2
   1ABE 8B 83               765 	mov	dph,r3
   1AC0 8C F0               766 	mov	b,r4
   1AC2 12 4E 6E            767 	lcall	__gptrget
   1AC5 25 E0               768 	add	a,acc
   1AC7 FD                  769 	mov	r5,a
   1AC8 8A 82               770 	mov	dpl,r2
   1ACA 8B 83               771 	mov	dph,r3
   1ACC 8C F0               772 	mov	b,r4
   1ACE 12 42 42            773 	lcall	__gptrput
                            774 ;	../sm_test_timeBomb.c:123: self->codeBeingEntered |= 1 ;
   1AD1 43 05 01            775 	orl	ar5,#0x01
   1AD4 8A 82               776 	mov	dpl,r2
   1AD6 8B 83               777 	mov	dph,r3
   1AD8 8C F0               778 	mov	b,r4
   1ADA ED                  779 	mov	a,r5
   1ADB 12 42 42            780 	lcall	__gptrput
                            781 ;	../sm_test_timeBomb.c:125: EVENT_HANDLED
   1ADE 75 82 01            782 	mov	dpl,#0x01
   1AE1 02 1B 61            783 	ljmp	00109$
                            784 ;	../sm_test_timeBomb.c:127: EVENT(DOWN)
   1AE4                     785 00105$:
                            786 ;	../sm_test_timeBomb.c:129: self->codeBeingEntered <<= 1 ;
   1AE4 A8 1F               787 	mov	r0,_bp
   1AE6 08                  788 	inc	r0
   1AE7 74 2C               789 	mov	a,#0x2C
   1AE9 26                  790 	add	a,@r0
   1AEA FA                  791 	mov	r2,a
   1AEB E4                  792 	clr	a
   1AEC 08                  793 	inc	r0
   1AED 36                  794 	addc	a,@r0
   1AEE FB                  795 	mov	r3,a
   1AEF 08                  796 	inc	r0
   1AF0 86 04               797 	mov	ar4,@r0
   1AF2 8A 82               798 	mov	dpl,r2
   1AF4 8B 83               799 	mov	dph,r3
   1AF6 8C F0               800 	mov	b,r4
   1AF8 12 4E 6E            801 	lcall	__gptrget
   1AFB 25 E0               802 	add	a,acc
   1AFD FD                  803 	mov	r5,a
   1AFE 8A 82               804 	mov	dpl,r2
   1B00 8B 83               805 	mov	dph,r3
   1B02 8C F0               806 	mov	b,r4
   1B04 12 42 42            807 	lcall	__gptrput
                            808 ;	../sm_test_timeBomb.c:131: EVENT_HANDLED
   1B07 75 82 01            809 	mov	dpl,#0x01
                            810 ;	../sm_test_timeBomb.c:133: EVENT(TICK)
   1B0A 80 55               811 	sjmp	00109$
   1B0C                     812 00106$:
                            813 ;	../sm_test_timeBomb.c:135: self->timeout-- ;
   1B0C A8 1F               814 	mov	r0,_bp
   1B0E 08                  815 	inc	r0
   1B0F 74 2B               816 	mov	a,#0x2B
   1B11 26                  817 	add	a,@r0
   1B12 FA                  818 	mov	r2,a
   1B13 E4                  819 	clr	a
   1B14 08                  820 	inc	r0
   1B15 36                  821 	addc	a,@r0
   1B16 FB                  822 	mov	r3,a
   1B17 08                  823 	inc	r0
   1B18 86 04               824 	mov	ar4,@r0
   1B1A 8A 82               825 	mov	dpl,r2
   1B1C 8B 83               826 	mov	dph,r3
   1B1E 8C F0               827 	mov	b,r4
   1B20 12 4E 6E            828 	lcall	__gptrget
   1B23 FD                  829 	mov	r5,a
   1B24 1D                  830 	dec	r5
   1B25 8A 82               831 	mov	dpl,r2
   1B27 8B 83               832 	mov	dph,r3
   1B29 8C F0               833 	mov	b,r4
   1B2B ED                  834 	mov	a,r5
   1B2C 12 42 42            835 	lcall	__gptrput
                            836 ;	../sm_test_timeBomb.c:137: TRANSITION_TO(isTimeToGoBoom, updateDisplay(self->timeout)) ;
   1B2F 8D 82               837 	mov	dpl,r5
   1B31 12 18 95            838 	lcall	_updateDisplay
   1B34 A8 1F               839 	mov	r0,_bp
   1B36 08                  840 	inc	r0
   1B37 74 08               841 	mov	a,#0x08
   1B39 26                  842 	add	a,@r0
   1B3A FA                  843 	mov	r2,a
   1B3B E4                  844 	clr	a
   1B3C 08                  845 	inc	r0
   1B3D 36                  846 	addc	a,@r0
   1B3E FB                  847 	mov	r3,a
   1B3F 08                  848 	inc	r0
   1B40 86 04               849 	mov	ar4,@r0
   1B42 8A 82               850 	mov	dpl,r2
   1B44 8B 83               851 	mov	dph,r3
   1B46 8C F0               852 	mov	b,r4
   1B48 74 2B               853 	mov	a,#_timeBomb_isTimeToGoBoom
   1B4A 12 42 42            854 	lcall	__gptrput
   1B4D A3                  855 	inc	dptr
   1B4E 74 51               856 	mov	a,#(_timeBomb_isTimeToGoBoom >> 8)
   1B50 12 42 42            857 	lcall	__gptrput
   1B53 A3                  858 	inc	dptr
   1B54 74 80               859 	mov	a,#0x80
   1B56 12 42 42            860 	lcall	__gptrput
   1B59 75 82 02            861 	mov	dpl,#0x02
                            862 ;	../sm_test_timeBomb.c:141: HANDLE_STATE_EVENTS_DONE
   1B5C 80 03               863 	sjmp	00109$
   1B5E                     864 00108$:
                            865 ;	../sm_test_timeBomb.c:143: END_DEFINE_STATE()
   1B5E 75 82 00            866 	mov	dpl,#0x00
   1B61                     867 00109$:
   1B61 85 1F 81            868 	mov	sp,_bp
   1B64 D0 1F               869 	pop	_bp
   1B66 22                  870 	ret
                            871 ;------------------------------------------------------------
                            872 ;Allocation info for local variables in function 'timeBomb_isTimeToGoBoom_handler'
                            873 ;------------------------------------------------------------
                            874 ;self                      Allocated to registers r2 r3 r4 
                            875 ;stateResponseCode         Allocated to registers 
                            876 ;------------------------------------------------------------
                            877 ;	../sm_test_timeBomb.c:146: DEFINE_CHOICE_PSEUDO_STATE(	isTimeToGoBoom,
                            878 ;	-----------------------------------------
                            879 ;	 function timeBomb_isTimeToGoBoom_handler
                            880 ;	-----------------------------------------
   1B67                     881 _timeBomb_isTimeToGoBoom_handler:
   1B67 AA 82               882 	mov	r2,dpl
   1B69 AB 83               883 	mov	r3,dph
   1B6B AC F0               884 	mov	r4,b
   1B6D 74 2B               885 	mov	a,#0x2B
   1B6F 2A                  886 	add	a,r2
   1B70 FD                  887 	mov	r5,a
   1B71 E4                  888 	clr	a
   1B72 3B                  889 	addc	a,r3
   1B73 FE                  890 	mov	r6,a
   1B74 8C 07               891 	mov	ar7,r4
   1B76 8D 82               892 	mov	dpl,r5
   1B78 8E 83               893 	mov	dph,r6
   1B7A 8F F0               894 	mov	b,r7
   1B7C 12 4E 6E            895 	lcall	__gptrget
   1B7F 70 31               896 	jnz	00102$
   1B81 C0 02               897 	push	ar2
   1B83 C0 03               898 	push	ar3
   1B85 C0 04               899 	push	ar4
   1B87 12 18 96            900 	lcall	_goBOOM
   1B8A D0 04               901 	pop	ar4
   1B8C D0 03               902 	pop	ar3
   1B8E D0 02               903 	pop	ar2
   1B90 74 08               904 	mov	a,#0x08
   1B92 2A                  905 	add	a,r2
   1B93 FD                  906 	mov	r5,a
   1B94 E4                  907 	clr	a
   1B95 3B                  908 	addc	a,r3
   1B96 FE                  909 	mov	r6,a
   1B97 8C 07               910 	mov	ar7,r4
   1B99 8D 82               911 	mov	dpl,r5
   1B9B 8E 83               912 	mov	dph,r6
   1B9D 8F F0               913 	mov	b,r7
   1B9F 74 10               914 	mov	a,#_timeBomb_TOP
   1BA1 12 42 42            915 	lcall	__gptrput
   1BA4 A3                  916 	inc	dptr
   1BA5 74 51               917 	mov	a,#(_timeBomb_TOP >> 8)
   1BA7 12 42 42            918 	lcall	__gptrput
   1BAA A3                  919 	inc	dptr
   1BAB 74 80               920 	mov	a,#0x80
   1BAD 12 42 42            921 	lcall	__gptrput
   1BB0 80 1E               922 	sjmp	00103$
   1BB2                     923 00102$:
   1BB2 74 08               924 	mov	a,#0x08
   1BB4 2A                  925 	add	a,r2
   1BB5 FA                  926 	mov	r2,a
   1BB6 E4                  927 	clr	a
   1BB7 3B                  928 	addc	a,r3
   1BB8 FB                  929 	mov	r3,a
   1BB9 8A 82               930 	mov	dpl,r2
   1BBB 8B 83               931 	mov	dph,r3
   1BBD 8C F0               932 	mov	b,r4
   1BBF 74 22               933 	mov	a,#_timeBomb_timing
   1BC1 12 42 42            934 	lcall	__gptrput
   1BC4 A3                  935 	inc	dptr
   1BC5 74 51               936 	mov	a,#(_timeBomb_timing >> 8)
   1BC7 12 42 42            937 	lcall	__gptrput
   1BCA A3                  938 	inc	dptr
   1BCB 74 80               939 	mov	a,#0x80
   1BCD 12 42 42            940 	lcall	__gptrput
   1BD0                     941 00103$:
   1BD0 75 82 02            942 	mov	dpl,#0x02
   1BD3 22                  943 	ret
                            944 	.area CSEG    (CODE)
                            945 	.area CONST   (CODE)
   5110                     946 _timeBomb_TOP:
                            947 ; generic printIvalPtr
   5110 00 00 00            948 	.byte #0x00,#0x00,#0x00
   5113 00                  949 	.db #0x00
   5114 97 18               950 	.byte _timeBomb_TOP_handler,(_timeBomb_TOP_handler >> 8)
   5116 3D 51 80            951 	.byte _str_1,(_str_1 >> 8),#0x80
   5119                     952 _timeBomb_setting:
   5119 10 51 80            953 	.byte _timeBomb_TOP,(_timeBomb_TOP >> 8),#0x80
   511C 00                  954 	.db #0x00
   511D 10 19               955 	.byte _timeBomb_setting_handler,(_timeBomb_setting_handler >> 8)
   511F 4A 51 80            956 	.byte _str_2,(_str_2 >> 8),#0x80
   5122                     957 _timeBomb_timing:
   5122 10 51 80            958 	.byte _timeBomb_TOP,(_timeBomb_TOP >> 8),#0x80
   5125 00                  959 	.db #0x00
   5126 ED 19               960 	.byte _timeBomb_timing_handler,(_timeBomb_timing_handler >> 8)
   5128 5B 51 80            961 	.byte _str_3,(_str_3 >> 8),#0x80
   512B                     962 _timeBomb_isTimeToGoBoom:
   512B 10 51 80            963 	.byte _timeBomb_TOP,(_timeBomb_TOP >> 8),#0x80
   512E 01                  964 	.db #0x01
   512F 67 1B               965 	.byte _timeBomb_isTimeToGoBoom_handler,(_timeBomb_isTimeToGoBoom_handler >> 8)
   5131 6B 51 80            966 	.byte _str_4,(_str_4 >> 8),#0x80
   5134                     967 __str_0:
   5134 74 69 6D 65 42 6F   968 	.ascii "timeBomb"
        6D 62
   513C 00                  969 	.db 0x00
   513D                     970 _str_1:
   513D 74 69 6D 65 42 6F   971 	.ascii "timeBomb_TOP"
        6D 62 5F 54 4F 50
   5149 00                  972 	.db 0x00
   514A                     973 _str_2:
   514A 74 69 6D 65 42 6F   974 	.ascii "timeBomb_setting"
        6D 62 5F 73 65 74
        74 69 6E 67
   515A 00                  975 	.db 0x00
   515B                     976 _str_3:
   515B 74 69 6D 65 42 6F   977 	.ascii "timeBomb_timing"
        6D 62 5F 74 69 6D
        69 6E 67
   516A 00                  978 	.db 0x00
   516B                     979 _str_4:
   516B 74 69 6D 65 42 6F   980 	.ascii "timeBomb_isTimeToGoBoom"
        6D 62 5F 69 73 54
        69 6D 65 54 6F 47
        6F 42 6F 6F 6D
   5182 00                  981 	.db 0x00
                            982 	.area XINIT   (CODE)
   55D0                     983 __xinit__timeBomb_name:
   55D0 34 51 80            984 	.byte __str_0,(__str_0 >> 8),#0x80
                            985 	.area CABS    (ABS,CODE)
