                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 2.9.0 #5416 (Mar 22 2009) (MINGW32)
                              4 ; This file was generated Wed Dec 30 22:11:51 2009
                              5 ;--------------------------------------------------------
                              6 	.module stateMachine_G4
                              7 	.optsdcc -mmcs51 --model-large
                              8 	
                              9 ;--------------------------------------------------------
                             10 ; Public variables in this module
                             11 ;--------------------------------------------------------
                             12 	.globl _callStateHandler
                             13 	.globl _responseTypes
                             14 	.globl _eventTypes
                             15 	.globl _callStateHandler_PARM_3
                             16 	.globl _callStateHandler_PARM_2
                             17 	.globl _deallocateStateMachineMemory_PARM_2
                             18 	.globl _allocateStateMachineMemory_PARM_3
                             19 	.globl _allocateStateMachineMemory_PARM_2
                             20 	.globl _stateMachines
                             21 	.globl _allocateStateMachineMemory
                             22 	.globl _deallocateStateMachineMemory
                             23 	.globl _registerStateMachine
                             24 	.globl _unregisterStateMachine
                             25 	.globl _iterateAllStateMachines
                             26 	.globl _iterateStateMachine
                             27 ;--------------------------------------------------------
                             28 ; special function registers
                             29 ;--------------------------------------------------------
                             30 	.area RSEG    (DATA)
                             31 ;--------------------------------------------------------
                             32 ; special function bits
                             33 ;--------------------------------------------------------
                             34 	.area RSEG    (DATA)
                             35 ;--------------------------------------------------------
                             36 ; overlayable register banks
                             37 ;--------------------------------------------------------
                             38 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                      39 	.ds 8
                             40 ;--------------------------------------------------------
                             41 ; internal ram data
                             42 ;--------------------------------------------------------
                             43 	.area DSEG    (DATA)
   0030                      44 _allocateStateMachineMemory_sloc0_1_0:
   0030                      45 	.ds 2
   0032                      46 _allocateStateMachineMemory_sloc1_1_0:
   0032                      47 	.ds 3
   0035                      48 _allocateStateMachineMemory_sloc2_1_0:
   0035                      49 	.ds 2
   0037                      50 _allocateStateMachineMemory_sloc3_1_0:
   0037                      51 	.ds 3
   003A                      52 _callStateHandler_sloc0_1_0:
   003A                      53 	.ds 3
   003D                      54 _callStateHandler_sloc1_1_0:
   003D                      55 	.ds 3
   0040                      56 _iterateStateMachine_sloc0_1_0:
   0040                      57 	.ds 3
   0043                      58 _iterateStateMachine_sloc1_1_0:
   0043                      59 	.ds 3
   0046                      60 _iterateStateMachine_sloc2_1_0:
   0046                      61 	.ds 3
   0049                      62 _iterateStateMachine_sloc3_1_0:
   0049                      63 	.ds 3
   004C                      64 _iterateStateMachine_sloc4_1_0:
   004C                      65 	.ds 3
                             66 ;--------------------------------------------------------
                             67 ; overlayable items in internal ram 
                             68 ;--------------------------------------------------------
                             69 	.area OSEG    (OVR,DATA)
                             70 ;--------------------------------------------------------
                             71 ; indirectly addressable internal ram data
                             72 ;--------------------------------------------------------
                             73 	.area ISEG    (DATA)
                             74 ;--------------------------------------------------------
                             75 ; absolute internal ram data
                             76 ;--------------------------------------------------------
                             77 	.area IABS    (ABS,DATA)
                             78 	.area IABS    (ABS,DATA)
                             79 ;--------------------------------------------------------
                             80 ; bit data
                             81 ;--------------------------------------------------------
                             82 	.area BSEG    (BIT)
                             83 ;--------------------------------------------------------
                             84 ; paged external ram data
                             85 ;--------------------------------------------------------
                             86 	.area PSEG    (PAG,XDATA)
                             87 ;--------------------------------------------------------
                             88 ; external ram data
                             89 ;--------------------------------------------------------
                             90 	.area XSEG    (XDATA)
   0948                      91 _stateMachines::
   0948                      92 	.ds 150
   09DE                      93 _allocateStateMachineMemory_PARM_2:
   09DE                      94 	.ds 2
   09E0                      95 _allocateStateMachineMemory_PARM_3:
   09E0                      96 	.ds 2
   09E2                      97 _allocateStateMachineMemory_sizeInBytes_1_1:
   09E2                      98 	.ds 2
   09E4                      99 _deallocateStateMachineMemory_PARM_2:
   09E4                     100 	.ds 2
   09E6                     101 _deallocateStateMachineMemory_instance_1_1:
   09E6                     102 	.ds 3
   09E9                     103 _registerStateMachine_sm_1_1:
   09E9                     104 	.ds 3
   09EC                     105 _unregisterStateMachine_sm_1_1:
   09EC                     106 	.ds 3
   09EF                     107 _callStateHandler_PARM_2:
   09EF                     108 	.ds 3
   09F2                     109 _callStateHandler_PARM_3:
   09F2                     110 	.ds 3
   09F5                     111 _callStateHandler_sm_1_1:
   09F5                     112 	.ds 3
   09F8                     113 _iterateStateMachine_sm_1_1:
   09F8                     114 	.ds 3
   09FB                     115 _iterateStateMachine_eventToProcess_2_3:
   09FB                     116 	.ds 3
   09FE                     117 _iterateStateMachine_stateBeingProcessed_2_3:
   09FE                     118 	.ds 3
   0A01                     119 _iterateStateMachine_sourceHierarchy_4_14:
   0A01                     120 	.ds 48
   0A31                     121 _iterateStateMachine_sourceIndex_4_14:
   0A31                     122 	.ds 1
   0A32                     123 _iterateStateMachine_targetHierarchy_4_14:
   0A32                     124 	.ds 48
   0A62                     125 _iterateStateMachine_targetIndex_4_14:
   0A62                     126 	.ds 1
   0A63                     127 _iterateStateMachine_LCA_4_14:
   0A63                     128 	.ds 3
   0A66                     129 _iterateStateMachine_entryIndex_4_14:
   0A66                     130 	.ds 1
                            131 ;--------------------------------------------------------
                            132 ; absolute external ram data
                            133 ;--------------------------------------------------------
                            134 	.area XABS    (ABS,XDATA)
                            135 ;--------------------------------------------------------
                            136 ; external initialized ram data
                            137 ;--------------------------------------------------------
                            138 	.area XISEG   (XDATA)
   0EE2                     139 _eventTypes::
   0EE2                     140 	.ds 12
   0EEE                     141 _responseTypes::
   0EEE                     142 	.ds 9
   0EF7                     143 _initialTransitionEvent:
   0EF7                     144 	.ds 1
   0EF8                     145 _enterEvent:
   0EF8                     146 	.ds 1
   0EF9                     147 _exitEvent:
   0EF9                     148 	.ds 1
                            149 	.area HOME    (CODE)
                            150 	.area GSINIT0 (CODE)
                            151 	.area GSINIT1 (CODE)
                            152 	.area GSINIT2 (CODE)
                            153 	.area GSINIT3 (CODE)
                            154 	.area GSINIT4 (CODE)
                            155 	.area GSINIT5 (CODE)
                            156 	.area GSINIT  (CODE)
                            157 	.area GSFINAL (CODE)
                            158 	.area CSEG    (CODE)
                            159 ;--------------------------------------------------------
                            160 ; global & static initialisations
                            161 ;--------------------------------------------------------
                            162 	.area HOME    (CODE)
                            163 	.area GSINIT  (CODE)
                            164 	.area GSFINAL (CODE)
                            165 	.area GSINIT  (CODE)
                            166 ;--------------------------------------------------------
                            167 ; Home
                            168 ;--------------------------------------------------------
                            169 	.area HOME    (CODE)
                            170 	.area HOME    (CODE)
                            171 ;--------------------------------------------------------
                            172 ; code
                            173 ;--------------------------------------------------------
                            174 	.area CSEG    (CODE)
                            175 ;------------------------------------------------------------
                            176 ;Allocation info for local variables in function 'allocateStateMachineMemory'
                            177 ;------------------------------------------------------------
                            178 ;sloc0                     Allocated with name '_allocateStateMachineMemory_sloc0_1_0'
                            179 ;sloc1                     Allocated with name '_allocateStateMachineMemory_sloc1_1_0'
                            180 ;sloc2                     Allocated with name '_allocateStateMachineMemory_sloc2_1_0'
                            181 ;sloc3                     Allocated with name '_allocateStateMachineMemory_sloc3_1_0'
                            182 ;eventQueueDepth           Allocated with name '_allocateStateMachineMemory_PARM_2'
                            183 ;constructor               Allocated with name '_allocateStateMachineMemory_PARM_3'
                            184 ;sizeInBytes               Allocated with name '_allocateStateMachineMemory_sizeInBytes_1_1'
                            185 ;instance                  Allocated with name '_allocateStateMachineMemory_instance_1_1'
                            186 ;eventQueue                Allocated with name '_allocateStateMachineMemory_eventQueue_2_2'
                            187 ;------------------------------------------------------------
                            188 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:36: stateMachine_t* allocateStateMachineMemory(		uint16_t sizeInBytes,
                            189 ;	-----------------------------------------
                            190 ;	 function allocateStateMachineMemory
                            191 ;	-----------------------------------------
   242E                     192 _allocateStateMachineMemory:
                    0002    193 	ar2 = 0x02
                    0003    194 	ar3 = 0x03
                    0004    195 	ar4 = 0x04
                    0005    196 	ar5 = 0x05
                    0006    197 	ar6 = 0x06
                    0007    198 	ar7 = 0x07
                    0000    199 	ar0 = 0x00
                    0001    200 	ar1 = 0x01
   242E AA 83               201 	mov	r2,dph
   2430 E5 82               202 	mov	a,dpl
   2432 90 09 E2            203 	mov	dptr,#_allocateStateMachineMemory_sizeInBytes_1_1
   2435 F0                  204 	movx	@dptr,a
   2436 A3                  205 	inc	dptr
   2437 EA                  206 	mov	a,r2
   2438 F0                  207 	movx	@dptr,a
                            208 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:40: stateMachine_t*	instance = malloc(sizeInBytes) ;
   2439 90 09 E2            209 	mov	dptr,#_allocateStateMachineMemory_sizeInBytes_1_1
   243C E0                  210 	movx	a,@dptr
   243D FA                  211 	mov	r2,a
   243E A3                  212 	inc	dptr
   243F E0                  213 	movx	a,@dptr
   2440 FB                  214 	mov	r3,a
   2441 8A 82               215 	mov	dpl,r2
   2443 8B 83               216 	mov	dph,r3
   2445 C0 02               217 	push	ar2
   2447 C0 03               218 	push	ar3
   2449 12 38 A2            219 	lcall	_malloc
   244C AC 82               220 	mov	r4,dpl
   244E AD 83               221 	mov	r5,dph
   2450 D0 03               222 	pop	ar3
   2452 D0 02               223 	pop	ar2
   2454 7E 00               224 	mov	r6,#0x00
                            225 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:42: if(instance)
   2456 EC                  226 	mov	a,r4
   2457 4D                  227 	orl	a,r5
   2458 4E                  228 	orl	a,r6
   2459 70 03               229 	jnz	00109$
   245B 02 25 6B            230 	ljmp	00104$
   245E                     231 00109$:
                            232 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:44: event_t** eventQueue = (event_t**)malloc(eventQueueDepth * sizeof(event_t*)) ;
   245E C0 02               233 	push	ar2
   2460 C0 03               234 	push	ar3
   2462 90 09 DE            235 	mov	dptr,#_allocateStateMachineMemory_PARM_2
   2465 E0                  236 	movx	a,@dptr
   2466 F5 35               237 	mov	_allocateStateMachineMemory_sloc2_1_0,a
   2468 A3                  238 	inc	dptr
   2469 E0                  239 	movx	a,@dptr
   246A F5 36               240 	mov	(_allocateStateMachineMemory_sloc2_1_0 + 1),a
   246C 90 0A A1            241 	mov	dptr,#__mulint_PARM_2
   246F E5 35               242 	mov	a,_allocateStateMachineMemory_sloc2_1_0
   2471 F0                  243 	movx	@dptr,a
   2472 A3                  244 	inc	dptr
   2473 E5 36               245 	mov	a,(_allocateStateMachineMemory_sloc2_1_0 + 1)
   2475 F0                  246 	movx	@dptr,a
   2476 90 00 03            247 	mov	dptr,#0x0003
   2479 C0 02               248 	push	ar2
   247B C0 03               249 	push	ar3
   247D C0 04               250 	push	ar4
   247F C0 05               251 	push	ar5
   2481 C0 06               252 	push	ar6
   2483 12 39 EC            253 	lcall	__mulint
   2486 85 82 30            254 	mov	_allocateStateMachineMemory_sloc0_1_0,dpl
   2489 85 83 31            255 	mov	(_allocateStateMachineMemory_sloc0_1_0 + 1),dph
   248C D0 06               256 	pop	ar6
   248E D0 05               257 	pop	ar5
   2490 D0 04               258 	pop	ar4
   2492 D0 03               259 	pop	ar3
   2494 D0 02               260 	pop	ar2
   2496 85 30 82            261 	mov	dpl,_allocateStateMachineMemory_sloc0_1_0
   2499 85 31 83            262 	mov	dph,(_allocateStateMachineMemory_sloc0_1_0 + 1)
   249C C0 03               263 	push	ar3
   249E C0 04               264 	push	ar4
   24A0 C0 05               265 	push	ar5
   24A2 C0 06               266 	push	ar6
   24A4 12 38 A2            267 	lcall	_malloc
   24A7 A9 82               268 	mov	r1,dpl
   24A9 AA 83               269 	mov	r2,dph
   24AB D0 06               270 	pop	ar6
   24AD D0 05               271 	pop	ar5
   24AF D0 04               272 	pop	ar4
   24B1 D0 03               273 	pop	ar3
   24B3 89 32               274 	mov	_allocateStateMachineMemory_sloc1_1_0,r1
   24B5 8A 33               275 	mov	(_allocateStateMachineMemory_sloc1_1_0 + 1),r2
   24B7 75 34 00            276 	mov	(_allocateStateMachineMemory_sloc1_1_0 + 2),#0x00
                            277 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:46: if(eventQueue)
   24BA D0 03               278 	pop	ar3
   24BC D0 02               279 	pop	ar2
   24BE E5 32               280 	mov	a,_allocateStateMachineMemory_sloc1_1_0
   24C0 45 33               281 	orl	a,(_allocateStateMachineMemory_sloc1_1_0 + 1)
   24C2 45 34               282 	orl	a,(_allocateStateMachineMemory_sloc1_1_0 + 2)
   24C4 70 03               283 	jnz	00110$
   24C6 02 25 6B            284 	ljmp	00104$
   24C9                     285 00110$:
                            286 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:48: initializeEventQueue(&instance->eventQueue, eventQueue, eventQueueDepth) ;
   24C9 74 0C               287 	mov	a,#0x0C
   24CB 2C                  288 	add	a,r4
   24CC F5 37               289 	mov	_allocateStateMachineMemory_sloc3_1_0,a
   24CE E4                  290 	clr	a
   24CF 3D                  291 	addc	a,r5
   24D0 F5 38               292 	mov	(_allocateStateMachineMemory_sloc3_1_0 + 1),a
   24D2 8E 39               293 	mov	(_allocateStateMachineMemory_sloc3_1_0 + 2),r6
   24D4 AF 35               294 	mov	r7,_allocateStateMachineMemory_sloc2_1_0
   24D6 90 09 25            295 	mov	dptr,#_initializeEventQueue_PARM_2
   24D9 E5 32               296 	mov	a,_allocateStateMachineMemory_sloc1_1_0
   24DB F0                  297 	movx	@dptr,a
   24DC A3                  298 	inc	dptr
   24DD E5 33               299 	mov	a,(_allocateStateMachineMemory_sloc1_1_0 + 1)
   24DF F0                  300 	movx	@dptr,a
   24E0 A3                  301 	inc	dptr
   24E1 E5 34               302 	mov	a,(_allocateStateMachineMemory_sloc1_1_0 + 2)
   24E3 F0                  303 	movx	@dptr,a
   24E4 90 09 28            304 	mov	dptr,#_initializeEventQueue_PARM_3
   24E7 EF                  305 	mov	a,r7
   24E8 F0                  306 	movx	@dptr,a
   24E9 85 37 82            307 	mov	dpl,_allocateStateMachineMemory_sloc3_1_0
   24EC 85 38 83            308 	mov	dph,(_allocateStateMachineMemory_sloc3_1_0 + 1)
   24EF 85 39 F0            309 	mov	b,(_allocateStateMachineMemory_sloc3_1_0 + 2)
   24F2 C0 02               310 	push	ar2
   24F4 C0 03               311 	push	ar3
   24F6 C0 04               312 	push	ar4
   24F8 C0 05               313 	push	ar5
   24FA C0 06               314 	push	ar6
   24FC 12 1F 8C            315 	lcall	_initializeEventQueue
   24FF D0 06               316 	pop	ar6
   2501 D0 05               317 	pop	ar5
   2503 D0 04               318 	pop	ar4
   2505 D0 03               319 	pop	ar3
   2507 D0 02               320 	pop	ar2
                            321 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:50: memset((char*)instance,		0, sizeInBytes) ;
   2509 90 0A 93            322 	mov	dptr,#_memset_PARM_2
   250C E4                  323 	clr	a
   250D F0                  324 	movx	@dptr,a
   250E 90 0A 94            325 	mov	dptr,#_memset_PARM_3
   2511 EA                  326 	mov	a,r2
   2512 F0                  327 	movx	@dptr,a
   2513 A3                  328 	inc	dptr
   2514 EB                  329 	mov	a,r3
   2515 F0                  330 	movx	@dptr,a
   2516 8C 82               331 	mov	dpl,r4
   2518 8D 83               332 	mov	dph,r5
   251A 8E F0               333 	mov	b,r6
   251C C0 04               334 	push	ar4
   251E C0 05               335 	push	ar5
   2520 C0 06               336 	push	ar6
   2522 12 37 E3            337 	lcall	_memset
                            338 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:51: memset((char*)eventQueue,	0, eventQueueDepth * sizeof(event_t*)) ;
   2525 90 0A 93            339 	mov	dptr,#_memset_PARM_2
   2528 E4                  340 	clr	a
   2529 F0                  341 	movx	@dptr,a
   252A 90 0A 94            342 	mov	dptr,#_memset_PARM_3
   252D E5 30               343 	mov	a,_allocateStateMachineMemory_sloc0_1_0
   252F F0                  344 	movx	@dptr,a
   2530 A3                  345 	inc	dptr
   2531 E5 31               346 	mov	a,(_allocateStateMachineMemory_sloc0_1_0 + 1)
   2533 F0                  347 	movx	@dptr,a
   2534 85 32 82            348 	mov	dpl,_allocateStateMachineMemory_sloc1_1_0
   2537 85 33 83            349 	mov	dph,(_allocateStateMachineMemory_sloc1_1_0 + 1)
   253A 85 34 F0            350 	mov	b,(_allocateStateMachineMemory_sloc1_1_0 + 2)
   253D 12 37 E3            351 	lcall	_memset
   2540 D0 06               352 	pop	ar6
   2542 D0 05               353 	pop	ar5
   2544 D0 04               354 	pop	ar4
                            355 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:53: constructor(instance) ;
   2546 C0 04               356 	push	ar4
   2548 C0 05               357 	push	ar5
   254A C0 06               358 	push	ar6
   254C 74 65               359 	mov	a,#00111$
   254E C0 E0               360 	push	acc
   2550 74 25               361 	mov	a,#(00111$ >> 8)
   2552 C0 E0               362 	push	acc
   2554 90 09 E0            363 	mov	dptr,#_allocateStateMachineMemory_PARM_3
   2557 E0                  364 	movx	a,@dptr
   2558 C0 E0               365 	push	acc
   255A A3                  366 	inc	dptr
   255B E0                  367 	movx	a,@dptr
   255C C0 E0               368 	push	acc
   255E 8C 82               369 	mov	dpl,r4
   2560 8D 83               370 	mov	dph,r5
   2562 8E F0               371 	mov	b,r6
   2564 22                  372 	ret
   2565                     373 00111$:
   2565 D0 06               374 	pop	ar6
   2567 D0 05               375 	pop	ar5
   2569 D0 04               376 	pop	ar4
   256B                     377 00104$:
                            378 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:57: return instance ;
   256B 8C 82               379 	mov	dpl,r4
   256D 8D 83               380 	mov	dph,r5
   256F 8E F0               381 	mov	b,r6
   2571 22                  382 	ret
                            383 ;------------------------------------------------------------
                            384 ;Allocation info for local variables in function 'deallocateStateMachineMemory'
                            385 ;------------------------------------------------------------
                            386 ;destructor                Allocated with name '_deallocateStateMachineMemory_PARM_2'
                            387 ;instance                  Allocated with name '_deallocateStateMachineMemory_instance_1_1'
                            388 ;------------------------------------------------------------
                            389 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:61: void deallocateStateMachineMemory(				stateMachine_t* instance, stateMachineDestructor_t destructor)
                            390 ;	-----------------------------------------
                            391 ;	 function deallocateStateMachineMemory
                            392 ;	-----------------------------------------
   2572                     393 _deallocateStateMachineMemory:
   2572 AA F0               394 	mov	r2,b
   2574 AB 83               395 	mov	r3,dph
   2576 E5 82               396 	mov	a,dpl
   2578 90 09 E6            397 	mov	dptr,#_deallocateStateMachineMemory_instance_1_1
   257B F0                  398 	movx	@dptr,a
   257C A3                  399 	inc	dptr
   257D EB                  400 	mov	a,r3
   257E F0                  401 	movx	@dptr,a
   257F A3                  402 	inc	dptr
   2580 EA                  403 	mov	a,r2
   2581 F0                  404 	movx	@dptr,a
                            405 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:63: if(instance != 0)
   2582 90 09 E6            406 	mov	dptr,#_deallocateStateMachineMemory_instance_1_1
   2585 E0                  407 	movx	a,@dptr
   2586 FA                  408 	mov	r2,a
   2587 A3                  409 	inc	dptr
   2588 E0                  410 	movx	a,@dptr
   2589 FB                  411 	mov	r3,a
   258A A3                  412 	inc	dptr
   258B E0                  413 	movx	a,@dptr
   258C FC                  414 	mov	r4,a
   258D EA                  415 	mov	a,r2
   258E 4B                  416 	orl	a,r3
   258F 4C                  417 	orl	a,r4
   2590 60 2D               418 	jz	00103$
                            419 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:65: destructor(instance) ;
   2592 74 AB               420 	mov	a,#00107$
   2594 C0 E0               421 	push	acc
   2596 74 25               422 	mov	a,#(00107$ >> 8)
   2598 C0 E0               423 	push	acc
   259A 90 09 E4            424 	mov	dptr,#_deallocateStateMachineMemory_PARM_2
   259D E0                  425 	movx	a,@dptr
   259E C0 E0               426 	push	acc
   25A0 A3                  427 	inc	dptr
   25A1 E0                  428 	movx	a,@dptr
   25A2 C0 E0               429 	push	acc
   25A4 8A 82               430 	mov	dpl,r2
   25A6 8B 83               431 	mov	dph,r3
   25A8 8C F0               432 	mov	b,r4
   25AA 22                  433 	ret
   25AB                     434 00107$:
                            435 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:67: free((char*)instance) ;
   25AB 90 09 E6            436 	mov	dptr,#_deallocateStateMachineMemory_instance_1_1
   25AE E0                  437 	movx	a,@dptr
   25AF FA                  438 	mov	r2,a
   25B0 A3                  439 	inc	dptr
   25B1 E0                  440 	movx	a,@dptr
   25B2 FB                  441 	mov	r3,a
   25B3 A3                  442 	inc	dptr
   25B4 E0                  443 	movx	a,@dptr
   25B5 FC                  444 	mov	r4,a
   25B6 8A 82               445 	mov	dpl,r2
   25B8 8B 83               446 	mov	dph,r3
   25BA 8C F0               447 	mov	b,r4
   25BC 02 37 91            448 	ljmp	_free
   25BF                     449 00103$:
   25BF 22                  450 	ret
                            451 ;------------------------------------------------------------
                            452 ;Allocation info for local variables in function 'registerStateMachine'
                            453 ;------------------------------------------------------------
                            454 ;sm                        Allocated with name '_registerStateMachine_sm_1_1'
                            455 ;statetMachineIndex        Allocated with name '_registerStateMachine_statetMachineIndex_2_2'
                            456 ;------------------------------------------------------------
                            457 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:72: bool registerStateMachine(			stateMachine_t* sm)
                            458 ;	-----------------------------------------
                            459 ;	 function registerStateMachine
                            460 ;	-----------------------------------------
   25C0                     461 _registerStateMachine:
   25C0 AA F0               462 	mov	r2,b
   25C2 AB 83               463 	mov	r3,dph
   25C4 E5 82               464 	mov	a,dpl
   25C6 90 09 E9            465 	mov	dptr,#_registerStateMachine_sm_1_1
   25C9 F0                  466 	movx	@dptr,a
   25CA A3                  467 	inc	dptr
   25CB EB                  468 	mov	a,r3
   25CC F0                  469 	movx	@dptr,a
   25CD A3                  470 	inc	dptr
   25CE EA                  471 	mov	a,r2
   25CF F0                  472 	movx	@dptr,a
                            473 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:74: if(sm)
   25D0 90 09 E9            474 	mov	dptr,#_registerStateMachine_sm_1_1
   25D3 E0                  475 	movx	a,@dptr
   25D4 FA                  476 	mov	r2,a
   25D5 A3                  477 	inc	dptr
   25D6 E0                  478 	movx	a,@dptr
   25D7 FB                  479 	mov	r3,a
   25D8 A3                  480 	inc	dptr
   25D9 E0                  481 	movx	a,@dptr
   25DA FC                  482 	mov	r4,a
   25DB EA                  483 	mov	a,r2
   25DC 4B                  484 	orl	a,r3
   25DD 4C                  485 	orl	a,r4
   25DE 60 44               486 	jz	00104$
                            487 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:78: for( statetMachineIndex = 0 ; statetMachineIndex < configMAXIMUM_NUMBER_OF_STATE_MACHINES ; statetMachineIndex++ )
   25E0 7A 00               488 	mov	r2,#0x00
   25E2                     489 00105$:
   25E2 BA 32 00            490 	cjne	r2,#0x32,00116$
   25E5                     491 00116$:
   25E5 50 3D               492 	jnc	00104$
                            493 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:80: if(stateMachines[statetMachineIndex] == NULL)
   25E7 EA                  494 	mov	a,r2
   25E8 75 F0 03            495 	mov	b,#0x03
   25EB A4                  496 	mul	ab
   25EC 24 48               497 	add	a,#_stateMachines
   25EE FB                  498 	mov	r3,a
   25EF E4                  499 	clr	a
   25F0 34 09               500 	addc	a,#(_stateMachines >> 8)
   25F2 FC                  501 	mov	r4,a
   25F3 8B 82               502 	mov	dpl,r3
   25F5 8C 83               503 	mov	dph,r4
   25F7 E0                  504 	movx	a,@dptr
   25F8 FD                  505 	mov	r5,a
   25F9 A3                  506 	inc	dptr
   25FA E0                  507 	movx	a,@dptr
   25FB FE                  508 	mov	r6,a
   25FC A3                  509 	inc	dptr
   25FD E0                  510 	movx	a,@dptr
   25FE FF                  511 	mov	r7,a
   25FF BD 00 1F            512 	cjne	r5,#0x00,00107$
   2602 BE 00 1C            513 	cjne	r6,#0x00,00107$
   2605 BF 00 19            514 	cjne	r7,#0x00,00107$
                            515 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:82: stateMachines[statetMachineIndex] = sm ;
   2608 90 09 E9            516 	mov	dptr,#_registerStateMachine_sm_1_1
   260B E0                  517 	movx	a,@dptr
   260C FD                  518 	mov	r5,a
   260D A3                  519 	inc	dptr
   260E E0                  520 	movx	a,@dptr
   260F FE                  521 	mov	r6,a
   2610 A3                  522 	inc	dptr
   2611 E0                  523 	movx	a,@dptr
   2612 FF                  524 	mov	r7,a
   2613 8B 82               525 	mov	dpl,r3
   2615 8C 83               526 	mov	dph,r4
   2617 ED                  527 	mov	a,r5
   2618 F0                  528 	movx	@dptr,a
   2619 A3                  529 	inc	dptr
   261A EE                  530 	mov	a,r6
   261B F0                  531 	movx	@dptr,a
   261C A3                  532 	inc	dptr
   261D EF                  533 	mov	a,r7
   261E F0                  534 	movx	@dptr,a
                            535 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:84: return true ;
   261F D3                  536 	setb	c
   2620 22                  537 	ret
   2621                     538 00107$:
                            539 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:78: for( statetMachineIndex = 0 ; statetMachineIndex < configMAXIMUM_NUMBER_OF_STATE_MACHINES ; statetMachineIndex++ )
   2621 0A                  540 	inc	r2
   2622 80 BE               541 	sjmp	00105$
   2624                     542 00104$:
                            543 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:89: return false ;
   2624 C3                  544 	clr	c
   2625 22                  545 	ret
                            546 ;------------------------------------------------------------
                            547 ;Allocation info for local variables in function 'unregisterStateMachine'
                            548 ;------------------------------------------------------------
                            549 ;sm                        Allocated with name '_unregisterStateMachine_sm_1_1'
                            550 ;statetMachineIndex        Allocated with name '_unregisterStateMachine_statetMachineIndex_2_2'
                            551 ;------------------------------------------------------------
                            552 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:92: bool unregisterStateMachine(		stateMachine_t* sm)
                            553 ;	-----------------------------------------
                            554 ;	 function unregisterStateMachine
                            555 ;	-----------------------------------------
   2626                     556 _unregisterStateMachine:
   2626 AA F0               557 	mov	r2,b
   2628 AB 83               558 	mov	r3,dph
   262A E5 82               559 	mov	a,dpl
   262C 90 09 EC            560 	mov	dptr,#_unregisterStateMachine_sm_1_1
   262F F0                  561 	movx	@dptr,a
   2630 A3                  562 	inc	dptr
   2631 EB                  563 	mov	a,r3
   2632 F0                  564 	movx	@dptr,a
   2633 A3                  565 	inc	dptr
   2634 EA                  566 	mov	a,r2
   2635 F0                  567 	movx	@dptr,a
                            568 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:94: if(sm)
   2636 90 09 EC            569 	mov	dptr,#_unregisterStateMachine_sm_1_1
   2639 E0                  570 	movx	a,@dptr
   263A FA                  571 	mov	r2,a
   263B A3                  572 	inc	dptr
   263C E0                  573 	movx	a,@dptr
   263D FB                  574 	mov	r3,a
   263E A3                  575 	inc	dptr
   263F E0                  576 	movx	a,@dptr
   2640 FC                  577 	mov	r4,a
   2641 EA                  578 	mov	a,r2
   2642 4B                  579 	orl	a,r3
   2643 4C                  580 	orl	a,r4
   2644 60 44               581 	jz	00104$
                            582 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:98: for( statetMachineIndex = 0 ; statetMachineIndex < configMAXIMUM_NUMBER_OF_STATE_MACHINES ; statetMachineIndex++ )
   2646 7D 00               583 	mov	r5,#0x00
   2648                     584 00105$:
   2648 BD 32 00            585 	cjne	r5,#0x32,00116$
   264B                     586 00116$:
   264B 50 3D               587 	jnc	00104$
                            588 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:100: if(stateMachines[statetMachineIndex] == sm)
   264D ED                  589 	mov	a,r5
   264E 75 F0 03            590 	mov	b,#0x03
   2651 A4                  591 	mul	ab
   2652 24 48               592 	add	a,#_stateMachines
   2654 FE                  593 	mov	r6,a
   2655 E4                  594 	clr	a
   2656 34 09               595 	addc	a,#(_stateMachines >> 8)
   2658 FF                  596 	mov	r7,a
   2659 C0 05               597 	push	ar5
   265B 8E 82               598 	mov	dpl,r6
   265D 8F 83               599 	mov	dph,r7
   265F E0                  600 	movx	a,@dptr
   2660 F8                  601 	mov	r0,a
   2661 A3                  602 	inc	dptr
   2662 E0                  603 	movx	a,@dptr
   2663 F9                  604 	mov	r1,a
   2664 A3                  605 	inc	dptr
   2665 E0                  606 	movx	a,@dptr
   2666 FD                  607 	mov	r5,a
   2667 E8                  608 	mov	a,r0
   2668 B5 02 0A            609 	cjne	a,ar2,00118$
   266B E9                  610 	mov	a,r1
   266C B5 03 06            611 	cjne	a,ar3,00118$
   266F ED                  612 	mov	a,r5
   2670 B5 04 02            613 	cjne	a,ar4,00118$
   2673 80 04               614 	sjmp	00119$
   2675                     615 00118$:
   2675 D0 05               616 	pop	ar5
   2677 80 0E               617 	sjmp	00107$
   2679                     618 00119$:
   2679 D0 05               619 	pop	ar5
                            620 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:102: stateMachines[statetMachineIndex] = NULL ;
   267B 8E 82               621 	mov	dpl,r6
   267D 8F 83               622 	mov	dph,r7
   267F E4                  623 	clr	a
   2680 F0                  624 	movx	@dptr,a
   2681 A3                  625 	inc	dptr
   2682 F0                  626 	movx	@dptr,a
   2683 A3                  627 	inc	dptr
   2684 F0                  628 	movx	@dptr,a
                            629 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:104: return true ;
   2685 D3                  630 	setb	c
   2686 22                  631 	ret
   2687                     632 00107$:
                            633 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:98: for( statetMachineIndex = 0 ; statetMachineIndex < configMAXIMUM_NUMBER_OF_STATE_MACHINES ; statetMachineIndex++ )
   2687 0D                  634 	inc	r5
   2688 80 BE               635 	sjmp	00105$
   268A                     636 00104$:
                            637 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:109: return false ;
   268A C3                  638 	clr	c
   268B 22                  639 	ret
                            640 ;------------------------------------------------------------
                            641 ;Allocation info for local variables in function 'iterateAllStateMachines'
                            642 ;------------------------------------------------------------
                            643 ;statetMachineIndex        Allocated with name '_iterateAllStateMachines_statetMachineIndex_1_1'
                            644 ;------------------------------------------------------------
                            645 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:113: void iterateAllStateMachines(	void)
                            646 ;	-----------------------------------------
                            647 ;	 function iterateAllStateMachines
                            648 ;	-----------------------------------------
   268C                     649 _iterateAllStateMachines:
                            650 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:117: for( statetMachineIndex = 0 ; statetMachineIndex < configMAXIMUM_NUMBER_OF_STATE_MACHINES ; statetMachineIndex++ )
   268C 7A 00               651 	mov	r2,#0x00
   268E                     652 00103$:
   268E BA 32 00            653 	cjne	r2,#0x32,00113$
   2691                     654 00113$:
   2691 50 31               655 	jnc	00107$
                            656 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:119: if(stateMachines[statetMachineIndex] != NULL)
   2693 EA                  657 	mov	a,r2
   2694 75 F0 03            658 	mov	b,#0x03
   2697 A4                  659 	mul	ab
   2698 24 48               660 	add	a,#_stateMachines
   269A F5 82               661 	mov	dpl,a
   269C E4                  662 	clr	a
   269D 34 09               663 	addc	a,#(_stateMachines >> 8)
   269F F5 83               664 	mov	dph,a
   26A1 E0                  665 	movx	a,@dptr
   26A2 FB                  666 	mov	r3,a
   26A3 A3                  667 	inc	dptr
   26A4 E0                  668 	movx	a,@dptr
   26A5 FC                  669 	mov	r4,a
   26A6 A3                  670 	inc	dptr
   26A7 E0                  671 	movx	a,@dptr
   26A8 FD                  672 	mov	r5,a
   26A9 BB 00 08            673 	cjne	r3,#0x00,00115$
   26AC BC 00 05            674 	cjne	r4,#0x00,00115$
   26AF BD 00 02            675 	cjne	r5,#0x00,00115$
   26B2 80 0D               676 	sjmp	00105$
   26B4                     677 00115$:
                            678 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:121: iterateStateMachine(stateMachines[statetMachineIndex]) ;
   26B4 8B 82               679 	mov	dpl,r3
   26B6 8C 83               680 	mov	dph,r4
   26B8 8D F0               681 	mov	b,r5
   26BA C0 02               682 	push	ar2
   26BC 12 28 74            683 	lcall	_iterateStateMachine
   26BF D0 02               684 	pop	ar2
   26C1                     685 00105$:
                            686 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:117: for( statetMachineIndex = 0 ; statetMachineIndex < configMAXIMUM_NUMBER_OF_STATE_MACHINES ; statetMachineIndex++ )
   26C1 0A                  687 	inc	r2
   26C2 80 CA               688 	sjmp	00103$
   26C4                     689 00107$:
   26C4 22                  690 	ret
                            691 ;------------------------------------------------------------
                            692 ;Allocation info for local variables in function 'callStateHandler'
                            693 ;------------------------------------------------------------
                            694 ;sloc0                     Allocated with name '_callStateHandler_sloc0_1_0'
                            695 ;sloc1                     Allocated with name '_callStateHandler_sloc1_1_0'
                            696 ;state                     Allocated with name '_callStateHandler_PARM_2'
                            697 ;event                     Allocated with name '_callStateHandler_PARM_3'
                            698 ;sm                        Allocated with name '_callStateHandler_sm_1_1'
                            699 ;response                  Allocated with name '_callStateHandler_response_1_1'
                            700 ;------------------------------------------------------------
                            701 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:134: stateHandlerResponse_t callStateHandler(stateMachine_t* sm, state_t* state, event_t* event)
                            702 ;	-----------------------------------------
                            703 ;	 function callStateHandler
                            704 ;	-----------------------------------------
   26C5                     705 _callStateHandler:
   26C5 AA F0               706 	mov	r2,b
   26C7 AB 83               707 	mov	r3,dph
   26C9 E5 82               708 	mov	a,dpl
   26CB 90 09 F5            709 	mov	dptr,#_callStateHandler_sm_1_1
   26CE F0                  710 	movx	@dptr,a
   26CF A3                  711 	inc	dptr
   26D0 EB                  712 	mov	a,r3
   26D1 F0                  713 	movx	@dptr,a
   26D2 A3                  714 	inc	dptr
   26D3 EA                  715 	mov	a,r2
   26D4 F0                  716 	movx	@dptr,a
                            717 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:139: printf("\t\t\tCalling state: %s, event: %s, ", state->stateName, event->eventType <= SUBSTATE_EXIT ? eventTypes[event->eventType] : "<USER_EVENT>") ;
   26D5 90 09 F2            718 	mov	dptr,#_callStateHandler_PARM_3
   26D8 E0                  719 	movx	a,@dptr
   26D9 FA                  720 	mov	r2,a
   26DA A3                  721 	inc	dptr
   26DB E0                  722 	movx	a,@dptr
   26DC FB                  723 	mov	r3,a
   26DD A3                  724 	inc	dptr
   26DE E0                  725 	movx	a,@dptr
   26DF FC                  726 	mov	r4,a
   26E0 8A 82               727 	mov	dpl,r2
   26E2 8B 83               728 	mov	dph,r3
   26E4 8C F0               729 	mov	b,r4
   26E6 12 44 37            730 	lcall	__gptrget
   26E9 FD                  731 	mov	r5,a
   26EA C3                  732 	clr	c
   26EB 74 03               733 	mov	a,#0x03
   26ED 9D                  734 	subb	a,r5
   26EE B3                  735 	cpl	c
   26EF E4                  736 	clr	a
   26F0 33                  737 	rlc	a
   26F1 FE                  738 	mov	r6,a
   26F2 60 1B               739 	jz	00105$
   26F4 ED                  740 	mov	a,r5
   26F5 75 F0 03            741 	mov	b,#0x03
   26F8 A4                  742 	mul	ab
   26F9 24 E2               743 	add	a,#_eventTypes
   26FB F5 82               744 	mov	dpl,a
   26FD E4                  745 	clr	a
   26FE 34 0E               746 	addc	a,#(_eventTypes >> 8)
   2700 F5 83               747 	mov	dph,a
   2702 E0                  748 	movx	a,@dptr
   2703 F5 3A               749 	mov	_callStateHandler_sloc0_1_0,a
   2705 A3                  750 	inc	dptr
   2706 E0                  751 	movx	a,@dptr
   2707 F5 3B               752 	mov	(_callStateHandler_sloc0_1_0 + 1),a
   2709 A3                  753 	inc	dptr
   270A E0                  754 	movx	a,@dptr
   270B F5 3C               755 	mov	(_callStateHandler_sloc0_1_0 + 2),a
   270D 80 09               756 	sjmp	00106$
   270F                     757 00105$:
   270F 75 3A 3F            758 	mov	_callStateHandler_sloc0_1_0,#__str_1
   2712 75 3B 48            759 	mov	(_callStateHandler_sloc0_1_0 + 1),#(__str_1 >> 8)
   2715 75 3C 80            760 	mov	(_callStateHandler_sloc0_1_0 + 2),#0x80
   2718                     761 00106$:
   2718 90 09 EF            762 	mov	dptr,#_callStateHandler_PARM_2
   271B E0                  763 	movx	a,@dptr
   271C F5 3D               764 	mov	_callStateHandler_sloc1_1_0,a
   271E A3                  765 	inc	dptr
   271F E0                  766 	movx	a,@dptr
   2720 F5 3E               767 	mov	(_callStateHandler_sloc1_1_0 + 1),a
   2722 A3                  768 	inc	dptr
   2723 E0                  769 	movx	a,@dptr
   2724 F5 3F               770 	mov	(_callStateHandler_sloc1_1_0 + 2),a
   2726 74 06               771 	mov	a,#0x06
   2728 25 3D               772 	add	a,_callStateHandler_sloc1_1_0
   272A FE                  773 	mov	r6,a
   272B E4                  774 	clr	a
   272C 35 3E               775 	addc	a,(_callStateHandler_sloc1_1_0 + 1)
   272E FF                  776 	mov	r7,a
   272F AD 3F               777 	mov	r5,(_callStateHandler_sloc1_1_0 + 2)
   2731 8E 82               778 	mov	dpl,r6
   2733 8F 83               779 	mov	dph,r7
   2735 8D F0               780 	mov	b,r5
   2737 12 44 37            781 	lcall	__gptrget
   273A FE                  782 	mov	r6,a
   273B A3                  783 	inc	dptr
   273C 12 44 37            784 	lcall	__gptrget
   273F FF                  785 	mov	r7,a
   2740 A3                  786 	inc	dptr
   2741 12 44 37            787 	lcall	__gptrget
   2744 FD                  788 	mov	r5,a
   2745 C0 02               789 	push	ar2
   2747 C0 03               790 	push	ar3
   2749 C0 04               791 	push	ar4
   274B C0 3A               792 	push	_callStateHandler_sloc0_1_0
   274D C0 3B               793 	push	(_callStateHandler_sloc0_1_0 + 1)
   274F C0 3C               794 	push	(_callStateHandler_sloc0_1_0 + 2)
   2751 C0 06               795 	push	ar6
   2753 C0 07               796 	push	ar7
   2755 C0 05               797 	push	ar5
   2757 74 1D               798 	mov	a,#__str_0
   2759 C0 E0               799 	push	acc
   275B 74 48               800 	mov	a,#(__str_0 >> 8)
   275D C0 E0               801 	push	acc
   275F 74 80               802 	mov	a,#0x80
   2761 C0 E0               803 	push	acc
   2763 12 3B EB            804 	lcall	_printf
   2766 E5 81               805 	mov	a,sp
   2768 24 F7               806 	add	a,#0xf7
   276A F5 81               807 	mov	sp,a
   276C D0 04               808 	pop	ar4
   276E D0 03               809 	pop	ar3
   2770 D0 02               810 	pop	ar2
                            811 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:142: response = ((callStateHandler_t)(state->handler))(sm, event) ;
   2772 74 04               812 	mov	a,#0x04
   2774 25 3D               813 	add	a,_callStateHandler_sloc1_1_0
   2776 FD                  814 	mov	r5,a
   2777 E4                  815 	clr	a
   2778 35 3E               816 	addc	a,(_callStateHandler_sloc1_1_0 + 1)
   277A FE                  817 	mov	r6,a
   277B AF 3F               818 	mov	r7,(_callStateHandler_sloc1_1_0 + 2)
   277D 8D 82               819 	mov	dpl,r5
   277F 8E 83               820 	mov	dph,r6
   2781 8F F0               821 	mov	b,r7
   2783 12 44 37            822 	lcall	__gptrget
   2786 FD                  823 	mov	r5,a
   2787 A3                  824 	inc	dptr
   2788 12 44 37            825 	lcall	__gptrget
   278B FE                  826 	mov	r6,a
   278C 90 09 F5            827 	mov	dptr,#_callStateHandler_sm_1_1
   278F E0                  828 	movx	a,@dptr
   2790 FF                  829 	mov	r7,a
   2791 A3                  830 	inc	dptr
   2792 E0                  831 	movx	a,@dptr
   2793 F8                  832 	mov	r0,a
   2794 A3                  833 	inc	dptr
   2795 E0                  834 	movx	a,@dptr
   2796 F9                  835 	mov	r1,a
   2797 C0 05               836 	push	ar5
   2799 C0 06               837 	push	ar6
   279B C0 02               838 	push	ar2
   279D C0 03               839 	push	ar3
   279F C0 04               840 	push	ar4
   27A1 74 B4               841 	mov	a,#00111$
   27A3 C0 E0               842 	push	acc
   27A5 74 27               843 	mov	a,#(00111$ >> 8)
   27A7 C0 E0               844 	push	acc
   27A9 C0 05               845 	push	ar5
   27AB C0 06               846 	push	ar6
   27AD 8F 82               847 	mov	dpl,r7
   27AF 88 83               848 	mov	dph,r0
   27B1 89 F0               849 	mov	b,r1
   27B3 22                  850 	ret
   27B4                     851 00111$:
   27B4 AA 82               852 	mov	r2,dpl
   27B6 15 81               853 	dec	sp
   27B8 15 81               854 	dec	sp
   27BA 15 81               855 	dec	sp
   27BC D0 06               856 	pop	ar6
   27BE D0 05               857 	pop	ar5
                            858 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:145: printf("response: %s ", responseTypes[response]) ;
   27C0 EA                  859 	mov	a,r2
   27C1 75 F0 03            860 	mov	b,#0x03
   27C4 A4                  861 	mul	ab
   27C5 24 EE               862 	add	a,#_responseTypes
   27C7 F5 82               863 	mov	dpl,a
   27C9 E4                  864 	clr	a
   27CA 34 0E               865 	addc	a,#(_responseTypes >> 8)
   27CC F5 83               866 	mov	dph,a
   27CE E0                  867 	movx	a,@dptr
   27CF FB                  868 	mov	r3,a
   27D0 A3                  869 	inc	dptr
   27D1 E0                  870 	movx	a,@dptr
   27D2 FC                  871 	mov	r4,a
   27D3 A3                  872 	inc	dptr
   27D4 E0                  873 	movx	a,@dptr
   27D5 FD                  874 	mov	r5,a
   27D6 C0 02               875 	push	ar2
   27D8 C0 03               876 	push	ar3
   27DA C0 04               877 	push	ar4
   27DC C0 05               878 	push	ar5
   27DE 74 4C               879 	mov	a,#__str_2
   27E0 C0 E0               880 	push	acc
   27E2 74 48               881 	mov	a,#(__str_2 >> 8)
   27E4 C0 E0               882 	push	acc
   27E6 74 80               883 	mov	a,#0x80
   27E8 C0 E0               884 	push	acc
   27EA 12 3B EB            885 	lcall	_printf
   27ED E5 81               886 	mov	a,sp
   27EF 24 FA               887 	add	a,#0xfa
   27F1 F5 81               888 	mov	sp,a
   27F3 D0 02               889 	pop	ar2
                            890 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:148: if(response == TRANSITION)
   27F5 BA 02 60            891 	cjne	r2,#0x02,00102$
                            892 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:151: printf("to %s ", ((state_t*)(sm->nextState))->stateName) ;
   27F8 90 09 F5            893 	mov	dptr,#_callStateHandler_sm_1_1
   27FB E0                  894 	movx	a,@dptr
   27FC FB                  895 	mov	r3,a
   27FD A3                  896 	inc	dptr
   27FE E0                  897 	movx	a,@dptr
   27FF FC                  898 	mov	r4,a
   2800 A3                  899 	inc	dptr
   2801 E0                  900 	movx	a,@dptr
   2802 FD                  901 	mov	r5,a
   2803 74 09               902 	mov	a,#0x09
   2805 2B                  903 	add	a,r3
   2806 FB                  904 	mov	r3,a
   2807 E4                  905 	clr	a
   2808 3C                  906 	addc	a,r4
   2809 FC                  907 	mov	r4,a
   280A 8B 82               908 	mov	dpl,r3
   280C 8C 83               909 	mov	dph,r4
   280E 8D F0               910 	mov	b,r5
   2810 12 44 37            911 	lcall	__gptrget
   2813 FB                  912 	mov	r3,a
   2814 A3                  913 	inc	dptr
   2815 12 44 37            914 	lcall	__gptrget
   2818 FC                  915 	mov	r4,a
   2819 A3                  916 	inc	dptr
   281A 12 44 37            917 	lcall	__gptrget
   281D FD                  918 	mov	r5,a
   281E 74 06               919 	mov	a,#0x06
   2820 2B                  920 	add	a,r3
   2821 FB                  921 	mov	r3,a
   2822 E4                  922 	clr	a
   2823 3C                  923 	addc	a,r4
   2824 FC                  924 	mov	r4,a
   2825 8B 82               925 	mov	dpl,r3
   2827 8C 83               926 	mov	dph,r4
   2829 8D F0               927 	mov	b,r5
   282B 12 44 37            928 	lcall	__gptrget
   282E FB                  929 	mov	r3,a
   282F A3                  930 	inc	dptr
   2830 12 44 37            931 	lcall	__gptrget
   2833 FC                  932 	mov	r4,a
   2834 A3                  933 	inc	dptr
   2835 12 44 37            934 	lcall	__gptrget
   2838 FD                  935 	mov	r5,a
   2839 C0 02               936 	push	ar2
   283B C0 03               937 	push	ar3
   283D C0 04               938 	push	ar4
   283F C0 05               939 	push	ar5
   2841 74 5A               940 	mov	a,#__str_3
   2843 C0 E0               941 	push	acc
   2845 74 48               942 	mov	a,#(__str_3 >> 8)
   2847 C0 E0               943 	push	acc
   2849 74 80               944 	mov	a,#0x80
   284B C0 E0               945 	push	acc
   284D 12 3B EB            946 	lcall	_printf
   2850 E5 81               947 	mov	a,sp
   2852 24 FA               948 	add	a,#0xfa
   2854 F5 81               949 	mov	sp,a
   2856 D0 02               950 	pop	ar2
   2858                     951 00102$:
                            952 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:156: printf("\n") ;
   2858 C0 02               953 	push	ar2
   285A 74 61               954 	mov	a,#__str_4
   285C C0 E0               955 	push	acc
   285E 74 48               956 	mov	a,#(__str_4 >> 8)
   2860 C0 E0               957 	push	acc
   2862 74 80               958 	mov	a,#0x80
   2864 C0 E0               959 	push	acc
   2866 12 3B EB            960 	lcall	_printf
   2869 15 81               961 	dec	sp
   286B 15 81               962 	dec	sp
   286D 15 81               963 	dec	sp
   286F D0 02               964 	pop	ar2
                            965 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:159: return response ;
   2871 8A 82               966 	mov	dpl,r2
   2873 22                  967 	ret
                            968 ;------------------------------------------------------------
                            969 ;Allocation info for local variables in function 'iterateStateMachine'
                            970 ;------------------------------------------------------------
                            971 ;sloc0                     Allocated with name '_iterateStateMachine_sloc0_1_0'
                            972 ;sloc1                     Allocated with name '_iterateStateMachine_sloc1_1_0'
                            973 ;sloc2                     Allocated with name '_iterateStateMachine_sloc2_1_0'
                            974 ;sloc3                     Allocated with name '_iterateStateMachine_sloc3_1_0'
                            975 ;sloc4                     Allocated with name '_iterateStateMachine_sloc4_1_0'
                            976 ;sm                        Allocated with name '_iterateStateMachine_sm_1_1'
                            977 ;eventToProcess            Allocated with name '_iterateStateMachine_eventToProcess_2_3'
                            978 ;stateBeingProcessed       Allocated with name '_iterateStateMachine_stateBeingProcessed_2_3'
                            979 ;action                    Allocated with name '_iterateStateMachine_action_2_3'
                            980 ;source                    Allocated with name '_iterateStateMachine_source_3_9'
                            981 ;target                    Allocated with name '_iterateStateMachine_target_3_9'
                            982 ;sourceHierarchy           Allocated with name '_iterateStateMachine_sourceHierarchy_4_14'
                            983 ;sourceIndex               Allocated with name '_iterateStateMachine_sourceIndex_4_14'
                            984 ;targetHierarchy           Allocated with name '_iterateStateMachine_targetHierarchy_4_14'
                            985 ;targetIndex               Allocated with name '_iterateStateMachine_targetIndex_4_14'
                            986 ;LCA                       Allocated with name '_iterateStateMachine_LCA_4_14'
                            987 ;entryIndex                Allocated with name '_iterateStateMachine_entryIndex_4_14'
                            988 ;exitIndex                 Allocated with name '_iterateStateMachine_exitIndex_4_14'
                            989 ;exitIndex                 Allocated with name '_iterateStateMachine_exitIndex_6_16'
                            990 ;LCAindex                  Allocated with name '_iterateStateMachine_LCAindex_5_22'
                            991 ;------------------------------------------------------------
                            992 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:163: void iterateStateMachine(	stateMachine_t* sm)
                            993 ;	-----------------------------------------
                            994 ;	 function iterateStateMachine
                            995 ;	-----------------------------------------
   2874                     996 _iterateStateMachine:
   2874 AA F0               997 	mov	r2,b
   2876 AB 83               998 	mov	r3,dph
   2878 E5 82               999 	mov	a,dpl
   287A 90 09 F8           1000 	mov	dptr,#_iterateStateMachine_sm_1_1
   287D F0                 1001 	movx	@dptr,a
   287E A3                 1002 	inc	dptr
   287F EB                 1003 	mov	a,r3
   2880 F0                 1004 	movx	@dptr,a
   2881 A3                 1005 	inc	dptr
   2882 EA                 1006 	mov	a,r2
   2883 F0                 1007 	movx	@dptr,a
                           1008 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:166: printf("\titerating %s\n", sm->stateMachineName) ;
   2884 90 09 F8           1009 	mov	dptr,#_iterateStateMachine_sm_1_1
   2887 E0                 1010 	movx	a,@dptr
   2888 FA                 1011 	mov	r2,a
   2889 A3                 1012 	inc	dptr
   288A E0                 1013 	movx	a,@dptr
   288B FB                 1014 	mov	r3,a
   288C A3                 1015 	inc	dptr
   288D E0                 1016 	movx	a,@dptr
   288E FC                 1017 	mov	r4,a
   288F 74 03              1018 	mov	a,#0x03
   2891 2A                 1019 	add	a,r2
   2892 FD                 1020 	mov	r5,a
   2893 E4                 1021 	clr	a
   2894 3B                 1022 	addc	a,r3
   2895 FE                 1023 	mov	r6,a
   2896 8C 07              1024 	mov	ar7,r4
   2898 8D 82              1025 	mov	dpl,r5
   289A 8E 83              1026 	mov	dph,r6
   289C 8F F0              1027 	mov	b,r7
   289E 12 44 37           1028 	lcall	__gptrget
   28A1 FD                 1029 	mov	r5,a
   28A2 A3                 1030 	inc	dptr
   28A3 12 44 37           1031 	lcall	__gptrget
   28A6 FE                 1032 	mov	r6,a
   28A7 A3                 1033 	inc	dptr
   28A8 12 44 37           1034 	lcall	__gptrget
   28AB FF                 1035 	mov	r7,a
   28AC C0 02              1036 	push	ar2
   28AE C0 03              1037 	push	ar3
   28B0 C0 04              1038 	push	ar4
   28B2 C0 05              1039 	push	ar5
   28B4 C0 06              1040 	push	ar6
   28B6 C0 07              1041 	push	ar7
   28B8 74 63              1042 	mov	a,#__str_5
   28BA C0 E0              1043 	push	acc
   28BC 74 48              1044 	mov	a,#(__str_5 >> 8)
   28BE C0 E0              1045 	push	acc
   28C0 74 80              1046 	mov	a,#0x80
   28C2 C0 E0              1047 	push	acc
   28C4 12 3B EB           1048 	lcall	_printf
   28C7 E5 81              1049 	mov	a,sp
   28C9 24 FA              1050 	add	a,#0xfa
   28CB F5 81              1051 	mov	sp,a
   28CD D0 04              1052 	pop	ar4
   28CF D0 03              1053 	pop	ar3
   28D1 D0 02              1054 	pop	ar2
                           1055 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:171: if(!sm->stateMachineInitialized)
   28D3 74 13              1056 	mov	a,#0x13
   28D5 2A                 1057 	add	a,r2
   28D6 FD                 1058 	mov	r5,a
   28D7 E4                 1059 	clr	a
   28D8 3B                 1060 	addc	a,r3
   28D9 FE                 1061 	mov	r6,a
   28DA 8C 07              1062 	mov	ar7,r4
   28DC 8D 82              1063 	mov	dpl,r5
   28DE 8E 83              1064 	mov	dph,r6
   28E0 8F F0              1065 	mov	b,r7
   28E2 12 44 37           1066 	lcall	__gptrget
   28E5 60 03              1067 	jz	00196$
   28E7 02 29 90           1068 	ljmp	00102$
   28EA                    1069 00196$:
                           1070 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:174: printf("\t\tinitializing...\n") ;
   28EA C0 02              1071 	push	ar2
   28EC C0 03              1072 	push	ar3
   28EE C0 04              1073 	push	ar4
   28F0 74 72              1074 	mov	a,#__str_6
   28F2 C0 E0              1075 	push	acc
   28F4 74 48              1076 	mov	a,#(__str_6 >> 8)
   28F6 C0 E0              1077 	push	acc
   28F8 74 80              1078 	mov	a,#0x80
   28FA C0 E0              1079 	push	acc
   28FC 12 3B EB           1080 	lcall	_printf
   28FF 15 81              1081 	dec	sp
   2901 15 81              1082 	dec	sp
   2903 15 81              1083 	dec	sp
   2905 D0 04              1084 	pop	ar4
   2907 D0 03              1085 	pop	ar3
   2909 D0 02              1086 	pop	ar2
                           1087 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:177: sm->currentState = (state_t*)sm->topState ;
   290B 74 06              1088 	mov	a,#0x06
   290D 2A                 1089 	add	a,r2
   290E F5 40              1090 	mov	_iterateStateMachine_sloc0_1_0,a
   2910 E4                 1091 	clr	a
   2911 3B                 1092 	addc	a,r3
   2912 F5 41              1093 	mov	(_iterateStateMachine_sloc0_1_0 + 1),a
   2914 8C 42              1094 	mov	(_iterateStateMachine_sloc0_1_0 + 2),r4
   2916 8A 82              1095 	mov	dpl,r2
   2918 8B 83              1096 	mov	dph,r3
   291A 8C F0              1097 	mov	b,r4
   291C 12 44 37           1098 	lcall	__gptrget
   291F F8                 1099 	mov	r0,a
   2920 A3                 1100 	inc	dptr
   2921 12 44 37           1101 	lcall	__gptrget
   2924 F9                 1102 	mov	r1,a
   2925 7D 80              1103 	mov	r5,#0x80
   2927 85 40 82           1104 	mov	dpl,_iterateStateMachine_sloc0_1_0
   292A 85 41 83           1105 	mov	dph,(_iterateStateMachine_sloc0_1_0 + 1)
   292D 85 42 F0           1106 	mov	b,(_iterateStateMachine_sloc0_1_0 + 2)
   2930 E8                 1107 	mov	a,r0
   2931 12 38 0B           1108 	lcall	__gptrput
   2934 A3                 1109 	inc	dptr
   2935 E9                 1110 	mov	a,r1
   2936 12 38 0B           1111 	lcall	__gptrput
   2939 A3                 1112 	inc	dptr
   293A ED                 1113 	mov	a,r5
   293B 12 38 0B           1114 	lcall	__gptrput
                           1115 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:179: callStateHandler(sm, sm->currentState, &enterEvent) ;
   293E 90 09 EF           1116 	mov	dptr,#_callStateHandler_PARM_2
   2941 E8                 1117 	mov	a,r0
   2942 F0                 1118 	movx	@dptr,a
   2943 A3                 1119 	inc	dptr
   2944 E9                 1120 	mov	a,r1
   2945 F0                 1121 	movx	@dptr,a
   2946 A3                 1122 	inc	dptr
   2947 ED                 1123 	mov	a,r5
   2948 F0                 1124 	movx	@dptr,a
   2949 90 09 F2           1125 	mov	dptr,#_callStateHandler_PARM_3
   294C 74 F8              1126 	mov	a,#_enterEvent
   294E F0                 1127 	movx	@dptr,a
   294F A3                 1128 	inc	dptr
   2950 74 0E              1129 	mov	a,#(_enterEvent >> 8)
   2952 F0                 1130 	movx	@dptr,a
   2953 A3                 1131 	inc	dptr
   2954 E4                 1132 	clr	a
   2955 F0                 1133 	movx	@dptr,a
   2956 8A 82              1134 	mov	dpl,r2
   2958 8B 83              1135 	mov	dph,r3
   295A 8C F0              1136 	mov	b,r4
   295C 12 26 C5           1137 	lcall	_callStateHandler
                           1138 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:181: sm->stateMachineInitialized	= true ;
   295F 90 09 F8           1139 	mov	dptr,#_iterateStateMachine_sm_1_1
   2962 E0                 1140 	movx	a,@dptr
   2963 FA                 1141 	mov	r2,a
   2964 A3                 1142 	inc	dptr
   2965 E0                 1143 	movx	a,@dptr
   2966 FB                 1144 	mov	r3,a
   2967 A3                 1145 	inc	dptr
   2968 E0                 1146 	movx	a,@dptr
   2969 FC                 1147 	mov	r4,a
   296A 74 13              1148 	mov	a,#0x13
   296C 2A                 1149 	add	a,r2
   296D FD                 1150 	mov	r5,a
   296E E4                 1151 	clr	a
   296F 3B                 1152 	addc	a,r3
   2970 FE                 1153 	mov	r6,a
   2971 8C 07              1154 	mov	ar7,r4
   2973 8D 82              1155 	mov	dpl,r5
   2975 8E 83              1156 	mov	dph,r6
   2977 8F F0              1157 	mov	b,r7
   2979 74 01              1158 	mov	a,#0x01
   297B 12 38 0B           1159 	lcall	__gptrput
                           1160 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:182: sm->forceTransition			= true ;
   297E 74 14              1161 	mov	a,#0x14
   2980 2A                 1162 	add	a,r2
   2981 FA                 1163 	mov	r2,a
   2982 E4                 1164 	clr	a
   2983 3B                 1165 	addc	a,r3
   2984 FB                 1166 	mov	r3,a
   2985 8A 82              1167 	mov	dpl,r2
   2987 8B 83              1168 	mov	dph,r3
   2989 8C F0              1169 	mov	b,r4
   298B 74 01              1170 	mov	a,#0x01
   298D 12 38 0B           1171 	lcall	__gptrput
   2990                    1172 00102$:
                           1173 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:187: if((!isEmpty(&sm->eventQueue)) || (sm->forceTransition))
   2990 90 09 F8           1174 	mov	dptr,#_iterateStateMachine_sm_1_1
   2993 E0                 1175 	movx	a,@dptr
   2994 FA                 1176 	mov	r2,a
   2995 A3                 1177 	inc	dptr
   2996 E0                 1178 	movx	a,@dptr
   2997 FB                 1179 	mov	r3,a
   2998 A3                 1180 	inc	dptr
   2999 E0                 1181 	movx	a,@dptr
   299A FC                 1182 	mov	r4,a
   299B 74 0C              1183 	mov	a,#0x0C
   299D 2A                 1184 	add	a,r2
   299E FD                 1185 	mov	r5,a
   299F E4                 1186 	clr	a
   29A0 3B                 1187 	addc	a,r3
   29A1 FE                 1188 	mov	r6,a
   29A2 8C 07              1189 	mov	ar7,r4
   29A4 8D 82              1190 	mov	dpl,r5
   29A6 8E 83              1191 	mov	dph,r6
   29A8 8F F0              1192 	mov	b,r7
   29AA C0 02              1193 	push	ar2
   29AC C0 03              1194 	push	ar3
   29AE C0 04              1195 	push	ar4
   29B0 12 20 69           1196 	lcall	_isEmpty
   29B3 E5 82              1197 	mov	a,dpl
   29B5 D0 04              1198 	pop	ar4
   29B7 D0 03              1199 	pop	ar3
   29B9 D0 02              1200 	pop	ar2
   29BB 60 15              1201 	jz	00156$
   29BD 74 14              1202 	mov	a,#0x14
   29BF 2A                 1203 	add	a,r2
   29C0 FA                 1204 	mov	r2,a
   29C1 E4                 1205 	clr	a
   29C2 3B                 1206 	addc	a,r3
   29C3 FB                 1207 	mov	r3,a
   29C4 8A 82              1208 	mov	dpl,r2
   29C6 8B 83              1209 	mov	dph,r3
   29C8 8C F0              1210 	mov	b,r4
   29CA 12 44 37           1211 	lcall	__gptrget
   29CD 70 03              1212 	jnz	00198$
   29CF 02 35 22           1213 	ljmp	00157$
   29D2                    1214 00198$:
   29D2                    1215 00156$:
                           1216 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:190: state_t*				stateBeingProcessed	= sm->currentState ;
   29D2 90 09 F8           1217 	mov	dptr,#_iterateStateMachine_sm_1_1
   29D5 E0                 1218 	movx	a,@dptr
   29D6 FA                 1219 	mov	r2,a
   29D7 A3                 1220 	inc	dptr
   29D8 E0                 1221 	movx	a,@dptr
   29D9 FB                 1222 	mov	r3,a
   29DA A3                 1223 	inc	dptr
   29DB E0                 1224 	movx	a,@dptr
   29DC FC                 1225 	mov	r4,a
   29DD 74 06              1226 	mov	a,#0x06
   29DF 2A                 1227 	add	a,r2
   29E0 FD                 1228 	mov	r5,a
   29E1 E4                 1229 	clr	a
   29E2 3B                 1230 	addc	a,r3
   29E3 FE                 1231 	mov	r6,a
   29E4 8C 07              1232 	mov	ar7,r4
   29E6 8D 82              1233 	mov	dpl,r5
   29E8 8E 83              1234 	mov	dph,r6
   29EA 8F F0              1235 	mov	b,r7
   29EC 12 44 37           1236 	lcall	__gptrget
   29EF FD                 1237 	mov	r5,a
   29F0 A3                 1238 	inc	dptr
   29F1 12 44 37           1239 	lcall	__gptrget
   29F4 FE                 1240 	mov	r6,a
   29F5 A3                 1241 	inc	dptr
   29F6 12 44 37           1242 	lcall	__gptrget
   29F9 FF                 1243 	mov	r7,a
   29FA 90 09 FE           1244 	mov	dptr,#_iterateStateMachine_stateBeingProcessed_2_3
   29FD ED                 1245 	mov	a,r5
   29FE F0                 1246 	movx	@dptr,a
   29FF A3                 1247 	inc	dptr
   2A00 EE                 1248 	mov	a,r6
   2A01 F0                 1249 	movx	@dptr,a
   2A02 A3                 1250 	inc	dptr
   2A03 EF                 1251 	mov	a,r7
   2A04 F0                 1252 	movx	@dptr,a
                           1253 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:193: if(sm->forceTransition)
   2A05 74 14              1254 	mov	a,#0x14
   2A07 2A                 1255 	add	a,r2
   2A08 FD                 1256 	mov	r5,a
   2A09 E4                 1257 	clr	a
   2A0A 3B                 1258 	addc	a,r3
   2A0B FE                 1259 	mov	r6,a
   2A0C 8C 07              1260 	mov	ar7,r4
   2A0E 8D 82              1261 	mov	dpl,r5
   2A10 8E 83              1262 	mov	dph,r6
   2A12 8F F0              1263 	mov	b,r7
   2A14 12 44 37           1264 	lcall	__gptrget
   2A17 60 19              1265 	jz	00104$
                           1266 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:195: sm->forceTransition	= false ;
   2A19 8D 82              1267 	mov	dpl,r5
   2A1B 8E 83              1268 	mov	dph,r6
   2A1D 8F F0              1269 	mov	b,r7
   2A1F E4                 1270 	clr	a
   2A20 12 38 0B           1271 	lcall	__gptrput
                           1272 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:196: eventToProcess		= &initialTransitionEvent ;
   2A23 90 09 FB           1273 	mov	dptr,#_iterateStateMachine_eventToProcess_2_3
   2A26 74 F7              1274 	mov	a,#_initialTransitionEvent
   2A28 F0                 1275 	movx	@dptr,a
   2A29 A3                 1276 	inc	dptr
   2A2A 74 0E              1277 	mov	a,#(_initialTransitionEvent >> 8)
   2A2C F0                 1278 	movx	@dptr,a
   2A2D A3                 1279 	inc	dptr
   2A2E E4                 1280 	clr	a
   2A2F F0                 1281 	movx	@dptr,a
   2A30 80 21              1282 	sjmp	00105$
   2A32                    1283 00104$:
                           1284 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:200: eventToProcess = Remove(&sm->eventQueue) ; ;
   2A32 74 0C              1285 	mov	a,#0x0C
   2A34 2A                 1286 	add	a,r2
   2A35 FA                 1287 	mov	r2,a
   2A36 E4                 1288 	clr	a
   2A37 3B                 1289 	addc	a,r3
   2A38 FB                 1290 	mov	r3,a
   2A39 8A 82              1291 	mov	dpl,r2
   2A3B 8B 83              1292 	mov	dph,r3
   2A3D 8C F0              1293 	mov	b,r4
   2A3F 12 23 4D           1294 	lcall	_Remove
   2A42 AA 82              1295 	mov	r2,dpl
   2A44 AB 83              1296 	mov	r3,dph
   2A46 AC F0              1297 	mov	r4,b
   2A48 90 09 FB           1298 	mov	dptr,#_iterateStateMachine_eventToProcess_2_3
   2A4B EA                 1299 	mov	a,r2
   2A4C F0                 1300 	movx	@dptr,a
   2A4D A3                 1301 	inc	dptr
   2A4E EB                 1302 	mov	a,r3
   2A4F F0                 1303 	movx	@dptr,a
   2A50 A3                 1304 	inc	dptr
   2A51 EC                 1305 	mov	a,r4
   2A52 F0                 1306 	movx	@dptr,a
   2A53                    1307 00105$:
                           1308 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:203: sm->nextState = (state_t*)0 ;	/* just a little housecleaning */
   2A53 90 09 F8           1309 	mov	dptr,#_iterateStateMachine_sm_1_1
   2A56 E0                 1310 	movx	a,@dptr
   2A57 FA                 1311 	mov	r2,a
   2A58 A3                 1312 	inc	dptr
   2A59 E0                 1313 	movx	a,@dptr
   2A5A FB                 1314 	mov	r3,a
   2A5B A3                 1315 	inc	dptr
   2A5C E0                 1316 	movx	a,@dptr
   2A5D FC                 1317 	mov	r4,a
   2A5E 74 09              1318 	mov	a,#0x09
   2A60 2A                 1319 	add	a,r2
   2A61 FA                 1320 	mov	r2,a
   2A62 E4                 1321 	clr	a
   2A63 3B                 1322 	addc	a,r3
   2A64 FB                 1323 	mov	r3,a
   2A65 8A 82              1324 	mov	dpl,r2
   2A67 8B 83              1325 	mov	dph,r3
   2A69 8C F0              1326 	mov	b,r4
   2A6B E4                 1327 	clr	a
   2A6C 12 38 0B           1328 	lcall	__gptrput
   2A6F A3                 1329 	inc	dptr
   2A70 E4                 1330 	clr	a
   2A71 12 38 0B           1331 	lcall	__gptrput
   2A74 A3                 1332 	inc	dptr
   2A75 E4                 1333 	clr	a
   2A76 12 38 0B           1334 	lcall	__gptrput
                           1335 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:206: printf("\t\tProcessing event...\n") ;
   2A79 74 85              1336 	mov	a,#__str_7
   2A7B C0 E0              1337 	push	acc
   2A7D 74 48              1338 	mov	a,#(__str_7 >> 8)
   2A7F C0 E0              1339 	push	acc
   2A81 74 80              1340 	mov	a,#0x80
   2A83 C0 E0              1341 	push	acc
   2A85 12 3B EB           1342 	lcall	_printf
   2A88 15 81              1343 	dec	sp
   2A8A 15 81              1344 	dec	sp
   2A8C 15 81              1345 	dec	sp
                           1346 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:215: do
   2A8E 90 09 FB           1347 	mov	dptr,#_iterateStateMachine_eventToProcess_2_3
   2A91 E0                 1348 	movx	a,@dptr
   2A92 FA                 1349 	mov	r2,a
   2A93 A3                 1350 	inc	dptr
   2A94 E0                 1351 	movx	a,@dptr
   2A95 FB                 1352 	mov	r3,a
   2A96 A3                 1353 	inc	dptr
   2A97 E0                 1354 	movx	a,@dptr
   2A98 FC                 1355 	mov	r4,a
   2A99                    1356 00110$:
                           1357 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:217: action = callStateHandler(sm, stateBeingProcessed, eventToProcess) ;
   2A99 C0 02              1358 	push	ar2
   2A9B C0 03              1359 	push	ar3
   2A9D C0 04              1360 	push	ar4
   2A9F 90 09 F8           1361 	mov	dptr,#_iterateStateMachine_sm_1_1
   2AA2 E0                 1362 	movx	a,@dptr
   2AA3 FD                 1363 	mov	r5,a
   2AA4 A3                 1364 	inc	dptr
   2AA5 E0                 1365 	movx	a,@dptr
   2AA6 FE                 1366 	mov	r6,a
   2AA7 A3                 1367 	inc	dptr
   2AA8 E0                 1368 	movx	a,@dptr
   2AA9 FF                 1369 	mov	r7,a
   2AAA 90 09 FE           1370 	mov	dptr,#_iterateStateMachine_stateBeingProcessed_2_3
   2AAD E0                 1371 	movx	a,@dptr
   2AAE F5 40              1372 	mov	_iterateStateMachine_sloc0_1_0,a
   2AB0 A3                 1373 	inc	dptr
   2AB1 E0                 1374 	movx	a,@dptr
   2AB2 F5 41              1375 	mov	(_iterateStateMachine_sloc0_1_0 + 1),a
   2AB4 A3                 1376 	inc	dptr
   2AB5 E0                 1377 	movx	a,@dptr
   2AB6 F5 42              1378 	mov	(_iterateStateMachine_sloc0_1_0 + 2),a
   2AB8 90 09 FB           1379 	mov	dptr,#_iterateStateMachine_eventToProcess_2_3
   2ABB E0                 1380 	movx	a,@dptr
   2ABC FB                 1381 	mov	r3,a
   2ABD A3                 1382 	inc	dptr
   2ABE E0                 1383 	movx	a,@dptr
   2ABF FC                 1384 	mov	r4,a
   2AC0 A3                 1385 	inc	dptr
   2AC1 E0                 1386 	movx	a,@dptr
   2AC2 FA                 1387 	mov	r2,a
   2AC3 90 09 EF           1388 	mov	dptr,#_callStateHandler_PARM_2
   2AC6 E5 40              1389 	mov	a,_iterateStateMachine_sloc0_1_0
   2AC8 F0                 1390 	movx	@dptr,a
   2AC9 A3                 1391 	inc	dptr
   2ACA E5 41              1392 	mov	a,(_iterateStateMachine_sloc0_1_0 + 1)
   2ACC F0                 1393 	movx	@dptr,a
   2ACD A3                 1394 	inc	dptr
   2ACE E5 42              1395 	mov	a,(_iterateStateMachine_sloc0_1_0 + 2)
   2AD0 F0                 1396 	movx	@dptr,a
   2AD1 90 09 F2           1397 	mov	dptr,#_callStateHandler_PARM_3
   2AD4 EB                 1398 	mov	a,r3
   2AD5 F0                 1399 	movx	@dptr,a
   2AD6 A3                 1400 	inc	dptr
   2AD7 EC                 1401 	mov	a,r4
   2AD8 F0                 1402 	movx	@dptr,a
   2AD9 A3                 1403 	inc	dptr
   2ADA EA                 1404 	mov	a,r2
   2ADB F0                 1405 	movx	@dptr,a
   2ADC 8D 82              1406 	mov	dpl,r5
   2ADE 8E 83              1407 	mov	dph,r6
   2AE0 8F F0              1408 	mov	b,r7
   2AE2 C0 02              1409 	push	ar2
   2AE4 C0 03              1410 	push	ar3
   2AE6 C0 04              1411 	push	ar4
   2AE8 12 26 C5           1412 	lcall	_callStateHandler
   2AEB 85 82 40           1413 	mov	_iterateStateMachine_sloc0_1_0,dpl
   2AEE D0 04              1414 	pop	ar4
   2AF0 D0 03              1415 	pop	ar3
   2AF2 D0 02              1416 	pop	ar2
                           1417 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:219: if((action == IGNORED) && (eventToProcess->eventType > SUBSTATE_EXIT))
   2AF4 D0 04              1418 	pop	ar4
   2AF6 D0 03              1419 	pop	ar3
   2AF8 D0 02              1420 	pop	ar2
   2AFA E5 40              1421 	mov	a,_iterateStateMachine_sloc0_1_0
   2AFC 60 03              1422 	jz	00200$
   2AFE 02 2B A9           1423 	ljmp	00112$
   2B01                    1424 00200$:
   2B01 8A 82              1425 	mov	dpl,r2
   2B03 8B 83              1426 	mov	dph,r3
   2B05 8C F0              1427 	mov	b,r4
   2B07 12 44 37           1428 	lcall	__gptrget
   2B0A FD                 1429 	mov  r5,a
   2B0B 24 FC              1430 	add	a,#0xff - 0x03
   2B0D 40 03              1431 	jc	00201$
   2B0F 02 2B A9           1432 	ljmp	00112$
   2B12                    1433 00201$:
                           1434 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:221: stateBeingProcessed = (state_t*)(stateBeingProcessed->parent) ;
   2B12 90 09 FE           1435 	mov	dptr,#_iterateStateMachine_stateBeingProcessed_2_3
   2B15 E0                 1436 	movx	a,@dptr
   2B16 FD                 1437 	mov	r5,a
   2B17 A3                 1438 	inc	dptr
   2B18 E0                 1439 	movx	a,@dptr
   2B19 FE                 1440 	mov	r6,a
   2B1A A3                 1441 	inc	dptr
   2B1B E0                 1442 	movx	a,@dptr
   2B1C FF                 1443 	mov	r7,a
   2B1D 8D 82              1444 	mov	dpl,r5
   2B1F 8E 83              1445 	mov	dph,r6
   2B21 8F F0              1446 	mov	b,r7
   2B23 12 44 37           1447 	lcall	__gptrget
   2B26 FD                 1448 	mov	r5,a
   2B27 A3                 1449 	inc	dptr
   2B28 12 44 37           1450 	lcall	__gptrget
   2B2B FE                 1451 	mov	r6,a
   2B2C A3                 1452 	inc	dptr
   2B2D 12 44 37           1453 	lcall	__gptrget
   2B30 FF                 1454 	mov	r7,a
   2B31 90 09 FE           1455 	mov	dptr,#_iterateStateMachine_stateBeingProcessed_2_3
   2B34 ED                 1456 	mov	a,r5
   2B35 F0                 1457 	movx	@dptr,a
   2B36 A3                 1458 	inc	dptr
   2B37 EE                 1459 	mov	a,r6
   2B38 F0                 1460 	movx	@dptr,a
   2B39 A3                 1461 	inc	dptr
   2B3A EF                 1462 	mov	a,r7
   2B3B F0                 1463 	movx	@dptr,a
                           1464 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:224: printf("\t\t\t\t\t\t\tmoving to parent: %s\n", stateBeingProcessed ? stateBeingProcessed->stateName : "<root>") ;
   2B3C 90 09 FE           1465 	mov	dptr,#_iterateStateMachine_stateBeingProcessed_2_3
   2B3F E0                 1466 	movx	a,@dptr
   2B40 FD                 1467 	mov	r5,a
   2B41 A3                 1468 	inc	dptr
   2B42 E0                 1469 	movx	a,@dptr
   2B43 FE                 1470 	mov	r6,a
   2B44 A3                 1471 	inc	dptr
   2B45 E0                 1472 	movx	a,@dptr
   2B46 FF                 1473 	mov	r7,a
   2B47 ED                 1474 	mov	a,r5
   2B48 4E                 1475 	orl	a,r6
   2B49 4F                 1476 	orl	a,r7
   2B4A 60 1D              1477 	jz	00161$
   2B4C 74 06              1478 	mov	a,#0x06
   2B4E 2D                 1479 	add	a,r5
   2B4F FD                 1480 	mov	r5,a
   2B50 E4                 1481 	clr	a
   2B51 3E                 1482 	addc	a,r6
   2B52 FE                 1483 	mov	r6,a
   2B53 8D 82              1484 	mov	dpl,r5
   2B55 8E 83              1485 	mov	dph,r6
   2B57 8F F0              1486 	mov	b,r7
   2B59 12 44 37           1487 	lcall	__gptrget
   2B5C FD                 1488 	mov	r5,a
   2B5D A3                 1489 	inc	dptr
   2B5E 12 44 37           1490 	lcall	__gptrget
   2B61 FE                 1491 	mov	r6,a
   2B62 A3                 1492 	inc	dptr
   2B63 12 44 37           1493 	lcall	__gptrget
   2B66 FF                 1494 	mov	r7,a
   2B67 80 06              1495 	sjmp	00162$
   2B69                    1496 00161$:
   2B69 7D B9              1497 	mov	r5,#__str_9
   2B6B 7E 48              1498 	mov	r6,#(__str_9 >> 8)
   2B6D 7F 80              1499 	mov	r7,#0x80
   2B6F                    1500 00162$:
   2B6F C0 02              1501 	push	ar2
   2B71 C0 03              1502 	push	ar3
   2B73 C0 04              1503 	push	ar4
   2B75 C0 05              1504 	push	ar5
   2B77 C0 06              1505 	push	ar6
   2B79 C0 07              1506 	push	ar7
   2B7B 74 9C              1507 	mov	a,#__str_8
   2B7D C0 E0              1508 	push	acc
   2B7F 74 48              1509 	mov	a,#(__str_8 >> 8)
   2B81 C0 E0              1510 	push	acc
   2B83 74 80              1511 	mov	a,#0x80
   2B85 C0 E0              1512 	push	acc
   2B87 12 3B EB           1513 	lcall	_printf
   2B8A E5 81              1514 	mov	a,sp
   2B8C 24 FA              1515 	add	a,#0xfa
   2B8E F5 81              1516 	mov	sp,a
   2B90 D0 04              1517 	pop	ar4
   2B92 D0 03              1518 	pop	ar3
   2B94 D0 02              1519 	pop	ar2
                           1520 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:234: } while(stateBeingProcessed) ;
   2B96 90 09 FE           1521 	mov	dptr,#_iterateStateMachine_stateBeingProcessed_2_3
   2B99 E0                 1522 	movx	a,@dptr
   2B9A FD                 1523 	mov	r5,a
   2B9B A3                 1524 	inc	dptr
   2B9C E0                 1525 	movx	a,@dptr
   2B9D FE                 1526 	mov	r6,a
   2B9E A3                 1527 	inc	dptr
   2B9F E0                 1528 	movx	a,@dptr
   2BA0 FF                 1529 	mov	r7,a
   2BA1 ED                 1530 	mov	a,r5
   2BA2 4E                 1531 	orl	a,r6
   2BA3 4F                 1532 	orl	a,r7
   2BA4 60 03              1533 	jz	00203$
   2BA6 02 2A 99           1534 	ljmp	00110$
   2BA9                    1535 00203$:
   2BA9                    1536 00112$:
                           1537 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:236: if(action == TRANSITION)
   2BA9 74 02              1538 	mov	a,#0x02
   2BAB B5 40 02           1539 	cjne	a,_iterateStateMachine_sloc0_1_0,00204$
   2BAE 80 03              1540 	sjmp	00205$
   2BB0                    1541 00204$:
   2BB0 02 35 22           1542 	ljmp	00157$
   2BB3                    1543 00205$:
                           1544 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:238: state_t*	source	= sm->currentState ;
   2BB3 90 09 F8           1545 	mov	dptr,#_iterateStateMachine_sm_1_1
   2BB6 E0                 1546 	movx	a,@dptr
   2BB7 FA                 1547 	mov	r2,a
   2BB8 A3                 1548 	inc	dptr
   2BB9 E0                 1549 	movx	a,@dptr
   2BBA FB                 1550 	mov	r3,a
   2BBB A3                 1551 	inc	dptr
   2BBC E0                 1552 	movx	a,@dptr
   2BBD FC                 1553 	mov	r4,a
   2BBE 74 06              1554 	mov	a,#0x06
   2BC0 2A                 1555 	add	a,r2
   2BC1 F5 43              1556 	mov	_iterateStateMachine_sloc1_1_0,a
   2BC3 E4                 1557 	clr	a
   2BC4 3B                 1558 	addc	a,r3
   2BC5 F5 44              1559 	mov	(_iterateStateMachine_sloc1_1_0 + 1),a
   2BC7 8C 45              1560 	mov	(_iterateStateMachine_sloc1_1_0 + 2),r4
   2BC9 85 43 82           1561 	mov	dpl,_iterateStateMachine_sloc1_1_0
   2BCC 85 44 83           1562 	mov	dph,(_iterateStateMachine_sloc1_1_0 + 1)
   2BCF 85 45 F0           1563 	mov	b,(_iterateStateMachine_sloc1_1_0 + 2)
   2BD2 12 44 37           1564 	lcall	__gptrget
   2BD5 F5 40              1565 	mov	_iterateStateMachine_sloc0_1_0,a
   2BD7 A3                 1566 	inc	dptr
   2BD8 12 44 37           1567 	lcall	__gptrget
   2BDB F5 41              1568 	mov	(_iterateStateMachine_sloc0_1_0 + 1),a
   2BDD A3                 1569 	inc	dptr
   2BDE 12 44 37           1570 	lcall	__gptrget
   2BE1 F5 42              1571 	mov	(_iterateStateMachine_sloc0_1_0 + 2),a
                           1572 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:239: state_t*	target	= sm->nextState ;
   2BE3 74 09              1573 	mov	a,#0x09
   2BE5 2A                 1574 	add	a,r2
   2BE6 F8                 1575 	mov	r0,a
   2BE7 E4                 1576 	clr	a
   2BE8 3B                 1577 	addc	a,r3
   2BE9 F9                 1578 	mov	r1,a
   2BEA 8C 05              1579 	mov	ar5,r4
   2BEC 88 82              1580 	mov	dpl,r0
   2BEE 89 83              1581 	mov	dph,r1
   2BF0 8D F0              1582 	mov	b,r5
   2BF2 12 44 37           1583 	lcall	__gptrget
   2BF5 F5 46              1584 	mov	_iterateStateMachine_sloc2_1_0,a
   2BF7 A3                 1585 	inc	dptr
   2BF8 12 44 37           1586 	lcall	__gptrget
   2BFB F5 47              1587 	mov	(_iterateStateMachine_sloc2_1_0 + 1),a
   2BFD A3                 1588 	inc	dptr
   2BFE 12 44 37           1589 	lcall	__gptrget
   2C01 F5 48              1590 	mov	(_iterateStateMachine_sloc2_1_0 + 2),a
                           1591 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:243: if(source == target)
   2C03 E5 46              1592 	mov	a,_iterateStateMachine_sloc2_1_0
   2C05 B5 40 0C           1593 	cjne	a,_iterateStateMachine_sloc0_1_0,00206$
   2C08 E5 47              1594 	mov	a,(_iterateStateMachine_sloc2_1_0 + 1)
   2C0A B5 41 07           1595 	cjne	a,(_iterateStateMachine_sloc0_1_0 + 1),00206$
   2C0D E5 48              1596 	mov	a,(_iterateStateMachine_sloc2_1_0 + 2)
   2C0F B5 42 02           1597 	cjne	a,(_iterateStateMachine_sloc0_1_0 + 2),00206$
   2C12 80 03              1598 	sjmp	00207$
   2C14                    1599 00206$:
   2C14 02 2C B6           1600 	ljmp	00152$
   2C17                    1601 00207$:
                           1602 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:246: printf("\t\t\t\tSelf transition.\n") ;
   2C17 C0 02              1603 	push	ar2
   2C19 C0 03              1604 	push	ar3
   2C1B C0 04              1605 	push	ar4
   2C1D 74 C0              1606 	mov	a,#__str_10
   2C1F C0 E0              1607 	push	acc
   2C21 74 48              1608 	mov	a,#(__str_10 >> 8)
   2C23 C0 E0              1609 	push	acc
   2C25 74 80              1610 	mov	a,#0x80
   2C27 C0 E0              1611 	push	acc
   2C29 12 3B EB           1612 	lcall	_printf
   2C2C 15 81              1613 	dec	sp
   2C2E 15 81              1614 	dec	sp
   2C30 15 81              1615 	dec	sp
   2C32 D0 04              1616 	pop	ar4
   2C34 D0 03              1617 	pop	ar3
   2C36 D0 02              1618 	pop	ar2
                           1619 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:251: callStateHandler(sm, source, &exitEvent) ;
   2C38 90 09 EF           1620 	mov	dptr,#_callStateHandler_PARM_2
   2C3B E5 40              1621 	mov	a,_iterateStateMachine_sloc0_1_0
   2C3D F0                 1622 	movx	@dptr,a
   2C3E A3                 1623 	inc	dptr
   2C3F E5 41              1624 	mov	a,(_iterateStateMachine_sloc0_1_0 + 1)
   2C41 F0                 1625 	movx	@dptr,a
   2C42 A3                 1626 	inc	dptr
   2C43 E5 42              1627 	mov	a,(_iterateStateMachine_sloc0_1_0 + 2)
   2C45 F0                 1628 	movx	@dptr,a
   2C46 90 09 F2           1629 	mov	dptr,#_callStateHandler_PARM_3
   2C49 74 F9              1630 	mov	a,#_exitEvent
   2C4B F0                 1631 	movx	@dptr,a
   2C4C A3                 1632 	inc	dptr
   2C4D 74 0E              1633 	mov	a,#(_exitEvent >> 8)
   2C4F F0                 1634 	movx	@dptr,a
   2C50 A3                 1635 	inc	dptr
   2C51 E4                 1636 	clr	a
   2C52 F0                 1637 	movx	@dptr,a
   2C53 8A 82              1638 	mov	dpl,r2
   2C55 8B 83              1639 	mov	dph,r3
   2C57 8C F0              1640 	mov	b,r4
   2C59 12 26 C5           1641 	lcall	_callStateHandler
                           1642 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:252: sm->currentState = target ;
   2C5C 90 09 F8           1643 	mov	dptr,#_iterateStateMachine_sm_1_1
   2C5F E0                 1644 	movx	a,@dptr
   2C60 F5 49              1645 	mov	_iterateStateMachine_sloc3_1_0,a
   2C62 A3                 1646 	inc	dptr
   2C63 E0                 1647 	movx	a,@dptr
   2C64 F5 4A              1648 	mov	(_iterateStateMachine_sloc3_1_0 + 1),a
   2C66 A3                 1649 	inc	dptr
   2C67 E0                 1650 	movx	a,@dptr
   2C68 F5 4B              1651 	mov	(_iterateStateMachine_sloc3_1_0 + 2),a
   2C6A 74 06              1652 	mov	a,#0x06
   2C6C 25 49              1653 	add	a,_iterateStateMachine_sloc3_1_0
   2C6E FE                 1654 	mov	r6,a
   2C6F E4                 1655 	clr	a
   2C70 35 4A              1656 	addc	a,(_iterateStateMachine_sloc3_1_0 + 1)
   2C72 FF                 1657 	mov	r7,a
   2C73 AD 4B              1658 	mov	r5,(_iterateStateMachine_sloc3_1_0 + 2)
   2C75 8E 82              1659 	mov	dpl,r6
   2C77 8F 83              1660 	mov	dph,r7
   2C79 8D F0              1661 	mov	b,r5
   2C7B E5 46              1662 	mov	a,_iterateStateMachine_sloc2_1_0
   2C7D 12 38 0B           1663 	lcall	__gptrput
   2C80 A3                 1664 	inc	dptr
   2C81 E5 47              1665 	mov	a,(_iterateStateMachine_sloc2_1_0 + 1)
   2C83 12 38 0B           1666 	lcall	__gptrput
   2C86 A3                 1667 	inc	dptr
   2C87 E5 48              1668 	mov	a,(_iterateStateMachine_sloc2_1_0 + 2)
   2C89 12 38 0B           1669 	lcall	__gptrput
                           1670 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:253: callStateHandler(sm, target, &enterEvent) ;
   2C8C 90 09 EF           1671 	mov	dptr,#_callStateHandler_PARM_2
   2C8F E5 46              1672 	mov	a,_iterateStateMachine_sloc2_1_0
   2C91 F0                 1673 	movx	@dptr,a
   2C92 A3                 1674 	inc	dptr
   2C93 E5 47              1675 	mov	a,(_iterateStateMachine_sloc2_1_0 + 1)
   2C95 F0                 1676 	movx	@dptr,a
   2C96 A3                 1677 	inc	dptr
   2C97 E5 48              1678 	mov	a,(_iterateStateMachine_sloc2_1_0 + 2)
   2C99 F0                 1679 	movx	@dptr,a
   2C9A 90 09 F2           1680 	mov	dptr,#_callStateHandler_PARM_3
   2C9D 74 F8              1681 	mov	a,#_enterEvent
   2C9F F0                 1682 	movx	@dptr,a
   2CA0 A3                 1683 	inc	dptr
   2CA1 74 0E              1684 	mov	a,#(_enterEvent >> 8)
   2CA3 F0                 1685 	movx	@dptr,a
   2CA4 A3                 1686 	inc	dptr
   2CA5 E4                 1687 	clr	a
   2CA6 F0                 1688 	movx	@dptr,a
   2CA7 85 49 82           1689 	mov	dpl,_iterateStateMachine_sloc3_1_0
   2CAA 85 4A 83           1690 	mov	dph,(_iterateStateMachine_sloc3_1_0 + 1)
   2CAD 85 4B F0           1691 	mov	b,(_iterateStateMachine_sloc3_1_0 + 2)
   2CB0 12 26 C5           1692 	lcall	_callStateHandler
   2CB3 02 35 05           1693 	ljmp	00153$
   2CB6                    1694 00152$:
                           1695 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:255: else if(source == (state_t*)(target->parent))
   2CB6 85 46 82           1696 	mov	dpl,_iterateStateMachine_sloc2_1_0
   2CB9 85 47 83           1697 	mov	dph,(_iterateStateMachine_sloc2_1_0 + 1)
   2CBC 85 48 F0           1698 	mov	b,(_iterateStateMachine_sloc2_1_0 + 2)
   2CBF 12 44 37           1699 	lcall	__gptrget
   2CC2 FD                 1700 	mov	r5,a
   2CC3 A3                 1701 	inc	dptr
   2CC4 12 44 37           1702 	lcall	__gptrget
   2CC7 FE                 1703 	mov	r6,a
   2CC8 A3                 1704 	inc	dptr
   2CC9 12 44 37           1705 	lcall	__gptrget
   2CCC FF                 1706 	mov	r7,a
   2CCD ED                 1707 	mov	a,r5
   2CCE B5 40 6A           1708 	cjne	a,_iterateStateMachine_sloc0_1_0,00149$
   2CD1 EE                 1709 	mov	a,r6
   2CD2 B5 41 66           1710 	cjne	a,(_iterateStateMachine_sloc0_1_0 + 1),00149$
   2CD5 EF                 1711 	mov	a,r7
   2CD6 B5 42 62           1712 	cjne	a,(_iterateStateMachine_sloc0_1_0 + 2),00149$
                           1713 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:258: printf("\t\t\t\tTransition to direct child.\n") ;
   2CD9 C0 02              1714 	push	ar2
   2CDB C0 03              1715 	push	ar3
   2CDD C0 04              1716 	push	ar4
   2CDF 74 D6              1717 	mov	a,#__str_11
   2CE1 C0 E0              1718 	push	acc
   2CE3 74 48              1719 	mov	a,#(__str_11 >> 8)
   2CE5 C0 E0              1720 	push	acc
   2CE7 74 80              1721 	mov	a,#0x80
   2CE9 C0 E0              1722 	push	acc
   2CEB 12 3B EB           1723 	lcall	_printf
   2CEE 15 81              1724 	dec	sp
   2CF0 15 81              1725 	dec	sp
   2CF2 15 81              1726 	dec	sp
   2CF4 D0 04              1727 	pop	ar4
   2CF6 D0 03              1728 	pop	ar3
   2CF8 D0 02              1729 	pop	ar2
                           1730 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:264: sm->currentState = target ;
   2CFA 85 43 82           1731 	mov	dpl,_iterateStateMachine_sloc1_1_0
   2CFD 85 44 83           1732 	mov	dph,(_iterateStateMachine_sloc1_1_0 + 1)
   2D00 85 45 F0           1733 	mov	b,(_iterateStateMachine_sloc1_1_0 + 2)
   2D03 E5 46              1734 	mov	a,_iterateStateMachine_sloc2_1_0
   2D05 12 38 0B           1735 	lcall	__gptrput
   2D08 A3                 1736 	inc	dptr
   2D09 E5 47              1737 	mov	a,(_iterateStateMachine_sloc2_1_0 + 1)
   2D0B 12 38 0B           1738 	lcall	__gptrput
   2D0E A3                 1739 	inc	dptr
   2D0F E5 48              1740 	mov	a,(_iterateStateMachine_sloc2_1_0 + 2)
   2D11 12 38 0B           1741 	lcall	__gptrput
                           1742 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:265: callStateHandler(sm, target, &enterEvent) ;
   2D14 90 09 EF           1743 	mov	dptr,#_callStateHandler_PARM_2
   2D17 E5 46              1744 	mov	a,_iterateStateMachine_sloc2_1_0
   2D19 F0                 1745 	movx	@dptr,a
   2D1A A3                 1746 	inc	dptr
   2D1B E5 47              1747 	mov	a,(_iterateStateMachine_sloc2_1_0 + 1)
   2D1D F0                 1748 	movx	@dptr,a
   2D1E A3                 1749 	inc	dptr
   2D1F E5 48              1750 	mov	a,(_iterateStateMachine_sloc2_1_0 + 2)
   2D21 F0                 1751 	movx	@dptr,a
   2D22 90 09 F2           1752 	mov	dptr,#_callStateHandler_PARM_3
   2D25 74 F8              1753 	mov	a,#_enterEvent
   2D27 F0                 1754 	movx	@dptr,a
   2D28 A3                 1755 	inc	dptr
   2D29 74 0E              1756 	mov	a,#(_enterEvent >> 8)
   2D2B F0                 1757 	movx	@dptr,a
   2D2C A3                 1758 	inc	dptr
   2D2D E4                 1759 	clr	a
   2D2E F0                 1760 	movx	@dptr,a
   2D2F 8A 82              1761 	mov	dpl,r2
   2D31 8B 83              1762 	mov	dph,r3
   2D33 8C F0              1763 	mov	b,r4
   2D35 12 26 C5           1764 	lcall	_callStateHandler
   2D38 02 35 05           1765 	ljmp	00153$
   2D3B                    1766 00149$:
                           1767 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:267: else if((state_t*)(source->parent) == (state_t*)(target->parent))
   2D3B 85 40 82           1768 	mov	dpl,_iterateStateMachine_sloc0_1_0
   2D3E 85 41 83           1769 	mov	dph,(_iterateStateMachine_sloc0_1_0 + 1)
   2D41 85 42 F0           1770 	mov	b,(_iterateStateMachine_sloc0_1_0 + 2)
   2D44 12 44 37           1771 	lcall	__gptrget
   2D47 F5 49              1772 	mov	_iterateStateMachine_sloc3_1_0,a
   2D49 A3                 1773 	inc	dptr
   2D4A 12 44 37           1774 	lcall	__gptrget
   2D4D F5 4A              1775 	mov	(_iterateStateMachine_sloc3_1_0 + 1),a
   2D4F A3                 1776 	inc	dptr
   2D50 12 44 37           1777 	lcall	__gptrget
   2D53 F5 4B              1778 	mov	(_iterateStateMachine_sloc3_1_0 + 2),a
   2D55 ED                 1779 	mov	a,r5
   2D56 B5 49 0A           1780 	cjne	a,_iterateStateMachine_sloc3_1_0,00210$
   2D59 EE                 1781 	mov	a,r6
   2D5A B5 4A 06           1782 	cjne	a,(_iterateStateMachine_sloc3_1_0 + 1),00210$
   2D5D EF                 1783 	mov	a,r7
   2D5E B5 4B 02           1784 	cjne	a,(_iterateStateMachine_sloc3_1_0 + 2),00210$
   2D61 80 03              1785 	sjmp	00211$
   2D63                    1786 00210$:
   2D63 02 2E 05           1787 	ljmp	00146$
   2D66                    1788 00211$:
                           1789 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:270: printf("\t\t\t\tTransition to direct peer.\n") ;
   2D66 C0 02              1790 	push	ar2
   2D68 C0 03              1791 	push	ar3
   2D6A C0 04              1792 	push	ar4
   2D6C 74 F7              1793 	mov	a,#__str_12
   2D6E C0 E0              1794 	push	acc
   2D70 74 48              1795 	mov	a,#(__str_12 >> 8)
   2D72 C0 E0              1796 	push	acc
   2D74 74 80              1797 	mov	a,#0x80
   2D76 C0 E0              1798 	push	acc
   2D78 12 3B EB           1799 	lcall	_printf
   2D7B 15 81              1800 	dec	sp
   2D7D 15 81              1801 	dec	sp
   2D7F 15 81              1802 	dec	sp
   2D81 D0 04              1803 	pop	ar4
   2D83 D0 03              1804 	pop	ar3
   2D85 D0 02              1805 	pop	ar2
                           1806 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:276: callStateHandler(sm, source, &exitEvent) ;
   2D87 90 09 EF           1807 	mov	dptr,#_callStateHandler_PARM_2
   2D8A E5 40              1808 	mov	a,_iterateStateMachine_sloc0_1_0
   2D8C F0                 1809 	movx	@dptr,a
   2D8D A3                 1810 	inc	dptr
   2D8E E5 41              1811 	mov	a,(_iterateStateMachine_sloc0_1_0 + 1)
   2D90 F0                 1812 	movx	@dptr,a
   2D91 A3                 1813 	inc	dptr
   2D92 E5 42              1814 	mov	a,(_iterateStateMachine_sloc0_1_0 + 2)
   2D94 F0                 1815 	movx	@dptr,a
   2D95 90 09 F2           1816 	mov	dptr,#_callStateHandler_PARM_3
   2D98 74 F9              1817 	mov	a,#_exitEvent
   2D9A F0                 1818 	movx	@dptr,a
   2D9B A3                 1819 	inc	dptr
   2D9C 74 0E              1820 	mov	a,#(_exitEvent >> 8)
   2D9E F0                 1821 	movx	@dptr,a
   2D9F A3                 1822 	inc	dptr
   2DA0 E4                 1823 	clr	a
   2DA1 F0                 1824 	movx	@dptr,a
   2DA2 8A 82              1825 	mov	dpl,r2
   2DA4 8B 83              1826 	mov	dph,r3
   2DA6 8C F0              1827 	mov	b,r4
   2DA8 12 26 C5           1828 	lcall	_callStateHandler
                           1829 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:277: sm->currentState = target ;
   2DAB 90 09 F8           1830 	mov	dptr,#_iterateStateMachine_sm_1_1
   2DAE E0                 1831 	movx	a,@dptr
   2DAF F5 4C              1832 	mov	_iterateStateMachine_sloc4_1_0,a
   2DB1 A3                 1833 	inc	dptr
   2DB2 E0                 1834 	movx	a,@dptr
   2DB3 F5 4D              1835 	mov	(_iterateStateMachine_sloc4_1_0 + 1),a
   2DB5 A3                 1836 	inc	dptr
   2DB6 E0                 1837 	movx	a,@dptr
   2DB7 F5 4E              1838 	mov	(_iterateStateMachine_sloc4_1_0 + 2),a
   2DB9 74 06              1839 	mov	a,#0x06
   2DBB 25 4C              1840 	add	a,_iterateStateMachine_sloc4_1_0
   2DBD F8                 1841 	mov	r0,a
   2DBE E4                 1842 	clr	a
   2DBF 35 4D              1843 	addc	a,(_iterateStateMachine_sloc4_1_0 + 1)
   2DC1 F9                 1844 	mov	r1,a
   2DC2 AD 4E              1845 	mov	r5,(_iterateStateMachine_sloc4_1_0 + 2)
   2DC4 88 82              1846 	mov	dpl,r0
   2DC6 89 83              1847 	mov	dph,r1
   2DC8 8D F0              1848 	mov	b,r5
   2DCA E5 46              1849 	mov	a,_iterateStateMachine_sloc2_1_0
   2DCC 12 38 0B           1850 	lcall	__gptrput
   2DCF A3                 1851 	inc	dptr
   2DD0 E5 47              1852 	mov	a,(_iterateStateMachine_sloc2_1_0 + 1)
   2DD2 12 38 0B           1853 	lcall	__gptrput
   2DD5 A3                 1854 	inc	dptr
   2DD6 E5 48              1855 	mov	a,(_iterateStateMachine_sloc2_1_0 + 2)
   2DD8 12 38 0B           1856 	lcall	__gptrput
                           1857 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:278: callStateHandler(sm, target, &enterEvent) ;
   2DDB 90 09 EF           1858 	mov	dptr,#_callStateHandler_PARM_2
   2DDE E5 46              1859 	mov	a,_iterateStateMachine_sloc2_1_0
   2DE0 F0                 1860 	movx	@dptr,a
   2DE1 A3                 1861 	inc	dptr
   2DE2 E5 47              1862 	mov	a,(_iterateStateMachine_sloc2_1_0 + 1)
   2DE4 F0                 1863 	movx	@dptr,a
   2DE5 A3                 1864 	inc	dptr
   2DE6 E5 48              1865 	mov	a,(_iterateStateMachine_sloc2_1_0 + 2)
   2DE8 F0                 1866 	movx	@dptr,a
   2DE9 90 09 F2           1867 	mov	dptr,#_callStateHandler_PARM_3
   2DEC 74 F8              1868 	mov	a,#_enterEvent
   2DEE F0                 1869 	movx	@dptr,a
   2DEF A3                 1870 	inc	dptr
   2DF0 74 0E              1871 	mov	a,#(_enterEvent >> 8)
   2DF2 F0                 1872 	movx	@dptr,a
   2DF3 A3                 1873 	inc	dptr
   2DF4 E4                 1874 	clr	a
   2DF5 F0                 1875 	movx	@dptr,a
   2DF6 85 4C 82           1876 	mov	dpl,_iterateStateMachine_sloc4_1_0
   2DF9 85 4D 83           1877 	mov	dph,(_iterateStateMachine_sloc4_1_0 + 1)
   2DFC 85 4E F0           1878 	mov	b,(_iterateStateMachine_sloc4_1_0 + 2)
   2DFF 12 26 C5           1879 	lcall	_callStateHandler
   2E02 02 35 05           1880 	ljmp	00153$
   2E05                    1881 00146$:
                           1882 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:280: else if((state_t*)(source->parent) == target)
   2E05 E5 46              1883 	mov	a,_iterateStateMachine_sloc2_1_0
   2E07 B5 49 6C           1884 	cjne	a,_iterateStateMachine_sloc3_1_0,00143$
   2E0A E5 47              1885 	mov	a,(_iterateStateMachine_sloc2_1_0 + 1)
   2E0C B5 4A 67           1886 	cjne	a,(_iterateStateMachine_sloc3_1_0 + 1),00143$
   2E0F E5 48              1887 	mov	a,(_iterateStateMachine_sloc2_1_0 + 2)
   2E11 B5 4B 62           1888 	cjne	a,(_iterateStateMachine_sloc3_1_0 + 2),00143$
                           1889 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:283: printf("\t\t\t\tTransition to direct parent.\n") ;
   2E14 C0 02              1890 	push	ar2
   2E16 C0 03              1891 	push	ar3
   2E18 C0 04              1892 	push	ar4
   2E1A 74 17              1893 	mov	a,#__str_13
   2E1C C0 E0              1894 	push	acc
   2E1E 74 49              1895 	mov	a,#(__str_13 >> 8)
   2E20 C0 E0              1896 	push	acc
   2E22 74 80              1897 	mov	a,#0x80
   2E24 C0 E0              1898 	push	acc
   2E26 12 3B EB           1899 	lcall	_printf
   2E29 15 81              1900 	dec	sp
   2E2B 15 81              1901 	dec	sp
   2E2D 15 81              1902 	dec	sp
   2E2F D0 04              1903 	pop	ar4
   2E31 D0 03              1904 	pop	ar3
   2E33 D0 02              1905 	pop	ar2
                           1906 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:290: sm->currentState = target ;
   2E35 85 43 82           1907 	mov	dpl,_iterateStateMachine_sloc1_1_0
   2E38 85 44 83           1908 	mov	dph,(_iterateStateMachine_sloc1_1_0 + 1)
   2E3B 85 45 F0           1909 	mov	b,(_iterateStateMachine_sloc1_1_0 + 2)
   2E3E E5 46              1910 	mov	a,_iterateStateMachine_sloc2_1_0
   2E40 12 38 0B           1911 	lcall	__gptrput
   2E43 A3                 1912 	inc	dptr
   2E44 E5 47              1913 	mov	a,(_iterateStateMachine_sloc2_1_0 + 1)
   2E46 12 38 0B           1914 	lcall	__gptrput
   2E49 A3                 1915 	inc	dptr
   2E4A E5 48              1916 	mov	a,(_iterateStateMachine_sloc2_1_0 + 2)
   2E4C 12 38 0B           1917 	lcall	__gptrput
                           1918 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:291: callStateHandler(sm, source, &exitEvent) ;
   2E4F 90 09 EF           1919 	mov	dptr,#_callStateHandler_PARM_2
   2E52 E5 40              1920 	mov	a,_iterateStateMachine_sloc0_1_0
   2E54 F0                 1921 	movx	@dptr,a
   2E55 A3                 1922 	inc	dptr
   2E56 E5 41              1923 	mov	a,(_iterateStateMachine_sloc0_1_0 + 1)
   2E58 F0                 1924 	movx	@dptr,a
   2E59 A3                 1925 	inc	dptr
   2E5A E5 42              1926 	mov	a,(_iterateStateMachine_sloc0_1_0 + 2)
   2E5C F0                 1927 	movx	@dptr,a
   2E5D 90 09 F2           1928 	mov	dptr,#_callStateHandler_PARM_3
   2E60 74 F9              1929 	mov	a,#_exitEvent
   2E62 F0                 1930 	movx	@dptr,a
   2E63 A3                 1931 	inc	dptr
   2E64 74 0E              1932 	mov	a,#(_exitEvent >> 8)
   2E66 F0                 1933 	movx	@dptr,a
   2E67 A3                 1934 	inc	dptr
   2E68 E4                 1935 	clr	a
   2E69 F0                 1936 	movx	@dptr,a
   2E6A 8A 82              1937 	mov	dpl,r2
   2E6C 8B 83              1938 	mov	dph,r3
   2E6E 8C F0              1939 	mov	b,r4
   2E70 12 26 C5           1940 	lcall	_callStateHandler
   2E73 02 35 05           1941 	ljmp	00153$
   2E76                    1942 00143$:
                           1943 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:306: printf("\t\t\t\tScanning source hierarchy...\n") ;
   2E76 74 39              1944 	mov	a,#__str_14
   2E78 C0 E0              1945 	push	acc
   2E7A 74 49              1946 	mov	a,#(__str_14 >> 8)
   2E7C C0 E0              1947 	push	acc
   2E7E 74 80              1948 	mov	a,#0x80
   2E80 C0 E0              1949 	push	acc
   2E82 12 3B EB           1950 	lcall	_printf
   2E85 15 81              1951 	dec	sp
   2E87 15 81              1952 	dec	sp
   2E89 15 81              1953 	dec	sp
                           1954 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:310: targetIndex			= 0 ;
   2E8B 90 0A 62           1955 	mov	dptr,#_iterateStateMachine_targetIndex_4_14
   2E8E E4                 1956 	clr	a
   2E8F F0                 1957 	movx	@dptr,a
                           1958 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:311: stateBeingProcessed	= source ;
   2E90 90 09 FE           1959 	mov	dptr,#_iterateStateMachine_stateBeingProcessed_2_3
   2E93 E5 40              1960 	mov	a,_iterateStateMachine_sloc0_1_0
   2E95 F0                 1961 	movx	@dptr,a
   2E96 A3                 1962 	inc	dptr
   2E97 E5 41              1963 	mov	a,(_iterateStateMachine_sloc0_1_0 + 1)
   2E99 F0                 1964 	movx	@dptr,a
   2E9A A3                 1965 	inc	dptr
   2E9B E5 42              1966 	mov	a,(_iterateStateMachine_sloc0_1_0 + 2)
   2E9D F0                 1967 	movx	@dptr,a
                           1968 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:313: do
   2E9E 7A 00              1969 	mov	r2,#0x00
   2EA0                    1970 00118$:
                           1971 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:315: sourceHierarchy[sourceIndex++] = stateBeingProcessed ;
   2EA0 8A 03              1972 	mov	ar3,r2
   2EA2 0A                 1973 	inc	r2
   2EA3 90 0A 31           1974 	mov	dptr,#_iterateStateMachine_sourceIndex_4_14
   2EA6 EA                 1975 	mov	a,r2
   2EA7 F0                 1976 	movx	@dptr,a
   2EA8 EB                 1977 	mov	a,r3
   2EA9 75 F0 03           1978 	mov	b,#0x03
   2EAC A4                 1979 	mul	ab
   2EAD 24 01              1980 	add	a,#_iterateStateMachine_sourceHierarchy_4_14
   2EAF FB                 1981 	mov	r3,a
   2EB0 E4                 1982 	clr	a
   2EB1 34 0A              1983 	addc	a,#(_iterateStateMachine_sourceHierarchy_4_14 >> 8)
   2EB3 FC                 1984 	mov	r4,a
   2EB4 90 09 FE           1985 	mov	dptr,#_iterateStateMachine_stateBeingProcessed_2_3
   2EB7 E0                 1986 	movx	a,@dptr
   2EB8 FD                 1987 	mov	r5,a
   2EB9 A3                 1988 	inc	dptr
   2EBA E0                 1989 	movx	a,@dptr
   2EBB FE                 1990 	mov	r6,a
   2EBC A3                 1991 	inc	dptr
   2EBD E0                 1992 	movx	a,@dptr
   2EBE FF                 1993 	mov	r7,a
   2EBF 8B 82              1994 	mov	dpl,r3
   2EC1 8C 83              1995 	mov	dph,r4
   2EC3 ED                 1996 	mov	a,r5
   2EC4 F0                 1997 	movx	@dptr,a
   2EC5 A3                 1998 	inc	dptr
   2EC6 EE                 1999 	mov	a,r6
   2EC7 F0                 2000 	movx	@dptr,a
   2EC8 A3                 2001 	inc	dptr
   2EC9 EF                 2002 	mov	a,r7
   2ECA F0                 2003 	movx	@dptr,a
                           2004 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:318: printf("\t\t\t\t\tsourceHierarchy[%d] = %s\n", sourceIndex - 1, stateBeingProcessed->stateName) ;
   2ECB 74 06              2005 	mov	a,#0x06
   2ECD 2D                 2006 	add	a,r5
   2ECE FB                 2007 	mov	r3,a
   2ECF E4                 2008 	clr	a
   2ED0 3E                 2009 	addc	a,r6
   2ED1 FC                 2010 	mov	r4,a
   2ED2 8F 00              2011 	mov	ar0,r7
   2ED4 8B 82              2012 	mov	dpl,r3
   2ED6 8C 83              2013 	mov	dph,r4
   2ED8 88 F0              2014 	mov	b,r0
   2EDA 12 44 37           2015 	lcall	__gptrget
   2EDD F5 4C              2016 	mov	_iterateStateMachine_sloc4_1_0,a
   2EDF A3                 2017 	inc	dptr
   2EE0 12 44 37           2018 	lcall	__gptrget
   2EE3 F5 4D              2019 	mov	(_iterateStateMachine_sloc4_1_0 + 1),a
   2EE5 A3                 2020 	inc	dptr
   2EE6 12 44 37           2021 	lcall	__gptrget
   2EE9 F5 4E              2022 	mov	(_iterateStateMachine_sloc4_1_0 + 2),a
   2EEB 8A 01              2023 	mov	ar1,r2
   2EED 7B 00              2024 	mov	r3,#0x00
   2EEF 19                 2025 	dec	r1
   2EF0 B9 FF 01           2026 	cjne	r1,#0xff,00214$
   2EF3 1B                 2027 	dec	r3
   2EF4                    2028 00214$:
   2EF4 C0 02              2029 	push	ar2
   2EF6 C0 05              2030 	push	ar5
   2EF8 C0 06              2031 	push	ar6
   2EFA C0 07              2032 	push	ar7
   2EFC C0 4C              2033 	push	_iterateStateMachine_sloc4_1_0
   2EFE C0 4D              2034 	push	(_iterateStateMachine_sloc4_1_0 + 1)
   2F00 C0 4E              2035 	push	(_iterateStateMachine_sloc4_1_0 + 2)
   2F02 C0 01              2036 	push	ar1
   2F04 C0 03              2037 	push	ar3
   2F06 74 5B              2038 	mov	a,#__str_15
   2F08 C0 E0              2039 	push	acc
   2F0A 74 49              2040 	mov	a,#(__str_15 >> 8)
   2F0C C0 E0              2041 	push	acc
   2F0E 74 80              2042 	mov	a,#0x80
   2F10 C0 E0              2043 	push	acc
   2F12 12 3B EB           2044 	lcall	_printf
   2F15 E5 81              2045 	mov	a,sp
   2F17 24 F8              2046 	add	a,#0xf8
   2F19 F5 81              2047 	mov	sp,a
   2F1B D0 07              2048 	pop	ar7
   2F1D D0 06              2049 	pop	ar6
   2F1F D0 05              2050 	pop	ar5
   2F21 D0 02              2051 	pop	ar2
                           2052 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:321: if(stateBeingProcessed == target)
   2F23 ED                 2053 	mov	a,r5
   2F24 B5 46 0A           2054 	cjne	a,_iterateStateMachine_sloc2_1_0,00215$
   2F27 EE                 2055 	mov	a,r6
   2F28 B5 47 06           2056 	cjne	a,(_iterateStateMachine_sloc2_1_0 + 1),00215$
   2F2B EF                 2057 	mov	a,r7
   2F2C B5 48 02           2058 	cjne	a,(_iterateStateMachine_sloc2_1_0 + 2),00215$
   2F2F 80 03              2059 	sjmp	00216$
   2F31                    2060 00215$:
   2F31 02 2F FA           2061 	ljmp	00117$
   2F34                    2062 00216$:
                           2063 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:326: printf("\t\t\t\t\t\tFound target as ancestor of source\n") ;
   2F34 C0 02              2064 	push	ar2
   2F36 74 7A              2065 	mov	a,#__str_16
   2F38 C0 E0              2066 	push	acc
   2F3A 74 49              2067 	mov	a,#(__str_16 >> 8)
   2F3C C0 E0              2068 	push	acc
   2F3E 74 80              2069 	mov	a,#0x80
   2F40 C0 E0              2070 	push	acc
   2F42 12 3B EB           2071 	lcall	_printf
   2F45 15 81              2072 	dec	sp
   2F47 15 81              2073 	dec	sp
   2F49 15 81              2074 	dec	sp
   2F4B D0 02              2075 	pop	ar2
                           2076 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:329: sourceIndex-- ;
   2F4D EA                 2077 	mov	a,r2
   2F4E 14                 2078 	dec	a
   2F4F FB                 2079 	mov	r3,a
   2F50 90 0A 31           2080 	mov	dptr,#_iterateStateMachine_sourceIndex_4_14
   2F53 F0                 2081 	movx	@dptr,a
                           2082 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:331: while(exitIndex < sourceIndex)
   2F54 7C 00              2083 	mov	r4,#0x00
   2F56                    2084 00113$:
   2F56 C3                 2085 	clr	c
   2F57 EC                 2086 	mov	a,r4
   2F58 9B                 2087 	subb	a,r3
   2F59 50 74              2088 	jnc	00115$
                           2089 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:334: printf("\t\t\t\t") ;
   2F5B C0 03              2090 	push	ar3
   2F5D C0 03              2091 	push	ar3
   2F5F C0 04              2092 	push	ar4
   2F61 74 A4              2093 	mov	a,#__str_17
   2F63 C0 E0              2094 	push	acc
   2F65 74 49              2095 	mov	a,#(__str_17 >> 8)
   2F67 C0 E0              2096 	push	acc
   2F69 74 80              2097 	mov	a,#0x80
   2F6B C0 E0              2098 	push	acc
   2F6D 12 3B EB           2099 	lcall	_printf
   2F70 15 81              2100 	dec	sp
   2F72 15 81              2101 	dec	sp
   2F74 15 81              2102 	dec	sp
   2F76 D0 04              2103 	pop	ar4
   2F78 D0 03              2104 	pop	ar3
                           2105 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:337: callStateHandler(sm, sourceHierarchy[exitIndex], &exitEvent) ;
   2F7A 90 09 F8           2106 	mov	dptr,#_iterateStateMachine_sm_1_1
   2F7D E0                 2107 	movx	a,@dptr
   2F7E F5 4C              2108 	mov	_iterateStateMachine_sloc4_1_0,a
   2F80 A3                 2109 	inc	dptr
   2F81 E0                 2110 	movx	a,@dptr
   2F82 F5 4D              2111 	mov	(_iterateStateMachine_sloc4_1_0 + 1),a
   2F84 A3                 2112 	inc	dptr
   2F85 E0                 2113 	movx	a,@dptr
   2F86 F5 4E              2114 	mov	(_iterateStateMachine_sloc4_1_0 + 2),a
   2F88 EC                 2115 	mov	a,r4
   2F89 75 F0 03           2116 	mov	b,#0x03
   2F8C A4                 2117 	mul	ab
   2F8D 24 01              2118 	add	a,#_iterateStateMachine_sourceHierarchy_4_14
   2F8F F5 82              2119 	mov	dpl,a
   2F91 E4                 2120 	clr	a
   2F92 34 0A              2121 	addc	a,#(_iterateStateMachine_sourceHierarchy_4_14 >> 8)
   2F94 F5 83              2122 	mov	dph,a
   2F96 E0                 2123 	movx	a,@dptr
   2F97 FB                 2124 	mov	r3,a
   2F98 A3                 2125 	inc	dptr
   2F99 E0                 2126 	movx	a,@dptr
   2F9A F8                 2127 	mov	r0,a
   2F9B A3                 2128 	inc	dptr
   2F9C E0                 2129 	movx	a,@dptr
   2F9D F9                 2130 	mov	r1,a
   2F9E 90 09 EF           2131 	mov	dptr,#_callStateHandler_PARM_2
   2FA1 EB                 2132 	mov	a,r3
   2FA2 F0                 2133 	movx	@dptr,a
   2FA3 A3                 2134 	inc	dptr
   2FA4 E8                 2135 	mov	a,r0
   2FA5 F0                 2136 	movx	@dptr,a
   2FA6 A3                 2137 	inc	dptr
   2FA7 E9                 2138 	mov	a,r1
   2FA8 F0                 2139 	movx	@dptr,a
   2FA9 90 09 F2           2140 	mov	dptr,#_callStateHandler_PARM_3
   2FAC 74 F9              2141 	mov	a,#_exitEvent
   2FAE F0                 2142 	movx	@dptr,a
   2FAF A3                 2143 	inc	dptr
   2FB0 74 0E              2144 	mov	a,#(_exitEvent >> 8)
   2FB2 F0                 2145 	movx	@dptr,a
   2FB3 A3                 2146 	inc	dptr
   2FB4 E4                 2147 	clr	a
   2FB5 F0                 2148 	movx	@dptr,a
   2FB6 85 4C 82           2149 	mov	dpl,_iterateStateMachine_sloc4_1_0
   2FB9 85 4D 83           2150 	mov	dph,(_iterateStateMachine_sloc4_1_0 + 1)
   2FBC 85 4E F0           2151 	mov	b,(_iterateStateMachine_sloc4_1_0 + 2)
   2FBF C0 03              2152 	push	ar3
   2FC1 C0 04              2153 	push	ar4
   2FC3 12 26 C5           2154 	lcall	_callStateHandler
   2FC6 D0 04              2155 	pop	ar4
   2FC8 D0 03              2156 	pop	ar3
                           2157 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:339: exitIndex++ ;
   2FCA 0C                 2158 	inc	r4
   2FCB D0 03              2159 	pop	ar3
   2FCD 80 87              2160 	sjmp	00113$
   2FCF                    2161 00115$:
                           2162 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:342: sm->currentState = target ;
   2FCF 90 09 F8           2163 	mov	dptr,#_iterateStateMachine_sm_1_1
   2FD2 E0                 2164 	movx	a,@dptr
   2FD3 FB                 2165 	mov	r3,a
   2FD4 A3                 2166 	inc	dptr
   2FD5 E0                 2167 	movx	a,@dptr
   2FD6 FC                 2168 	mov	r4,a
   2FD7 A3                 2169 	inc	dptr
   2FD8 E0                 2170 	movx	a,@dptr
   2FD9 F8                 2171 	mov	r0,a
   2FDA 74 06              2172 	mov	a,#0x06
   2FDC 2B                 2173 	add	a,r3
   2FDD FB                 2174 	mov	r3,a
   2FDE E4                 2175 	clr	a
   2FDF 3C                 2176 	addc	a,r4
   2FE0 FC                 2177 	mov	r4,a
   2FE1 8B 82              2178 	mov	dpl,r3
   2FE3 8C 83              2179 	mov	dph,r4
   2FE5 88 F0              2180 	mov	b,r0
   2FE7 E5 46              2181 	mov	a,_iterateStateMachine_sloc2_1_0
   2FE9 12 38 0B           2182 	lcall	__gptrput
   2FEC A3                 2183 	inc	dptr
   2FED E5 47              2184 	mov	a,(_iterateStateMachine_sloc2_1_0 + 1)
   2FEF 12 38 0B           2185 	lcall	__gptrput
   2FF2 A3                 2186 	inc	dptr
   2FF3 E5 48              2187 	mov	a,(_iterateStateMachine_sloc2_1_0 + 2)
   2FF5 12 38 0B           2188 	lcall	__gptrput
                           2189 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:344: break ;
   2FF8 80 32              2190 	sjmp	00120$
   2FFA                    2191 00117$:
                           2192 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:347: stateBeingProcessed = (state_t*)(stateBeingProcessed->parent) ;
   2FFA 8D 82              2193 	mov	dpl,r5
   2FFC 8E 83              2194 	mov	dph,r6
   2FFE 8F F0              2195 	mov	b,r7
   3000 12 44 37           2196 	lcall	__gptrget
   3003 FD                 2197 	mov	r5,a
   3004 A3                 2198 	inc	dptr
   3005 12 44 37           2199 	lcall	__gptrget
   3008 FE                 2200 	mov	r6,a
   3009 A3                 2201 	inc	dptr
   300A 12 44 37           2202 	lcall	__gptrget
   300D FF                 2203 	mov	r7,a
   300E 90 09 FE           2204 	mov	dptr,#_iterateStateMachine_stateBeingProcessed_2_3
   3011 ED                 2205 	mov	a,r5
   3012 F0                 2206 	movx	@dptr,a
   3013 A3                 2207 	inc	dptr
   3014 EE                 2208 	mov	a,r6
   3015 F0                 2209 	movx	@dptr,a
   3016 A3                 2210 	inc	dptr
   3017 EF                 2211 	mov	a,r7
   3018 F0                 2212 	movx	@dptr,a
                           2213 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:348: } while(stateBeingProcessed) ;
   3019 90 09 FE           2214 	mov	dptr,#_iterateStateMachine_stateBeingProcessed_2_3
   301C E0                 2215 	movx	a,@dptr
   301D FB                 2216 	mov	r3,a
   301E A3                 2217 	inc	dptr
   301F E0                 2218 	movx	a,@dptr
   3020 FC                 2219 	mov	r4,a
   3021 A3                 2220 	inc	dptr
   3022 E0                 2221 	movx	a,@dptr
   3023 FD                 2222 	mov	r5,a
   3024 EB                 2223 	mov	a,r3
   3025 4C                 2224 	orl	a,r4
   3026 4D                 2225 	orl	a,r5
   3027 60 03              2226 	jz	00218$
   3029 02 2E A0           2227 	ljmp	00118$
   302C                    2228 00218$:
   302C                    2229 00120$:
                           2230 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:350: if(sm->currentState != target)
   302C 90 09 F8           2231 	mov	dptr,#_iterateStateMachine_sm_1_1
   302F E0                 2232 	movx	a,@dptr
   3030 FA                 2233 	mov	r2,a
   3031 A3                 2234 	inc	dptr
   3032 E0                 2235 	movx	a,@dptr
   3033 FB                 2236 	mov	r3,a
   3034 A3                 2237 	inc	dptr
   3035 E0                 2238 	movx	a,@dptr
   3036 FC                 2239 	mov	r4,a
   3037 74 06              2240 	mov	a,#0x06
   3039 2A                 2241 	add	a,r2
   303A FA                 2242 	mov	r2,a
   303B E4                 2243 	clr	a
   303C 3B                 2244 	addc	a,r3
   303D FB                 2245 	mov	r3,a
   303E 8A 82              2246 	mov	dpl,r2
   3040 8B 83              2247 	mov	dph,r3
   3042 8C F0              2248 	mov	b,r4
   3044 12 44 37           2249 	lcall	__gptrget
   3047 FA                 2250 	mov	r2,a
   3048 A3                 2251 	inc	dptr
   3049 12 44 37           2252 	lcall	__gptrget
   304C FB                 2253 	mov	r3,a
   304D A3                 2254 	inc	dptr
   304E 12 44 37           2255 	lcall	__gptrget
   3051 FC                 2256 	mov	r4,a
   3052 EA                 2257 	mov	a,r2
   3053 B5 46 0B           2258 	cjne	a,_iterateStateMachine_sloc2_1_0,00219$
   3056 EB                 2259 	mov	a,r3
   3057 B5 47 07           2260 	cjne	a,(_iterateStateMachine_sloc2_1_0 + 1),00219$
   305A EC                 2261 	mov	a,r4
   305B B5 48 03           2262 	cjne	a,(_iterateStateMachine_sloc2_1_0 + 2),00219$
   305E 02 32 05           2263 	ljmp	00130$
   3061                    2264 00219$:
                           2265 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:353: printf("\t\t\t\tScanning target hierarchy...\n") ;
   3061 74 A9              2266 	mov	a,#__str_18
   3063 C0 E0              2267 	push	acc
   3065 74 49              2268 	mov	a,#(__str_18 >> 8)
   3067 C0 E0              2269 	push	acc
   3069 74 80              2270 	mov	a,#0x80
   306B C0 E0              2271 	push	acc
   306D 12 3B EB           2272 	lcall	_printf
   3070 15 81              2273 	dec	sp
   3072 15 81              2274 	dec	sp
   3074 15 81              2275 	dec	sp
                           2276 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:356: targetIndex			= 0 ;
   3076 90 0A 62           2277 	mov	dptr,#_iterateStateMachine_targetIndex_4_14
   3079 E4                 2278 	clr	a
   307A F0                 2279 	movx	@dptr,a
                           2280 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:357: stateBeingProcessed	= target ;
   307B 90 09 FE           2281 	mov	dptr,#_iterateStateMachine_stateBeingProcessed_2_3
   307E E5 46              2282 	mov	a,_iterateStateMachine_sloc2_1_0
   3080 F0                 2283 	movx	@dptr,a
   3081 A3                 2284 	inc	dptr
   3082 E5 47              2285 	mov	a,(_iterateStateMachine_sloc2_1_0 + 1)
   3084 F0                 2286 	movx	@dptr,a
   3085 A3                 2287 	inc	dptr
   3086 E5 48              2288 	mov	a,(_iterateStateMachine_sloc2_1_0 + 2)
   3088 F0                 2289 	movx	@dptr,a
                           2290 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:359: do
   3089 7A 00              2291 	mov	r2,#0x00
   308B                    2292 00126$:
                           2293 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:361: targetHierarchy[targetIndex] = stateBeingProcessed ;
   308B EA                 2294 	mov	a,r2
   308C 75 F0 03           2295 	mov	b,#0x03
   308F A4                 2296 	mul	ab
   3090 24 32              2297 	add	a,#_iterateStateMachine_targetHierarchy_4_14
   3092 FB                 2298 	mov	r3,a
   3093 E4                 2299 	clr	a
   3094 34 0A              2300 	addc	a,#(_iterateStateMachine_targetHierarchy_4_14 >> 8)
   3096 FC                 2301 	mov	r4,a
   3097 90 09 FE           2302 	mov	dptr,#_iterateStateMachine_stateBeingProcessed_2_3
   309A E0                 2303 	movx	a,@dptr
   309B FD                 2304 	mov	r5,a
   309C A3                 2305 	inc	dptr
   309D E0                 2306 	movx	a,@dptr
   309E FE                 2307 	mov	r6,a
   309F A3                 2308 	inc	dptr
   30A0 E0                 2309 	movx	a,@dptr
   30A1 FF                 2310 	mov	r7,a
   30A2 8B 82              2311 	mov	dpl,r3
   30A4 8C 83              2312 	mov	dph,r4
   30A6 ED                 2313 	mov	a,r5
   30A7 F0                 2314 	movx	@dptr,a
   30A8 A3                 2315 	inc	dptr
   30A9 EE                 2316 	mov	a,r6
   30AA F0                 2317 	movx	@dptr,a
   30AB A3                 2318 	inc	dptr
   30AC EF                 2319 	mov	a,r7
   30AD F0                 2320 	movx	@dptr,a
                           2321 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:364: printf("\t\t\t\t\ttargetHierarchy[%d] = %s\n", targetIndex, stateBeingProcessed->stateName) ;
   30AE 74 06              2322 	mov	a,#0x06
   30B0 2D                 2323 	add	a,r5
   30B1 FB                 2324 	mov	r3,a
   30B2 E4                 2325 	clr	a
   30B3 3E                 2326 	addc	a,r6
   30B4 FC                 2327 	mov	r4,a
   30B5 8F 00              2328 	mov	ar0,r7
   30B7 8B 82              2329 	mov	dpl,r3
   30B9 8C 83              2330 	mov	dph,r4
   30BB 88 F0              2331 	mov	b,r0
   30BD 12 44 37           2332 	lcall	__gptrget
   30C0 F5 4C              2333 	mov	_iterateStateMachine_sloc4_1_0,a
   30C2 A3                 2334 	inc	dptr
   30C3 12 44 37           2335 	lcall	__gptrget
   30C6 F5 4D              2336 	mov	(_iterateStateMachine_sloc4_1_0 + 1),a
   30C8 A3                 2337 	inc	dptr
   30C9 12 44 37           2338 	lcall	__gptrget
   30CC F5 4E              2339 	mov	(_iterateStateMachine_sloc4_1_0 + 2),a
   30CE 8A 01              2340 	mov	ar1,r2
   30D0 7B 00              2341 	mov	r3,#0x00
   30D2 C0 02              2342 	push	ar2
   30D4 C0 05              2343 	push	ar5
   30D6 C0 06              2344 	push	ar6
   30D8 C0 07              2345 	push	ar7
   30DA C0 4C              2346 	push	_iterateStateMachine_sloc4_1_0
   30DC C0 4D              2347 	push	(_iterateStateMachine_sloc4_1_0 + 1)
   30DE C0 4E              2348 	push	(_iterateStateMachine_sloc4_1_0 + 2)
   30E0 C0 01              2349 	push	ar1
   30E2 C0 03              2350 	push	ar3
   30E4 74 CB              2351 	mov	a,#__str_19
   30E6 C0 E0              2352 	push	acc
   30E8 74 49              2353 	mov	a,#(__str_19 >> 8)
   30EA C0 E0              2354 	push	acc
   30EC 74 80              2355 	mov	a,#0x80
   30EE C0 E0              2356 	push	acc
   30F0 12 3B EB           2357 	lcall	_printf
   30F3 E5 81              2358 	mov	a,sp
   30F5 24 F8              2359 	add	a,#0xf8
   30F7 F5 81              2360 	mov	sp,a
   30F9 D0 07              2361 	pop	ar7
   30FB D0 06              2362 	pop	ar6
   30FD D0 05              2363 	pop	ar5
   30FF D0 02              2364 	pop	ar2
                           2365 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:367: if(stateBeingProcessed == source)
   3101 ED                 2366 	mov	a,r5
   3102 B5 40 0A           2367 	cjne	a,_iterateStateMachine_sloc0_1_0,00220$
   3105 EE                 2368 	mov	a,r6
   3106 B5 41 06           2369 	cjne	a,(_iterateStateMachine_sloc0_1_0 + 1),00220$
   3109 EF                 2370 	mov	a,r7
   310A B5 42 02           2371 	cjne	a,(_iterateStateMachine_sloc0_1_0 + 2),00220$
   310D 80 03              2372 	sjmp	00221$
   310F                    2373 00220$:
   310F 02 31 CD           2374 	ljmp	00125$
   3112                    2375 00221$:
                           2376 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:370: printf("\t\t\t\t\t\tFound source as ancestor of target\n") ;
   3112 74 EA              2377 	mov	a,#__str_20
   3114 C0 E0              2378 	push	acc
   3116 74 49              2379 	mov	a,#(__str_20 >> 8)
   3118 C0 E0              2380 	push	acc
   311A 74 80              2381 	mov	a,#0x80
   311C C0 E0              2382 	push	acc
   311E 12 3B EB           2383 	lcall	_printf
   3121 15 81              2384 	dec	sp
   3123 15 81              2385 	dec	sp
   3125 15 81              2386 	dec	sp
                           2387 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:373: while(targetIndex--)
   3127 90 0A 62           2388 	mov	dptr,#_iterateStateMachine_targetIndex_4_14
   312A E0                 2389 	movx	a,@dptr
   312B FB                 2390 	mov	r3,a
   312C                    2391 00121$:
   312C 8B 04              2392 	mov	ar4,r3
   312E 1B                 2393 	dec	r3
   312F EC                 2394 	mov	a,r4
   3130 60 6B              2395 	jz	00192$
                           2396 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:376: printf("\t\t\t\t") ;
   3132 C0 03              2397 	push	ar3
   3134 74 A4              2398 	mov	a,#__str_17
   3136 C0 E0              2399 	push	acc
   3138 74 49              2400 	mov	a,#(__str_17 >> 8)
   313A C0 E0              2401 	push	acc
   313C 74 80              2402 	mov	a,#0x80
   313E C0 E0              2403 	push	acc
   3140 12 3B EB           2404 	lcall	_printf
   3143 15 81              2405 	dec	sp
   3145 15 81              2406 	dec	sp
   3147 15 81              2407 	dec	sp
   3149 D0 03              2408 	pop	ar3
                           2409 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:378: callStateHandler(sm, targetHierarchy[targetIndex], &enterEvent) ;
   314B 90 09 F8           2410 	mov	dptr,#_iterateStateMachine_sm_1_1
   314E E0                 2411 	movx	a,@dptr
   314F F5 4C              2412 	mov	_iterateStateMachine_sloc4_1_0,a
   3151 A3                 2413 	inc	dptr
   3152 E0                 2414 	movx	a,@dptr
   3153 F5 4D              2415 	mov	(_iterateStateMachine_sloc4_1_0 + 1),a
   3155 A3                 2416 	inc	dptr
   3156 E0                 2417 	movx	a,@dptr
   3157 F5 4E              2418 	mov	(_iterateStateMachine_sloc4_1_0 + 2),a
   3159 EB                 2419 	mov	a,r3
   315A 75 F0 03           2420 	mov	b,#0x03
   315D A4                 2421 	mul	ab
   315E 24 32              2422 	add	a,#_iterateStateMachine_targetHierarchy_4_14
   3160 F5 82              2423 	mov	dpl,a
   3162 E4                 2424 	clr	a
   3163 34 0A              2425 	addc	a,#(_iterateStateMachine_targetHierarchy_4_14 >> 8)
   3165 F5 83              2426 	mov	dph,a
   3167 C0 03              2427 	push	ar3
   3169 E0                 2428 	movx	a,@dptr
   316A FB                 2429 	mov	r3,a
   316B A3                 2430 	inc	dptr
   316C E0                 2431 	movx	a,@dptr
   316D FC                 2432 	mov	r4,a
   316E A3                 2433 	inc	dptr
   316F E0                 2434 	movx	a,@dptr
   3170 F8                 2435 	mov	r0,a
   3171 90 09 EF           2436 	mov	dptr,#_callStateHandler_PARM_2
   3174 EB                 2437 	mov	a,r3
   3175 F0                 2438 	movx	@dptr,a
   3176 A3                 2439 	inc	dptr
   3177 EC                 2440 	mov	a,r4
   3178 F0                 2441 	movx	@dptr,a
   3179 A3                 2442 	inc	dptr
   317A E8                 2443 	mov	a,r0
   317B F0                 2444 	movx	@dptr,a
   317C 90 09 F2           2445 	mov	dptr,#_callStateHandler_PARM_3
   317F 74 F8              2446 	mov	a,#_enterEvent
   3181 F0                 2447 	movx	@dptr,a
   3182 A3                 2448 	inc	dptr
   3183 74 0E              2449 	mov	a,#(_enterEvent >> 8)
   3185 F0                 2450 	movx	@dptr,a
   3186 A3                 2451 	inc	dptr
   3187 E4                 2452 	clr	a
   3188 F0                 2453 	movx	@dptr,a
   3189 85 4C 82           2454 	mov	dpl,_iterateStateMachine_sloc4_1_0
   318C 85 4D 83           2455 	mov	dph,(_iterateStateMachine_sloc4_1_0 + 1)
   318F 85 4E F0           2456 	mov	b,(_iterateStateMachine_sloc4_1_0 + 2)
   3192 C0 03              2457 	push	ar3
   3194 12 26 C5           2458 	lcall	_callStateHandler
   3197 D0 03              2459 	pop	ar3
   3199 D0 03              2460 	pop	ar3
   319B 80 8F              2461 	sjmp	00121$
   319D                    2462 00192$:
   319D 90 0A 62           2463 	mov	dptr,#_iterateStateMachine_targetIndex_4_14
   31A0 EB                 2464 	mov	a,r3
   31A1 F0                 2465 	movx	@dptr,a
                           2466 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:381: sm->currentState = target ;
   31A2 90 09 F8           2467 	mov	dptr,#_iterateStateMachine_sm_1_1
   31A5 E0                 2468 	movx	a,@dptr
   31A6 FB                 2469 	mov	r3,a
   31A7 A3                 2470 	inc	dptr
   31A8 E0                 2471 	movx	a,@dptr
   31A9 FC                 2472 	mov	r4,a
   31AA A3                 2473 	inc	dptr
   31AB E0                 2474 	movx	a,@dptr
   31AC F8                 2475 	mov	r0,a
   31AD 74 06              2476 	mov	a,#0x06
   31AF 2B                 2477 	add	a,r3
   31B0 FB                 2478 	mov	r3,a
   31B1 E4                 2479 	clr	a
   31B2 3C                 2480 	addc	a,r4
   31B3 FC                 2481 	mov	r4,a
   31B4 8B 82              2482 	mov	dpl,r3
   31B6 8C 83              2483 	mov	dph,r4
   31B8 88 F0              2484 	mov	b,r0
   31BA E5 46              2485 	mov	a,_iterateStateMachine_sloc2_1_0
   31BC 12 38 0B           2486 	lcall	__gptrput
   31BF A3                 2487 	inc	dptr
   31C0 E5 47              2488 	mov	a,(_iterateStateMachine_sloc2_1_0 + 1)
   31C2 12 38 0B           2489 	lcall	__gptrput
   31C5 A3                 2490 	inc	dptr
   31C6 E5 48              2491 	mov	a,(_iterateStateMachine_sloc2_1_0 + 2)
   31C8 12 38 0B           2492 	lcall	__gptrput
                           2493 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:383: break ;
   31CB 80 38              2494 	sjmp	00130$
   31CD                    2495 00125$:
                           2496 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:386: targetIndex++ ;
   31CD 0A                 2497 	inc	r2
   31CE 90 0A 62           2498 	mov	dptr,#_iterateStateMachine_targetIndex_4_14
   31D1 EA                 2499 	mov	a,r2
   31D2 F0                 2500 	movx	@dptr,a
                           2501 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:387: stateBeingProcessed = (state_t*)(stateBeingProcessed->parent) ;
   31D3 8D 82              2502 	mov	dpl,r5
   31D5 8E 83              2503 	mov	dph,r6
   31D7 8F F0              2504 	mov	b,r7
   31D9 12 44 37           2505 	lcall	__gptrget
   31DC FD                 2506 	mov	r5,a
   31DD A3                 2507 	inc	dptr
   31DE 12 44 37           2508 	lcall	__gptrget
   31E1 FE                 2509 	mov	r6,a
   31E2 A3                 2510 	inc	dptr
   31E3 12 44 37           2511 	lcall	__gptrget
   31E6 FF                 2512 	mov	r7,a
   31E7 90 09 FE           2513 	mov	dptr,#_iterateStateMachine_stateBeingProcessed_2_3
   31EA ED                 2514 	mov	a,r5
   31EB F0                 2515 	movx	@dptr,a
   31EC A3                 2516 	inc	dptr
   31ED EE                 2517 	mov	a,r6
   31EE F0                 2518 	movx	@dptr,a
   31EF A3                 2519 	inc	dptr
   31F0 EF                 2520 	mov	a,r7
   31F1 F0                 2521 	movx	@dptr,a
                           2522 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:388: } while(stateBeingProcessed) ;
   31F2 90 09 FE           2523 	mov	dptr,#_iterateStateMachine_stateBeingProcessed_2_3
   31F5 E0                 2524 	movx	a,@dptr
   31F6 FB                 2525 	mov	r3,a
   31F7 A3                 2526 	inc	dptr
   31F8 E0                 2527 	movx	a,@dptr
   31F9 FC                 2528 	mov	r4,a
   31FA A3                 2529 	inc	dptr
   31FB E0                 2530 	movx	a,@dptr
   31FC FD                 2531 	mov	r5,a
   31FD EB                 2532 	mov	a,r3
   31FE 4C                 2533 	orl	a,r4
   31FF 4D                 2534 	orl	a,r5
   3200 60 03              2535 	jz	00223$
   3202 02 30 8B           2536 	ljmp	00126$
   3205                    2537 00223$:
   3205                    2538 00130$:
                           2539 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:391: if(sm->currentState != target)
   3205 90 09 F8           2540 	mov	dptr,#_iterateStateMachine_sm_1_1
   3208 E0                 2541 	movx	a,@dptr
   3209 FA                 2542 	mov	r2,a
   320A A3                 2543 	inc	dptr
   320B E0                 2544 	movx	a,@dptr
   320C FB                 2545 	mov	r3,a
   320D A3                 2546 	inc	dptr
   320E E0                 2547 	movx	a,@dptr
   320F FC                 2548 	mov	r4,a
   3210 74 06              2549 	mov	a,#0x06
   3212 2A                 2550 	add	a,r2
   3213 FA                 2551 	mov	r2,a
   3214 E4                 2552 	clr	a
   3215 3B                 2553 	addc	a,r3
   3216 FB                 2554 	mov	r3,a
   3217 8A 82              2555 	mov	dpl,r2
   3219 8B 83              2556 	mov	dph,r3
   321B 8C F0              2557 	mov	b,r4
   321D 12 44 37           2558 	lcall	__gptrget
   3220 FA                 2559 	mov	r2,a
   3221 A3                 2560 	inc	dptr
   3222 12 44 37           2561 	lcall	__gptrget
   3225 FB                 2562 	mov	r3,a
   3226 A3                 2563 	inc	dptr
   3227 12 44 37           2564 	lcall	__gptrget
   322A FC                 2565 	mov	r4,a
   322B EA                 2566 	mov	a,r2
   322C B5 46 0B           2567 	cjne	a,_iterateStateMachine_sloc2_1_0,00224$
   322F EB                 2568 	mov	a,r3
   3230 B5 47 07           2569 	cjne	a,(_iterateStateMachine_sloc2_1_0 + 1),00224$
   3233 EC                 2570 	mov	a,r4
   3234 B5 48 03           2571 	cjne	a,(_iterateStateMachine_sloc2_1_0 + 2),00224$
   3237 02 35 05           2572 	ljmp	00153$
   323A                    2573 00224$:
                           2574 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:396: printf("\t\t\t\tStill haven't found relationship. Scanning for LCA...\n") ;
   323A 74 14              2575 	mov	a,#__str_21
   323C C0 E0              2576 	push	acc
   323E 74 4A              2577 	mov	a,#(__str_21 >> 8)
   3240 C0 E0              2578 	push	acc
   3242 74 80              2579 	mov	a,#0x80
   3244 C0 E0              2580 	push	acc
   3246 12 3B EB           2581 	lcall	_printf
   3249 15 81              2582 	dec	sp
   324B 15 81              2583 	dec	sp
   324D 15 81              2584 	dec	sp
                           2585 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:398: LCA			= 0 ;
   324F 90 0A 63           2586 	mov	dptr,#_iterateStateMachine_LCA_4_14
   3252 E4                 2587 	clr	a
   3253 F0                 2588 	movx	@dptr,a
   3254 A3                 2589 	inc	dptr
   3255 F0                 2590 	movx	@dptr,a
   3256 A3                 2591 	inc	dptr
   3257 F0                 2592 	movx	@dptr,a
                           2593 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:399: entryIndex	= targetIndex - 1 ;
   3258 90 0A 62           2594 	mov	dptr,#_iterateStateMachine_targetIndex_4_14
   325B E0                 2595 	movx	a,@dptr
   325C FA                 2596 	mov	r2,a
   325D 1A                 2597 	dec	r2
   325E 90 0A 66           2598 	mov	dptr,#_iterateStateMachine_entryIndex_4_14
   3261 EA                 2599 	mov	a,r2
   3262 F0                 2600 	movx	@dptr,a
                           2601 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:400: exitIndex	= sourceIndex - 1 ;
   3263 90 0A 31           2602 	mov	dptr,#_iterateStateMachine_sourceIndex_4_14
   3266 E0                 2603 	movx	a,@dptr
   3267 FB                 2604 	mov	r3,a
   3268 1B                 2605 	dec	r3
                           2606 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:402: printf("\t\t\t\t\tentryIndex = %d, exitIndex = %d\n", entryIndex, exitIndex) ;
   3269 8B 04              2607 	mov	ar4,r3
   326B 7D 00              2608 	mov	r5,#0x00
   326D 8A 06              2609 	mov	ar6,r2
   326F 7F 00              2610 	mov	r7,#0x00
   3271 C0 02              2611 	push	ar2
   3273 C0 03              2612 	push	ar3
   3275 C0 04              2613 	push	ar4
   3277 C0 05              2614 	push	ar5
   3279 C0 06              2615 	push	ar6
   327B C0 07              2616 	push	ar7
   327D 74 4F              2617 	mov	a,#__str_22
   327F C0 E0              2618 	push	acc
   3281 74 4A              2619 	mov	a,#(__str_22 >> 8)
   3283 C0 E0              2620 	push	acc
   3285 74 80              2621 	mov	a,#0x80
   3287 C0 E0              2622 	push	acc
   3289 12 3B EB           2623 	lcall	_printf
   328C E5 81              2624 	mov	a,sp
   328E 24 F9              2625 	add	a,#0xf9
   3290 F5 81              2626 	mov	sp,a
   3292 D0 03              2627 	pop	ar3
   3294 D0 02              2628 	pop	ar2
                           2629 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:405: while(sourceHierarchy[exitIndex] == targetHierarchy[entryIndex])
   3296 7C 00              2630 	mov	r4,#0x00
   3298                    2631 00131$:
   3298 C0 04              2632 	push	ar4
   329A EB                 2633 	mov	a,r3
   329B 75 F0 03           2634 	mov	b,#0x03
   329E A4                 2635 	mul	ab
   329F 24 01              2636 	add	a,#_iterateStateMachine_sourceHierarchy_4_14
   32A1 F5 82              2637 	mov	dpl,a
   32A3 E4                 2638 	clr	a
   32A4 34 0A              2639 	addc	a,#(_iterateStateMachine_sourceHierarchy_4_14 >> 8)
   32A6 F5 83              2640 	mov	dph,a
   32A8 E0                 2641 	movx	a,@dptr
   32A9 FD                 2642 	mov	r5,a
   32AA A3                 2643 	inc	dptr
   32AB E0                 2644 	movx	a,@dptr
   32AC FE                 2645 	mov	r6,a
   32AD A3                 2646 	inc	dptr
   32AE E0                 2647 	movx	a,@dptr
   32AF FF                 2648 	mov	r7,a
   32B0 EA                 2649 	mov	a,r2
   32B1 75 F0 03           2650 	mov	b,#0x03
   32B4 A4                 2651 	mul	ab
   32B5 24 32              2652 	add	a,#_iterateStateMachine_targetHierarchy_4_14
   32B7 F5 82              2653 	mov	dpl,a
   32B9 E4                 2654 	clr	a
   32BA 34 0A              2655 	addc	a,#(_iterateStateMachine_targetHierarchy_4_14 >> 8)
   32BC F5 83              2656 	mov	dph,a
   32BE E0                 2657 	movx	a,@dptr
   32BF F8                 2658 	mov	r0,a
   32C0 A3                 2659 	inc	dptr
   32C1 E0                 2660 	movx	a,@dptr
   32C2 F9                 2661 	mov	r1,a
   32C3 A3                 2662 	inc	dptr
   32C4 E0                 2663 	movx	a,@dptr
   32C5 FC                 2664 	mov	r4,a
   32C6 ED                 2665 	mov	a,r5
   32C7 B5 00 0A           2666 	cjne	a,ar0,00225$
   32CA EE                 2667 	mov	a,r6
   32CB B5 01 06           2668 	cjne	a,ar1,00225$
   32CE EF                 2669 	mov	a,r7
   32CF B5 04 02           2670 	cjne	a,ar4,00225$
   32D2 80 04              2671 	sjmp	00226$
   32D4                    2672 00225$:
   32D4 D0 04              2673 	pop	ar4
   32D6 80 65              2674 	sjmp	00193$
   32D8                    2675 00226$:
   32D8 D0 04              2676 	pop	ar4
                           2677 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:407: LCA = sourceHierarchy[exitIndex] ;
   32DA 90 0A 63           2678 	mov	dptr,#_iterateStateMachine_LCA_4_14
   32DD ED                 2679 	mov	a,r5
   32DE F0                 2680 	movx	@dptr,a
   32DF A3                 2681 	inc	dptr
   32E0 EE                 2682 	mov	a,r6
   32E1 F0                 2683 	movx	@dptr,a
   32E2 A3                 2684 	inc	dptr
   32E3 EF                 2685 	mov	a,r7
   32E4 F0                 2686 	movx	@dptr,a
                           2687 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:409: entryIndex-- ;
   32E5 1A                 2688 	dec	r2
   32E6 90 0A 66           2689 	mov	dptr,#_iterateStateMachine_entryIndex_4_14
   32E9 EA                 2690 	mov	a,r2
   32EA F0                 2691 	movx	@dptr,a
                           2692 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:410: exitIndex-- ;
   32EB 1B                 2693 	dec	r3
                           2694 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:413: printf("\t\t\t\t\tCurrent LCA candidate: %s\n", LCA->stateName) ;
   32EC 90 0A 63           2695 	mov	dptr,#_iterateStateMachine_LCA_4_14
   32EF E0                 2696 	movx	a,@dptr
   32F0 FD                 2697 	mov	r5,a
   32F1 A3                 2698 	inc	dptr
   32F2 E0                 2699 	movx	a,@dptr
   32F3 FE                 2700 	mov	r6,a
   32F4 A3                 2701 	inc	dptr
   32F5 E0                 2702 	movx	a,@dptr
   32F6 FF                 2703 	mov	r7,a
   32F7 74 06              2704 	mov	a,#0x06
   32F9 2D                 2705 	add	a,r5
   32FA FD                 2706 	mov	r5,a
   32FB E4                 2707 	clr	a
   32FC 3E                 2708 	addc	a,r6
   32FD FE                 2709 	mov	r6,a
   32FE 8D 82              2710 	mov	dpl,r5
   3300 8E 83              2711 	mov	dph,r6
   3302 8F F0              2712 	mov	b,r7
   3304 12 44 37           2713 	lcall	__gptrget
   3307 FD                 2714 	mov	r5,a
   3308 A3                 2715 	inc	dptr
   3309 12 44 37           2716 	lcall	__gptrget
   330C FE                 2717 	mov	r6,a
   330D A3                 2718 	inc	dptr
   330E 12 44 37           2719 	lcall	__gptrget
   3311 FF                 2720 	mov	r7,a
   3312 C0 02              2721 	push	ar2
   3314 C0 03              2722 	push	ar3
   3316 C0 04              2723 	push	ar4
   3318 C0 05              2724 	push	ar5
   331A C0 06              2725 	push	ar6
   331C C0 07              2726 	push	ar7
   331E 74 75              2727 	mov	a,#__str_23
   3320 C0 E0              2728 	push	acc
   3322 74 4A              2729 	mov	a,#(__str_23 >> 8)
   3324 C0 E0              2730 	push	acc
   3326 74 80              2731 	mov	a,#0x80
   3328 C0 E0              2732 	push	acc
   332A 12 3B EB           2733 	lcall	_printf
   332D E5 81              2734 	mov	a,sp
   332F 24 FA              2735 	add	a,#0xfa
   3331 F5 81              2736 	mov	sp,a
   3333 D0 04              2737 	pop	ar4
   3335 D0 03              2738 	pop	ar3
   3337 D0 02              2739 	pop	ar2
                           2740 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:416: LCAindex++ ;
   3339 0C                 2741 	inc	r4
   333A 02 32 98           2742 	ljmp	00131$
   333D                    2743 00193$:
   333D 90 0A 66           2744 	mov	dptr,#_iterateStateMachine_entryIndex_4_14
   3340 EA                 2745 	mov	a,r2
   3341 F0                 2746 	movx	@dptr,a
                           2747 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:420: printf("\t\t\t\t\tLCA of %s and %s is: %s\n", source->stateName, target->stateName, LCA->stateName) ;
   3342 90 0A 63           2748 	mov	dptr,#_iterateStateMachine_LCA_4_14
   3345 E0                 2749 	movx	a,@dptr
   3346 FC                 2750 	mov	r4,a
   3347 A3                 2751 	inc	dptr
   3348 E0                 2752 	movx	a,@dptr
   3349 FD                 2753 	mov	r5,a
   334A A3                 2754 	inc	dptr
   334B E0                 2755 	movx	a,@dptr
   334C FE                 2756 	mov	r6,a
   334D 74 06              2757 	mov	a,#0x06
   334F 2C                 2758 	add	a,r4
   3350 FC                 2759 	mov	r4,a
   3351 E4                 2760 	clr	a
   3352 3D                 2761 	addc	a,r5
   3353 FD                 2762 	mov	r5,a
   3354 8C 82              2763 	mov	dpl,r4
   3356 8D 83              2764 	mov	dph,r5
   3358 8E F0              2765 	mov	b,r6
   335A 12 44 37           2766 	lcall	__gptrget
   335D FC                 2767 	mov	r4,a
   335E A3                 2768 	inc	dptr
   335F 12 44 37           2769 	lcall	__gptrget
   3362 FD                 2770 	mov	r5,a
   3363 A3                 2771 	inc	dptr
   3364 12 44 37           2772 	lcall	__gptrget
   3367 FE                 2773 	mov	r6,a
   3368 74 06              2774 	mov	a,#0x06
   336A 25 46              2775 	add	a,_iterateStateMachine_sloc2_1_0
   336C FF                 2776 	mov	r7,a
   336D E4                 2777 	clr	a
   336E 35 47              2778 	addc	a,(_iterateStateMachine_sloc2_1_0 + 1)
   3370 F8                 2779 	mov	r0,a
   3371 A9 48              2780 	mov	r1,(_iterateStateMachine_sloc2_1_0 + 2)
   3373 8F 82              2781 	mov	dpl,r7
   3375 88 83              2782 	mov	dph,r0
   3377 89 F0              2783 	mov	b,r1
   3379 12 44 37           2784 	lcall	__gptrget
   337C F5 4C              2785 	mov	_iterateStateMachine_sloc4_1_0,a
   337E A3                 2786 	inc	dptr
   337F 12 44 37           2787 	lcall	__gptrget
   3382 F5 4D              2788 	mov	(_iterateStateMachine_sloc4_1_0 + 1),a
   3384 A3                 2789 	inc	dptr
   3385 12 44 37           2790 	lcall	__gptrget
   3388 F5 4E              2791 	mov	(_iterateStateMachine_sloc4_1_0 + 2),a
   338A 74 06              2792 	mov	a,#0x06
   338C 25 40              2793 	add	a,_iterateStateMachine_sloc0_1_0
   338E FF                 2794 	mov	r7,a
   338F E4                 2795 	clr	a
   3390 35 41              2796 	addc	a,(_iterateStateMachine_sloc0_1_0 + 1)
   3392 F8                 2797 	mov	r0,a
   3393 A9 42              2798 	mov	r1,(_iterateStateMachine_sloc0_1_0 + 2)
   3395 8F 82              2799 	mov	dpl,r7
   3397 88 83              2800 	mov	dph,r0
   3399 89 F0              2801 	mov	b,r1
   339B 12 44 37           2802 	lcall	__gptrget
   339E FF                 2803 	mov	r7,a
   339F A3                 2804 	inc	dptr
   33A0 12 44 37           2805 	lcall	__gptrget
   33A3 F8                 2806 	mov	r0,a
   33A4 A3                 2807 	inc	dptr
   33A5 12 44 37           2808 	lcall	__gptrget
   33A8 F9                 2809 	mov	r1,a
   33A9 C0 02              2810 	push	ar2
   33AB C0 03              2811 	push	ar3
   33AD C0 04              2812 	push	ar4
   33AF C0 05              2813 	push	ar5
   33B1 C0 06              2814 	push	ar6
   33B3 C0 4C              2815 	push	_iterateStateMachine_sloc4_1_0
   33B5 C0 4D              2816 	push	(_iterateStateMachine_sloc4_1_0 + 1)
   33B7 C0 4E              2817 	push	(_iterateStateMachine_sloc4_1_0 + 2)
   33B9 C0 07              2818 	push	ar7
   33BB C0 00              2819 	push	ar0
   33BD C0 01              2820 	push	ar1
   33BF 74 95              2821 	mov	a,#__str_24
   33C1 C0 E0              2822 	push	acc
   33C3 74 4A              2823 	mov	a,#(__str_24 >> 8)
   33C5 C0 E0              2824 	push	acc
   33C7 74 80              2825 	mov	a,#0x80
   33C9 C0 E0              2826 	push	acc
   33CB 12 3B EB           2827 	lcall	_printf
   33CE E5 81              2828 	mov	a,sp
   33D0 24 F4              2829 	add	a,#0xf4
   33D2 F5 81              2830 	mov	sp,a
   33D4 D0 03              2831 	pop	ar3
   33D6 D0 02              2832 	pop	ar2
                           2833 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:421: printf("\t\t\t\t\tentryIndex = %d, exitIndex = %d\n", entryIndex, exitIndex) ;
   33D8 8B 04              2834 	mov	ar4,r3
   33DA 7D 00              2835 	mov	r5,#0x00
   33DC 7E 00              2836 	mov	r6,#0x00
   33DE C0 03              2837 	push	ar3
   33E0 C0 04              2838 	push	ar4
   33E2 C0 05              2839 	push	ar5
   33E4 C0 02              2840 	push	ar2
   33E6 C0 06              2841 	push	ar6
   33E8 74 4F              2842 	mov	a,#__str_22
   33EA C0 E0              2843 	push	acc
   33EC 74 4A              2844 	mov	a,#(__str_22 >> 8)
   33EE C0 E0              2845 	push	acc
   33F0 74 80              2846 	mov	a,#0x80
   33F2 C0 E0              2847 	push	acc
   33F4 12 3B EB           2848 	lcall	_printf
   33F7 E5 81              2849 	mov	a,sp
   33F9 24 F9              2850 	add	a,#0xf9
   33FB F5 81              2851 	mov	sp,a
   33FD D0 03              2852 	pop	ar3
                           2853 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:424: sourceIndex	= exitIndex + 1 ;
   33FF EB                 2854 	mov	a,r3
   3400 04                 2855 	inc	a
   3401 FA                 2856 	mov	r2,a
                           2857 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:427: while(exitIndex < sourceIndex)
   3402 7B 00              2858 	mov	r3,#0x00
   3404                    2859 00134$:
   3404 C3                 2860 	clr	c
   3405 EB                 2861 	mov	a,r3
   3406 9A                 2862 	subb	a,r2
   3407 50 66              2863 	jnc	00136$
                           2864 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:430: printf("\t\t\t\t") ;
   3409 C0 02              2865 	push	ar2
   340B C0 03              2866 	push	ar3
   340D 74 A4              2867 	mov	a,#__str_17
   340F C0 E0              2868 	push	acc
   3411 74 49              2869 	mov	a,#(__str_17 >> 8)
   3413 C0 E0              2870 	push	acc
   3415 74 80              2871 	mov	a,#0x80
   3417 C0 E0              2872 	push	acc
   3419 12 3B EB           2873 	lcall	_printf
   341C 15 81              2874 	dec	sp
   341E 15 81              2875 	dec	sp
   3420 15 81              2876 	dec	sp
   3422 D0 03              2877 	pop	ar3
                           2878 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:433: callStateHandler(sm, sourceHierarchy[exitIndex], &exitEvent) ;
   3424 90 09 F8           2879 	mov	dptr,#_iterateStateMachine_sm_1_1
   3427 E0                 2880 	movx	a,@dptr
   3428 FC                 2881 	mov	r4,a
   3429 A3                 2882 	inc	dptr
   342A E0                 2883 	movx	a,@dptr
   342B FD                 2884 	mov	r5,a
   342C A3                 2885 	inc	dptr
   342D E0                 2886 	movx	a,@dptr
   342E FE                 2887 	mov	r6,a
   342F EB                 2888 	mov	a,r3
   3430 75 F0 03           2889 	mov	b,#0x03
   3433 A4                 2890 	mul	ab
   3434 24 01              2891 	add	a,#_iterateStateMachine_sourceHierarchy_4_14
   3436 F5 82              2892 	mov	dpl,a
   3438 E4                 2893 	clr	a
   3439 34 0A              2894 	addc	a,#(_iterateStateMachine_sourceHierarchy_4_14 >> 8)
   343B F5 83              2895 	mov	dph,a
   343D E0                 2896 	movx	a,@dptr
   343E FF                 2897 	mov	r7,a
   343F A3                 2898 	inc	dptr
   3440 E0                 2899 	movx	a,@dptr
   3441 F8                 2900 	mov	r0,a
   3442 A3                 2901 	inc	dptr
   3443 E0                 2902 	movx	a,@dptr
   3444 F9                 2903 	mov	r1,a
   3445 90 09 EF           2904 	mov	dptr,#_callStateHandler_PARM_2
   3448 EF                 2905 	mov	a,r7
   3449 F0                 2906 	movx	@dptr,a
   344A A3                 2907 	inc	dptr
   344B E8                 2908 	mov	a,r0
   344C F0                 2909 	movx	@dptr,a
   344D A3                 2910 	inc	dptr
   344E E9                 2911 	mov	a,r1
   344F F0                 2912 	movx	@dptr,a
   3450 90 09 F2           2913 	mov	dptr,#_callStateHandler_PARM_3
   3453 74 F9              2914 	mov	a,#_exitEvent
   3455 F0                 2915 	movx	@dptr,a
   3456 A3                 2916 	inc	dptr
   3457 74 0E              2917 	mov	a,#(_exitEvent >> 8)
   3459 F0                 2918 	movx	@dptr,a
   345A A3                 2919 	inc	dptr
   345B E4                 2920 	clr	a
   345C F0                 2921 	movx	@dptr,a
   345D 8C 82              2922 	mov	dpl,r4
   345F 8D 83              2923 	mov	dph,r5
   3461 8E F0              2924 	mov	b,r6
   3463 C0 03              2925 	push	ar3
   3465 12 26 C5           2926 	lcall	_callStateHandler
   3468 D0 03              2927 	pop	ar3
   346A D0 02              2928 	pop	ar2
                           2929 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:435: exitIndex++ ;
   346C 0B                 2930 	inc	r3
   346D 80 95              2931 	sjmp	00134$
   346F                    2932 00136$:
                           2933 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:438: targetIndex = entryIndex + 1 ;
   346F 90 0A 66           2934 	mov	dptr,#_iterateStateMachine_entryIndex_4_14
   3472 E0                 2935 	movx	a,@dptr
   3473 FA                 2936 	mov	r2,a
   3474 0A                 2937 	inc	r2
                           2938 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:440: while(targetIndex--)
   3475                    2939 00137$:
   3475 8A 03              2940 	mov	ar3,r2
   3477 1A                 2941 	dec	r2
   3478 EB                 2942 	mov	a,r3
   3479 60 61              2943 	jz	00139$
                           2944 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:443: printf("\t\t\t\t") ;
   347B C0 02              2945 	push	ar2
   347D 74 A4              2946 	mov	a,#__str_17
   347F C0 E0              2947 	push	acc
   3481 74 49              2948 	mov	a,#(__str_17 >> 8)
   3483 C0 E0              2949 	push	acc
   3485 74 80              2950 	mov	a,#0x80
   3487 C0 E0              2951 	push	acc
   3489 12 3B EB           2952 	lcall	_printf
   348C 15 81              2953 	dec	sp
   348E 15 81              2954 	dec	sp
   3490 15 81              2955 	dec	sp
   3492 D0 02              2956 	pop	ar2
                           2957 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:445: callStateHandler(sm, targetHierarchy[targetIndex], &enterEvent) ;
   3494 90 09 F8           2958 	mov	dptr,#_iterateStateMachine_sm_1_1
   3497 E0                 2959 	movx	a,@dptr
   3498 FB                 2960 	mov	r3,a
   3499 A3                 2961 	inc	dptr
   349A E0                 2962 	movx	a,@dptr
   349B FC                 2963 	mov	r4,a
   349C A3                 2964 	inc	dptr
   349D E0                 2965 	movx	a,@dptr
   349E FD                 2966 	mov	r5,a
   349F EA                 2967 	mov	a,r2
   34A0 75 F0 03           2968 	mov	b,#0x03
   34A3 A4                 2969 	mul	ab
   34A4 24 32              2970 	add	a,#_iterateStateMachine_targetHierarchy_4_14
   34A6 F5 82              2971 	mov	dpl,a
   34A8 E4                 2972 	clr	a
   34A9 34 0A              2973 	addc	a,#(_iterateStateMachine_targetHierarchy_4_14 >> 8)
   34AB F5 83              2974 	mov	dph,a
   34AD E0                 2975 	movx	a,@dptr
   34AE FE                 2976 	mov	r6,a
   34AF A3                 2977 	inc	dptr
   34B0 E0                 2978 	movx	a,@dptr
   34B1 FF                 2979 	mov	r7,a
   34B2 A3                 2980 	inc	dptr
   34B3 E0                 2981 	movx	a,@dptr
   34B4 F8                 2982 	mov	r0,a
   34B5 90 09 EF           2983 	mov	dptr,#_callStateHandler_PARM_2
   34B8 EE                 2984 	mov	a,r6
   34B9 F0                 2985 	movx	@dptr,a
   34BA A3                 2986 	inc	dptr
   34BB EF                 2987 	mov	a,r7
   34BC F0                 2988 	movx	@dptr,a
   34BD A3                 2989 	inc	dptr
   34BE E8                 2990 	mov	a,r0
   34BF F0                 2991 	movx	@dptr,a
   34C0 90 09 F2           2992 	mov	dptr,#_callStateHandler_PARM_3
   34C3 74 F8              2993 	mov	a,#_enterEvent
   34C5 F0                 2994 	movx	@dptr,a
   34C6 A3                 2995 	inc	dptr
   34C7 74 0E              2996 	mov	a,#(_enterEvent >> 8)
   34C9 F0                 2997 	movx	@dptr,a
   34CA A3                 2998 	inc	dptr
   34CB E4                 2999 	clr	a
   34CC F0                 3000 	movx	@dptr,a
   34CD 8B 82              3001 	mov	dpl,r3
   34CF 8C 83              3002 	mov	dph,r4
   34D1 8D F0              3003 	mov	b,r5
   34D3 C0 02              3004 	push	ar2
   34D5 12 26 C5           3005 	lcall	_callStateHandler
   34D8 D0 02              3006 	pop	ar2
   34DA 80 99              3007 	sjmp	00137$
   34DC                    3008 00139$:
                           3009 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:448: sm->currentState = target ;
   34DC 90 09 F8           3010 	mov	dptr,#_iterateStateMachine_sm_1_1
   34DF E0                 3011 	movx	a,@dptr
   34E0 FA                 3012 	mov	r2,a
   34E1 A3                 3013 	inc	dptr
   34E2 E0                 3014 	movx	a,@dptr
   34E3 FB                 3015 	mov	r3,a
   34E4 A3                 3016 	inc	dptr
   34E5 E0                 3017 	movx	a,@dptr
   34E6 FC                 3018 	mov	r4,a
   34E7 74 06              3019 	mov	a,#0x06
   34E9 2A                 3020 	add	a,r2
   34EA FA                 3021 	mov	r2,a
   34EB E4                 3022 	clr	a
   34EC 3B                 3023 	addc	a,r3
   34ED FB                 3024 	mov	r3,a
   34EE 8A 82              3025 	mov	dpl,r2
   34F0 8B 83              3026 	mov	dph,r3
   34F2 8C F0              3027 	mov	b,r4
   34F4 E5 46              3028 	mov	a,_iterateStateMachine_sloc2_1_0
   34F6 12 38 0B           3029 	lcall	__gptrput
   34F9 A3                 3030 	inc	dptr
   34FA E5 47              3031 	mov	a,(_iterateStateMachine_sloc2_1_0 + 1)
   34FC 12 38 0B           3032 	lcall	__gptrput
   34FF A3                 3033 	inc	dptr
   3500 E5 48              3034 	mov	a,(_iterateStateMachine_sloc2_1_0 + 2)
   3502 12 38 0B           3035 	lcall	__gptrput
   3505                    3036 00153$:
                           3037 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:456: sm->forceTransition = true ;
   3505 90 09 F8           3038 	mov	dptr,#_iterateStateMachine_sm_1_1
   3508 E0                 3039 	movx	a,@dptr
   3509 FA                 3040 	mov	r2,a
   350A A3                 3041 	inc	dptr
   350B E0                 3042 	movx	a,@dptr
   350C FB                 3043 	mov	r3,a
   350D A3                 3044 	inc	dptr
   350E E0                 3045 	movx	a,@dptr
   350F FC                 3046 	mov	r4,a
   3510 74 14              3047 	mov	a,#0x14
   3512 2A                 3048 	add	a,r2
   3513 FA                 3049 	mov	r2,a
   3514 E4                 3050 	clr	a
   3515 3B                 3051 	addc	a,r3
   3516 FB                 3052 	mov	r3,a
   3517 8A 82              3053 	mov	dpl,r2
   3519 8B 83              3054 	mov	dph,r3
   351B 8C F0              3055 	mov	b,r4
   351D 74 01              3056 	mov	a,#0x01
   351F 12 38 0B           3057 	lcall	__gptrput
   3522                    3058 00157$:
                           3059 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:461: printf("\t\tEvent queue empty.\n") ;
   3522 74 B3              3060 	mov	a,#__str_25
   3524 C0 E0              3061 	push	acc
   3526 74 4A              3062 	mov	a,#(__str_25 >> 8)
   3528 C0 E0              3063 	push	acc
   352A 74 80              3064 	mov	a,#0x80
   352C C0 E0              3065 	push	acc
   352E 12 3B EB           3066 	lcall	_printf
   3531 15 81              3067 	dec	sp
   3533 15 81              3068 	dec	sp
   3535 15 81              3069 	dec	sp
   3537 22                 3070 	ret
                           3071 	.area CSEG    (CODE)
                           3072 	.area CONST   (CODE)
   481D                    3073 __str_0:
   481D 09                 3074 	.db 0x09
   481E 09                 3075 	.db 0x09
   481F 09                 3076 	.db 0x09
   4820 43 61 6C 6C 69 6E  3077 	.ascii "Calling state: %s, event: %s, "
        67 20 73 74 61 74
        65 3A 20 25 73 2C
        20 65 76 65 6E 74
        3A 20 25 73 2C 20
   483E 00                 3078 	.db 0x00
   483F                    3079 __str_1:
   483F 3C 55 53 45 52 5F  3080 	.ascii "<USER_EVENT>"
        45 56 45 4E 54 3E
   484B 00                 3081 	.db 0x00
   484C                    3082 __str_2:
   484C 72 65 73 70 6F 6E  3083 	.ascii "response: %s "
        73 65 3A 20 25 73
        20
   4859 00                 3084 	.db 0x00
   485A                    3085 __str_3:
   485A 74 6F 20 25 73 20  3086 	.ascii "to %s "
   4860 00                 3087 	.db 0x00
   4861                    3088 __str_4:
   4861 0A                 3089 	.db 0x0A
   4862 00                 3090 	.db 0x00
   4863                    3091 __str_5:
   4863 09                 3092 	.db 0x09
   4864 69 74 65 72 61 74  3093 	.ascii "iterating %s"
        69 6E 67 20 25 73
   4870 0A                 3094 	.db 0x0A
   4871 00                 3095 	.db 0x00
   4872                    3096 __str_6:
   4872 09                 3097 	.db 0x09
   4873 09                 3098 	.db 0x09
   4874 69 6E 69 74 69 61  3099 	.ascii "initializing..."
        6C 69 7A 69 6E 67
        2E 2E 2E
   4883 0A                 3100 	.db 0x0A
   4884 00                 3101 	.db 0x00
   4885                    3102 __str_7:
   4885 09                 3103 	.db 0x09
   4886 09                 3104 	.db 0x09
   4887 50 72 6F 63 65 73  3105 	.ascii "Processing event..."
        73 69 6E 67 20 65
        76 65 6E 74 2E 2E
        2E
   489A 0A                 3106 	.db 0x0A
   489B 00                 3107 	.db 0x00
   489C                    3108 __str_8:
   489C 09                 3109 	.db 0x09
   489D 09                 3110 	.db 0x09
   489E 09                 3111 	.db 0x09
   489F 09                 3112 	.db 0x09
   48A0 09                 3113 	.db 0x09
   48A1 09                 3114 	.db 0x09
   48A2 09                 3115 	.db 0x09
   48A3 6D 6F 76 69 6E 67  3116 	.ascii "moving to parent: %s"
        20 74 6F 20 70 61
        72 65 6E 74 3A 20
        25 73
   48B7 0A                 3117 	.db 0x0A
   48B8 00                 3118 	.db 0x00
   48B9                    3119 __str_9:
   48B9 3C 72 6F 6F 74 3E  3120 	.ascii "<root>"
   48BF 00                 3121 	.db 0x00
   48C0                    3122 __str_10:
   48C0 09                 3123 	.db 0x09
   48C1 09                 3124 	.db 0x09
   48C2 09                 3125 	.db 0x09
   48C3 09                 3126 	.db 0x09
   48C4 53 65 6C 66 20 74  3127 	.ascii "Self transition."
        72 61 6E 73 69 74
        69 6F 6E 2E
   48D4 0A                 3128 	.db 0x0A
   48D5 00                 3129 	.db 0x00
   48D6                    3130 __str_11:
   48D6 09                 3131 	.db 0x09
   48D7 09                 3132 	.db 0x09
   48D8 09                 3133 	.db 0x09
   48D9 09                 3134 	.db 0x09
   48DA 54 72 61 6E 73 69  3135 	.ascii "Transition to direct child."
        74 69 6F 6E 20 74
        6F 20 64 69 72 65
        63 74 20 63 68 69
        6C 64 2E
   48F5 0A                 3136 	.db 0x0A
   48F6 00                 3137 	.db 0x00
   48F7                    3138 __str_12:
   48F7 09                 3139 	.db 0x09
   48F8 09                 3140 	.db 0x09
   48F9 09                 3141 	.db 0x09
   48FA 09                 3142 	.db 0x09
   48FB 54 72 61 6E 73 69  3143 	.ascii "Transition to direct peer."
        74 69 6F 6E 20 74
        6F 20 64 69 72 65
        63 74 20 70 65 65
        72 2E
   4915 0A                 3144 	.db 0x0A
   4916 00                 3145 	.db 0x00
   4917                    3146 __str_13:
   4917 09                 3147 	.db 0x09
   4918 09                 3148 	.db 0x09
   4919 09                 3149 	.db 0x09
   491A 09                 3150 	.db 0x09
   491B 54 72 61 6E 73 69  3151 	.ascii "Transition to direct parent."
        74 69 6F 6E 20 74
        6F 20 64 69 72 65
        63 74 20 70 61 72
        65 6E 74 2E
   4937 0A                 3152 	.db 0x0A
   4938 00                 3153 	.db 0x00
   4939                    3154 __str_14:
   4939 09                 3155 	.db 0x09
   493A 09                 3156 	.db 0x09
   493B 09                 3157 	.db 0x09
   493C 09                 3158 	.db 0x09
   493D 53 63 61 6E 6E 69  3159 	.ascii "Scanning source hierarchy..."
        6E 67 20 73 6F 75
        72 63 65 20 68 69
        65 72 61 72 63 68
        79 2E 2E 2E
   4959 0A                 3160 	.db 0x0A
   495A 00                 3161 	.db 0x00
   495B                    3162 __str_15:
   495B 09                 3163 	.db 0x09
   495C 09                 3164 	.db 0x09
   495D 09                 3165 	.db 0x09
   495E 09                 3166 	.db 0x09
   495F 09                 3167 	.db 0x09
   4960 73 6F 75 72 63 65  3168 	.ascii "sourceHierarchy[%d] = %s"
        48 69 65 72 61 72
        63 68 79 5B 25 64
        5D 20 3D 20 25 73
   4978 0A                 3169 	.db 0x0A
   4979 00                 3170 	.db 0x00
   497A                    3171 __str_16:
   497A 09                 3172 	.db 0x09
   497B 09                 3173 	.db 0x09
   497C 09                 3174 	.db 0x09
   497D 09                 3175 	.db 0x09
   497E 09                 3176 	.db 0x09
   497F 09                 3177 	.db 0x09
   4980 46 6F 75 6E 64 20  3178 	.ascii "Found target as ancestor of source"
        74 61 72 67 65 74
        20 61 73 20 61 6E
        63 65 73 74 6F 72
        20 6F 66 20 73 6F
        75 72 63 65
   49A2 0A                 3179 	.db 0x0A
   49A3 00                 3180 	.db 0x00
   49A4                    3181 __str_17:
   49A4 09                 3182 	.db 0x09
   49A5 09                 3183 	.db 0x09
   49A6 09                 3184 	.db 0x09
   49A7 09                 3185 	.db 0x09
   49A8 00                 3186 	.db 0x00
   49A9                    3187 __str_18:
   49A9 09                 3188 	.db 0x09
   49AA 09                 3189 	.db 0x09
   49AB 09                 3190 	.db 0x09
   49AC 09                 3191 	.db 0x09
   49AD 53 63 61 6E 6E 69  3192 	.ascii "Scanning target hierarchy..."
        6E 67 20 74 61 72
        67 65 74 20 68 69
        65 72 61 72 63 68
        79 2E 2E 2E
   49C9 0A                 3193 	.db 0x0A
   49CA 00                 3194 	.db 0x00
   49CB                    3195 __str_19:
   49CB 09                 3196 	.db 0x09
   49CC 09                 3197 	.db 0x09
   49CD 09                 3198 	.db 0x09
   49CE 09                 3199 	.db 0x09
   49CF 09                 3200 	.db 0x09
   49D0 74 61 72 67 65 74  3201 	.ascii "targetHierarchy[%d] = %s"
        48 69 65 72 61 72
        63 68 79 5B 25 64
        5D 20 3D 20 25 73
   49E8 0A                 3202 	.db 0x0A
   49E9 00                 3203 	.db 0x00
   49EA                    3204 __str_20:
   49EA 09                 3205 	.db 0x09
   49EB 09                 3206 	.db 0x09
   49EC 09                 3207 	.db 0x09
   49ED 09                 3208 	.db 0x09
   49EE 09                 3209 	.db 0x09
   49EF 09                 3210 	.db 0x09
   49F0 46 6F 75 6E 64 20  3211 	.ascii "Found source as ancestor of target"
        73 6F 75 72 63 65
        20 61 73 20 61 6E
        63 65 73 74 6F 72
        20 6F 66 20 74 61
        72 67 65 74
   4A12 0A                 3212 	.db 0x0A
   4A13 00                 3213 	.db 0x00
   4A14                    3214 __str_21:
   4A14 09                 3215 	.db 0x09
   4A15 09                 3216 	.db 0x09
   4A16 09                 3217 	.db 0x09
   4A17 09                 3218 	.db 0x09
   4A18 53 74 69 6C 6C 20  3219 	.ascii "Still haven't found relationship. Scanning for LCA..."
        68 61 76 65 6E 27
        74 20 66 6F 75 6E
        64 20 72 65 6C 61
        74 69 6F 6E 73 68
        69 70 2E 20 53 63
        61 6E 6E 69 6E 67
        20 66 6F 72 20 4C
        43 41 2E 2E 2E
   4A4D 0A                 3220 	.db 0x0A
   4A4E 00                 3221 	.db 0x00
   4A4F                    3222 __str_22:
   4A4F 09                 3223 	.db 0x09
   4A50 09                 3224 	.db 0x09
   4A51 09                 3225 	.db 0x09
   4A52 09                 3226 	.db 0x09
   4A53 09                 3227 	.db 0x09
   4A54 65 6E 74 72 79 49  3228 	.ascii "entryIndex = %d, exitIndex = %d"
        6E 64 65 78 20 3D
        20 25 64 2C 20 65
        78 69 74 49 6E 64
        65 78 20 3D 20 25
        64
   4A73 0A                 3229 	.db 0x0A
   4A74 00                 3230 	.db 0x00
   4A75                    3231 __str_23:
   4A75 09                 3232 	.db 0x09
   4A76 09                 3233 	.db 0x09
   4A77 09                 3234 	.db 0x09
   4A78 09                 3235 	.db 0x09
   4A79 09                 3236 	.db 0x09
   4A7A 43 75 72 72 65 6E  3237 	.ascii "Current LCA candidate: %s"
        74 20 4C 43 41 20
        63 61 6E 64 69 64
        61 74 65 3A 20 25
        73
   4A93 0A                 3238 	.db 0x0A
   4A94 00                 3239 	.db 0x00
   4A95                    3240 __str_24:
   4A95 09                 3241 	.db 0x09
   4A96 09                 3242 	.db 0x09
   4A97 09                 3243 	.db 0x09
   4A98 09                 3244 	.db 0x09
   4A99 09                 3245 	.db 0x09
   4A9A 4C 43 41 20 6F 66  3246 	.ascii "LCA of %s and %s is: %s"
        20 25 73 20 61 6E
        64 20 25 73 20 69
        73 3A 20 25 73
   4AB1 0A                 3247 	.db 0x0A
   4AB2 00                 3248 	.db 0x00
   4AB3                    3249 __str_25:
   4AB3 09                 3250 	.db 0x09
   4AB4 09                 3251 	.db 0x09
   4AB5 45 76 65 6E 74 20  3252 	.ascii "Event queue empty."
        71 75 65 75 65 20
        65 6D 70 74 79 2E
   4AC7 0A                 3253 	.db 0x0A
   4AC8 00                 3254 	.db 0x00
   4AC9                    3255 __str_26:
   4AC9 53 55 42 53 54 41  3256 	.ascii "SUBSTATE_GET_INFO"
        54 45 5F 47 45 54
        5F 49 4E 46 4F
   4ADA 00                 3257 	.db 0x00
   4ADB                    3258 __str_27:
   4ADB 53 55 42 53 54 41  3259 	.ascii "SUBSTATE_ENTRY"
        54 45 5F 45 4E 54
        52 59
   4AE9 00                 3260 	.db 0x00
   4AEA                    3261 __str_28:
   4AEA 53 55 42 53 54 41  3262 	.ascii "SUBSTATE_INITIAL_TRANSITION"
        54 45 5F 49 4E 49
        54 49 41 4C 5F 54
        52 41 4E 53 49 54
        49 4F 4E
   4B05 00                 3263 	.db 0x00
   4B06                    3264 __str_29:
   4B06 53 55 42 53 54 41  3265 	.ascii "SUBSTATE_EXIT"
        54 45 5F 45 58 49
        54
   4B13 00                 3266 	.db 0x00
   4B14                    3267 __str_30:
   4B14 49 47 4E 4F 52 45  3268 	.ascii "IGNORED"
        44
   4B1B 00                 3269 	.db 0x00
   4B1C                    3270 __str_31:
   4B1C 48 41 4E 44 4C 45  3271 	.ascii "HANDLED"
        44
   4B23 00                 3272 	.db 0x00
   4B24                    3273 __str_32:
   4B24 54 52 41 4E 53 49  3274 	.ascii "TRANSITION"
        54 49 4F 4E
   4B2E 00                 3275 	.db 0x00
                           3276 	.area XINIT   (CODE)
   4B50                    3277 __xinit__eventTypes:
   4B50 C9 4A 80           3278 	.byte __str_26,(__str_26 >> 8),#0x80
   4B53 DB 4A 80           3279 	.byte __str_27,(__str_27 >> 8),#0x80
   4B56 EA 4A 80           3280 	.byte __str_28,(__str_28 >> 8),#0x80
   4B59 06 4B 80           3281 	.byte __str_29,(__str_29 >> 8),#0x80
   4B5C                    3282 __xinit__responseTypes:
   4B5C 14 4B 80           3283 	.byte __str_30,(__str_30 >> 8),#0x80
   4B5F 1C 4B 80           3284 	.byte __str_31,(__str_31 >> 8),#0x80
   4B62 24 4B 80           3285 	.byte __str_32,(__str_32 >> 8),#0x80
   4B65                    3286 __xinit__initialTransitionEvent:
   4B65 02                 3287 	.db #0x02
   4B66                    3288 __xinit__enterEvent:
   4B66 01                 3289 	.db #0x01
   4B67                    3290 __xinit__exitEvent:
   4B67 03                 3291 	.db #0x03
                           3292 	.area CABS    (ABS,CODE)
