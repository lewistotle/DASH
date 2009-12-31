                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 2.9.0 #5416 (Mar 22 2009) (MINGW32)
                              4 ; This file was generated Wed Dec 30 22:11:49 2009
                              5 ;--------------------------------------------------------
                              6 	.module StateMachine_G4_eventQueue
                              7 	.optsdcc -mmcs51 --model-large
                              8 	
                              9 ;--------------------------------------------------------
                             10 ; Public variables in this module
                             11 ;--------------------------------------------------------
                             12 	.globl _PriorityInsert_PARM_2
                             13 	.globl _NormalInsert_PARM_2
                             14 	.globl _nextLocationFromPoint_PARM_2
                             15 	.globl _initializeEventQueue_PARM_3
                             16 	.globl _initializeEventQueue_PARM_2
                             17 	.globl _initializeEventQueue
                             18 	.globl _clearQueue
                             19 	.globl _isEmpty
                             20 	.globl _isFull
                             21 	.globl _NormalInsert
                             22 	.globl _PriorityInsert
                             23 	.globl _Remove
                             24 ;--------------------------------------------------------
                             25 ; special function registers
                             26 ;--------------------------------------------------------
                             27 	.area RSEG    (DATA)
                             28 ;--------------------------------------------------------
                             29 ; special function bits
                             30 ;--------------------------------------------------------
                             31 	.area RSEG    (DATA)
                             32 ;--------------------------------------------------------
                             33 ; overlayable register banks
                             34 ;--------------------------------------------------------
                             35 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                      36 	.ds 8
                             37 ;--------------------------------------------------------
                             38 ; internal ram data
                             39 ;--------------------------------------------------------
                             40 	.area DSEG    (DATA)
   0029                      41 _Remove_sloc0_1_0:
   0029                      42 	.ds 3
   002C                      43 _Remove_sloc1_1_0:
   002C                      44 	.ds 1
   002D                      45 _Remove_sloc2_1_0:
   002D                      46 	.ds 3
                             47 ;--------------------------------------------------------
                             48 ; overlayable items in internal ram 
                             49 ;--------------------------------------------------------
                             50 	.area OSEG    (OVR,DATA)
                             51 ;--------------------------------------------------------
                             52 ; indirectly addressable internal ram data
                             53 ;--------------------------------------------------------
                             54 	.area ISEG    (DATA)
                             55 ;--------------------------------------------------------
                             56 ; absolute internal ram data
                             57 ;--------------------------------------------------------
                             58 	.area IABS    (ABS,DATA)
                             59 	.area IABS    (ABS,DATA)
                             60 ;--------------------------------------------------------
                             61 ; bit data
                             62 ;--------------------------------------------------------
                             63 	.area BSEG    (BIT)
                             64 ;--------------------------------------------------------
                             65 ; paged external ram data
                             66 ;--------------------------------------------------------
                             67 	.area PSEG    (PAG,XDATA)
                             68 ;--------------------------------------------------------
                             69 ; external ram data
                             70 ;--------------------------------------------------------
                             71 	.area XSEG    (XDATA)
   0925                      72 _initializeEventQueue_PARM_2:
   0925                      73 	.ds 3
   0928                      74 _initializeEventQueue_PARM_3:
   0928                      75 	.ds 1
   0929                      76 _initializeEventQueue_Q_1_1:
   0929                      77 	.ds 3
   092C                      78 _clearQueue_Q_1_1:
   092C                      79 	.ds 3
   092F                      80 _isEmpty_Q_1_1:
   092F                      81 	.ds 3
   0932                      82 _isFull_Q_1_1:
   0932                      83 	.ds 3
   0935                      84 _nextLocationFromPoint_PARM_2:
   0935                      85 	.ds 1
   0936                      86 _nextLocationFromPoint_Q_1_1:
   0936                      87 	.ds 3
   0939                      88 _NormalInsert_PARM_2:
   0939                      89 	.ds 3
   093C                      90 _NormalInsert_Q_1_1:
   093C                      91 	.ds 3
   093F                      92 _PriorityInsert_PARM_2:
   093F                      93 	.ds 3
   0942                      94 _PriorityInsert_Q_1_1:
   0942                      95 	.ds 3
   0945                      96 _Remove_Q_1_1:
   0945                      97 	.ds 3
                             98 ;--------------------------------------------------------
                             99 ; absolute external ram data
                            100 ;--------------------------------------------------------
                            101 	.area XABS    (ABS,XDATA)
                            102 ;--------------------------------------------------------
                            103 ; external initialized ram data
                            104 ;--------------------------------------------------------
                            105 	.area XISEG   (XDATA)
                            106 	.area HOME    (CODE)
                            107 	.area GSINIT0 (CODE)
                            108 	.area GSINIT1 (CODE)
                            109 	.area GSINIT2 (CODE)
                            110 	.area GSINIT3 (CODE)
                            111 	.area GSINIT4 (CODE)
                            112 	.area GSINIT5 (CODE)
                            113 	.area GSINIT  (CODE)
                            114 	.area GSFINAL (CODE)
                            115 	.area CSEG    (CODE)
                            116 ;--------------------------------------------------------
                            117 ; global & static initialisations
                            118 ;--------------------------------------------------------
                            119 	.area HOME    (CODE)
                            120 	.area GSINIT  (CODE)
                            121 	.area GSFINAL (CODE)
                            122 	.area GSINIT  (CODE)
                            123 ;--------------------------------------------------------
                            124 ; Home
                            125 ;--------------------------------------------------------
                            126 	.area HOME    (CODE)
                            127 	.area HOME    (CODE)
                            128 ;--------------------------------------------------------
                            129 ; code
                            130 ;--------------------------------------------------------
                            131 	.area CSEG    (CODE)
                            132 ;------------------------------------------------------------
                            133 ;Allocation info for local variables in function 'initializeEventQueue'
                            134 ;------------------------------------------------------------
                            135 ;storage                   Allocated with name '_initializeEventQueue_PARM_2'
                            136 ;maxEntriesInQueue         Allocated with name '_initializeEventQueue_PARM_3'
                            137 ;Q                         Allocated with name '_initializeEventQueue_Q_1_1'
                            138 ;------------------------------------------------------------
                            139 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/StateMachine_G4_eventQueue.c:14: bool initializeEventQueue(	eventQueue_t* Q, event_t** storage, uint8_t maxEntriesInQueue)
                            140 ;	-----------------------------------------
                            141 ;	 function initializeEventQueue
                            142 ;	-----------------------------------------
   1F8C                     143 _initializeEventQueue:
                    0002    144 	ar2 = 0x02
                    0003    145 	ar3 = 0x03
                    0004    146 	ar4 = 0x04
                    0005    147 	ar5 = 0x05
                    0006    148 	ar6 = 0x06
                    0007    149 	ar7 = 0x07
                    0000    150 	ar0 = 0x00
                    0001    151 	ar1 = 0x01
   1F8C AA F0               152 	mov	r2,b
   1F8E AB 83               153 	mov	r3,dph
   1F90 E5 82               154 	mov	a,dpl
   1F92 90 09 29            155 	mov	dptr,#_initializeEventQueue_Q_1_1
   1F95 F0                  156 	movx	@dptr,a
   1F96 A3                  157 	inc	dptr
   1F97 EB                  158 	mov	a,r3
   1F98 F0                  159 	movx	@dptr,a
   1F99 A3                  160 	inc	dptr
   1F9A EA                  161 	mov	a,r2
   1F9B F0                  162 	movx	@dptr,a
                            163 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/StateMachine_G4_eventQueue.c:16: Q->Capacity	= maxEntriesInQueue ;
   1F9C 90 09 29            164 	mov	dptr,#_initializeEventQueue_Q_1_1
   1F9F E0                  165 	movx	a,@dptr
   1FA0 FA                  166 	mov	r2,a
   1FA1 A3                  167 	inc	dptr
   1FA2 E0                  168 	movx	a,@dptr
   1FA3 FB                  169 	mov	r3,a
   1FA4 A3                  170 	inc	dptr
   1FA5 E0                  171 	movx	a,@dptr
   1FA6 FC                  172 	mov	r4,a
   1FA7 90 09 28            173 	mov	dptr,#_initializeEventQueue_PARM_3
   1FAA E0                  174 	movx	a,@dptr
   1FAB 8A 82               175 	mov	dpl,r2
   1FAD 8B 83               176 	mov	dph,r3
   1FAF 8C F0               177 	mov	b,r4
   1FB1 12 38 0B            178 	lcall	__gptrput
                            179 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/StateMachine_G4_eventQueue.c:17: Q->Size		= 0 ;
   1FB4 74 03               180 	mov	a,#0x03
   1FB6 2A                  181 	add	a,r2
   1FB7 FD                  182 	mov	r5,a
   1FB8 E4                  183 	clr	a
   1FB9 3B                  184 	addc	a,r3
   1FBA FE                  185 	mov	r6,a
   1FBB 8C 07               186 	mov	ar7,r4
   1FBD 8D 82               187 	mov	dpl,r5
   1FBF 8E 83               188 	mov	dph,r6
   1FC1 8F F0               189 	mov	b,r7
   1FC3 E4                  190 	clr	a
   1FC4 12 38 0B            191 	lcall	__gptrput
                            192 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/StateMachine_G4_eventQueue.c:18: Q->Front	= 1 ;
   1FC7 74 01               193 	mov	a,#0x01
   1FC9 2A                  194 	add	a,r2
   1FCA FD                  195 	mov	r5,a
   1FCB E4                  196 	clr	a
   1FCC 3B                  197 	addc	a,r3
   1FCD FE                  198 	mov	r6,a
   1FCE 8C 07               199 	mov	ar7,r4
   1FD0 8D 82               200 	mov	dpl,r5
   1FD2 8E 83               201 	mov	dph,r6
   1FD4 8F F0               202 	mov	b,r7
   1FD6 74 01               203 	mov	a,#0x01
   1FD8 12 38 0B            204 	lcall	__gptrput
                            205 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/StateMachine_G4_eventQueue.c:19: Q->Rear		= 0 ;
   1FDB 74 02               206 	mov	a,#0x02
   1FDD 2A                  207 	add	a,r2
   1FDE FD                  208 	mov	r5,a
   1FDF E4                  209 	clr	a
   1FE0 3B                  210 	addc	a,r3
   1FE1 FE                  211 	mov	r6,a
   1FE2 8C 07               212 	mov	ar7,r4
   1FE4 8D 82               213 	mov	dpl,r5
   1FE6 8E 83               214 	mov	dph,r6
   1FE8 8F F0               215 	mov	b,r7
   1FEA E4                  216 	clr	a
   1FEB 12 38 0B            217 	lcall	__gptrput
                            218 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/StateMachine_G4_eventQueue.c:20: Q->Array	= storage ;
   1FEE 74 04               219 	mov	a,#0x04
   1FF0 2A                  220 	add	a,r2
   1FF1 FA                  221 	mov	r2,a
   1FF2 E4                  222 	clr	a
   1FF3 3B                  223 	addc	a,r3
   1FF4 FB                  224 	mov	r3,a
   1FF5 90 09 25            225 	mov	dptr,#_initializeEventQueue_PARM_2
   1FF8 E0                  226 	movx	a,@dptr
   1FF9 FD                  227 	mov	r5,a
   1FFA A3                  228 	inc	dptr
   1FFB E0                  229 	movx	a,@dptr
   1FFC FE                  230 	mov	r6,a
   1FFD A3                  231 	inc	dptr
   1FFE E0                  232 	movx	a,@dptr
   1FFF FF                  233 	mov	r7,a
   2000 8A 82               234 	mov	dpl,r2
   2002 8B 83               235 	mov	dph,r3
   2004 8C F0               236 	mov	b,r4
   2006 ED                  237 	mov	a,r5
   2007 12 38 0B            238 	lcall	__gptrput
   200A A3                  239 	inc	dptr
   200B EE                  240 	mov	a,r6
   200C 12 38 0B            241 	lcall	__gptrput
   200F A3                  242 	inc	dptr
   2010 EF                  243 	mov	a,r7
   2011 12 38 0B            244 	lcall	__gptrput
                            245 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/StateMachine_G4_eventQueue.c:22: return true ;
   2014 D3                  246 	setb	c
   2015 22                  247 	ret
                            248 ;------------------------------------------------------------
                            249 ;Allocation info for local variables in function 'clearQueue'
                            250 ;------------------------------------------------------------
                            251 ;Q                         Allocated with name '_clearQueue_Q_1_1'
                            252 ;------------------------------------------------------------
                            253 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/StateMachine_G4_eventQueue.c:26: void clearQueue(			eventQueue_t* Q)
                            254 ;	-----------------------------------------
                            255 ;	 function clearQueue
                            256 ;	-----------------------------------------
   2016                     257 _clearQueue:
   2016 AA F0               258 	mov	r2,b
   2018 AB 83               259 	mov	r3,dph
   201A E5 82               260 	mov	a,dpl
   201C 90 09 2C            261 	mov	dptr,#_clearQueue_Q_1_1
   201F F0                  262 	movx	@dptr,a
   2020 A3                  263 	inc	dptr
   2021 EB                  264 	mov	a,r3
   2022 F0                  265 	movx	@dptr,a
   2023 A3                  266 	inc	dptr
   2024 EA                  267 	mov	a,r2
   2025 F0                  268 	movx	@dptr,a
                            269 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/StateMachine_G4_eventQueue.c:28: Q->Size		= 0 ;
   2026 90 09 2C            270 	mov	dptr,#_clearQueue_Q_1_1
   2029 E0                  271 	movx	a,@dptr
   202A FA                  272 	mov	r2,a
   202B A3                  273 	inc	dptr
   202C E0                  274 	movx	a,@dptr
   202D FB                  275 	mov	r3,a
   202E A3                  276 	inc	dptr
   202F E0                  277 	movx	a,@dptr
   2030 FC                  278 	mov	r4,a
   2031 74 03               279 	mov	a,#0x03
   2033 2A                  280 	add	a,r2
   2034 FD                  281 	mov	r5,a
   2035 E4                  282 	clr	a
   2036 3B                  283 	addc	a,r3
   2037 FE                  284 	mov	r6,a
   2038 8C 07               285 	mov	ar7,r4
   203A 8D 82               286 	mov	dpl,r5
   203C 8E 83               287 	mov	dph,r6
   203E 8F F0               288 	mov	b,r7
   2040 E4                  289 	clr	a
   2041 12 38 0B            290 	lcall	__gptrput
                            291 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/StateMachine_G4_eventQueue.c:29: Q->Front	= 1 ;
   2044 74 01               292 	mov	a,#0x01
   2046 2A                  293 	add	a,r2
   2047 FD                  294 	mov	r5,a
   2048 E4                  295 	clr	a
   2049 3B                  296 	addc	a,r3
   204A FE                  297 	mov	r6,a
   204B 8C 07               298 	mov	ar7,r4
   204D 8D 82               299 	mov	dpl,r5
   204F 8E 83               300 	mov	dph,r6
   2051 8F F0               301 	mov	b,r7
   2053 74 01               302 	mov	a,#0x01
   2055 12 38 0B            303 	lcall	__gptrput
                            304 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/StateMachine_G4_eventQueue.c:30: Q->Rear		= 0 ;
   2058 74 02               305 	mov	a,#0x02
   205A 2A                  306 	add	a,r2
   205B FA                  307 	mov	r2,a
   205C E4                  308 	clr	a
   205D 3B                  309 	addc	a,r3
   205E FB                  310 	mov	r3,a
   205F 8A 82               311 	mov	dpl,r2
   2061 8B 83               312 	mov	dph,r3
   2063 8C F0               313 	mov	b,r4
   2065 E4                  314 	clr	a
   2066 02 38 0B            315 	ljmp	__gptrput
                            316 ;------------------------------------------------------------
                            317 ;Allocation info for local variables in function 'isEmpty'
                            318 ;------------------------------------------------------------
                            319 ;Q                         Allocated with name '_isEmpty_Q_1_1'
                            320 ;------------------------------------------------------------
                            321 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/StateMachine_G4_eventQueue.c:34: uint8_t isEmpty(			eventQueue_t* Q)
                            322 ;	-----------------------------------------
                            323 ;	 function isEmpty
                            324 ;	-----------------------------------------
   2069                     325 _isEmpty:
   2069 AA F0               326 	mov	r2,b
   206B AB 83               327 	mov	r3,dph
   206D E5 82               328 	mov	a,dpl
   206F 90 09 2F            329 	mov	dptr,#_isEmpty_Q_1_1
   2072 F0                  330 	movx	@dptr,a
   2073 A3                  331 	inc	dptr
   2074 EB                  332 	mov	a,r3
   2075 F0                  333 	movx	@dptr,a
   2076 A3                  334 	inc	dptr
   2077 EA                  335 	mov	a,r2
   2078 F0                  336 	movx	@dptr,a
                            337 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/StateMachine_G4_eventQueue.c:36: return Q->Size == 0 ;
   2079 90 09 2F            338 	mov	dptr,#_isEmpty_Q_1_1
   207C E0                  339 	movx	a,@dptr
   207D FA                  340 	mov	r2,a
   207E A3                  341 	inc	dptr
   207F E0                  342 	movx	a,@dptr
   2080 FB                  343 	mov	r3,a
   2081 A3                  344 	inc	dptr
   2082 E0                  345 	movx	a,@dptr
   2083 FC                  346 	mov	r4,a
   2084 74 03               347 	mov	a,#0x03
   2086 2A                  348 	add	a,r2
   2087 FA                  349 	mov	r2,a
   2088 E4                  350 	clr	a
   2089 3B                  351 	addc	a,r3
   208A FB                  352 	mov	r3,a
   208B 8A 82               353 	mov	dpl,r2
   208D 8B 83               354 	mov	dph,r3
   208F 8C F0               355 	mov	b,r4
   2091 12 44 37            356 	lcall	__gptrget
   2094 FA                  357 	mov	r2,a
   2095 E4                  358 	clr	a
   2096 BA 00 01            359 	cjne	r2,#0x00,00103$
   2099 04                  360 	inc	a
   209A                     361 00103$:
   209A F5 82               362 	mov	dpl,a
   209C 22                  363 	ret
                            364 ;------------------------------------------------------------
                            365 ;Allocation info for local variables in function 'isFull'
                            366 ;------------------------------------------------------------
                            367 ;Q                         Allocated with name '_isFull_Q_1_1'
                            368 ;------------------------------------------------------------
                            369 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/StateMachine_G4_eventQueue.c:40: uint8_t isFull(				eventQueue_t* Q)
                            370 ;	-----------------------------------------
                            371 ;	 function isFull
                            372 ;	-----------------------------------------
   209D                     373 _isFull:
   209D AA F0               374 	mov	r2,b
   209F AB 83               375 	mov	r3,dph
   20A1 E5 82               376 	mov	a,dpl
   20A3 90 09 32            377 	mov	dptr,#_isFull_Q_1_1
   20A6 F0                  378 	movx	@dptr,a
   20A7 A3                  379 	inc	dptr
   20A8 EB                  380 	mov	a,r3
   20A9 F0                  381 	movx	@dptr,a
   20AA A3                  382 	inc	dptr
   20AB EA                  383 	mov	a,r2
   20AC F0                  384 	movx	@dptr,a
                            385 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/StateMachine_G4_eventQueue.c:42: return Q->Size == Q->Capacity ;
   20AD 90 09 32            386 	mov	dptr,#_isFull_Q_1_1
   20B0 E0                  387 	movx	a,@dptr
   20B1 FA                  388 	mov	r2,a
   20B2 A3                  389 	inc	dptr
   20B3 E0                  390 	movx	a,@dptr
   20B4 FB                  391 	mov	r3,a
   20B5 A3                  392 	inc	dptr
   20B6 E0                  393 	movx	a,@dptr
   20B7 FC                  394 	mov	r4,a
   20B8 74 03               395 	mov	a,#0x03
   20BA 2A                  396 	add	a,r2
   20BB FD                  397 	mov	r5,a
   20BC E4                  398 	clr	a
   20BD 3B                  399 	addc	a,r3
   20BE FE                  400 	mov	r6,a
   20BF 8C 07               401 	mov	ar7,r4
   20C1 8D 82               402 	mov	dpl,r5
   20C3 8E 83               403 	mov	dph,r6
   20C5 8F F0               404 	mov	b,r7
   20C7 12 44 37            405 	lcall	__gptrget
   20CA FD                  406 	mov	r5,a
   20CB 8A 82               407 	mov	dpl,r2
   20CD 8B 83               408 	mov	dph,r3
   20CF 8C F0               409 	mov	b,r4
   20D1 12 44 37            410 	lcall	__gptrget
   20D4 FA                  411 	mov	r2,a
   20D5 ED                  412 	mov	a,r5
   20D6 B5 02 04            413 	cjne	a,ar2,00103$
   20D9 74 01               414 	mov	a,#0x01
   20DB 80 01               415 	sjmp	00104$
   20DD                     416 00103$:
   20DD E4                  417 	clr	a
   20DE                     418 00104$:
   20DE F5 82               419 	mov	dpl,a
   20E0 22                  420 	ret
                            421 ;------------------------------------------------------------
                            422 ;Allocation info for local variables in function 'nextLocationFromPoint'
                            423 ;------------------------------------------------------------
                            424 ;location                  Allocated with name '_nextLocationFromPoint_PARM_2'
                            425 ;Q                         Allocated with name '_nextLocationFromPoint_Q_1_1'
                            426 ;------------------------------------------------------------
                            427 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/StateMachine_G4_eventQueue.c:46: static uint8_t nextLocationFromPoint(	eventQueue_t* Q, uint8_t location)
                            428 ;	-----------------------------------------
                            429 ;	 function nextLocationFromPoint
                            430 ;	-----------------------------------------
   20E1                     431 _nextLocationFromPoint:
   20E1 AA F0               432 	mov	r2,b
   20E3 AB 83               433 	mov	r3,dph
   20E5 E5 82               434 	mov	a,dpl
   20E7 90 09 36            435 	mov	dptr,#_nextLocationFromPoint_Q_1_1
   20EA F0                  436 	movx	@dptr,a
   20EB A3                  437 	inc	dptr
   20EC EB                  438 	mov	a,r3
   20ED F0                  439 	movx	@dptr,a
   20EE A3                  440 	inc	dptr
   20EF EA                  441 	mov	a,r2
   20F0 F0                  442 	movx	@dptr,a
                            443 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/StateMachine_G4_eventQueue.c:48: if(++location == Q->Capacity)
   20F1 90 09 35            444 	mov	dptr,#_nextLocationFromPoint_PARM_2
   20F4 E0                  445 	movx	a,@dptr
   20F5 24 01               446 	add	a,#0x01
   20F7 F0                  447 	movx	@dptr,a
   20F8 90 09 36            448 	mov	dptr,#_nextLocationFromPoint_Q_1_1
   20FB E0                  449 	movx	a,@dptr
   20FC FA                  450 	mov	r2,a
   20FD A3                  451 	inc	dptr
   20FE E0                  452 	movx	a,@dptr
   20FF FB                  453 	mov	r3,a
   2100 A3                  454 	inc	dptr
   2101 E0                  455 	movx	a,@dptr
   2102 FC                  456 	mov	r4,a
   2103 8A 82               457 	mov	dpl,r2
   2105 8B 83               458 	mov	dph,r3
   2107 8C F0               459 	mov	b,r4
   2109 12 44 37            460 	lcall	__gptrget
   210C FA                  461 	mov	r2,a
   210D 90 09 35            462 	mov	dptr,#_nextLocationFromPoint_PARM_2
   2110 E0                  463 	movx	a,@dptr
   2111 FB                  464 	mov	r3,a
   2112 B5 02 05            465 	cjne	a,ar2,00102$
                            466 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/StateMachine_G4_eventQueue.c:50: location = 0 ;
   2115 90 09 35            467 	mov	dptr,#_nextLocationFromPoint_PARM_2
   2118 E4                  468 	clr	a
   2119 F0                  469 	movx	@dptr,a
   211A                     470 00102$:
                            471 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/StateMachine_G4_eventQueue.c:53: return location ;
   211A 90 09 35            472 	mov	dptr,#_nextLocationFromPoint_PARM_2
   211D E0                  473 	movx	a,@dptr
   211E F5 82               474 	mov	dpl,a
   2120 22                  475 	ret
                            476 ;------------------------------------------------------------
                            477 ;Allocation info for local variables in function 'NormalInsert'
                            478 ;------------------------------------------------------------
                            479 ;event                     Allocated with name '_NormalInsert_PARM_2'
                            480 ;Q                         Allocated with name '_NormalInsert_Q_1_1'
                            481 ;------------------------------------------------------------
                            482 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/StateMachine_G4_eventQueue.c:59: bool NormalInsert(			eventQueue_t* Q, event_t* event)
                            483 ;	-----------------------------------------
                            484 ;	 function NormalInsert
                            485 ;	-----------------------------------------
   2121                     486 _NormalInsert:
   2121 AA F0               487 	mov	r2,b
   2123 AB 83               488 	mov	r3,dph
   2125 E5 82               489 	mov	a,dpl
   2127 90 09 3C            490 	mov	dptr,#_NormalInsert_Q_1_1
   212A F0                  491 	movx	@dptr,a
   212B A3                  492 	inc	dptr
   212C EB                  493 	mov	a,r3
   212D F0                  494 	movx	@dptr,a
   212E A3                  495 	inc	dptr
   212F EA                  496 	mov	a,r2
   2130 F0                  497 	movx	@dptr,a
                            498 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/StateMachine_G4_eventQueue.c:61: if(!isFull(Q))
   2131 90 09 3C            499 	mov	dptr,#_NormalInsert_Q_1_1
   2134 E0                  500 	movx	a,@dptr
   2135 FA                  501 	mov	r2,a
   2136 A3                  502 	inc	dptr
   2137 E0                  503 	movx	a,@dptr
   2138 FB                  504 	mov	r3,a
   2139 A3                  505 	inc	dptr
   213A E0                  506 	movx	a,@dptr
   213B FC                  507 	mov	r4,a
   213C 8A 82               508 	mov	dpl,r2
   213E 8B 83               509 	mov	dph,r3
   2140 8C F0               510 	mov	b,r4
   2142 12 20 9D            511 	lcall	_isFull
   2145 E5 82               512 	mov	a,dpl
   2147 60 03               513 	jz	00110$
   2149 02 22 5D            514 	ljmp	00102$
   214C                     515 00110$:
                            516 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/StateMachine_G4_eventQueue.c:63: Q->Size++ ;
   214C 90 09 3C            517 	mov	dptr,#_NormalInsert_Q_1_1
   214F E0                  518 	movx	a,@dptr
   2150 FA                  519 	mov	r2,a
   2151 A3                  520 	inc	dptr
   2152 E0                  521 	movx	a,@dptr
   2153 FB                  522 	mov	r3,a
   2154 A3                  523 	inc	dptr
   2155 E0                  524 	movx	a,@dptr
   2156 FC                  525 	mov	r4,a
   2157 74 03               526 	mov	a,#0x03
   2159 2A                  527 	add	a,r2
   215A FD                  528 	mov	r5,a
   215B E4                  529 	clr	a
   215C 3B                  530 	addc	a,r3
   215D FE                  531 	mov	r6,a
   215E 8C 07               532 	mov	ar7,r4
   2160 8D 82               533 	mov	dpl,r5
   2162 8E 83               534 	mov	dph,r6
   2164 8F F0               535 	mov	b,r7
   2166 12 44 37            536 	lcall	__gptrget
   2169 F8                  537 	mov	r0,a
   216A 08                  538 	inc	r0
   216B 8D 82               539 	mov	dpl,r5
   216D 8E 83               540 	mov	dph,r6
   216F 8F F0               541 	mov	b,r7
   2171 E8                  542 	mov	a,r0
   2172 12 38 0B            543 	lcall	__gptrput
                            544 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/StateMachine_G4_eventQueue.c:64: Q->Rear = nextLocationFromPoint(Q, Q->Rear) ;
   2175 74 02               545 	mov	a,#0x02
   2177 2A                  546 	add	a,r2
   2178 FD                  547 	mov	r5,a
   2179 E4                  548 	clr	a
   217A 3B                  549 	addc	a,r3
   217B FE                  550 	mov	r6,a
   217C 8C 07               551 	mov	ar7,r4
   217E 8D 82               552 	mov	dpl,r5
   2180 8E 83               553 	mov	dph,r6
   2182 8F F0               554 	mov	b,r7
   2184 12 44 37            555 	lcall	__gptrget
   2187 90 09 35            556 	mov	dptr,#_nextLocationFromPoint_PARM_2
   218A F0                  557 	movx	@dptr,a
   218B 8A 82               558 	mov	dpl,r2
   218D 8B 83               559 	mov	dph,r3
   218F 8C F0               560 	mov	b,r4
   2191 C0 05               561 	push	ar5
   2193 C0 06               562 	push	ar6
   2195 C0 07               563 	push	ar7
   2197 12 20 E1            564 	lcall	_nextLocationFromPoint
   219A AA 82               565 	mov	r2,dpl
   219C D0 07               566 	pop	ar7
   219E D0 06               567 	pop	ar6
   21A0 D0 05               568 	pop	ar5
   21A2 8D 82               569 	mov	dpl,r5
   21A4 8E 83               570 	mov	dph,r6
   21A6 8F F0               571 	mov	b,r7
   21A8 EA                  572 	mov	a,r2
   21A9 12 38 0B            573 	lcall	__gptrput
                            574 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/StateMachine_G4_eventQueue.c:65: Q->Array[Q->Rear] = event ;
   21AC 90 09 3C            575 	mov	dptr,#_NormalInsert_Q_1_1
   21AF E0                  576 	movx	a,@dptr
   21B0 FA                  577 	mov	r2,a
   21B1 A3                  578 	inc	dptr
   21B2 E0                  579 	movx	a,@dptr
   21B3 FB                  580 	mov	r3,a
   21B4 A3                  581 	inc	dptr
   21B5 E0                  582 	movx	a,@dptr
   21B6 FC                  583 	mov	r4,a
   21B7 74 04               584 	mov	a,#0x04
   21B9 2A                  585 	add	a,r2
   21BA FD                  586 	mov	r5,a
   21BB E4                  587 	clr	a
   21BC 3B                  588 	addc	a,r3
   21BD FE                  589 	mov	r6,a
   21BE 8C 07               590 	mov	ar7,r4
   21C0 8D 82               591 	mov	dpl,r5
   21C2 8E 83               592 	mov	dph,r6
   21C4 8F F0               593 	mov	b,r7
   21C6 12 44 37            594 	lcall	__gptrget
   21C9 FD                  595 	mov	r5,a
   21CA A3                  596 	inc	dptr
   21CB 12 44 37            597 	lcall	__gptrget
   21CE FE                  598 	mov	r6,a
   21CF A3                  599 	inc	dptr
   21D0 12 44 37            600 	lcall	__gptrget
   21D3 FF                  601 	mov	r7,a
   21D4 74 02               602 	mov	a,#0x02
   21D6 2A                  603 	add	a,r2
   21D7 FA                  604 	mov	r2,a
   21D8 E4                  605 	clr	a
   21D9 3B                  606 	addc	a,r3
   21DA FB                  607 	mov	r3,a
   21DB 8A 82               608 	mov	dpl,r2
   21DD 8B 83               609 	mov	dph,r3
   21DF 8C F0               610 	mov	b,r4
   21E1 12 44 37            611 	lcall	__gptrget
   21E4 75 F0 03            612 	mov	b,#0x03
   21E7 A4                  613 	mul	ab
   21E8 2D                  614 	add	a,r5
   21E9 FD                  615 	mov	r5,a
   21EA EE                  616 	mov	a,r6
   21EB 35 F0               617 	addc	a,b
   21ED FE                  618 	mov	r6,a
   21EE 90 09 39            619 	mov	dptr,#_NormalInsert_PARM_2
   21F1 E0                  620 	movx	a,@dptr
   21F2 FA                  621 	mov	r2,a
   21F3 A3                  622 	inc	dptr
   21F4 E0                  623 	movx	a,@dptr
   21F5 FB                  624 	mov	r3,a
   21F6 A3                  625 	inc	dptr
   21F7 E0                  626 	movx	a,@dptr
   21F8 FC                  627 	mov	r4,a
   21F9 8D 82               628 	mov	dpl,r5
   21FB 8E 83               629 	mov	dph,r6
   21FD 8F F0               630 	mov	b,r7
   21FF EA                  631 	mov	a,r2
   2200 12 38 0B            632 	lcall	__gptrput
   2203 A3                  633 	inc	dptr
   2204 EB                  634 	mov	a,r3
   2205 12 38 0B            635 	lcall	__gptrput
   2208 A3                  636 	inc	dptr
   2209 EC                  637 	mov	a,r4
   220A 12 38 0B            638 	lcall	__gptrput
                            639 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/StateMachine_G4_eventQueue.c:67: printf("\t\t\tPosting event type: %s\n", event->eventType <= SUBSTATE_EXIT ? eventTypes[event->eventType] : "<USER_EVENT>") ;
   220D 8A 82               640 	mov	dpl,r2
   220F 8B 83               641 	mov	dph,r3
   2211 8C F0               642 	mov	b,r4
   2213 12 44 37            643 	lcall	__gptrget
   2216 FA                  644 	mov	r2,a
   2217 C3                  645 	clr	c
   2218 74 03               646 	mov	a,#0x03
   221A 9A                  647 	subb	a,r2
   221B B3                  648 	cpl	c
   221C E4                  649 	clr	a
   221D 33                  650 	rlc	a
   221E FB                  651 	mov	r3,a
   221F 60 19               652 	jz	00106$
   2221 EA                  653 	mov	a,r2
   2222 75 F0 03            654 	mov	b,#0x03
   2225 A4                  655 	mul	ab
   2226 24 E2               656 	add	a,#_eventTypes
   2228 F5 82               657 	mov	dpl,a
   222A 74 0E               658 	mov	a,#(_eventTypes >> 8)
   222C 35 F0               659 	addc	a,b
   222E F5 83               660 	mov	dph,a
   2230 E0                  661 	movx	a,@dptr
   2231 FA                  662 	mov	r2,a
   2232 A3                  663 	inc	dptr
   2233 E0                  664 	movx	a,@dptr
   2234 FB                  665 	mov	r3,a
   2235 A3                  666 	inc	dptr
   2236 E0                  667 	movx	a,@dptr
   2237 FC                  668 	mov	r4,a
   2238 80 06               669 	sjmp	00107$
   223A                     670 00106$:
   223A 7A 10               671 	mov	r2,#__str_1
   223C 7B 48               672 	mov	r3,#(__str_1 >> 8)
   223E 7C 80               673 	mov	r4,#0x80
   2240                     674 00107$:
   2240 C0 02               675 	push	ar2
   2242 C0 03               676 	push	ar3
   2244 C0 04               677 	push	ar4
   2246 74 F5               678 	mov	a,#__str_0
   2248 C0 E0               679 	push	acc
   224A 74 47               680 	mov	a,#(__str_0 >> 8)
   224C C0 E0               681 	push	acc
   224E 74 80               682 	mov	a,#0x80
   2250 C0 E0               683 	push	acc
   2252 12 3B EB            684 	lcall	_printf
   2255 E5 81               685 	mov	a,sp
   2257 24 FA               686 	add	a,#0xfa
   2259 F5 81               687 	mov	sp,a
                            688 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/StateMachine_G4_eventQueue.c:69: return true ;
   225B D3                  689 	setb	c
   225C 22                  690 	ret
   225D                     691 00102$:
                            692 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/StateMachine_G4_eventQueue.c:73: return false ;
   225D C3                  693 	clr	c
   225E 22                  694 	ret
                            695 ;------------------------------------------------------------
                            696 ;Allocation info for local variables in function 'PriorityInsert'
                            697 ;------------------------------------------------------------
                            698 ;event                     Allocated with name '_PriorityInsert_PARM_2'
                            699 ;Q                         Allocated with name '_PriorityInsert_Q_1_1'
                            700 ;------------------------------------------------------------
                            701 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/StateMachine_G4_eventQueue.c:78: bool PriorityInsert(		eventQueue_t* Q, event_t* event)
                            702 ;	-----------------------------------------
                            703 ;	 function PriorityInsert
                            704 ;	-----------------------------------------
   225F                     705 _PriorityInsert:
   225F AA F0               706 	mov	r2,b
   2261 AB 83               707 	mov	r3,dph
   2263 E5 82               708 	mov	a,dpl
   2265 90 09 42            709 	mov	dptr,#_PriorityInsert_Q_1_1
   2268 F0                  710 	movx	@dptr,a
   2269 A3                  711 	inc	dptr
   226A EB                  712 	mov	a,r3
   226B F0                  713 	movx	@dptr,a
   226C A3                  714 	inc	dptr
   226D EA                  715 	mov	a,r2
   226E F0                  716 	movx	@dptr,a
                            717 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/StateMachine_G4_eventQueue.c:80: if(!isFull(Q))
   226F 90 09 42            718 	mov	dptr,#_PriorityInsert_Q_1_1
   2272 E0                  719 	movx	a,@dptr
   2273 FA                  720 	mov	r2,a
   2274 A3                  721 	inc	dptr
   2275 E0                  722 	movx	a,@dptr
   2276 FB                  723 	mov	r3,a
   2277 A3                  724 	inc	dptr
   2278 E0                  725 	movx	a,@dptr
   2279 FC                  726 	mov	r4,a
   227A 8A 82               727 	mov	dpl,r2
   227C 8B 83               728 	mov	dph,r3
   227E 8C F0               729 	mov	b,r4
   2280 12 20 9D            730 	lcall	_isFull
   2283 E5 82               731 	mov	a,dpl
   2285 60 03               732 	jz	00111$
   2287 02 23 4B            733 	ljmp	00105$
   228A                     734 00111$:
                            735 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/StateMachine_G4_eventQueue.c:82: Q->Size++ ;
   228A 90 09 42            736 	mov	dptr,#_PriorityInsert_Q_1_1
   228D E0                  737 	movx	a,@dptr
   228E FA                  738 	mov	r2,a
   228F A3                  739 	inc	dptr
   2290 E0                  740 	movx	a,@dptr
   2291 FB                  741 	mov	r3,a
   2292 A3                  742 	inc	dptr
   2293 E0                  743 	movx	a,@dptr
   2294 FC                  744 	mov	r4,a
   2295 74 03               745 	mov	a,#0x03
   2297 2A                  746 	add	a,r2
   2298 FD                  747 	mov	r5,a
   2299 E4                  748 	clr	a
   229A 3B                  749 	addc	a,r3
   229B FE                  750 	mov	r6,a
   229C 8C 07               751 	mov	ar7,r4
   229E 8D 82               752 	mov	dpl,r5
   22A0 8E 83               753 	mov	dph,r6
   22A2 8F F0               754 	mov	b,r7
   22A4 12 44 37            755 	lcall	__gptrget
   22A7 F8                  756 	mov	r0,a
   22A8 08                  757 	inc	r0
   22A9 8D 82               758 	mov	dpl,r5
   22AB 8E 83               759 	mov	dph,r6
   22AD 8F F0               760 	mov	b,r7
   22AF E8                  761 	mov	a,r0
   22B0 12 38 0B            762 	lcall	__gptrput
                            763 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/StateMachine_G4_eventQueue.c:83: if(Q->Front == 0)
   22B3 74 01               764 	mov	a,#0x01
   22B5 2A                  765 	add	a,r2
   22B6 FD                  766 	mov	r5,a
   22B7 E4                  767 	clr	a
   22B8 3B                  768 	addc	a,r3
   22B9 FE                  769 	mov	r6,a
   22BA 8C 07               770 	mov	ar7,r4
   22BC 8D 82               771 	mov	dpl,r5
   22BE 8E 83               772 	mov	dph,r6
   22C0 8F F0               773 	mov	b,r7
   22C2 12 44 37            774 	lcall	__gptrget
   22C5 F8                  775 	mov	r0,a
   22C6 70 17               776 	jnz	00102$
                            777 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/StateMachine_G4_eventQueue.c:85: Q->Front = Q->Capacity - 1 ;
   22C8 8A 82               778 	mov	dpl,r2
   22CA 8B 83               779 	mov	dph,r3
   22CC 8C F0               780 	mov	b,r4
   22CE 12 44 37            781 	lcall	__gptrget
   22D1 FA                  782 	mov	r2,a
   22D2 1A                  783 	dec	r2
   22D3 8D 82               784 	mov	dpl,r5
   22D5 8E 83               785 	mov	dph,r6
   22D7 8F F0               786 	mov	b,r7
   22D9 EA                  787 	mov	a,r2
   22DA 12 38 0B            788 	lcall	__gptrput
   22DD 80 0B               789 	sjmp	00103$
   22DF                     790 00102$:
                            791 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/StateMachine_G4_eventQueue.c:89: Q->Front-- ;
   22DF 18                  792 	dec	r0
   22E0 8D 82               793 	mov	dpl,r5
   22E2 8E 83               794 	mov	dph,r6
   22E4 8F F0               795 	mov	b,r7
   22E6 E8                  796 	mov	a,r0
   22E7 12 38 0B            797 	lcall	__gptrput
   22EA                     798 00103$:
                            799 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/StateMachine_G4_eventQueue.c:92: Q->Array[Q->Front] = event ;
   22EA 90 09 42            800 	mov	dptr,#_PriorityInsert_Q_1_1
   22ED E0                  801 	movx	a,@dptr
   22EE FA                  802 	mov	r2,a
   22EF A3                  803 	inc	dptr
   22F0 E0                  804 	movx	a,@dptr
   22F1 FB                  805 	mov	r3,a
   22F2 A3                  806 	inc	dptr
   22F3 E0                  807 	movx	a,@dptr
   22F4 FC                  808 	mov	r4,a
   22F5 74 04               809 	mov	a,#0x04
   22F7 2A                  810 	add	a,r2
   22F8 FD                  811 	mov	r5,a
   22F9 E4                  812 	clr	a
   22FA 3B                  813 	addc	a,r3
   22FB FE                  814 	mov	r6,a
   22FC 8C 07               815 	mov	ar7,r4
   22FE 8D 82               816 	mov	dpl,r5
   2300 8E 83               817 	mov	dph,r6
   2302 8F F0               818 	mov	b,r7
   2304 12 44 37            819 	lcall	__gptrget
   2307 FD                  820 	mov	r5,a
   2308 A3                  821 	inc	dptr
   2309 12 44 37            822 	lcall	__gptrget
   230C FE                  823 	mov	r6,a
   230D A3                  824 	inc	dptr
   230E 12 44 37            825 	lcall	__gptrget
   2311 FF                  826 	mov	r7,a
   2312 0A                  827 	inc	r2
   2313 BA 00 01            828 	cjne	r2,#0x00,00113$
   2316 0B                  829 	inc	r3
   2317                     830 00113$:
   2317 8A 82               831 	mov	dpl,r2
   2319 8B 83               832 	mov	dph,r3
   231B 8C F0               833 	mov	b,r4
   231D 12 44 37            834 	lcall	__gptrget
   2320 75 F0 03            835 	mov	b,#0x03
   2323 A4                  836 	mul	ab
   2324 2D                  837 	add	a,r5
   2325 FD                  838 	mov	r5,a
   2326 EE                  839 	mov	a,r6
   2327 35 F0               840 	addc	a,b
   2329 FE                  841 	mov	r6,a
   232A 90 09 3F            842 	mov	dptr,#_PriorityInsert_PARM_2
   232D E0                  843 	movx	a,@dptr
   232E FA                  844 	mov	r2,a
   232F A3                  845 	inc	dptr
   2330 E0                  846 	movx	a,@dptr
   2331 FB                  847 	mov	r3,a
   2332 A3                  848 	inc	dptr
   2333 E0                  849 	movx	a,@dptr
   2334 FC                  850 	mov	r4,a
   2335 8D 82               851 	mov	dpl,r5
   2337 8E 83               852 	mov	dph,r6
   2339 8F F0               853 	mov	b,r7
   233B EA                  854 	mov	a,r2
   233C 12 38 0B            855 	lcall	__gptrput
   233F A3                  856 	inc	dptr
   2340 EB                  857 	mov	a,r3
   2341 12 38 0B            858 	lcall	__gptrput
   2344 A3                  859 	inc	dptr
   2345 EC                  860 	mov	a,r4
   2346 12 38 0B            861 	lcall	__gptrput
                            862 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/StateMachine_G4_eventQueue.c:94: return true ;
   2349 D3                  863 	setb	c
   234A 22                  864 	ret
   234B                     865 00105$:
                            866 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/StateMachine_G4_eventQueue.c:98: return false ;
   234B C3                  867 	clr	c
   234C 22                  868 	ret
                            869 ;------------------------------------------------------------
                            870 ;Allocation info for local variables in function 'Remove'
                            871 ;------------------------------------------------------------
                            872 ;sloc0                     Allocated with name '_Remove_sloc0_1_0'
                            873 ;sloc1                     Allocated with name '_Remove_sloc1_1_0'
                            874 ;sloc2                     Allocated with name '_Remove_sloc2_1_0'
                            875 ;Q                         Allocated with name '_Remove_Q_1_1'
                            876 ;eventReceived             Allocated with name '_Remove_eventReceived_2_2'
                            877 ;------------------------------------------------------------
                            878 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/StateMachine_G4_eventQueue.c:103: event_t* Remove(			eventQueue_t* Q)
                            879 ;	-----------------------------------------
                            880 ;	 function Remove
                            881 ;	-----------------------------------------
   234D                     882 _Remove:
   234D AA F0               883 	mov	r2,b
   234F AB 83               884 	mov	r3,dph
   2351 E5 82               885 	mov	a,dpl
   2353 90 09 45            886 	mov	dptr,#_Remove_Q_1_1
   2356 F0                  887 	movx	@dptr,a
   2357 A3                  888 	inc	dptr
   2358 EB                  889 	mov	a,r3
   2359 F0                  890 	movx	@dptr,a
   235A A3                  891 	inc	dptr
   235B EA                  892 	mov	a,r2
   235C F0                  893 	movx	@dptr,a
                            894 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/StateMachine_G4_eventQueue.c:105: if(!isEmpty(Q))
   235D 90 09 45            895 	mov	dptr,#_Remove_Q_1_1
   2360 E0                  896 	movx	a,@dptr
   2361 FA                  897 	mov	r2,a
   2362 A3                  898 	inc	dptr
   2363 E0                  899 	movx	a,@dptr
   2364 FB                  900 	mov	r3,a
   2365 A3                  901 	inc	dptr
   2366 E0                  902 	movx	a,@dptr
   2367 FC                  903 	mov	r4,a
   2368 8A 82               904 	mov	dpl,r2
   236A 8B 83               905 	mov	dph,r3
   236C 8C F0               906 	mov	b,r4
   236E 12 20 69            907 	lcall	_isEmpty
   2371 E5 82               908 	mov	a,dpl
   2373 60 03               909 	jz	00107$
   2375 02 24 27            910 	ljmp	00102$
   2378                     911 00107$:
                            912 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/StateMachine_G4_eventQueue.c:107: event_t* eventReceived = Q->Array[Q->Front] ;
   2378 90 09 45            913 	mov	dptr,#_Remove_Q_1_1
   237B E0                  914 	movx	a,@dptr
   237C FA                  915 	mov	r2,a
   237D A3                  916 	inc	dptr
   237E E0                  917 	movx	a,@dptr
   237F FB                  918 	mov	r3,a
   2380 A3                  919 	inc	dptr
   2381 E0                  920 	movx	a,@dptr
   2382 FC                  921 	mov	r4,a
   2383 74 04               922 	mov	a,#0x04
   2385 2A                  923 	add	a,r2
   2386 FD                  924 	mov	r5,a
   2387 E4                  925 	clr	a
   2388 3B                  926 	addc	a,r3
   2389 FE                  927 	mov	r6,a
   238A 8C 07               928 	mov	ar7,r4
   238C 8D 82               929 	mov	dpl,r5
   238E 8E 83               930 	mov	dph,r6
   2390 8F F0               931 	mov	b,r7
   2392 12 44 37            932 	lcall	__gptrget
   2395 F5 29               933 	mov	_Remove_sloc0_1_0,a
   2397 A3                  934 	inc	dptr
   2398 12 44 37            935 	lcall	__gptrget
   239B F5 2A               936 	mov	(_Remove_sloc0_1_0 + 1),a
   239D A3                  937 	inc	dptr
   239E 12 44 37            938 	lcall	__gptrget
   23A1 F5 2B               939 	mov	(_Remove_sloc0_1_0 + 2),a
   23A3 74 01               940 	mov	a,#0x01
   23A5 2A                  941 	add	a,r2
   23A6 F5 2D               942 	mov	_Remove_sloc2_1_0,a
   23A8 E4                  943 	clr	a
   23A9 3B                  944 	addc	a,r3
   23AA F5 2E               945 	mov	(_Remove_sloc2_1_0 + 1),a
   23AC 8C 2F               946 	mov	(_Remove_sloc2_1_0 + 2),r4
   23AE 85 2D 82            947 	mov	dpl,_Remove_sloc2_1_0
   23B1 85 2E 83            948 	mov	dph,(_Remove_sloc2_1_0 + 1)
   23B4 85 2F F0            949 	mov	b,(_Remove_sloc2_1_0 + 2)
   23B7 12 44 37            950 	lcall	__gptrget
   23BA F5 2C               951 	mov	_Remove_sloc1_1_0,a
   23BC 75 F0 03            952 	mov	b,#0x03
   23BF A4                  953 	mul	ab
   23C0 25 29               954 	add	a,_Remove_sloc0_1_0
   23C2 FF                  955 	mov	r7,a
   23C3 E5 2A               956 	mov	a,(_Remove_sloc0_1_0 + 1)
   23C5 35 F0               957 	addc	a,b
   23C7 FE                  958 	mov	r6,a
   23C8 AD 2B               959 	mov	r5,(_Remove_sloc0_1_0 + 2)
   23CA 8F 82               960 	mov	dpl,r7
   23CC 8E 83               961 	mov	dph,r6
   23CE 8D F0               962 	mov	b,r5
   23D0 12 44 37            963 	lcall	__gptrget
   23D3 F5 29               964 	mov	_Remove_sloc0_1_0,a
   23D5 A3                  965 	inc	dptr
   23D6 12 44 37            966 	lcall	__gptrget
   23D9 F5 2A               967 	mov	(_Remove_sloc0_1_0 + 1),a
   23DB A3                  968 	inc	dptr
   23DC 12 44 37            969 	lcall	__gptrget
   23DF F5 2B               970 	mov	(_Remove_sloc0_1_0 + 2),a
                            971 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/StateMachine_G4_eventQueue.c:109: Q->Size-- ;
   23E1 74 03               972 	mov	a,#0x03
   23E3 2A                  973 	add	a,r2
   23E4 F8                  974 	mov	r0,a
   23E5 E4                  975 	clr	a
   23E6 3B                  976 	addc	a,r3
   23E7 F9                  977 	mov	r1,a
   23E8 8C 05               978 	mov	ar5,r4
   23EA 88 82               979 	mov	dpl,r0
   23EC 89 83               980 	mov	dph,r1
   23EE 8D F0               981 	mov	b,r5
   23F0 12 44 37            982 	lcall	__gptrget
   23F3 FE                  983 	mov	r6,a
   23F4 1E                  984 	dec	r6
   23F5 88 82               985 	mov	dpl,r0
   23F7 89 83               986 	mov	dph,r1
   23F9 8D F0               987 	mov	b,r5
   23FB EE                  988 	mov	a,r6
   23FC 12 38 0B            989 	lcall	__gptrput
                            990 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/StateMachine_G4_eventQueue.c:110: Q->Front = nextLocationFromPoint(Q, Q->Front) ;
   23FF 90 09 35            991 	mov	dptr,#_nextLocationFromPoint_PARM_2
   2402 E5 2C               992 	mov	a,_Remove_sloc1_1_0
   2404 F0                  993 	movx	@dptr,a
   2405 8A 82               994 	mov	dpl,r2
   2407 8B 83               995 	mov	dph,r3
   2409 8C F0               996 	mov	b,r4
   240B 12 20 E1            997 	lcall	_nextLocationFromPoint
   240E AA 82               998 	mov	r2,dpl
   2410 85 2D 82            999 	mov	dpl,_Remove_sloc2_1_0
   2413 85 2E 83           1000 	mov	dph,(_Remove_sloc2_1_0 + 1)
   2416 85 2F F0           1001 	mov	b,(_Remove_sloc2_1_0 + 2)
   2419 EA                 1002 	mov	a,r2
   241A 12 38 0B           1003 	lcall	__gptrput
                           1004 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/StateMachine_G4_eventQueue.c:112: return eventReceived ;
   241D 85 29 82           1005 	mov	dpl,_Remove_sloc0_1_0
   2420 85 2A 83           1006 	mov	dph,(_Remove_sloc0_1_0 + 1)
   2423 85 2B F0           1007 	mov	b,(_Remove_sloc0_1_0 + 2)
   2426 22                 1008 	ret
   2427                    1009 00102$:
                           1010 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/StateMachine_G4_eventQueue.c:116: return (event_t*)0 ;
   2427 90 00 00           1011 	mov	dptr,#0x0000
   242A 75 F0 00           1012 	mov	b,#0x00
   242D 22                 1013 	ret
                           1014 	.area CSEG    (CODE)
                           1015 	.area CONST   (CODE)
   47F5                    1016 __str_0:
   47F5 09                 1017 	.db 0x09
   47F6 09                 1018 	.db 0x09
   47F7 09                 1019 	.db 0x09
   47F8 50 6F 73 74 69 6E  1020 	.ascii "Posting event type: %s"
        67 20 65 76 65 6E
        74 20 74 79 70 65
        3A 20 25 73
   480E 0A                 1021 	.db 0x0A
   480F 00                 1022 	.db 0x00
   4810                    1023 __str_1:
   4810 3C 55 53 45 52 5F  1024 	.ascii "<USER_EVENT>"
        45 56 45 4E 54 3E
   481C 00                 1025 	.db 0x00
                           1026 	.area XINIT   (CODE)
                           1027 	.area CABS    (ABS,CODE)
