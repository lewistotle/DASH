                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 2.9.0 #5416 (Mar 22 2009) (MINGW32)
                              4 ; This file was generated Wed Dec 30 22:11:48 2009
                              5 ;--------------------------------------------------------
                              6 	.module sm_test_timeBomb
                              7 	.optsdcc -mmcs51 --model-large
                              8 	
                              9 ;--------------------------------------------------------
                             10 ; Public variables in this module
                             11 ;--------------------------------------------------------
                             12 	.globl _updateDisplay
                             13 	.globl _timeBomb_getEventQueueDepth
                             14 	.globl _timeBomb_constructor
                             15 	.globl _timeBomb_destructor
                             16 	.globl _timeBomb_getMachineSize
                             17 	.globl _timeBomb_constructor2
                             18 	.globl _timeBomb_destructor2
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
   0023                      36 _timeBomb_constructor_sloc0_1_0:
   0023                      37 	.ds 3
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
   0913                      63 _timeBomb_constructor_base_1_1:
   0913                      64 	.ds 3
   0916                      65 _timeBomb_destructor_self_1_1:
   0916                      66 	.ds 3
   0919                      67 _timeBomb_constructor2_self_1_1:
   0919                      68 	.ds 3
                             69 ;--------------------------------------------------------
                             70 ; absolute external ram data
                             71 ;--------------------------------------------------------
                             72 	.area XABS    (ABS,XDATA)
                             73 ;--------------------------------------------------------
                             74 ; external initialized ram data
                             75 ;--------------------------------------------------------
                             76 	.area XISEG   (XDATA)
   0EDC                      77 _timeBomb_name:
   0EDC                      78 	.ds 3
                             79 	.area HOME    (CODE)
                             80 	.area GSINIT0 (CODE)
                             81 	.area GSINIT1 (CODE)
                             82 	.area GSINIT2 (CODE)
                             83 	.area GSINIT3 (CODE)
                             84 	.area GSINIT4 (CODE)
                             85 	.area GSINIT5 (CODE)
                             86 	.area GSINIT  (CODE)
                             87 	.area GSFINAL (CODE)
                             88 	.area CSEG    (CODE)
                             89 ;--------------------------------------------------------
                             90 ; global & static initialisations
                             91 ;--------------------------------------------------------
                             92 	.area HOME    (CODE)
                             93 	.area GSINIT  (CODE)
                             94 	.area GSFINAL (CODE)
                             95 	.area GSINIT  (CODE)
                             96 ;--------------------------------------------------------
                             97 ; Home
                             98 ;--------------------------------------------------------
                             99 	.area HOME    (CODE)
                            100 	.area HOME    (CODE)
                            101 ;--------------------------------------------------------
                            102 ; code
                            103 ;--------------------------------------------------------
                            104 	.area CSEG    (CODE)
                            105 ;------------------------------------------------------------
                            106 ;Allocation info for local variables in function 'timeBomb_getEventQueueDepth'
                            107 ;------------------------------------------------------------
                            108 ;------------------------------------------------------------
                            109 ;	../sm_test_timeBomb.c:28: SET_EVENT_QUEUE_DEPTH(config_tbEVENT_QUEUE_DEPTH) ;
                            110 ;	-----------------------------------------
                            111 ;	 function timeBomb_getEventQueueDepth
                            112 ;	-----------------------------------------
   17E7                     113 _timeBomb_getEventQueueDepth:
                    0002    114 	ar2 = 0x02
                    0003    115 	ar3 = 0x03
                    0004    116 	ar4 = 0x04
                    0005    117 	ar5 = 0x05
                    0006    118 	ar6 = 0x06
                    0007    119 	ar7 = 0x07
                    0000    120 	ar0 = 0x00
                    0001    121 	ar1 = 0x01
   17E7 90 00 10            122 	mov	dptr,#0x0010
   17EA 22                  123 	ret
                            124 ;------------------------------------------------------------
                            125 ;Allocation info for local variables in function 'timeBomb_constructor'
                            126 ;------------------------------------------------------------
                            127 ;sloc0                     Allocated with name '_timeBomb_constructor_sloc0_1_0'
                            128 ;base                      Allocated with name '_timeBomb_constructor_base_1_1'
                            129 ;------------------------------------------------------------
                            130 ;	../sm_test_timeBomb.c:36: END_STATE_MACHINE_DEFINITION() ;
                            131 ;	-----------------------------------------
                            132 ;	 function timeBomb_constructor
                            133 ;	-----------------------------------------
   17EB                     134 _timeBomb_constructor:
   17EB AA F0               135 	mov	r2,b
   17ED AB 83               136 	mov	r3,dph
   17EF E5 82               137 	mov	a,dpl
   17F1 90 09 13            138 	mov	dptr,#_timeBomb_constructor_base_1_1
   17F4 F0                  139 	movx	@dptr,a
   17F5 A3                  140 	inc	dptr
   17F6 EB                  141 	mov	a,r3
   17F7 F0                  142 	movx	@dptr,a
   17F8 A3                  143 	inc	dptr
   17F9 EA                  144 	mov	a,r2
   17FA F0                  145 	movx	@dptr,a
   17FB 90 09 13            146 	mov	dptr,#_timeBomb_constructor_base_1_1
   17FE E0                  147 	movx	a,@dptr
   17FF FA                  148 	mov	r2,a
   1800 A3                  149 	inc	dptr
   1801 E0                  150 	movx	a,@dptr
   1802 FB                  151 	mov	r3,a
   1803 A3                  152 	inc	dptr
   1804 E0                  153 	movx	a,@dptr
   1805 FC                  154 	mov	r4,a
   1806 8A 82               155 	mov	dpl,r2
   1808 8B 83               156 	mov	dph,r3
   180A 8C F0               157 	mov	b,r4
   180C 74 D9               158 	mov	a,#_timeBomb_TOP
   180E 12 38 0B            159 	lcall	__gptrput
   1811 A3                  160 	inc	dptr
   1812 74 46               161 	mov	a,#(_timeBomb_TOP >> 8)
   1814 12 38 0B            162 	lcall	__gptrput
   1817 74 06               163 	mov	a,#0x06
   1819 2A                  164 	add	a,r2
   181A FD                  165 	mov	r5,a
   181B E4                  166 	clr	a
   181C 3B                  167 	addc	a,r3
   181D FE                  168 	mov	r6,a
   181E 8C 07               169 	mov	ar7,r4
   1820 8D 82               170 	mov	dpl,r5
   1822 8E 83               171 	mov	dph,r6
   1824 8F F0               172 	mov	b,r7
   1826 74 D9               173 	mov	a,#_timeBomb_TOP
   1828 12 38 0B            174 	lcall	__gptrput
   182B A3                  175 	inc	dptr
   182C 74 46               176 	mov	a,#(_timeBomb_TOP >> 8)
   182E 12 38 0B            177 	lcall	__gptrput
   1831 A3                  178 	inc	dptr
   1832 74 80               179 	mov	a,#0x80
   1834 12 38 0B            180 	lcall	__gptrput
   1837 74 02               181 	mov	a,#0x02
   1839 2A                  182 	add	a,r2
   183A FD                  183 	mov	r5,a
   183B E4                  184 	clr	a
   183C 3B                  185 	addc	a,r3
   183D FE                  186 	mov	r6,a
   183E 8C 07               187 	mov	ar7,r4
   1840 8D 82               188 	mov	dpl,r5
   1842 8E 83               189 	mov	dph,r6
   1844 8F F0               190 	mov	b,r7
   1846 E4                  191 	clr	a
   1847 12 38 0B            192 	lcall	__gptrput
   184A 74 03               193 	mov	a,#0x03
   184C 2A                  194 	add	a,r2
   184D F5 23               195 	mov	_timeBomb_constructor_sloc0_1_0,a
   184F E4                  196 	clr	a
   1850 3B                  197 	addc	a,r3
   1851 F5 24               198 	mov	(_timeBomb_constructor_sloc0_1_0 + 1),a
   1853 8C 25               199 	mov	(_timeBomb_constructor_sloc0_1_0 + 2),r4
   1855 90 0E DC            200 	mov	dptr,#_timeBomb_name
   1858 E0                  201 	movx	a,@dptr
   1859 F8                  202 	mov	r0,a
   185A A3                  203 	inc	dptr
   185B E0                  204 	movx	a,@dptr
   185C F9                  205 	mov	r1,a
   185D A3                  206 	inc	dptr
   185E E0                  207 	movx	a,@dptr
   185F FD                  208 	mov	r5,a
   1860 85 23 82            209 	mov	dpl,_timeBomb_constructor_sloc0_1_0
   1863 85 24 83            210 	mov	dph,(_timeBomb_constructor_sloc0_1_0 + 1)
   1866 85 25 F0            211 	mov	b,(_timeBomb_constructor_sloc0_1_0 + 2)
   1869 E8                  212 	mov	a,r0
   186A 12 38 0B            213 	lcall	__gptrput
   186D A3                  214 	inc	dptr
   186E E9                  215 	mov	a,r1
   186F 12 38 0B            216 	lcall	__gptrput
   1872 A3                  217 	inc	dptr
   1873 ED                  218 	mov	a,r5
   1874 12 38 0B            219 	lcall	__gptrput
   1877 8A 82               220 	mov	dpl,r2
   1879 8B 83               221 	mov	dph,r3
   187B 8C F0               222 	mov	b,r4
   187D 02 18 A8            223 	ljmp	_timeBomb_constructor2
                            224 ;------------------------------------------------------------
                            225 ;Allocation info for local variables in function 'timeBomb_destructor'
                            226 ;------------------------------------------------------------
                            227 ;self                      Allocated with name '_timeBomb_destructor_self_1_1'
                            228 ;------------------------------------------------------------
                            229 ;	../sm_test_timeBomb.c:36: 
                            230 ;	-----------------------------------------
                            231 ;	 function timeBomb_destructor
                            232 ;	-----------------------------------------
   1880                     233 _timeBomb_destructor:
   1880 AA F0               234 	mov	r2,b
   1882 AB 83               235 	mov	r3,dph
   1884 E5 82               236 	mov	a,dpl
   1886 90 09 16            237 	mov	dptr,#_timeBomb_destructor_self_1_1
   1889 F0                  238 	movx	@dptr,a
   188A A3                  239 	inc	dptr
   188B EB                  240 	mov	a,r3
   188C F0                  241 	movx	@dptr,a
   188D A3                  242 	inc	dptr
   188E EA                  243 	mov	a,r2
   188F F0                  244 	movx	@dptr,a
   1890 90 09 16            245 	mov	dptr,#_timeBomb_destructor_self_1_1
   1893 E0                  246 	movx	a,@dptr
   1894 FA                  247 	mov	r2,a
   1895 A3                  248 	inc	dptr
   1896 E0                  249 	movx	a,@dptr
   1897 FB                  250 	mov	r3,a
   1898 A3                  251 	inc	dptr
   1899 E0                  252 	movx	a,@dptr
   189A FC                  253 	mov	r4,a
   189B 8A 82               254 	mov	dpl,r2
   189D 8B 83               255 	mov	dph,r3
   189F 8C F0               256 	mov	b,r4
   18A1 02 18 FA            257 	ljmp	_timeBomb_destructor2
                            258 ;------------------------------------------------------------
                            259 ;Allocation info for local variables in function 'timeBomb_getMachineSize'
                            260 ;------------------------------------------------------------
                            261 ;------------------------------------------------------------
                            262 ;	../sm_test_timeBomb.c:36: END_STATE_MACHINE_DEFINITION() ;
                            263 ;	-----------------------------------------
                            264 ;	 function timeBomb_getMachineSize
                            265 ;	-----------------------------------------
   18A4                     266 _timeBomb_getMachineSize:
   18A4 90 00 18            267 	mov	dptr,#0x0018
   18A7 22                  268 	ret
                            269 ;------------------------------------------------------------
                            270 ;Allocation info for local variables in function 'timeBomb_constructor2'
                            271 ;------------------------------------------------------------
                            272 ;self                      Allocated with name '_timeBomb_constructor2_self_1_1'
                            273 ;------------------------------------------------------------
                            274 ;	../sm_test_timeBomb.c:39: STATE_MACHINE_CONSTRUCTOR()
                            275 ;	-----------------------------------------
                            276 ;	 function timeBomb_constructor2
                            277 ;	-----------------------------------------
   18A8                     278 _timeBomb_constructor2:
   18A8 AA F0               279 	mov	r2,b
   18AA AB 83               280 	mov	r3,dph
   18AC E5 82               281 	mov	a,dpl
   18AE 90 09 19            282 	mov	dptr,#_timeBomb_constructor2_self_1_1
   18B1 F0                  283 	movx	@dptr,a
   18B2 A3                  284 	inc	dptr
   18B3 EB                  285 	mov	a,r3
   18B4 F0                  286 	movx	@dptr,a
   18B5 A3                  287 	inc	dptr
   18B6 EA                  288 	mov	a,r2
   18B7 F0                  289 	movx	@dptr,a
                            290 ;	../sm_test_timeBomb.c:41: self->timeout			= 0 ;
   18B8 90 09 19            291 	mov	dptr,#_timeBomb_constructor2_self_1_1
   18BB E0                  292 	movx	a,@dptr
   18BC FA                  293 	mov	r2,a
   18BD A3                  294 	inc	dptr
   18BE E0                  295 	movx	a,@dptr
   18BF FB                  296 	mov	r3,a
   18C0 A3                  297 	inc	dptr
   18C1 E0                  298 	movx	a,@dptr
   18C2 FC                  299 	mov	r4,a
   18C3 74 15               300 	mov	a,#0x15
   18C5 2A                  301 	add	a,r2
   18C6 FD                  302 	mov	r5,a
   18C7 E4                  303 	clr	a
   18C8 3B                  304 	addc	a,r3
   18C9 FE                  305 	mov	r6,a
   18CA 8C 07               306 	mov	ar7,r4
   18CC 8D 82               307 	mov	dpl,r5
   18CE 8E 83               308 	mov	dph,r6
   18D0 8F F0               309 	mov	b,r7
   18D2 E4                  310 	clr	a
   18D3 12 38 0B            311 	lcall	__gptrput
                            312 ;	../sm_test_timeBomb.c:42: self->codeBeingEntered	= 0 ;
   18D6 74 16               313 	mov	a,#0x16
   18D8 2A                  314 	add	a,r2
   18D9 FD                  315 	mov	r5,a
   18DA E4                  316 	clr	a
   18DB 3B                  317 	addc	a,r3
   18DC FE                  318 	mov	r6,a
   18DD 8C 07               319 	mov	ar7,r4
   18DF 8D 82               320 	mov	dpl,r5
   18E1 8E 83               321 	mov	dph,r6
   18E3 8F F0               322 	mov	b,r7
   18E5 E4                  323 	clr	a
   18E6 12 38 0B            324 	lcall	__gptrput
                            325 ;	../sm_test_timeBomb.c:43: self->disarmCode		= 0 ;
   18E9 74 17               326 	mov	a,#0x17
   18EB 2A                  327 	add	a,r2
   18EC FA                  328 	mov	r2,a
   18ED E4                  329 	clr	a
   18EE 3B                  330 	addc	a,r3
   18EF FB                  331 	mov	r3,a
   18F0 8A 82               332 	mov	dpl,r2
   18F2 8B 83               333 	mov	dph,r3
   18F4 8C F0               334 	mov	b,r4
   18F6 E4                  335 	clr	a
   18F7 02 38 0B            336 	ljmp	__gptrput
                            337 ;------------------------------------------------------------
                            338 ;Allocation info for local variables in function 'timeBomb_destructor2'
                            339 ;------------------------------------------------------------
                            340 ;self                      Allocated with name '_timeBomb_destructor2_self_1_1'
                            341 ;------------------------------------------------------------
                            342 ;	../sm_test_timeBomb.c:47: STATE_MACHINE_DESTRUCTOR()
                            343 ;	-----------------------------------------
                            344 ;	 function timeBomb_destructor2
                            345 ;	-----------------------------------------
   18FA                     346 _timeBomb_destructor2:
                            347 ;	../sm_test_timeBomb.c:49: (void)self ;	/* Nothing to do here */
   18FA 22                  348 	ret
                            349 ;------------------------------------------------------------
                            350 ;Allocation info for local variables in function 'updateDisplay'
                            351 ;------------------------------------------------------------
                            352 ;value                     Allocated with name '_updateDisplay_value_1_1'
                            353 ;------------------------------------------------------------
                            354 ;	../sm_test_timeBomb.c:53: void updateDisplay(	uint8_t value)
                            355 ;	-----------------------------------------
                            356 ;	 function updateDisplay
                            357 ;	-----------------------------------------
   18FB                     358 _updateDisplay:
                            359 ;	../sm_test_timeBomb.c:55: (void)value ;
   18FB 22                  360 	ret
                            361 ;------------------------------------------------------------
                            362 ;Allocation info for local variables in function 'timeBomb_TOP_handler'
                            363 ;------------------------------------------------------------
                            364 ;event                     Allocated to stack - offset -5
                            365 ;self                      Allocated to stack - offset 1
                            366 ;stateResponseCode         Allocated to registers 
                            367 ;------------------------------------------------------------
                            368 ;	../sm_test_timeBomb.c:59: DEFINE_TOP_STATE()
                            369 ;	-----------------------------------------
                            370 ;	 function timeBomb_TOP_handler
                            371 ;	-----------------------------------------
   18FC                     372 _timeBomb_TOP_handler:
   18FC C0 1F               373 	push	_bp
   18FE 85 81 1F            374 	mov	_bp,sp
   1901 C0 82               375 	push	dpl
   1903 C0 83               376 	push	dph
   1905 C0 F0               377 	push	b
                            378 ;	../sm_test_timeBomb.c:61: INITIAL_TRANSITION(TO(setting), ACTION(self->timeout = INIT_TIMEOUT)) ;
   1907 E5 1F               379 	mov	a,_bp
   1909 24 FB               380 	add	a,#0xfb
   190B F8                  381 	mov	r0,a
   190C 86 05               382 	mov	ar5,@r0
   190E 08                  383 	inc	r0
   190F 86 06               384 	mov	ar6,@r0
   1911 08                  385 	inc	r0
   1912 86 07               386 	mov	ar7,@r0
   1914 8D 82               387 	mov	dpl,r5
   1916 8E 83               388 	mov	dph,r6
   1918 8F F0               389 	mov	b,r7
   191A 12 44 37            390 	lcall	__gptrget
   191D FD                  391 	mov	r5,a
   191E BD 02 43            392 	cjne	r5,#0x02,00102$
   1921 A8 1F               393 	mov	r0,_bp
   1923 08                  394 	inc	r0
   1924 74 15               395 	mov	a,#0x15
   1926 26                  396 	add	a,@r0
   1927 FE                  397 	mov	r6,a
   1928 E4                  398 	clr	a
   1929 08                  399 	inc	r0
   192A 36                  400 	addc	a,@r0
   192B FF                  401 	mov	r7,a
   192C 08                  402 	inc	r0
   192D 86 02               403 	mov	ar2,@r0
   192F 8E 82               404 	mov	dpl,r6
   1931 8F 83               405 	mov	dph,r7
   1933 8A F0               406 	mov	b,r2
   1935 74 1E               407 	mov	a,#0x1E
   1937 12 38 0B            408 	lcall	__gptrput
   193A A8 1F               409 	mov	r0,_bp
   193C 08                  410 	inc	r0
   193D 74 09               411 	mov	a,#0x09
   193F 26                  412 	add	a,@r0
   1940 FA                  413 	mov	r2,a
   1941 E4                  414 	clr	a
   1942 08                  415 	inc	r0
   1943 36                  416 	addc	a,@r0
   1944 FB                  417 	mov	r3,a
   1945 08                  418 	inc	r0
   1946 86 04               419 	mov	ar4,@r0
   1948 8A 82               420 	mov	dpl,r2
   194A 8B 83               421 	mov	dph,r3
   194C 8C F0               422 	mov	b,r4
   194E 74 E2               423 	mov	a,#_timeBomb_setting
   1950 12 38 0B            424 	lcall	__gptrput
   1953 A3                  425 	inc	dptr
   1954 74 46               426 	mov	a,#(_timeBomb_setting >> 8)
   1956 12 38 0B            427 	lcall	__gptrput
   1959 A3                  428 	inc	dptr
   195A 74 80               429 	mov	a,#0x80
   195C 12 38 0B            430 	lcall	__gptrput
   195F 75 82 02            431 	mov	dpl,#0x02
   1962 80 0B               432 	sjmp	00106$
   1964                     433 00102$:
                            434 ;	../sm_test_timeBomb.c:63: HANDLE_STATE_EVENTS
   1964 BD 03 05            435 	cjne	r5,#0x03,00105$
                            436 ;	../sm_test_timeBomb.c:69: EXIT_HANDLED
   1967 75 82 01            437 	mov	dpl,#0x01
                            438 ;	../sm_test_timeBomb.c:71: HANDLE_STATE_EVENTS_DONE
   196A 80 03               439 	sjmp	00106$
   196C                     440 00105$:
                            441 ;	../sm_test_timeBomb.c:73: END_DEFINE_STATE()
   196C 75 82 00            442 	mov	dpl,#0x00
   196F                     443 00106$:
   196F 85 1F 81            444 	mov	sp,_bp
   1972 D0 1F               445 	pop	_bp
   1974 22                  446 	ret
                            447 ;------------------------------------------------------------
                            448 ;Allocation info for local variables in function 'timeBomb_setting_handler'
                            449 ;------------------------------------------------------------
                            450 ;event                     Allocated to stack - offset -5
                            451 ;self                      Allocated to stack - offset 1
                            452 ;stateResponseCode         Allocated to registers 
                            453 ;------------------------------------------------------------
                            454 ;	../sm_test_timeBomb.c:76: DEFINE_STATE(setting)
                            455 ;	-----------------------------------------
                            456 ;	 function timeBomb_setting_handler
                            457 ;	-----------------------------------------
   1975                     458 _timeBomb_setting_handler:
   1975 C0 1F               459 	push	_bp
   1977 85 81 1F            460 	mov	_bp,sp
   197A C0 82               461 	push	dpl
   197C C0 83               462 	push	dph
   197E C0 F0               463 	push	b
                            464 ;	../sm_test_timeBomb.c:78: TRANSITION_ON(ARM, UNCONDITIONALLY, TO(timing), ACTION(self->codeBeingEntered = 0)) ;
   1980 E5 1F               465 	mov	a,_bp
   1982 24 FB               466 	add	a,#0xfb
   1984 F8                  467 	mov	r0,a
   1985 86 05               468 	mov	ar5,@r0
   1987 08                  469 	inc	r0
   1988 86 06               470 	mov	ar6,@r0
   198A 08                  471 	inc	r0
   198B 86 07               472 	mov	ar7,@r0
   198D 8D 82               473 	mov	dpl,r5
   198F 8E 83               474 	mov	dph,r6
   1991 8F F0               475 	mov	b,r7
   1993 12 44 37            476 	lcall	__gptrget
   1996 FD                  477 	mov	r5,a
   1997 BD 06 42            478 	cjne	r5,#0x06,00102$
   199A A8 1F               479 	mov	r0,_bp
   199C 08                  480 	inc	r0
   199D 74 16               481 	mov	a,#0x16
   199F 26                  482 	add	a,@r0
   19A0 FE                  483 	mov	r6,a
   19A1 E4                  484 	clr	a
   19A2 08                  485 	inc	r0
   19A3 36                  486 	addc	a,@r0
   19A4 FF                  487 	mov	r7,a
   19A5 08                  488 	inc	r0
   19A6 86 02               489 	mov	ar2,@r0
   19A8 8E 82               490 	mov	dpl,r6
   19AA 8F 83               491 	mov	dph,r7
   19AC 8A F0               492 	mov	b,r2
   19AE E4                  493 	clr	a
   19AF 12 38 0B            494 	lcall	__gptrput
   19B2 A8 1F               495 	mov	r0,_bp
   19B4 08                  496 	inc	r0
   19B5 74 09               497 	mov	a,#0x09
   19B7 26                  498 	add	a,@r0
   19B8 FA                  499 	mov	r2,a
   19B9 E4                  500 	clr	a
   19BA 08                  501 	inc	r0
   19BB 36                  502 	addc	a,@r0
   19BC FB                  503 	mov	r3,a
   19BD 08                  504 	inc	r0
   19BE 86 04               505 	mov	ar4,@r0
   19C0 8A 82               506 	mov	dpl,r2
   19C2 8B 83               507 	mov	dph,r3
   19C4 8C F0               508 	mov	b,r4
   19C6 74 EB               509 	mov	a,#_timeBomb_timing
   19C8 12 38 0B            510 	lcall	__gptrput
   19CB A3                  511 	inc	dptr
   19CC 74 46               512 	mov	a,#(_timeBomb_timing >> 8)
   19CE 12 38 0B            513 	lcall	__gptrput
   19D1 A3                  514 	inc	dptr
   19D2 74 80               515 	mov	a,#0x80
   19D4 12 38 0B            516 	lcall	__gptrput
   19D7 75 82 02            517 	mov	dpl,#0x02
   19DA 80 70               518 	sjmp	00112$
   19DC                     519 00102$:
                            520 ;	../sm_test_timeBomb.c:80: HANDLE_STATE_EVENTS
   19DC BD 04 02            521 	cjne	r5,#0x04,00121$
   19DF 80 05               522 	sjmp	00104$
   19E1                     523 00121$:
                            524 ;	../sm_test_timeBomb.c:82: EVENT(UP)
   19E1 BD 05 65            525 	cjne	r5,#0x05,00111$
   19E4 80 32               526 	sjmp	00107$
   19E6                     527 00104$:
                            528 ;	../sm_test_timeBomb.c:84: if(self->timeout < 60)
   19E6 A8 1F               529 	mov	r0,_bp
   19E8 08                  530 	inc	r0
   19E9 74 15               531 	mov	a,#0x15
   19EB 26                  532 	add	a,@r0
   19EC FA                  533 	mov	r2,a
   19ED E4                  534 	clr	a
   19EE 08                  535 	inc	r0
   19EF 36                  536 	addc	a,@r0
   19F0 FB                  537 	mov	r3,a
   19F1 08                  538 	inc	r0
   19F2 86 04               539 	mov	ar4,@r0
   19F4 8A 82               540 	mov	dpl,r2
   19F6 8B 83               541 	mov	dph,r3
   19F8 8C F0               542 	mov	b,r4
   19FA 12 44 37            543 	lcall	__gptrget
   19FD FD                  544 	mov	r5,a
   19FE BD 3C 00            545 	cjne	r5,#0x3C,00123$
   1A01                     546 00123$:
   1A01 50 10               547 	jnc	00106$
                            548 ;	../sm_test_timeBomb.c:86: self->timeout++ ;
   1A03 0D                  549 	inc	r5
   1A04 8A 82               550 	mov	dpl,r2
   1A06 8B 83               551 	mov	dph,r3
   1A08 8C F0               552 	mov	b,r4
   1A0A ED                  553 	mov	a,r5
   1A0B 12 38 0B            554 	lcall	__gptrput
                            555 ;	../sm_test_timeBomb.c:88: updateDisplay(self->timeout) ;
   1A0E 8D 82               556 	mov	dpl,r5
   1A10 12 18 FB            557 	lcall	_updateDisplay
   1A13                     558 00106$:
                            559 ;	../sm_test_timeBomb.c:91: EVENT_HANDLED
   1A13 75 82 01            560 	mov	dpl,#0x01
                            561 ;	../sm_test_timeBomb.c:93: EVENT(DOWN)
   1A16 80 34               562 	sjmp	00112$
   1A18                     563 00107$:
                            564 ;	../sm_test_timeBomb.c:95: if(self->timeout > 1)
   1A18 A8 1F               565 	mov	r0,_bp
   1A1A 08                  566 	inc	r0
   1A1B 74 15               567 	mov	a,#0x15
   1A1D 26                  568 	add	a,@r0
   1A1E FA                  569 	mov	r2,a
   1A1F E4                  570 	clr	a
   1A20 08                  571 	inc	r0
   1A21 36                  572 	addc	a,@r0
   1A22 FB                  573 	mov	r3,a
   1A23 08                  574 	inc	r0
   1A24 86 04               575 	mov	ar4,@r0
   1A26 8A 82               576 	mov	dpl,r2
   1A28 8B 83               577 	mov	dph,r3
   1A2A 8C F0               578 	mov	b,r4
   1A2C 12 44 37            579 	lcall	__gptrget
   1A2F FD                  580 	mov  r5,a
   1A30 24 FE               581 	add	a,#0xff - 0x01
   1A32 50 10               582 	jnc	00109$
                            583 ;	../sm_test_timeBomb.c:97: self->timeout-- ;
   1A34 1D                  584 	dec	r5
   1A35 8A 82               585 	mov	dpl,r2
   1A37 8B 83               586 	mov	dph,r3
   1A39 8C F0               587 	mov	b,r4
   1A3B ED                  588 	mov	a,r5
   1A3C 12 38 0B            589 	lcall	__gptrput
                            590 ;	../sm_test_timeBomb.c:99: updateDisplay(self->timeout) ;
   1A3F 8D 82               591 	mov	dpl,r5
   1A41 12 18 FB            592 	lcall	_updateDisplay
   1A44                     593 00109$:
                            594 ;	../sm_test_timeBomb.c:102: EVENT_HANDLED
   1A44 75 82 01            595 	mov	dpl,#0x01
                            596 ;	../sm_test_timeBomb.c:104: HANDLE_STATE_EVENTS_DONE
   1A47 80 03               597 	sjmp	00112$
   1A49                     598 00111$:
                            599 ;	../sm_test_timeBomb.c:106: END_DEFINE_STATE()
   1A49 75 82 00            600 	mov	dpl,#0x00
   1A4C                     601 00112$:
   1A4C 85 1F 81            602 	mov	sp,_bp
   1A4F D0 1F               603 	pop	_bp
   1A51 22                  604 	ret
                            605 ;------------------------------------------------------------
                            606 ;Allocation info for local variables in function 'timeBomb_timing_handler'
                            607 ;------------------------------------------------------------
                            608 ;event                     Allocated to stack - offset -5
                            609 ;self                      Allocated to stack - offset 1
                            610 ;stateResponseCode         Allocated to registers 
                            611 ;------------------------------------------------------------
                            612 ;	../sm_test_timeBomb.c:109: DEFINE_STATE(timing)
                            613 ;	-----------------------------------------
                            614 ;	 function timeBomb_timing_handler
                            615 ;	-----------------------------------------
   1A52                     616 _timeBomb_timing_handler:
   1A52 C0 1F               617 	push	_bp
   1A54 85 81 1F            618 	mov	_bp,sp
   1A57 C0 82               619 	push	dpl
   1A59 C0 83               620 	push	dph
   1A5B C0 F0               621 	push	b
                            622 ;	../sm_test_timeBomb.c:111: TRANSITION_ON(ARM, IF(self->codeBeingEntered == self->disarmCode), TO(setting), ACTION(updateDisplay(self->timeout))) ;
   1A5D E5 1F               623 	mov	a,_bp
   1A5F 24 FB               624 	add	a,#0xfb
   1A61 F8                  625 	mov	r0,a
   1A62 86 05               626 	mov	ar5,@r0
   1A64 08                  627 	inc	r0
   1A65 86 06               628 	mov	ar6,@r0
   1A67 08                  629 	inc	r0
   1A68 86 07               630 	mov	ar7,@r0
   1A6A 8D 82               631 	mov	dpl,r5
   1A6C 8E 83               632 	mov	dph,r6
   1A6E 8F F0               633 	mov	b,r7
   1A70 12 44 37            634 	lcall	__gptrget
   1A73 FD                  635 	mov	r5,a
   1A74 BD 06 02            636 	cjne	r5,#0x06,00119$
   1A77 80 03               637 	sjmp	00120$
   1A79                     638 00119$:
   1A79 02 1B 01            639 	ljmp	00102$
   1A7C                     640 00120$:
   1A7C C0 05               641 	push	ar5
   1A7E A8 1F               642 	mov	r0,_bp
   1A80 08                  643 	inc	r0
   1A81 74 16               644 	mov	a,#0x16
   1A83 26                  645 	add	a,@r0
   1A84 FE                  646 	mov	r6,a
   1A85 E4                  647 	clr	a
   1A86 08                  648 	inc	r0
   1A87 36                  649 	addc	a,@r0
   1A88 FF                  650 	mov	r7,a
   1A89 08                  651 	inc	r0
   1A8A 86 05               652 	mov	ar5,@r0
   1A8C 8E 82               653 	mov	dpl,r6
   1A8E 8F 83               654 	mov	dph,r7
   1A90 8D F0               655 	mov	b,r5
   1A92 12 44 37            656 	lcall	__gptrget
   1A95 FE                  657 	mov	r6,a
   1A96 A8 1F               658 	mov	r0,_bp
   1A98 08                  659 	inc	r0
   1A99 74 17               660 	mov	a,#0x17
   1A9B 26                  661 	add	a,@r0
   1A9C FD                  662 	mov	r5,a
   1A9D E4                  663 	clr	a
   1A9E 08                  664 	inc	r0
   1A9F 36                  665 	addc	a,@r0
   1AA0 FF                  666 	mov	r7,a
   1AA1 08                  667 	inc	r0
   1AA2 86 02               668 	mov	ar2,@r0
   1AA4 8D 82               669 	mov	dpl,r5
   1AA6 8F 83               670 	mov	dph,r7
   1AA8 8A F0               671 	mov	b,r2
   1AAA 12 44 37            672 	lcall	__gptrget
   1AAD FD                  673 	mov	r5,a
   1AAE EE                  674 	mov	a,r6
   1AAF B5 05 02            675 	cjne	a,ar5,00121$
   1AB2 80 04               676 	sjmp	00122$
   1AB4                     677 00121$:
   1AB4 D0 05               678 	pop	ar5
   1AB6 80 49               679 	sjmp	00102$
   1AB8                     680 00122$:
   1AB8 D0 05               681 	pop	ar5
   1ABA A8 1F               682 	mov	r0,_bp
   1ABC 08                  683 	inc	r0
   1ABD 74 15               684 	mov	a,#0x15
   1ABF 26                  685 	add	a,@r0
   1AC0 FA                  686 	mov	r2,a
   1AC1 E4                  687 	clr	a
   1AC2 08                  688 	inc	r0
   1AC3 36                  689 	addc	a,@r0
   1AC4 FB                  690 	mov	r3,a
   1AC5 08                  691 	inc	r0
   1AC6 86 04               692 	mov	ar4,@r0
   1AC8 8A 82               693 	mov	dpl,r2
   1ACA 8B 83               694 	mov	dph,r3
   1ACC 8C F0               695 	mov	b,r4
   1ACE 12 44 37            696 	lcall	__gptrget
   1AD1 F5 82               697 	mov	dpl,a
   1AD3 12 18 FB            698 	lcall	_updateDisplay
   1AD6 A8 1F               699 	mov	r0,_bp
   1AD8 08                  700 	inc	r0
   1AD9 74 09               701 	mov	a,#0x09
   1ADB 26                  702 	add	a,@r0
   1ADC FA                  703 	mov	r2,a
   1ADD E4                  704 	clr	a
   1ADE 08                  705 	inc	r0
   1ADF 36                  706 	addc	a,@r0
   1AE0 FB                  707 	mov	r3,a
   1AE1 08                  708 	inc	r0
   1AE2 86 04               709 	mov	ar4,@r0
   1AE4 8A 82               710 	mov	dpl,r2
   1AE6 8B 83               711 	mov	dph,r3
   1AE8 8C F0               712 	mov	b,r4
   1AEA 74 E2               713 	mov	a,#_timeBomb_setting
   1AEC 12 38 0B            714 	lcall	__gptrput
   1AEF A3                  715 	inc	dptr
   1AF0 74 46               716 	mov	a,#(_timeBomb_setting >> 8)
   1AF2 12 38 0B            717 	lcall	__gptrput
   1AF5 A3                  718 	inc	dptr
   1AF6 74 80               719 	mov	a,#0x80
   1AF8 12 38 0B            720 	lcall	__gptrput
   1AFB 75 82 02            721 	mov	dpl,#0x02
   1AFE 02 1B E2            722 	ljmp	00111$
   1B01                     723 00102$:
                            724 ;	../sm_test_timeBomb.c:113: HANDLE_STATE_EVENTS
   1B01 BD 04 02            725 	cjne	r5,#0x04,00123$
   1B04 80 0D               726 	sjmp	00104$
   1B06                     727 00123$:
   1B06 BD 05 02            728 	cjne	r5,#0x05,00124$
   1B09 80 3E               729 	sjmp	00105$
   1B0B                     730 00124$:
   1B0B BD 07 02            731 	cjne	r5,#0x07,00125$
   1B0E 80 61               732 	sjmp	00106$
   1B10                     733 00125$:
   1B10 02 1B DF            734 	ljmp	00110$
                            735 ;	../sm_test_timeBomb.c:115: EVENT(UP)
   1B13                     736 00104$:
                            737 ;	../sm_test_timeBomb.c:117: self->codeBeingEntered <<= 1 ;
   1B13 A8 1F               738 	mov	r0,_bp
   1B15 08                  739 	inc	r0
   1B16 74 16               740 	mov	a,#0x16
   1B18 26                  741 	add	a,@r0
   1B19 FA                  742 	mov	r2,a
   1B1A E4                  743 	clr	a
   1B1B 08                  744 	inc	r0
   1B1C 36                  745 	addc	a,@r0
   1B1D FB                  746 	mov	r3,a
   1B1E 08                  747 	inc	r0
   1B1F 86 04               748 	mov	ar4,@r0
   1B21 8A 82               749 	mov	dpl,r2
   1B23 8B 83               750 	mov	dph,r3
   1B25 8C F0               751 	mov	b,r4
   1B27 12 44 37            752 	lcall	__gptrget
   1B2A 25 E0               753 	add	a,acc
   1B2C FD                  754 	mov	r5,a
   1B2D 8A 82               755 	mov	dpl,r2
   1B2F 8B 83               756 	mov	dph,r3
   1B31 8C F0               757 	mov	b,r4
   1B33 12 38 0B            758 	lcall	__gptrput
                            759 ;	../sm_test_timeBomb.c:118: self->codeBeingEntered |= 1 ;
   1B36 43 05 01            760 	orl	ar5,#0x01
   1B39 8A 82               761 	mov	dpl,r2
   1B3B 8B 83               762 	mov	dph,r3
   1B3D 8C F0               763 	mov	b,r4
   1B3F ED                  764 	mov	a,r5
   1B40 12 38 0B            765 	lcall	__gptrput
                            766 ;	../sm_test_timeBomb.c:120: EVENT_HANDLED
   1B43 75 82 01            767 	mov	dpl,#0x01
   1B46 02 1B E2            768 	ljmp	00111$
                            769 ;	../sm_test_timeBomb.c:122: EVENT(DOWN)
   1B49                     770 00105$:
                            771 ;	../sm_test_timeBomb.c:124: self->codeBeingEntered <<= 1 ;
   1B49 A8 1F               772 	mov	r0,_bp
   1B4B 08                  773 	inc	r0
   1B4C 74 16               774 	mov	a,#0x16
   1B4E 26                  775 	add	a,@r0
   1B4F FA                  776 	mov	r2,a
   1B50 E4                  777 	clr	a
   1B51 08                  778 	inc	r0
   1B52 36                  779 	addc	a,@r0
   1B53 FB                  780 	mov	r3,a
   1B54 08                  781 	inc	r0
   1B55 86 04               782 	mov	ar4,@r0
   1B57 8A 82               783 	mov	dpl,r2
   1B59 8B 83               784 	mov	dph,r3
   1B5B 8C F0               785 	mov	b,r4
   1B5D 12 44 37            786 	lcall	__gptrget
   1B60 25 E0               787 	add	a,acc
   1B62 FD                  788 	mov	r5,a
   1B63 8A 82               789 	mov	dpl,r2
   1B65 8B 83               790 	mov	dph,r3
   1B67 8C F0               791 	mov	b,r4
   1B69 12 38 0B            792 	lcall	__gptrput
                            793 ;	../sm_test_timeBomb.c:126: EVENT_HANDLED
   1B6C 75 82 01            794 	mov	dpl,#0x01
                            795 ;	../sm_test_timeBomb.c:128: EVENT(TICK)
   1B6F 80 71               796 	sjmp	00111$
   1B71                     797 00106$:
                            798 ;	../sm_test_timeBomb.c:130: self->timeout-- ;
   1B71 A8 1F               799 	mov	r0,_bp
   1B73 08                  800 	inc	r0
   1B74 74 15               801 	mov	a,#0x15
   1B76 26                  802 	add	a,@r0
   1B77 FA                  803 	mov	r2,a
   1B78 E4                  804 	clr	a
   1B79 08                  805 	inc	r0
   1B7A 36                  806 	addc	a,@r0
   1B7B FB                  807 	mov	r3,a
   1B7C 08                  808 	inc	r0
   1B7D 86 04               809 	mov	ar4,@r0
   1B7F 8A 82               810 	mov	dpl,r2
   1B81 8B 83               811 	mov	dph,r3
   1B83 8C F0               812 	mov	b,r4
   1B85 12 44 37            813 	lcall	__gptrget
   1B88 FD                  814 	mov	r5,a
   1B89 1D                  815 	dec	r5
   1B8A 8A 82               816 	mov	dpl,r2
   1B8C 8B 83               817 	mov	dph,r3
   1B8E 8C F0               818 	mov	b,r4
   1B90 ED                  819 	mov	a,r5
   1B91 12 38 0B            820 	lcall	__gptrput
                            821 ;	../sm_test_timeBomb.c:132: updateDisplay(self->timeout) ;
   1B94 8D 82               822 	mov	dpl,r5
   1B96 C0 02               823 	push	ar2
   1B98 C0 03               824 	push	ar3
   1B9A C0 04               825 	push	ar4
   1B9C 12 18 FB            826 	lcall	_updateDisplay
   1B9F D0 04               827 	pop	ar4
   1BA1 D0 03               828 	pop	ar3
   1BA3 D0 02               829 	pop	ar2
                            830 ;	../sm_test_timeBomb.c:134: TRANSITION_IF(self->timeout == 0, TO(BOOM), NO_ACTION)
   1BA5 8A 82               831 	mov	dpl,r2
   1BA7 8B 83               832 	mov	dph,r3
   1BA9 8C F0               833 	mov	b,r4
   1BAB 12 44 37            834 	lcall	__gptrget
   1BAE 70 2A               835 	jnz	00108$
   1BB0 A8 1F               836 	mov	r0,_bp
   1BB2 08                  837 	inc	r0
   1BB3 74 09               838 	mov	a,#0x09
   1BB5 26                  839 	add	a,@r0
   1BB6 FA                  840 	mov	r2,a
   1BB7 E4                  841 	clr	a
   1BB8 08                  842 	inc	r0
   1BB9 36                  843 	addc	a,@r0
   1BBA FB                  844 	mov	r3,a
   1BBB 08                  845 	inc	r0
   1BBC 86 04               846 	mov	ar4,@r0
   1BBE 8A 82               847 	mov	dpl,r2
   1BC0 8B 83               848 	mov	dph,r3
   1BC2 8C F0               849 	mov	b,r4
   1BC4 74 F4               850 	mov	a,#_timeBomb_BOOM
   1BC6 12 38 0B            851 	lcall	__gptrput
   1BC9 A3                  852 	inc	dptr
   1BCA 74 46               853 	mov	a,#(_timeBomb_BOOM >> 8)
   1BCC 12 38 0B            854 	lcall	__gptrput
   1BCF A3                  855 	inc	dptr
   1BD0 74 80               856 	mov	a,#0x80
   1BD2 12 38 0B            857 	lcall	__gptrput
   1BD5 75 82 02            858 	mov	dpl,#0x02
   1BD8 80 08               859 	sjmp	00111$
   1BDA                     860 00108$:
                            861 ;	../sm_test_timeBomb.c:136: EVENT_HANDLED
   1BDA 75 82 01            862 	mov	dpl,#0x01
                            863 ;	../sm_test_timeBomb.c:138: HANDLE_STATE_EVENTS_DONE
   1BDD 80 03               864 	sjmp	00111$
   1BDF                     865 00110$:
                            866 ;	../sm_test_timeBomb.c:140: END_DEFINE_STATE()
   1BDF 75 82 00            867 	mov	dpl,#0x00
   1BE2                     868 00111$:
   1BE2 85 1F 81            869 	mov	sp,_bp
   1BE5 D0 1F               870 	pop	_bp
   1BE7 22                  871 	ret
                            872 ;------------------------------------------------------------
                            873 ;Allocation info for local variables in function 'timeBomb_BOOM_handler'
                            874 ;------------------------------------------------------------
                            875 ;event                     Allocated to stack - offset -5
                            876 ;self                      Allocated to registers r2 r3 r4 
                            877 ;stateResponseCode         Allocated to registers 
                            878 ;------------------------------------------------------------
                            879 ;	../sm_test_timeBomb.c:143: DEFINE_STATE(BOOM)
                            880 ;	-----------------------------------------
                            881 ;	 function timeBomb_BOOM_handler
                            882 ;	-----------------------------------------
   1BE8                     883 _timeBomb_BOOM_handler:
   1BE8 C0 1F               884 	push	_bp
   1BEA 85 81 1F            885 	mov	_bp,sp
   1BED AA 82               886 	mov	r2,dpl
   1BEF AB 83               887 	mov	r3,dph
   1BF1 AC F0               888 	mov	r4,b
                            889 ;	../sm_test_timeBomb.c:145: HANDLE_STATE_EVENTS
   1BF3 E5 1F               890 	mov	a,_bp
   1BF5 24 FB               891 	add	a,#0xfb
   1BF7 F8                  892 	mov	r0,a
   1BF8 86 05               893 	mov	ar5,@r0
   1BFA 08                  894 	inc	r0
   1BFB 86 06               895 	mov	ar6,@r0
   1BFD 08                  896 	inc	r0
   1BFE 86 07               897 	mov	ar7,@r0
   1C00 8D 82               898 	mov	dpl,r5
   1C02 8E 83               899 	mov	dph,r6
   1C04 8F F0               900 	mov	b,r7
   1C06 12 44 37            901 	lcall	__gptrget
   1C09 FD                  902 	mov	r5,a
   1C0A BD 01 23            903 	cjne	r5,#0x01,00103$
                            904 ;	../sm_test_timeBomb.c:151: TRANSITION_TO(STATE_MACHINE_EXIT, NO_ACTION) ;
   1C0D 74 09               905 	mov	a,#0x09
   1C0F 2A                  906 	add	a,r2
   1C10 FA                  907 	mov	r2,a
   1C11 E4                  908 	clr	a
   1C12 3B                  909 	addc	a,r3
   1C13 FB                  910 	mov	r3,a
   1C14 8A 82               911 	mov	dpl,r2
   1C16 8B 83               912 	mov	dph,r3
   1C18 8C F0               913 	mov	b,r4
   1C1A 74 D9               914 	mov	a,#_timeBomb_TOP
   1C1C 12 38 0B            915 	lcall	__gptrput
   1C1F A3                  916 	inc	dptr
   1C20 74 46               917 	mov	a,#(_timeBomb_TOP >> 8)
   1C22 12 38 0B            918 	lcall	__gptrput
   1C25 A3                  919 	inc	dptr
   1C26 74 80               920 	mov	a,#0x80
   1C28 12 38 0B            921 	lcall	__gptrput
   1C2B 75 82 02            922 	mov	dpl,#0x02
                            923 ;	../sm_test_timeBomb.c:155: HANDLE_STATE_EVENTS_DONE
   1C2E 80 03               924 	sjmp	00104$
   1C30                     925 00103$:
                            926 ;	../sm_test_timeBomb.c:157: END_DEFINE_STATE()
   1C30 75 82 00            927 	mov	dpl,#0x00
   1C33                     928 00104$:
   1C33 D0 1F               929 	pop	_bp
   1C35 22                  930 	ret
                            931 	.area CSEG    (CODE)
                            932 	.area CONST   (CODE)
   46D9                     933 _timeBomb_TOP:
                            934 ; generic printIvalPtr
   46D9 00 00 00            935 	.byte #0x00,#0x00,#0x00
   46DC 00                  936 	.db #0x00
   46DD FC 18               937 	.byte _timeBomb_TOP_handler,(_timeBomb_TOP_handler >> 8)
   46DF 06 47 80            938 	.byte _str_1,(_str_1 >> 8),#0x80
   46E2                     939 _timeBomb_setting:
   46E2 D9 46 80            940 	.byte _timeBomb_TOP,(_timeBomb_TOP >> 8),#0x80
   46E5 00                  941 	.db #0x00
   46E6 75 19               942 	.byte _timeBomb_setting_handler,(_timeBomb_setting_handler >> 8)
   46E8 13 47 80            943 	.byte _str_2,(_str_2 >> 8),#0x80
   46EB                     944 _timeBomb_timing:
   46EB D9 46 80            945 	.byte _timeBomb_TOP,(_timeBomb_TOP >> 8),#0x80
   46EE 00                  946 	.db #0x00
   46EF 52 1A               947 	.byte _timeBomb_timing_handler,(_timeBomb_timing_handler >> 8)
   46F1 24 47 80            948 	.byte _str_3,(_str_3 >> 8),#0x80
   46F4                     949 _timeBomb_BOOM:
   46F4 D9 46 80            950 	.byte _timeBomb_TOP,(_timeBomb_TOP >> 8),#0x80
   46F7 00                  951 	.db #0x00
   46F8 E8 1B               952 	.byte _timeBomb_BOOM_handler,(_timeBomb_BOOM_handler >> 8)
   46FA 34 47 80            953 	.byte _str_4,(_str_4 >> 8),#0x80
   46FD                     954 __str_0:
   46FD 74 69 6D 65 42 6F   955 	.ascii "timeBomb"
        6D 62
   4705 00                  956 	.db 0x00
   4706                     957 _str_1:
   4706 74 69 6D 65 42 6F   958 	.ascii "timeBomb_TOP"
        6D 62 5F 54 4F 50
   4712 00                  959 	.db 0x00
   4713                     960 _str_2:
   4713 74 69 6D 65 42 6F   961 	.ascii "timeBomb_setting"
        6D 62 5F 73 65 74
        74 69 6E 67
   4723 00                  962 	.db 0x00
   4724                     963 _str_3:
   4724 74 69 6D 65 42 6F   964 	.ascii "timeBomb_timing"
        6D 62 5F 74 69 6D
        69 6E 67
   4733 00                  965 	.db 0x00
   4734                     966 _str_4:
   4734 74 69 6D 65 42 6F   967 	.ascii "timeBomb_BOOM"
        6D 62 5F 42 4F 4F
        4D
   4741 00                  968 	.db 0x00
                            969 	.area XINIT   (CODE)
   4B4A                     970 __xinit__timeBomb_name:
   4B4A FD 46 80            971 	.byte __str_0,(__str_0 >> 8),#0x80
                            972 	.area CABS    (ABS,CODE)
