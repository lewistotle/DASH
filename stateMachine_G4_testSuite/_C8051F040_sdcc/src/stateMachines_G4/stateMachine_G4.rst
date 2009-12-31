                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 2.9.0 #5416 (Mar 22 2009) (MINGW32)
                              4 ; This file was generated Wed Dec 30 19:46:44 2009
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
   0023                      44 _allocateStateMachineMemory_sloc0_1_0:
   0023                      45 	.ds 2
   0025                      46 _allocateStateMachineMemory_sloc1_1_0:
   0025                      47 	.ds 3
   0028                      48 _allocateStateMachineMemory_sloc2_1_0:
   0028                      49 	.ds 2
   002A                      50 _allocateStateMachineMemory_sloc3_1_0:
   002A                      51 	.ds 3
   002D                      52 _iterateStateMachine_sloc0_1_0:
   002D                      53 	.ds 3
   0030                      54 _iterateStateMachine_sloc1_1_0:
   0030                      55 	.ds 3
   0033                      56 _iterateStateMachine_sloc2_1_0:
   0033                      57 	.ds 3
   0036                      58 _iterateStateMachine_sloc3_1_0:
   0036                      59 	.ds 3
   0039                      60 _iterateStateMachine_sloc4_1_0:
   0039                      61 	.ds 3
                             62 ;--------------------------------------------------------
                             63 ; overlayable items in internal ram 
                             64 ;--------------------------------------------------------
                             65 	.area OSEG    (OVR,DATA)
                             66 ;--------------------------------------------------------
                             67 ; indirectly addressable internal ram data
                             68 ;--------------------------------------------------------
                             69 	.area ISEG    (DATA)
                             70 ;--------------------------------------------------------
                             71 ; absolute internal ram data
                             72 ;--------------------------------------------------------
                             73 	.area IABS    (ABS,DATA)
                             74 	.area IABS    (ABS,DATA)
                             75 ;--------------------------------------------------------
                             76 ; bit data
                             77 ;--------------------------------------------------------
                             78 	.area BSEG    (BIT)
                             79 ;--------------------------------------------------------
                             80 ; paged external ram data
                             81 ;--------------------------------------------------------
                             82 	.area PSEG    (PAG,XDATA)
                             83 ;--------------------------------------------------------
                             84 ; external ram data
                             85 ;--------------------------------------------------------
                             86 	.area XSEG    (XDATA)
   0023                      87 _stateMachines::
   0023                      88 	.ds 150
   00B9                      89 _allocateStateMachineMemory_PARM_2:
   00B9                      90 	.ds 2
   00BB                      91 _allocateStateMachineMemory_PARM_3:
   00BB                      92 	.ds 2
   00BD                      93 _allocateStateMachineMemory_sizeInBytes_1_1:
   00BD                      94 	.ds 2
   00BF                      95 _deallocateStateMachineMemory_PARM_2:
   00BF                      96 	.ds 2
   00C1                      97 _deallocateStateMachineMemory_instance_1_1:
   00C1                      98 	.ds 3
   00C4                      99 _registerStateMachine_sm_1_1:
   00C4                     100 	.ds 3
   00C7                     101 _unregisterStateMachine_sm_1_1:
   00C7                     102 	.ds 3
   00CA                     103 _callStateHandler_PARM_2:
   00CA                     104 	.ds 3
   00CD                     105 _callStateHandler_PARM_3:
   00CD                     106 	.ds 3
   00D0                     107 _callStateHandler_sm_1_1:
   00D0                     108 	.ds 3
   00D3                     109 _iterateStateMachine_sm_1_1:
   00D3                     110 	.ds 3
   00D6                     111 _iterateStateMachine_initialTransitionEvent_1_1:
   00D6                     112 	.ds 1
   00D7                     113 _iterateStateMachine_enterEvent_1_1:
   00D7                     114 	.ds 1
   00D8                     115 _iterateStateMachine_exitEvent_1_1:
   00D8                     116 	.ds 1
   00D9                     117 _iterateStateMachine_eventToProcess_2_3:
   00D9                     118 	.ds 3
   00DC                     119 _iterateStateMachine_stateBeingProcessed_2_3:
   00DC                     120 	.ds 3
   00DF                     121 _iterateStateMachine_sourceHierarchy_4_14:
   00DF                     122 	.ds 48
   010F                     123 _iterateStateMachine_sourceIndex_4_14:
   010F                     124 	.ds 1
   0110                     125 _iterateStateMachine_targetHierarchy_4_14:
   0110                     126 	.ds 48
   0140                     127 _iterateStateMachine_targetIndex_4_14:
   0140                     128 	.ds 1
   0141                     129 _iterateStateMachine_entryIndex_4_14:
   0141                     130 	.ds 1
                            131 ;--------------------------------------------------------
                            132 ; absolute external ram data
                            133 ;--------------------------------------------------------
                            134 	.area XABS    (ABS,XDATA)
                            135 ;--------------------------------------------------------
                            136 ; external initialized ram data
                            137 ;--------------------------------------------------------
                            138 	.area XISEG   (XDATA)
   0ED7                     139 _eventTypes::
   0ED7                     140 	.ds 12
   0EE3                     141 _responseTypes::
   0EE3                     142 	.ds 9
                            143 	.area HOME    (CODE)
                            144 	.area GSINIT0 (CODE)
                            145 	.area GSINIT1 (CODE)
                            146 	.area GSINIT2 (CODE)
                            147 	.area GSINIT3 (CODE)
                            148 	.area GSINIT4 (CODE)
                            149 	.area GSINIT5 (CODE)
                            150 	.area GSINIT  (CODE)
                            151 	.area GSFINAL (CODE)
                            152 	.area CSEG    (CODE)
                            153 ;--------------------------------------------------------
                            154 ; global & static initialisations
                            155 ;--------------------------------------------------------
                            156 	.area HOME    (CODE)
                            157 	.area GSINIT  (CODE)
                            158 	.area GSFINAL (CODE)
                            159 	.area GSINIT  (CODE)
                            160 ;------------------------------------------------------------
                            161 ;Allocation info for local variables in function 'iterateStateMachine'
                            162 ;------------------------------------------------------------
                            163 ;sloc0                     Allocated with name '_iterateStateMachine_sloc0_1_0'
                            164 ;sloc1                     Allocated with name '_iterateStateMachine_sloc1_1_0'
                            165 ;sloc2                     Allocated with name '_iterateStateMachine_sloc2_1_0'
                            166 ;sloc3                     Allocated with name '_iterateStateMachine_sloc3_1_0'
                            167 ;sloc4                     Allocated with name '_iterateStateMachine_sloc4_1_0'
                            168 ;sm                        Allocated with name '_iterateStateMachine_sm_1_1'
                            169 ;initialTransitionEvent    Allocated with name '_iterateStateMachine_initialTransitionEvent_1_1'
                            170 ;enterEvent                Allocated with name '_iterateStateMachine_enterEvent_1_1'
                            171 ;exitEvent                 Allocated with name '_iterateStateMachine_exitEvent_1_1'
                            172 ;eventToProcess            Allocated with name '_iterateStateMachine_eventToProcess_2_3'
                            173 ;stateBeingProcessed       Allocated with name '_iterateStateMachine_stateBeingProcessed_2_3'
                            174 ;action                    Allocated with name '_iterateStateMachine_action_2_3'
                            175 ;source                    Allocated with name '_iterateStateMachine_source_3_9'
                            176 ;target                    Allocated with name '_iterateStateMachine_target_3_9'
                            177 ;sourceHierarchy           Allocated with name '_iterateStateMachine_sourceHierarchy_4_14'
                            178 ;sourceIndex               Allocated with name '_iterateStateMachine_sourceIndex_4_14'
                            179 ;targetHierarchy           Allocated with name '_iterateStateMachine_targetHierarchy_4_14'
                            180 ;targetIndex               Allocated with name '_iterateStateMachine_targetIndex_4_14'
                            181 ;LCA                       Allocated with name '_iterateStateMachine_LCA_4_14'
                            182 ;entryIndex                Allocated with name '_iterateStateMachine_entryIndex_4_14'
                            183 ;exitIndex                 Allocated with name '_iterateStateMachine_exitIndex_4_14'
                            184 ;exitIndex                 Allocated with name '_iterateStateMachine_exitIndex_6_16'
                            185 ;LCAindex                  Allocated with name '_iterateStateMachine_LCAindex_5_22'
                            186 ;------------------------------------------------------------
                            187 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:158: static event_t	initialTransitionEvent	= { SUBSTATE_INITIAL_TRANSITION } ;
   008C 90 00 D6            188 	mov	dptr,#_iterateStateMachine_initialTransitionEvent_1_1
   008F 74 02               189 	mov	a,#0x02
   0091 F0                  190 	movx	@dptr,a
                            191 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:159: static event_t	enterEvent				= { SUBSTATE_ENTRY } ;
   0092 90 00 D7            192 	mov	dptr,#_iterateStateMachine_enterEvent_1_1
   0095 74 01               193 	mov	a,#0x01
   0097 F0                  194 	movx	@dptr,a
                            195 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:160: static event_t	exitEvent				= { SUBSTATE_EXIT } ;
   0098 90 00 D8            196 	mov	dptr,#_iterateStateMachine_exitEvent_1_1
   009B 74 03               197 	mov	a,#0x03
   009D F0                  198 	movx	@dptr,a
                            199 ;--------------------------------------------------------
                            200 ; Home
                            201 ;--------------------------------------------------------
                            202 	.area HOME    (CODE)
                            203 	.area HOME    (CODE)
                            204 ;--------------------------------------------------------
                            205 ; code
                            206 ;--------------------------------------------------------
                            207 	.area CSEG    (CODE)
                            208 ;------------------------------------------------------------
                            209 ;Allocation info for local variables in function 'allocateStateMachineMemory'
                            210 ;------------------------------------------------------------
                            211 ;sloc0                     Allocated with name '_allocateStateMachineMemory_sloc0_1_0'
                            212 ;sloc1                     Allocated with name '_allocateStateMachineMemory_sloc1_1_0'
                            213 ;sloc2                     Allocated with name '_allocateStateMachineMemory_sloc2_1_0'
                            214 ;sloc3                     Allocated with name '_allocateStateMachineMemory_sloc3_1_0'
                            215 ;eventQueueDepth           Allocated with name '_allocateStateMachineMemory_PARM_2'
                            216 ;constructor               Allocated with name '_allocateStateMachineMemory_PARM_3'
                            217 ;sizeInBytes               Allocated with name '_allocateStateMachineMemory_sizeInBytes_1_1'
                            218 ;instance                  Allocated with name '_allocateStateMachineMemory_instance_1_1'
                            219 ;eventQueue                Allocated with name '_allocateStateMachineMemory_eventQueue_2_2'
                            220 ;------------------------------------------------------------
                            221 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:32: stateMachine_t* allocateStateMachineMemory(		uint16_t sizeInBytes,
                            222 ;	-----------------------------------------
                            223 ;	 function allocateStateMachineMemory
                            224 ;	-----------------------------------------
   0550                     225 _allocateStateMachineMemory:
                    0002    226 	ar2 = 0x02
                    0003    227 	ar3 = 0x03
                    0004    228 	ar4 = 0x04
                    0005    229 	ar5 = 0x05
                    0006    230 	ar6 = 0x06
                    0007    231 	ar7 = 0x07
                    0000    232 	ar0 = 0x00
                    0001    233 	ar1 = 0x01
   0550 AA 83               234 	mov	r2,dph
   0552 E5 82               235 	mov	a,dpl
   0554 90 00 BD            236 	mov	dptr,#_allocateStateMachineMemory_sizeInBytes_1_1
   0557 F0                  237 	movx	@dptr,a
   0558 A3                  238 	inc	dptr
   0559 EA                  239 	mov	a,r2
   055A F0                  240 	movx	@dptr,a
                            241 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:36: stateMachine_t*	instance = malloc(sizeInBytes) ;
   055B 90 00 BD            242 	mov	dptr,#_allocateStateMachineMemory_sizeInBytes_1_1
   055E E0                  243 	movx	a,@dptr
   055F FA                  244 	mov	r2,a
   0560 A3                  245 	inc	dptr
   0561 E0                  246 	movx	a,@dptr
   0562 FB                  247 	mov	r3,a
   0563 8A 82               248 	mov	dpl,r2
   0565 8B 83               249 	mov	dph,r3
   0567 C0 02               250 	push	ar2
   0569 C0 03               251 	push	ar3
   056B 12 31 B9            252 	lcall	_malloc
   056E AC 82               253 	mov	r4,dpl
   0570 AD 83               254 	mov	r5,dph
   0572 D0 03               255 	pop	ar3
   0574 D0 02               256 	pop	ar2
   0576 7E 00               257 	mov	r6,#0x00
                            258 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:38: if(instance)
   0578 EC                  259 	mov	a,r4
   0579 4D                  260 	orl	a,r5
   057A 4E                  261 	orl	a,r6
   057B 70 03               262 	jnz	00109$
   057D 02 06 8D            263 	ljmp	00104$
   0580                     264 00109$:
                            265 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:40: event_t** eventQueue = (event_t**)malloc(eventQueueDepth * sizeof(event_t*)) ;
   0580 C0 02               266 	push	ar2
   0582 C0 03               267 	push	ar3
   0584 90 00 B9            268 	mov	dptr,#_allocateStateMachineMemory_PARM_2
   0587 E0                  269 	movx	a,@dptr
   0588 F5 28               270 	mov	_allocateStateMachineMemory_sloc2_1_0,a
   058A A3                  271 	inc	dptr
   058B E0                  272 	movx	a,@dptr
   058C F5 29               273 	mov	(_allocateStateMachineMemory_sloc2_1_0 + 1),a
   058E 90 0A A1            274 	mov	dptr,#__mulint_PARM_2
   0591 E5 28               275 	mov	a,_allocateStateMachineMemory_sloc2_1_0
   0593 F0                  276 	movx	@dptr,a
   0594 A3                  277 	inc	dptr
   0595 E5 29               278 	mov	a,(_allocateStateMachineMemory_sloc2_1_0 + 1)
   0597 F0                  279 	movx	@dptr,a
   0598 90 00 03            280 	mov	dptr,#0x0003
   059B C0 02               281 	push	ar2
   059D C0 03               282 	push	ar3
   059F C0 04               283 	push	ar4
   05A1 C0 05               284 	push	ar5
   05A3 C0 06               285 	push	ar6
   05A5 12 33 03            286 	lcall	__mulint
   05A8 85 82 23            287 	mov	_allocateStateMachineMemory_sloc0_1_0,dpl
   05AB 85 83 24            288 	mov	(_allocateStateMachineMemory_sloc0_1_0 + 1),dph
   05AE D0 06               289 	pop	ar6
   05B0 D0 05               290 	pop	ar5
   05B2 D0 04               291 	pop	ar4
   05B4 D0 03               292 	pop	ar3
   05B6 D0 02               293 	pop	ar2
   05B8 85 23 82            294 	mov	dpl,_allocateStateMachineMemory_sloc0_1_0
   05BB 85 24 83            295 	mov	dph,(_allocateStateMachineMemory_sloc0_1_0 + 1)
   05BE C0 03               296 	push	ar3
   05C0 C0 04               297 	push	ar4
   05C2 C0 05               298 	push	ar5
   05C4 C0 06               299 	push	ar6
   05C6 12 31 B9            300 	lcall	_malloc
   05C9 A9 82               301 	mov	r1,dpl
   05CB AA 83               302 	mov	r2,dph
   05CD D0 06               303 	pop	ar6
   05CF D0 05               304 	pop	ar5
   05D1 D0 04               305 	pop	ar4
   05D3 D0 03               306 	pop	ar3
   05D5 89 25               307 	mov	_allocateStateMachineMemory_sloc1_1_0,r1
   05D7 8A 26               308 	mov	(_allocateStateMachineMemory_sloc1_1_0 + 1),r2
   05D9 75 27 00            309 	mov	(_allocateStateMachineMemory_sloc1_1_0 + 2),#0x00
                            310 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:42: if(eventQueue)
   05DC D0 03               311 	pop	ar3
   05DE D0 02               312 	pop	ar2
   05E0 E5 25               313 	mov	a,_allocateStateMachineMemory_sloc1_1_0
   05E2 45 26               314 	orl	a,(_allocateStateMachineMemory_sloc1_1_0 + 1)
   05E4 45 27               315 	orl	a,(_allocateStateMachineMemory_sloc1_1_0 + 2)
   05E6 70 03               316 	jnz	00110$
   05E8 02 06 8D            317 	ljmp	00104$
   05EB                     318 00110$:
                            319 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:44: initializeEventQueue(&instance->eventQueue, eventQueue, eventQueueDepth) ;
   05EB 74 0C               320 	mov	a,#0x0C
   05ED 2C                  321 	add	a,r4
   05EE F5 2A               322 	mov	_allocateStateMachineMemory_sloc3_1_0,a
   05F0 E4                  323 	clr	a
   05F1 3D                  324 	addc	a,r5
   05F2 F5 2B               325 	mov	(_allocateStateMachineMemory_sloc3_1_0 + 1),a
   05F4 8E 2C               326 	mov	(_allocateStateMachineMemory_sloc3_1_0 + 2),r6
   05F6 AF 28               327 	mov	r7,_allocateStateMachineMemory_sloc2_1_0
   05F8 90 00 00            328 	mov	dptr,#_initializeEventQueue_PARM_2
   05FB E5 25               329 	mov	a,_allocateStateMachineMemory_sloc1_1_0
   05FD F0                  330 	movx	@dptr,a
   05FE A3                  331 	inc	dptr
   05FF E5 26               332 	mov	a,(_allocateStateMachineMemory_sloc1_1_0 + 1)
   0601 F0                  333 	movx	@dptr,a
   0602 A3                  334 	inc	dptr
   0603 E5 27               335 	mov	a,(_allocateStateMachineMemory_sloc1_1_0 + 2)
   0605 F0                  336 	movx	@dptr,a
   0606 90 00 03            337 	mov	dptr,#_initializeEventQueue_PARM_3
   0609 EF                  338 	mov	a,r7
   060A F0                  339 	movx	@dptr,a
   060B 85 2A 82            340 	mov	dpl,_allocateStateMachineMemory_sloc3_1_0
   060E 85 2B 83            341 	mov	dph,(_allocateStateMachineMemory_sloc3_1_0 + 1)
   0611 85 2C F0            342 	mov	b,(_allocateStateMachineMemory_sloc3_1_0 + 2)
   0614 C0 02               343 	push	ar2
   0616 C0 03               344 	push	ar3
   0618 C0 04               345 	push	ar4
   061A C0 05               346 	push	ar5
   061C C0 06               347 	push	ar6
   061E 12 00 AE            348 	lcall	_initializeEventQueue
   0621 D0 06               349 	pop	ar6
   0623 D0 05               350 	pop	ar5
   0625 D0 04               351 	pop	ar4
   0627 D0 03               352 	pop	ar3
   0629 D0 02               353 	pop	ar2
                            354 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:46: memset((char*)instance,		0, sizeInBytes) ;
   062B 90 0A 93            355 	mov	dptr,#_memset_PARM_2
   062E E4                  356 	clr	a
   062F F0                  357 	movx	@dptr,a
   0630 90 0A 94            358 	mov	dptr,#_memset_PARM_3
   0633 EA                  359 	mov	a,r2
   0634 F0                  360 	movx	@dptr,a
   0635 A3                  361 	inc	dptr
   0636 EB                  362 	mov	a,r3
   0637 F0                  363 	movx	@dptr,a
   0638 8C 82               364 	mov	dpl,r4
   063A 8D 83               365 	mov	dph,r5
   063C 8E F0               366 	mov	b,r6
   063E C0 04               367 	push	ar4
   0640 C0 05               368 	push	ar5
   0642 C0 06               369 	push	ar6
   0644 12 30 FA            370 	lcall	_memset
                            371 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:47: memset((char*)eventQueue,	0, eventQueueDepth * sizeof(event_t*)) ;
   0647 90 0A 93            372 	mov	dptr,#_memset_PARM_2
   064A E4                  373 	clr	a
   064B F0                  374 	movx	@dptr,a
   064C 90 0A 94            375 	mov	dptr,#_memset_PARM_3
   064F E5 23               376 	mov	a,_allocateStateMachineMemory_sloc0_1_0
   0651 F0                  377 	movx	@dptr,a
   0652 A3                  378 	inc	dptr
   0653 E5 24               379 	mov	a,(_allocateStateMachineMemory_sloc0_1_0 + 1)
   0655 F0                  380 	movx	@dptr,a
   0656 85 25 82            381 	mov	dpl,_allocateStateMachineMemory_sloc1_1_0
   0659 85 26 83            382 	mov	dph,(_allocateStateMachineMemory_sloc1_1_0 + 1)
   065C 85 27 F0            383 	mov	b,(_allocateStateMachineMemory_sloc1_1_0 + 2)
   065F 12 30 FA            384 	lcall	_memset
   0662 D0 06               385 	pop	ar6
   0664 D0 05               386 	pop	ar5
   0666 D0 04               387 	pop	ar4
                            388 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:49: constructor(instance) ;
   0668 C0 04               389 	push	ar4
   066A C0 05               390 	push	ar5
   066C C0 06               391 	push	ar6
   066E 74 87               392 	mov	a,#00111$
   0670 C0 E0               393 	push	acc
   0672 74 06               394 	mov	a,#(00111$ >> 8)
   0674 C0 E0               395 	push	acc
   0676 90 00 BB            396 	mov	dptr,#_allocateStateMachineMemory_PARM_3
   0679 E0                  397 	movx	a,@dptr
   067A C0 E0               398 	push	acc
   067C A3                  399 	inc	dptr
   067D E0                  400 	movx	a,@dptr
   067E C0 E0               401 	push	acc
   0680 8C 82               402 	mov	dpl,r4
   0682 8D 83               403 	mov	dph,r5
   0684 8E F0               404 	mov	b,r6
   0686 22                  405 	ret
   0687                     406 00111$:
   0687 D0 06               407 	pop	ar6
   0689 D0 05               408 	pop	ar5
   068B D0 04               409 	pop	ar4
   068D                     410 00104$:
                            411 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:53: return instance ;
   068D 8C 82               412 	mov	dpl,r4
   068F 8D 83               413 	mov	dph,r5
   0691 8E F0               414 	mov	b,r6
   0693 22                  415 	ret
                            416 ;------------------------------------------------------------
                            417 ;Allocation info for local variables in function 'deallocateStateMachineMemory'
                            418 ;------------------------------------------------------------
                            419 ;destructor                Allocated with name '_deallocateStateMachineMemory_PARM_2'
                            420 ;instance                  Allocated with name '_deallocateStateMachineMemory_instance_1_1'
                            421 ;------------------------------------------------------------
                            422 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:57: void deallocateStateMachineMemory(				stateMachine_t* instance, stateMachineDestructor_t destructor)
                            423 ;	-----------------------------------------
                            424 ;	 function deallocateStateMachineMemory
                            425 ;	-----------------------------------------
   0694                     426 _deallocateStateMachineMemory:
   0694 AA F0               427 	mov	r2,b
   0696 AB 83               428 	mov	r3,dph
   0698 E5 82               429 	mov	a,dpl
   069A 90 00 C1            430 	mov	dptr,#_deallocateStateMachineMemory_instance_1_1
   069D F0                  431 	movx	@dptr,a
   069E A3                  432 	inc	dptr
   069F EB                  433 	mov	a,r3
   06A0 F0                  434 	movx	@dptr,a
   06A1 A3                  435 	inc	dptr
   06A2 EA                  436 	mov	a,r2
   06A3 F0                  437 	movx	@dptr,a
                            438 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:59: if(instance != 0)
   06A4 90 00 C1            439 	mov	dptr,#_deallocateStateMachineMemory_instance_1_1
   06A7 E0                  440 	movx	a,@dptr
   06A8 FA                  441 	mov	r2,a
   06A9 A3                  442 	inc	dptr
   06AA E0                  443 	movx	a,@dptr
   06AB FB                  444 	mov	r3,a
   06AC A3                  445 	inc	dptr
   06AD E0                  446 	movx	a,@dptr
   06AE FC                  447 	mov	r4,a
   06AF EA                  448 	mov	a,r2
   06B0 4B                  449 	orl	a,r3
   06B1 4C                  450 	orl	a,r4
   06B2 60 2D               451 	jz	00103$
                            452 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:61: destructor(instance) ;
   06B4 74 CD               453 	mov	a,#00107$
   06B6 C0 E0               454 	push	acc
   06B8 74 06               455 	mov	a,#(00107$ >> 8)
   06BA C0 E0               456 	push	acc
   06BC 90 00 BF            457 	mov	dptr,#_deallocateStateMachineMemory_PARM_2
   06BF E0                  458 	movx	a,@dptr
   06C0 C0 E0               459 	push	acc
   06C2 A3                  460 	inc	dptr
   06C3 E0                  461 	movx	a,@dptr
   06C4 C0 E0               462 	push	acc
   06C6 8A 82               463 	mov	dpl,r2
   06C8 8B 83               464 	mov	dph,r3
   06CA 8C F0               465 	mov	b,r4
   06CC 22                  466 	ret
   06CD                     467 00107$:
                            468 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:63: free((char*)instance) ;
   06CD 90 00 C1            469 	mov	dptr,#_deallocateStateMachineMemory_instance_1_1
   06D0 E0                  470 	movx	a,@dptr
   06D1 FA                  471 	mov	r2,a
   06D2 A3                  472 	inc	dptr
   06D3 E0                  473 	movx	a,@dptr
   06D4 FB                  474 	mov	r3,a
   06D5 A3                  475 	inc	dptr
   06D6 E0                  476 	movx	a,@dptr
   06D7 FC                  477 	mov	r4,a
   06D8 8A 82               478 	mov	dpl,r2
   06DA 8B 83               479 	mov	dph,r3
   06DC 8C F0               480 	mov	b,r4
   06DE 02 30 A8            481 	ljmp	_free
   06E1                     482 00103$:
   06E1 22                  483 	ret
                            484 ;------------------------------------------------------------
                            485 ;Allocation info for local variables in function 'registerStateMachine'
                            486 ;------------------------------------------------------------
                            487 ;sm                        Allocated with name '_registerStateMachine_sm_1_1'
                            488 ;statetMachineIndex        Allocated with name '_registerStateMachine_statetMachineIndex_2_2'
                            489 ;------------------------------------------------------------
                            490 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:68: bool registerStateMachine(			stateMachine_t* sm)
                            491 ;	-----------------------------------------
                            492 ;	 function registerStateMachine
                            493 ;	-----------------------------------------
   06E2                     494 _registerStateMachine:
   06E2 AA F0               495 	mov	r2,b
   06E4 AB 83               496 	mov	r3,dph
   06E6 E5 82               497 	mov	a,dpl
   06E8 90 00 C4            498 	mov	dptr,#_registerStateMachine_sm_1_1
   06EB F0                  499 	movx	@dptr,a
   06EC A3                  500 	inc	dptr
   06ED EB                  501 	mov	a,r3
   06EE F0                  502 	movx	@dptr,a
   06EF A3                  503 	inc	dptr
   06F0 EA                  504 	mov	a,r2
   06F1 F0                  505 	movx	@dptr,a
                            506 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:70: if(sm)
   06F2 90 00 C4            507 	mov	dptr,#_registerStateMachine_sm_1_1
   06F5 E0                  508 	movx	a,@dptr
   06F6 FA                  509 	mov	r2,a
   06F7 A3                  510 	inc	dptr
   06F8 E0                  511 	movx	a,@dptr
   06F9 FB                  512 	mov	r3,a
   06FA A3                  513 	inc	dptr
   06FB E0                  514 	movx	a,@dptr
   06FC FC                  515 	mov	r4,a
   06FD EA                  516 	mov	a,r2
   06FE 4B                  517 	orl	a,r3
   06FF 4C                  518 	orl	a,r4
   0700 60 44               519 	jz	00104$
                            520 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:74: for( statetMachineIndex = 0 ; statetMachineIndex < configMAXIMUM_NUMBER_OF_STATE_MACHINES ; statetMachineIndex++ )
   0702 7A 00               521 	mov	r2,#0x00
   0704                     522 00105$:
   0704 BA 32 00            523 	cjne	r2,#0x32,00116$
   0707                     524 00116$:
   0707 50 3D               525 	jnc	00104$
                            526 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:76: if(stateMachines[statetMachineIndex] == NULL)
   0709 EA                  527 	mov	a,r2
   070A 75 F0 03            528 	mov	b,#0x03
   070D A4                  529 	mul	ab
   070E 24 23               530 	add	a,#_stateMachines
   0710 FB                  531 	mov	r3,a
   0711 E4                  532 	clr	a
   0712 34 00               533 	addc	a,#(_stateMachines >> 8)
   0714 FC                  534 	mov	r4,a
   0715 8B 82               535 	mov	dpl,r3
   0717 8C 83               536 	mov	dph,r4
   0719 E0                  537 	movx	a,@dptr
   071A FD                  538 	mov	r5,a
   071B A3                  539 	inc	dptr
   071C E0                  540 	movx	a,@dptr
   071D FE                  541 	mov	r6,a
   071E A3                  542 	inc	dptr
   071F E0                  543 	movx	a,@dptr
   0720 FF                  544 	mov	r7,a
   0721 BD 00 1F            545 	cjne	r5,#0x00,00107$
   0724 BE 00 1C            546 	cjne	r6,#0x00,00107$
   0727 BF 00 19            547 	cjne	r7,#0x00,00107$
                            548 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:78: stateMachines[statetMachineIndex] = sm ;
   072A 90 00 C4            549 	mov	dptr,#_registerStateMachine_sm_1_1
   072D E0                  550 	movx	a,@dptr
   072E FD                  551 	mov	r5,a
   072F A3                  552 	inc	dptr
   0730 E0                  553 	movx	a,@dptr
   0731 FE                  554 	mov	r6,a
   0732 A3                  555 	inc	dptr
   0733 E0                  556 	movx	a,@dptr
   0734 FF                  557 	mov	r7,a
   0735 8B 82               558 	mov	dpl,r3
   0737 8C 83               559 	mov	dph,r4
   0739 ED                  560 	mov	a,r5
   073A F0                  561 	movx	@dptr,a
   073B A3                  562 	inc	dptr
   073C EE                  563 	mov	a,r6
   073D F0                  564 	movx	@dptr,a
   073E A3                  565 	inc	dptr
   073F EF                  566 	mov	a,r7
   0740 F0                  567 	movx	@dptr,a
                            568 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:80: return true ;
   0741 D3                  569 	setb	c
   0742 22                  570 	ret
   0743                     571 00107$:
                            572 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:74: for( statetMachineIndex = 0 ; statetMachineIndex < configMAXIMUM_NUMBER_OF_STATE_MACHINES ; statetMachineIndex++ )
   0743 0A                  573 	inc	r2
   0744 80 BE               574 	sjmp	00105$
   0746                     575 00104$:
                            576 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:85: return false ;
   0746 C3                  577 	clr	c
   0747 22                  578 	ret
                            579 ;------------------------------------------------------------
                            580 ;Allocation info for local variables in function 'unregisterStateMachine'
                            581 ;------------------------------------------------------------
                            582 ;sm                        Allocated with name '_unregisterStateMachine_sm_1_1'
                            583 ;statetMachineIndex        Allocated with name '_unregisterStateMachine_statetMachineIndex_2_2'
                            584 ;------------------------------------------------------------
                            585 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:88: bool unregisterStateMachine(		stateMachine_t* sm)
                            586 ;	-----------------------------------------
                            587 ;	 function unregisterStateMachine
                            588 ;	-----------------------------------------
   0748                     589 _unregisterStateMachine:
   0748 AA F0               590 	mov	r2,b
   074A AB 83               591 	mov	r3,dph
   074C E5 82               592 	mov	a,dpl
   074E 90 00 C7            593 	mov	dptr,#_unregisterStateMachine_sm_1_1
   0751 F0                  594 	movx	@dptr,a
   0752 A3                  595 	inc	dptr
   0753 EB                  596 	mov	a,r3
   0754 F0                  597 	movx	@dptr,a
   0755 A3                  598 	inc	dptr
   0756 EA                  599 	mov	a,r2
   0757 F0                  600 	movx	@dptr,a
                            601 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:90: if(sm)
   0758 90 00 C7            602 	mov	dptr,#_unregisterStateMachine_sm_1_1
   075B E0                  603 	movx	a,@dptr
   075C FA                  604 	mov	r2,a
   075D A3                  605 	inc	dptr
   075E E0                  606 	movx	a,@dptr
   075F FB                  607 	mov	r3,a
   0760 A3                  608 	inc	dptr
   0761 E0                  609 	movx	a,@dptr
   0762 FC                  610 	mov	r4,a
   0763 EA                  611 	mov	a,r2
   0764 4B                  612 	orl	a,r3
   0765 4C                  613 	orl	a,r4
   0766 60 44               614 	jz	00104$
                            615 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:94: for( statetMachineIndex = 0 ; statetMachineIndex < configMAXIMUM_NUMBER_OF_STATE_MACHINES ; statetMachineIndex++ )
   0768 7D 00               616 	mov	r5,#0x00
   076A                     617 00105$:
   076A BD 32 00            618 	cjne	r5,#0x32,00116$
   076D                     619 00116$:
   076D 50 3D               620 	jnc	00104$
                            621 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:96: if(stateMachines[statetMachineIndex] == sm)
   076F ED                  622 	mov	a,r5
   0770 75 F0 03            623 	mov	b,#0x03
   0773 A4                  624 	mul	ab
   0774 24 23               625 	add	a,#_stateMachines
   0776 FE                  626 	mov	r6,a
   0777 E4                  627 	clr	a
   0778 34 00               628 	addc	a,#(_stateMachines >> 8)
   077A FF                  629 	mov	r7,a
   077B C0 05               630 	push	ar5
   077D 8E 82               631 	mov	dpl,r6
   077F 8F 83               632 	mov	dph,r7
   0781 E0                  633 	movx	a,@dptr
   0782 F8                  634 	mov	r0,a
   0783 A3                  635 	inc	dptr
   0784 E0                  636 	movx	a,@dptr
   0785 F9                  637 	mov	r1,a
   0786 A3                  638 	inc	dptr
   0787 E0                  639 	movx	a,@dptr
   0788 FD                  640 	mov	r5,a
   0789 E8                  641 	mov	a,r0
   078A B5 02 0A            642 	cjne	a,ar2,00118$
   078D E9                  643 	mov	a,r1
   078E B5 03 06            644 	cjne	a,ar3,00118$
   0791 ED                  645 	mov	a,r5
   0792 B5 04 02            646 	cjne	a,ar4,00118$
   0795 80 04               647 	sjmp	00119$
   0797                     648 00118$:
   0797 D0 05               649 	pop	ar5
   0799 80 0E               650 	sjmp	00107$
   079B                     651 00119$:
   079B D0 05               652 	pop	ar5
                            653 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:98: stateMachines[statetMachineIndex] = NULL ;
   079D 8E 82               654 	mov	dpl,r6
   079F 8F 83               655 	mov	dph,r7
   07A1 E4                  656 	clr	a
   07A2 F0                  657 	movx	@dptr,a
   07A3 A3                  658 	inc	dptr
   07A4 F0                  659 	movx	@dptr,a
   07A5 A3                  660 	inc	dptr
   07A6 F0                  661 	movx	@dptr,a
                            662 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:100: return true ;
   07A7 D3                  663 	setb	c
   07A8 22                  664 	ret
   07A9                     665 00107$:
                            666 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:94: for( statetMachineIndex = 0 ; statetMachineIndex < configMAXIMUM_NUMBER_OF_STATE_MACHINES ; statetMachineIndex++ )
   07A9 0D                  667 	inc	r5
   07AA 80 BE               668 	sjmp	00105$
   07AC                     669 00104$:
                            670 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:105: return false ;
   07AC C3                  671 	clr	c
   07AD 22                  672 	ret
                            673 ;------------------------------------------------------------
                            674 ;Allocation info for local variables in function 'iterateAllStateMachines'
                            675 ;------------------------------------------------------------
                            676 ;statetMachineIndex        Allocated with name '_iterateAllStateMachines_statetMachineIndex_1_1'
                            677 ;------------------------------------------------------------
                            678 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:109: void iterateAllStateMachines(	void)
                            679 ;	-----------------------------------------
                            680 ;	 function iterateAllStateMachines
                            681 ;	-----------------------------------------
   07AE                     682 _iterateAllStateMachines:
                            683 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:113: for( statetMachineIndex = 0 ; statetMachineIndex < configMAXIMUM_NUMBER_OF_STATE_MACHINES ; statetMachineIndex++ )
   07AE 7A 00               684 	mov	r2,#0x00
   07B0                     685 00103$:
   07B0 BA 32 00            686 	cjne	r2,#0x32,00113$
   07B3                     687 00113$:
   07B3 50 31               688 	jnc	00107$
                            689 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:115: if(stateMachines[statetMachineIndex] != NULL)
   07B5 EA                  690 	mov	a,r2
   07B6 75 F0 03            691 	mov	b,#0x03
   07B9 A4                  692 	mul	ab
   07BA 24 23               693 	add	a,#_stateMachines
   07BC F5 82               694 	mov	dpl,a
   07BE E4                  695 	clr	a
   07BF 34 00               696 	addc	a,#(_stateMachines >> 8)
   07C1 F5 83               697 	mov	dph,a
   07C3 E0                  698 	movx	a,@dptr
   07C4 FB                  699 	mov	r3,a
   07C5 A3                  700 	inc	dptr
   07C6 E0                  701 	movx	a,@dptr
   07C7 FC                  702 	mov	r4,a
   07C8 A3                  703 	inc	dptr
   07C9 E0                  704 	movx	a,@dptr
   07CA FD                  705 	mov	r5,a
   07CB BB 00 08            706 	cjne	r3,#0x00,00115$
   07CE BC 00 05            707 	cjne	r4,#0x00,00115$
   07D1 BD 00 02            708 	cjne	r5,#0x00,00115$
   07D4 80 0D               709 	sjmp	00105$
   07D6                     710 00115$:
                            711 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:117: iterateStateMachine(stateMachines[statetMachineIndex]) ;
   07D6 8B 82               712 	mov	dpl,r3
   07D8 8C 83               713 	mov	dph,r4
   07DA 8D F0               714 	mov	b,r5
   07DC C0 02               715 	push	ar2
   07DE 12 08 53            716 	lcall	_iterateStateMachine
   07E1 D0 02               717 	pop	ar2
   07E3                     718 00105$:
                            719 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:113: for( statetMachineIndex = 0 ; statetMachineIndex < configMAXIMUM_NUMBER_OF_STATE_MACHINES ; statetMachineIndex++ )
   07E3 0A                  720 	inc	r2
   07E4 80 CA               721 	sjmp	00103$
   07E6                     722 00107$:
   07E6 22                  723 	ret
                            724 ;------------------------------------------------------------
                            725 ;Allocation info for local variables in function 'callStateHandler'
                            726 ;------------------------------------------------------------
                            727 ;state                     Allocated with name '_callStateHandler_PARM_2'
                            728 ;event                     Allocated with name '_callStateHandler_PARM_3'
                            729 ;sm                        Allocated with name '_callStateHandler_sm_1_1'
                            730 ;response                  Allocated with name '_callStateHandler_response_1_1'
                            731 ;------------------------------------------------------------
                            732 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:127: stateHandlerResponse_t callStateHandler(stateMachine_t* sm, state_t* state, event_t* event)
                            733 ;	-----------------------------------------
                            734 ;	 function callStateHandler
                            735 ;	-----------------------------------------
   07E7                     736 _callStateHandler:
   07E7 AA F0               737 	mov	r2,b
   07E9 AB 83               738 	mov	r3,dph
   07EB E5 82               739 	mov	a,dpl
   07ED 90 00 D0            740 	mov	dptr,#_callStateHandler_sm_1_1
   07F0 F0                  741 	movx	@dptr,a
   07F1 A3                  742 	inc	dptr
   07F2 EB                  743 	mov	a,r3
   07F3 F0                  744 	movx	@dptr,a
   07F4 A3                  745 	inc	dptr
   07F5 EA                  746 	mov	a,r2
   07F6 F0                  747 	movx	@dptr,a
                            748 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:135: response = ((callStateHandler_t)(state->handler))(sm, event) ;
   07F7 90 00 CA            749 	mov	dptr,#_callStateHandler_PARM_2
   07FA E0                  750 	movx	a,@dptr
   07FB FA                  751 	mov	r2,a
   07FC A3                  752 	inc	dptr
   07FD E0                  753 	movx	a,@dptr
   07FE FB                  754 	mov	r3,a
   07FF A3                  755 	inc	dptr
   0800 E0                  756 	movx	a,@dptr
   0801 FC                  757 	mov	r4,a
   0802 74 04               758 	mov	a,#0x04
   0804 2A                  759 	add	a,r2
   0805 FA                  760 	mov	r2,a
   0806 E4                  761 	clr	a
   0807 3B                  762 	addc	a,r3
   0808 FB                  763 	mov	r3,a
   0809 8A 82               764 	mov	dpl,r2
   080B 8B 83               765 	mov	dph,r3
   080D 8C F0               766 	mov	b,r4
   080F 12 3D 4E            767 	lcall	__gptrget
   0812 FA                  768 	mov	r2,a
   0813 A3                  769 	inc	dptr
   0814 12 3D 4E            770 	lcall	__gptrget
   0817 FB                  771 	mov	r3,a
   0818 90 00 D0            772 	mov	dptr,#_callStateHandler_sm_1_1
   081B E0                  773 	movx	a,@dptr
   081C FC                  774 	mov	r4,a
   081D A3                  775 	inc	dptr
   081E E0                  776 	movx	a,@dptr
   081F FD                  777 	mov	r5,a
   0820 A3                  778 	inc	dptr
   0821 E0                  779 	movx	a,@dptr
   0822 FE                  780 	mov	r6,a
   0823 C0 03               781 	push	ar3
   0825 90 00 CD            782 	mov	dptr,#_callStateHandler_PARM_3
   0828 E0                  783 	movx	a,@dptr
   0829 C0 E0               784 	push	acc
   082B A3                  785 	inc	dptr
   082C E0                  786 	movx	a,@dptr
   082D C0 E0               787 	push	acc
   082F A3                  788 	inc	dptr
   0830 E0                  789 	movx	a,@dptr
   0831 C0 E0               790 	push	acc
   0833 74 46               791 	mov	a,#00103$
   0835 C0 E0               792 	push	acc
   0837 74 08               793 	mov	a,#(00103$ >> 8)
   0839 C0 E0               794 	push	acc
   083B C0 02               795 	push	ar2
   083D C0 03               796 	push	ar3
   083F 8C 82               797 	mov	dpl,r4
   0841 8D 83               798 	mov	dph,r5
   0843 8E F0               799 	mov	b,r6
   0845 22                  800 	ret
   0846                     801 00103$:
   0846 AA 82               802 	mov	r2,dpl
   0848 15 81               803 	dec	sp
   084A 15 81               804 	dec	sp
   084C 15 81               805 	dec	sp
   084E D0 03               806 	pop	ar3
                            807 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:152: return response ;
   0850 8A 82               808 	mov	dpl,r2
   0852 22                  809 	ret
                            810 ;------------------------------------------------------------
                            811 ;Allocation info for local variables in function 'iterateStateMachine'
                            812 ;------------------------------------------------------------
                            813 ;sloc0                     Allocated with name '_iterateStateMachine_sloc0_1_0'
                            814 ;sloc1                     Allocated with name '_iterateStateMachine_sloc1_1_0'
                            815 ;sloc2                     Allocated with name '_iterateStateMachine_sloc2_1_0'
                            816 ;sloc3                     Allocated with name '_iterateStateMachine_sloc3_1_0'
                            817 ;sloc4                     Allocated with name '_iterateStateMachine_sloc4_1_0'
                            818 ;sm                        Allocated with name '_iterateStateMachine_sm_1_1'
                            819 ;initialTransitionEvent    Allocated with name '_iterateStateMachine_initialTransitionEvent_1_1'
                            820 ;enterEvent                Allocated with name '_iterateStateMachine_enterEvent_1_1'
                            821 ;exitEvent                 Allocated with name '_iterateStateMachine_exitEvent_1_1'
                            822 ;eventToProcess            Allocated with name '_iterateStateMachine_eventToProcess_2_3'
                            823 ;stateBeingProcessed       Allocated with name '_iterateStateMachine_stateBeingProcessed_2_3'
                            824 ;action                    Allocated with name '_iterateStateMachine_action_2_3'
                            825 ;source                    Allocated with name '_iterateStateMachine_source_3_9'
                            826 ;target                    Allocated with name '_iterateStateMachine_target_3_9'
                            827 ;sourceHierarchy           Allocated with name '_iterateStateMachine_sourceHierarchy_4_14'
                            828 ;sourceIndex               Allocated with name '_iterateStateMachine_sourceIndex_4_14'
                            829 ;targetHierarchy           Allocated with name '_iterateStateMachine_targetHierarchy_4_14'
                            830 ;targetIndex               Allocated with name '_iterateStateMachine_targetIndex_4_14'
                            831 ;LCA                       Allocated with name '_iterateStateMachine_LCA_4_14'
                            832 ;entryIndex                Allocated with name '_iterateStateMachine_entryIndex_4_14'
                            833 ;exitIndex                 Allocated with name '_iterateStateMachine_exitIndex_4_14'
                            834 ;exitIndex                 Allocated with name '_iterateStateMachine_exitIndex_6_16'
                            835 ;LCAindex                  Allocated with name '_iterateStateMachine_LCAindex_5_22'
                            836 ;------------------------------------------------------------
                            837 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:156: void iterateStateMachine(	stateMachine_t* sm)
                            838 ;	-----------------------------------------
                            839 ;	 function iterateStateMachine
                            840 ;	-----------------------------------------
   0853                     841 _iterateStateMachine:
   0853 AA F0               842 	mov	r2,b
   0855 AB 83               843 	mov	r3,dph
   0857 E5 82               844 	mov	a,dpl
   0859 90 00 D3            845 	mov	dptr,#_iterateStateMachine_sm_1_1
   085C F0                  846 	movx	@dptr,a
   085D A3                  847 	inc	dptr
   085E EB                  848 	mov	a,r3
   085F F0                  849 	movx	@dptr,a
   0860 A3                  850 	inc	dptr
   0861 EA                  851 	mov	a,r2
   0862 F0                  852 	movx	@dptr,a
                            853 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:168: if(!sm->stateMachineInitialized)
   0863 90 00 D3            854 	mov	dptr,#_iterateStateMachine_sm_1_1
   0866 E0                  855 	movx	a,@dptr
   0867 FA                  856 	mov	r2,a
   0868 A3                  857 	inc	dptr
   0869 E0                  858 	movx	a,@dptr
   086A FB                  859 	mov	r3,a
   086B A3                  860 	inc	dptr
   086C E0                  861 	movx	a,@dptr
   086D FC                  862 	mov	r4,a
   086E 74 13               863 	mov	a,#0x13
   0870 2A                  864 	add	a,r2
   0871 FD                  865 	mov	r5,a
   0872 E4                  866 	clr	a
   0873 3B                  867 	addc	a,r3
   0874 FE                  868 	mov	r6,a
   0875 8C 07               869 	mov	ar7,r4
   0877 8D 82               870 	mov	dpl,r5
   0879 8E 83               871 	mov	dph,r6
   087B 8F F0               872 	mov	b,r7
   087D 12 3D 4E            873 	lcall	__gptrget
   0880 60 03               874 	jz	00192$
   0882 02 09 0A            875 	ljmp	00102$
   0885                     876 00192$:
                            877 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:174: sm->currentState = (state_t*)sm->topState ;
   0885 74 06               878 	mov	a,#0x06
   0887 2A                  879 	add	a,r2
   0888 F5 2D               880 	mov	_iterateStateMachine_sloc0_1_0,a
   088A E4                  881 	clr	a
   088B 3B                  882 	addc	a,r3
   088C F5 2E               883 	mov	(_iterateStateMachine_sloc0_1_0 + 1),a
   088E 8C 2F               884 	mov	(_iterateStateMachine_sloc0_1_0 + 2),r4
   0890 8A 82               885 	mov	dpl,r2
   0892 8B 83               886 	mov	dph,r3
   0894 8C F0               887 	mov	b,r4
   0896 12 3D 4E            888 	lcall	__gptrget
   0899 F8                  889 	mov	r0,a
   089A A3                  890 	inc	dptr
   089B 12 3D 4E            891 	lcall	__gptrget
   089E F9                  892 	mov	r1,a
   089F 7D 80               893 	mov	r5,#0x80
   08A1 85 2D 82            894 	mov	dpl,_iterateStateMachine_sloc0_1_0
   08A4 85 2E 83            895 	mov	dph,(_iterateStateMachine_sloc0_1_0 + 1)
   08A7 85 2F F0            896 	mov	b,(_iterateStateMachine_sloc0_1_0 + 2)
   08AA E8                  897 	mov	a,r0
   08AB 12 31 22            898 	lcall	__gptrput
   08AE A3                  899 	inc	dptr
   08AF E9                  900 	mov	a,r1
   08B0 12 31 22            901 	lcall	__gptrput
   08B3 A3                  902 	inc	dptr
   08B4 ED                  903 	mov	a,r5
   08B5 12 31 22            904 	lcall	__gptrput
                            905 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:176: callStateHandler(sm, sm->currentState, &enterEvent) ;
   08B8 90 00 CA            906 	mov	dptr,#_callStateHandler_PARM_2
   08BB E8                  907 	mov	a,r0
   08BC F0                  908 	movx	@dptr,a
   08BD A3                  909 	inc	dptr
   08BE E9                  910 	mov	a,r1
   08BF F0                  911 	movx	@dptr,a
   08C0 A3                  912 	inc	dptr
   08C1 ED                  913 	mov	a,r5
   08C2 F0                  914 	movx	@dptr,a
   08C3 90 00 CD            915 	mov	dptr,#_callStateHandler_PARM_3
   08C6 74 D7               916 	mov	a,#_iterateStateMachine_enterEvent_1_1
   08C8 F0                  917 	movx	@dptr,a
   08C9 A3                  918 	inc	dptr
   08CA 74 00               919 	mov	a,#(_iterateStateMachine_enterEvent_1_1 >> 8)
   08CC F0                  920 	movx	@dptr,a
   08CD A3                  921 	inc	dptr
   08CE E4                  922 	clr	a
   08CF F0                  923 	movx	@dptr,a
   08D0 8A 82               924 	mov	dpl,r2
   08D2 8B 83               925 	mov	dph,r3
   08D4 8C F0               926 	mov	b,r4
   08D6 12 07 E7            927 	lcall	_callStateHandler
                            928 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:178: sm->stateMachineInitialized	= true ;
   08D9 90 00 D3            929 	mov	dptr,#_iterateStateMachine_sm_1_1
   08DC E0                  930 	movx	a,@dptr
   08DD FA                  931 	mov	r2,a
   08DE A3                  932 	inc	dptr
   08DF E0                  933 	movx	a,@dptr
   08E0 FB                  934 	mov	r3,a
   08E1 A3                  935 	inc	dptr
   08E2 E0                  936 	movx	a,@dptr
   08E3 FC                  937 	mov	r4,a
   08E4 74 13               938 	mov	a,#0x13
   08E6 2A                  939 	add	a,r2
   08E7 FD                  940 	mov	r5,a
   08E8 E4                  941 	clr	a
   08E9 3B                  942 	addc	a,r3
   08EA FE                  943 	mov	r6,a
   08EB 8C 07               944 	mov	ar7,r4
   08ED 8D 82               945 	mov	dpl,r5
   08EF 8E 83               946 	mov	dph,r6
   08F1 8F F0               947 	mov	b,r7
   08F3 74 01               948 	mov	a,#0x01
   08F5 12 31 22            949 	lcall	__gptrput
                            950 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:179: sm->forceTransition			= true ;
   08F8 74 14               951 	mov	a,#0x14
   08FA 2A                  952 	add	a,r2
   08FB FA                  953 	mov	r2,a
   08FC E4                  954 	clr	a
   08FD 3B                  955 	addc	a,r3
   08FE FB                  956 	mov	r3,a
   08FF 8A 82               957 	mov	dpl,r2
   0901 8B 83               958 	mov	dph,r3
   0903 8C F0               959 	mov	b,r4
   0905 74 01               960 	mov	a,#0x01
   0907 12 31 22            961 	lcall	__gptrput
   090A                     962 00102$:
                            963 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:184: if((!isEmpty(&sm->eventQueue)) || (sm->forceTransition))
   090A 90 00 D3            964 	mov	dptr,#_iterateStateMachine_sm_1_1
   090D E0                  965 	movx	a,@dptr
   090E FA                  966 	mov	r2,a
   090F A3                  967 	inc	dptr
   0910 E0                  968 	movx	a,@dptr
   0911 FB                  969 	mov	r3,a
   0912 A3                  970 	inc	dptr
   0913 E0                  971 	movx	a,@dptr
   0914 FC                  972 	mov	r4,a
   0915 74 0C               973 	mov	a,#0x0C
   0917 2A                  974 	add	a,r2
   0918 FD                  975 	mov	r5,a
   0919 E4                  976 	clr	a
   091A 3B                  977 	addc	a,r3
   091B FE                  978 	mov	r6,a
   091C 8C 07               979 	mov	ar7,r4
   091E 8D 82               980 	mov	dpl,r5
   0920 8E 83               981 	mov	dph,r6
   0922 8F F0               982 	mov	b,r7
   0924 C0 02               983 	push	ar2
   0926 C0 03               984 	push	ar3
   0928 C0 04               985 	push	ar4
   092A 12 01 8B            986 	lcall	_isEmpty
   092D E5 82               987 	mov	a,dpl
   092F D0 04               988 	pop	ar4
   0931 D0 03               989 	pop	ar3
   0933 D0 02               990 	pop	ar2
   0935 60 13               991 	jz	00156$
   0937 74 14               992 	mov	a,#0x14
   0939 2A                  993 	add	a,r2
   093A FA                  994 	mov	r2,a
   093B E4                  995 	clr	a
   093C 3B                  996 	addc	a,r3
   093D FB                  997 	mov	r3,a
   093E 8A 82               998 	mov	dpl,r2
   0940 8B 83               999 	mov	dph,r3
   0942 8C F0              1000 	mov	b,r4
   0944 12 3D 4E           1001 	lcall	__gptrget
   0947 70 01              1002 	jnz	00194$
   0949 22                 1003 	ret
   094A                    1004 00194$:
   094A                    1005 00156$:
                           1006 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:187: state_t*				stateBeingProcessed	= sm->currentState ;
   094A 90 00 D3           1007 	mov	dptr,#_iterateStateMachine_sm_1_1
   094D E0                 1008 	movx	a,@dptr
   094E FA                 1009 	mov	r2,a
   094F A3                 1010 	inc	dptr
   0950 E0                 1011 	movx	a,@dptr
   0951 FB                 1012 	mov	r3,a
   0952 A3                 1013 	inc	dptr
   0953 E0                 1014 	movx	a,@dptr
   0954 FC                 1015 	mov	r4,a
   0955 74 06              1016 	mov	a,#0x06
   0957 2A                 1017 	add	a,r2
   0958 FD                 1018 	mov	r5,a
   0959 E4                 1019 	clr	a
   095A 3B                 1020 	addc	a,r3
   095B FE                 1021 	mov	r6,a
   095C 8C 07              1022 	mov	ar7,r4
   095E 8D 82              1023 	mov	dpl,r5
   0960 8E 83              1024 	mov	dph,r6
   0962 8F F0              1025 	mov	b,r7
   0964 12 3D 4E           1026 	lcall	__gptrget
   0967 FD                 1027 	mov	r5,a
   0968 A3                 1028 	inc	dptr
   0969 12 3D 4E           1029 	lcall	__gptrget
   096C FE                 1030 	mov	r6,a
   096D A3                 1031 	inc	dptr
   096E 12 3D 4E           1032 	lcall	__gptrget
   0971 FF                 1033 	mov	r7,a
   0972 90 00 DC           1034 	mov	dptr,#_iterateStateMachine_stateBeingProcessed_2_3
   0975 ED                 1035 	mov	a,r5
   0976 F0                 1036 	movx	@dptr,a
   0977 A3                 1037 	inc	dptr
   0978 EE                 1038 	mov	a,r6
   0979 F0                 1039 	movx	@dptr,a
   097A A3                 1040 	inc	dptr
   097B EF                 1041 	mov	a,r7
   097C F0                 1042 	movx	@dptr,a
                           1043 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:190: if(sm->forceTransition)
   097D 74 14              1044 	mov	a,#0x14
   097F 2A                 1045 	add	a,r2
   0980 FD                 1046 	mov	r5,a
   0981 E4                 1047 	clr	a
   0982 3B                 1048 	addc	a,r3
   0983 FE                 1049 	mov	r6,a
   0984 8C 07              1050 	mov	ar7,r4
   0986 8D 82              1051 	mov	dpl,r5
   0988 8E 83              1052 	mov	dph,r6
   098A 8F F0              1053 	mov	b,r7
   098C 12 3D 4E           1054 	lcall	__gptrget
   098F 60 19              1055 	jz	00104$
                           1056 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:192: sm->forceTransition	= false ;
   0991 8D 82              1057 	mov	dpl,r5
   0993 8E 83              1058 	mov	dph,r6
   0995 8F F0              1059 	mov	b,r7
   0997 E4                 1060 	clr	a
   0998 12 31 22           1061 	lcall	__gptrput
                           1062 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:193: eventToProcess		= &initialTransitionEvent ;
   099B 90 00 D9           1063 	mov	dptr,#_iterateStateMachine_eventToProcess_2_3
   099E 74 D6              1064 	mov	a,#_iterateStateMachine_initialTransitionEvent_1_1
   09A0 F0                 1065 	movx	@dptr,a
   09A1 A3                 1066 	inc	dptr
   09A2 74 00              1067 	mov	a,#(_iterateStateMachine_initialTransitionEvent_1_1 >> 8)
   09A4 F0                 1068 	movx	@dptr,a
   09A5 A3                 1069 	inc	dptr
   09A6 E4                 1070 	clr	a
   09A7 F0                 1071 	movx	@dptr,a
   09A8 80 21              1072 	sjmp	00105$
   09AA                    1073 00104$:
                           1074 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:197: eventToProcess = Remove(&sm->eventQueue) ; ;
   09AA 74 0C              1075 	mov	a,#0x0C
   09AC 2A                 1076 	add	a,r2
   09AD FA                 1077 	mov	r2,a
   09AE E4                 1078 	clr	a
   09AF 3B                 1079 	addc	a,r3
   09B0 FB                 1080 	mov	r3,a
   09B1 8A 82              1081 	mov	dpl,r2
   09B3 8B 83              1082 	mov	dph,r3
   09B5 8C F0              1083 	mov	b,r4
   09B7 12 04 6F           1084 	lcall	_Remove
   09BA AA 82              1085 	mov	r2,dpl
   09BC AB 83              1086 	mov	r3,dph
   09BE AC F0              1087 	mov	r4,b
   09C0 90 00 D9           1088 	mov	dptr,#_iterateStateMachine_eventToProcess_2_3
   09C3 EA                 1089 	mov	a,r2
   09C4 F0                 1090 	movx	@dptr,a
   09C5 A3                 1091 	inc	dptr
   09C6 EB                 1092 	mov	a,r3
   09C7 F0                 1093 	movx	@dptr,a
   09C8 A3                 1094 	inc	dptr
   09C9 EC                 1095 	mov	a,r4
   09CA F0                 1096 	movx	@dptr,a
   09CB                    1097 00105$:
                           1098 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:200: sm->nextState = (state_t*)0 ;	/* just a little housecleaning */
   09CB 90 00 D3           1099 	mov	dptr,#_iterateStateMachine_sm_1_1
   09CE E0                 1100 	movx	a,@dptr
   09CF FA                 1101 	mov	r2,a
   09D0 A3                 1102 	inc	dptr
   09D1 E0                 1103 	movx	a,@dptr
   09D2 FB                 1104 	mov	r3,a
   09D3 A3                 1105 	inc	dptr
   09D4 E0                 1106 	movx	a,@dptr
   09D5 FC                 1107 	mov	r4,a
   09D6 74 09              1108 	mov	a,#0x09
   09D8 2A                 1109 	add	a,r2
   09D9 FA                 1110 	mov	r2,a
   09DA E4                 1111 	clr	a
   09DB 3B                 1112 	addc	a,r3
   09DC FB                 1113 	mov	r3,a
   09DD 8A 82              1114 	mov	dpl,r2
   09DF 8B 83              1115 	mov	dph,r3
   09E1 8C F0              1116 	mov	b,r4
   09E3 E4                 1117 	clr	a
   09E4 12 31 22           1118 	lcall	__gptrput
   09E7 A3                 1119 	inc	dptr
   09E8 E4                 1120 	clr	a
   09E9 12 31 22           1121 	lcall	__gptrput
   09EC A3                 1122 	inc	dptr
   09ED E4                 1123 	clr	a
   09EE 12 31 22           1124 	lcall	__gptrput
                           1125 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:212: do
   09F1 90 00 D9           1126 	mov	dptr,#_iterateStateMachine_eventToProcess_2_3
   09F4 E0                 1127 	movx	a,@dptr
   09F5 FA                 1128 	mov	r2,a
   09F6 A3                 1129 	inc	dptr
   09F7 E0                 1130 	movx	a,@dptr
   09F8 FB                 1131 	mov	r3,a
   09F9 A3                 1132 	inc	dptr
   09FA E0                 1133 	movx	a,@dptr
   09FB FC                 1134 	mov	r4,a
   09FC                    1135 00110$:
                           1136 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:214: action = callStateHandler(sm, stateBeingProcessed, eventToProcess) ;
   09FC C0 02              1137 	push	ar2
   09FE C0 03              1138 	push	ar3
   0A00 C0 04              1139 	push	ar4
   0A02 90 00 D3           1140 	mov	dptr,#_iterateStateMachine_sm_1_1
   0A05 E0                 1141 	movx	a,@dptr
   0A06 FD                 1142 	mov	r5,a
   0A07 A3                 1143 	inc	dptr
   0A08 E0                 1144 	movx	a,@dptr
   0A09 FE                 1145 	mov	r6,a
   0A0A A3                 1146 	inc	dptr
   0A0B E0                 1147 	movx	a,@dptr
   0A0C FF                 1148 	mov	r7,a
   0A0D 90 00 DC           1149 	mov	dptr,#_iterateStateMachine_stateBeingProcessed_2_3
   0A10 E0                 1150 	movx	a,@dptr
   0A11 F5 2D              1151 	mov	_iterateStateMachine_sloc0_1_0,a
   0A13 A3                 1152 	inc	dptr
   0A14 E0                 1153 	movx	a,@dptr
   0A15 F5 2E              1154 	mov	(_iterateStateMachine_sloc0_1_0 + 1),a
   0A17 A3                 1155 	inc	dptr
   0A18 E0                 1156 	movx	a,@dptr
   0A19 F5 2F              1157 	mov	(_iterateStateMachine_sloc0_1_0 + 2),a
   0A1B 90 00 D9           1158 	mov	dptr,#_iterateStateMachine_eventToProcess_2_3
   0A1E E0                 1159 	movx	a,@dptr
   0A1F FB                 1160 	mov	r3,a
   0A20 A3                 1161 	inc	dptr
   0A21 E0                 1162 	movx	a,@dptr
   0A22 FC                 1163 	mov	r4,a
   0A23 A3                 1164 	inc	dptr
   0A24 E0                 1165 	movx	a,@dptr
   0A25 FA                 1166 	mov	r2,a
   0A26 90 00 CA           1167 	mov	dptr,#_callStateHandler_PARM_2
   0A29 E5 2D              1168 	mov	a,_iterateStateMachine_sloc0_1_0
   0A2B F0                 1169 	movx	@dptr,a
   0A2C A3                 1170 	inc	dptr
   0A2D E5 2E              1171 	mov	a,(_iterateStateMachine_sloc0_1_0 + 1)
   0A2F F0                 1172 	movx	@dptr,a
   0A30 A3                 1173 	inc	dptr
   0A31 E5 2F              1174 	mov	a,(_iterateStateMachine_sloc0_1_0 + 2)
   0A33 F0                 1175 	movx	@dptr,a
   0A34 90 00 CD           1176 	mov	dptr,#_callStateHandler_PARM_3
   0A37 EB                 1177 	mov	a,r3
   0A38 F0                 1178 	movx	@dptr,a
   0A39 A3                 1179 	inc	dptr
   0A3A EC                 1180 	mov	a,r4
   0A3B F0                 1181 	movx	@dptr,a
   0A3C A3                 1182 	inc	dptr
   0A3D EA                 1183 	mov	a,r2
   0A3E F0                 1184 	movx	@dptr,a
   0A3F 8D 82              1185 	mov	dpl,r5
   0A41 8E 83              1186 	mov	dph,r6
   0A43 8F F0              1187 	mov	b,r7
   0A45 C0 02              1188 	push	ar2
   0A47 C0 03              1189 	push	ar3
   0A49 C0 04              1190 	push	ar4
   0A4B 12 07 E7           1191 	lcall	_callStateHandler
   0A4E 85 82 2D           1192 	mov	_iterateStateMachine_sloc0_1_0,dpl
   0A51 D0 04              1193 	pop	ar4
   0A53 D0 03              1194 	pop	ar3
   0A55 D0 02              1195 	pop	ar2
                           1196 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:216: if((action == IGNORED) && (eventToProcess->eventType > SUBSTATE_EXIT))
   0A57 D0 04              1197 	pop	ar4
   0A59 D0 03              1198 	pop	ar3
   0A5B D0 02              1199 	pop	ar2
   0A5D E5 2D              1200 	mov	a,_iterateStateMachine_sloc0_1_0
   0A5F 70 4B              1201 	jnz	00112$
   0A61 8A 82              1202 	mov	dpl,r2
   0A63 8B 83              1203 	mov	dph,r3
   0A65 8C F0              1204 	mov	b,r4
   0A67 12 3D 4E           1205 	lcall	__gptrget
   0A6A FD                 1206 	mov  r5,a
   0A6B 24 FC              1207 	add	a,#0xff - 0x03
   0A6D 50 3D              1208 	jnc	00112$
                           1209 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:218: stateBeingProcessed = (state_t*)(stateBeingProcessed->parent) ;
   0A6F 90 00 DC           1210 	mov	dptr,#_iterateStateMachine_stateBeingProcessed_2_3
   0A72 E0                 1211 	movx	a,@dptr
   0A73 FD                 1212 	mov	r5,a
   0A74 A3                 1213 	inc	dptr
   0A75 E0                 1214 	movx	a,@dptr
   0A76 FE                 1215 	mov	r6,a
   0A77 A3                 1216 	inc	dptr
   0A78 E0                 1217 	movx	a,@dptr
   0A79 FF                 1218 	mov	r7,a
   0A7A 8D 82              1219 	mov	dpl,r5
   0A7C 8E 83              1220 	mov	dph,r6
   0A7E 8F F0              1221 	mov	b,r7
   0A80 12 3D 4E           1222 	lcall	__gptrget
   0A83 FD                 1223 	mov	r5,a
   0A84 A3                 1224 	inc	dptr
   0A85 12 3D 4E           1225 	lcall	__gptrget
   0A88 FE                 1226 	mov	r6,a
   0A89 A3                 1227 	inc	dptr
   0A8A 12 3D 4E           1228 	lcall	__gptrget
   0A8D FF                 1229 	mov	r7,a
   0A8E 90 00 DC           1230 	mov	dptr,#_iterateStateMachine_stateBeingProcessed_2_3
   0A91 ED                 1231 	mov	a,r5
   0A92 F0                 1232 	movx	@dptr,a
   0A93 A3                 1233 	inc	dptr
   0A94 EE                 1234 	mov	a,r6
   0A95 F0                 1235 	movx	@dptr,a
   0A96 A3                 1236 	inc	dptr
   0A97 EF                 1237 	mov	a,r7
   0A98 F0                 1238 	movx	@dptr,a
                           1239 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:231: } while(stateBeingProcessed) ;
   0A99 90 00 DC           1240 	mov	dptr,#_iterateStateMachine_stateBeingProcessed_2_3
   0A9C E0                 1241 	movx	a,@dptr
   0A9D FD                 1242 	mov	r5,a
   0A9E A3                 1243 	inc	dptr
   0A9F E0                 1244 	movx	a,@dptr
   0AA0 FE                 1245 	mov	r6,a
   0AA1 A3                 1246 	inc	dptr
   0AA2 E0                 1247 	movx	a,@dptr
   0AA3 FF                 1248 	mov	r7,a
   0AA4 ED                 1249 	mov	a,r5
   0AA5 4E                 1250 	orl	a,r6
   0AA6 4F                 1251 	orl	a,r7
   0AA7 60 03              1252 	jz	00198$
   0AA9 02 09 FC           1253 	ljmp	00110$
   0AAC                    1254 00198$:
   0AAC                    1255 00112$:
                           1256 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:233: if(action == TRANSITION)
   0AAC 74 02              1257 	mov	a,#0x02
   0AAE B5 2D 02           1258 	cjne	a,_iterateStateMachine_sloc0_1_0,00199$
   0AB1 80 01              1259 	sjmp	00200$
   0AB3                    1260 00199$:
   0AB3 22                 1261 	ret
   0AB4                    1262 00200$:
                           1263 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:235: state_t*	source	= sm->currentState ;
   0AB4 90 00 D3           1264 	mov	dptr,#_iterateStateMachine_sm_1_1
   0AB7 E0                 1265 	movx	a,@dptr
   0AB8 FA                 1266 	mov	r2,a
   0AB9 A3                 1267 	inc	dptr
   0ABA E0                 1268 	movx	a,@dptr
   0ABB FB                 1269 	mov	r3,a
   0ABC A3                 1270 	inc	dptr
   0ABD E0                 1271 	movx	a,@dptr
   0ABE FC                 1272 	mov	r4,a
   0ABF 74 06              1273 	mov	a,#0x06
   0AC1 2A                 1274 	add	a,r2
   0AC2 F5 30              1275 	mov	_iterateStateMachine_sloc1_1_0,a
   0AC4 E4                 1276 	clr	a
   0AC5 3B                 1277 	addc	a,r3
   0AC6 F5 31              1278 	mov	(_iterateStateMachine_sloc1_1_0 + 1),a
   0AC8 8C 32              1279 	mov	(_iterateStateMachine_sloc1_1_0 + 2),r4
   0ACA 85 30 82           1280 	mov	dpl,_iterateStateMachine_sloc1_1_0
   0ACD 85 31 83           1281 	mov	dph,(_iterateStateMachine_sloc1_1_0 + 1)
   0AD0 85 32 F0           1282 	mov	b,(_iterateStateMachine_sloc1_1_0 + 2)
   0AD3 12 3D 4E           1283 	lcall	__gptrget
   0AD6 F5 2D              1284 	mov	_iterateStateMachine_sloc0_1_0,a
   0AD8 A3                 1285 	inc	dptr
   0AD9 12 3D 4E           1286 	lcall	__gptrget
   0ADC F5 2E              1287 	mov	(_iterateStateMachine_sloc0_1_0 + 1),a
   0ADE A3                 1288 	inc	dptr
   0ADF 12 3D 4E           1289 	lcall	__gptrget
   0AE2 F5 2F              1290 	mov	(_iterateStateMachine_sloc0_1_0 + 2),a
                           1291 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:236: state_t*	target	= sm->nextState ;
   0AE4 74 09              1292 	mov	a,#0x09
   0AE6 2A                 1293 	add	a,r2
   0AE7 F8                 1294 	mov	r0,a
   0AE8 E4                 1295 	clr	a
   0AE9 3B                 1296 	addc	a,r3
   0AEA F9                 1297 	mov	r1,a
   0AEB 8C 05              1298 	mov	ar5,r4
   0AED 88 82              1299 	mov	dpl,r0
   0AEF 89 83              1300 	mov	dph,r1
   0AF1 8D F0              1301 	mov	b,r5
   0AF3 12 3D 4E           1302 	lcall	__gptrget
   0AF6 F5 33              1303 	mov	_iterateStateMachine_sloc2_1_0,a
   0AF8 A3                 1304 	inc	dptr
   0AF9 12 3D 4E           1305 	lcall	__gptrget
   0AFC F5 34              1306 	mov	(_iterateStateMachine_sloc2_1_0 + 1),a
   0AFE A3                 1307 	inc	dptr
   0AFF 12 3D 4E           1308 	lcall	__gptrget
   0B02 F5 35              1309 	mov	(_iterateStateMachine_sloc2_1_0 + 2),a
                           1310 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:240: if(source == target)
   0B04 E5 33              1311 	mov	a,_iterateStateMachine_sloc2_1_0
   0B06 B5 2D 0C           1312 	cjne	a,_iterateStateMachine_sloc0_1_0,00201$
   0B09 E5 34              1313 	mov	a,(_iterateStateMachine_sloc2_1_0 + 1)
   0B0B B5 2E 07           1314 	cjne	a,(_iterateStateMachine_sloc0_1_0 + 1),00201$
   0B0E E5 35              1315 	mov	a,(_iterateStateMachine_sloc2_1_0 + 2)
   0B10 B5 2F 02           1316 	cjne	a,(_iterateStateMachine_sloc0_1_0 + 2),00201$
   0B13 80 03              1317 	sjmp	00202$
   0B15                    1318 00201$:
   0B15 02 0B 96           1319 	ljmp	00152$
   0B18                    1320 00202$:
                           1321 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:248: callStateHandler(sm, source, &exitEvent) ;
   0B18 90 00 CA           1322 	mov	dptr,#_callStateHandler_PARM_2
   0B1B E5 2D              1323 	mov	a,_iterateStateMachine_sloc0_1_0
   0B1D F0                 1324 	movx	@dptr,a
   0B1E A3                 1325 	inc	dptr
   0B1F E5 2E              1326 	mov	a,(_iterateStateMachine_sloc0_1_0 + 1)
   0B21 F0                 1327 	movx	@dptr,a
   0B22 A3                 1328 	inc	dptr
   0B23 E5 2F              1329 	mov	a,(_iterateStateMachine_sloc0_1_0 + 2)
   0B25 F0                 1330 	movx	@dptr,a
   0B26 90 00 CD           1331 	mov	dptr,#_callStateHandler_PARM_3
   0B29 74 D8              1332 	mov	a,#_iterateStateMachine_exitEvent_1_1
   0B2B F0                 1333 	movx	@dptr,a
   0B2C A3                 1334 	inc	dptr
   0B2D 74 00              1335 	mov	a,#(_iterateStateMachine_exitEvent_1_1 >> 8)
   0B2F F0                 1336 	movx	@dptr,a
   0B30 A3                 1337 	inc	dptr
   0B31 E4                 1338 	clr	a
   0B32 F0                 1339 	movx	@dptr,a
   0B33 8A 82              1340 	mov	dpl,r2
   0B35 8B 83              1341 	mov	dph,r3
   0B37 8C F0              1342 	mov	b,r4
   0B39 12 07 E7           1343 	lcall	_callStateHandler
                           1344 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:249: sm->currentState = target ;
   0B3C 90 00 D3           1345 	mov	dptr,#_iterateStateMachine_sm_1_1
   0B3F E0                 1346 	movx	a,@dptr
   0B40 F5 36              1347 	mov	_iterateStateMachine_sloc3_1_0,a
   0B42 A3                 1348 	inc	dptr
   0B43 E0                 1349 	movx	a,@dptr
   0B44 F5 37              1350 	mov	(_iterateStateMachine_sloc3_1_0 + 1),a
   0B46 A3                 1351 	inc	dptr
   0B47 E0                 1352 	movx	a,@dptr
   0B48 F5 38              1353 	mov	(_iterateStateMachine_sloc3_1_0 + 2),a
   0B4A 74 06              1354 	mov	a,#0x06
   0B4C 25 36              1355 	add	a,_iterateStateMachine_sloc3_1_0
   0B4E FE                 1356 	mov	r6,a
   0B4F E4                 1357 	clr	a
   0B50 35 37              1358 	addc	a,(_iterateStateMachine_sloc3_1_0 + 1)
   0B52 FF                 1359 	mov	r7,a
   0B53 AD 38              1360 	mov	r5,(_iterateStateMachine_sloc3_1_0 + 2)
   0B55 8E 82              1361 	mov	dpl,r6
   0B57 8F 83              1362 	mov	dph,r7
   0B59 8D F0              1363 	mov	b,r5
   0B5B E5 33              1364 	mov	a,_iterateStateMachine_sloc2_1_0
   0B5D 12 31 22           1365 	lcall	__gptrput
   0B60 A3                 1366 	inc	dptr
   0B61 E5 34              1367 	mov	a,(_iterateStateMachine_sloc2_1_0 + 1)
   0B63 12 31 22           1368 	lcall	__gptrput
   0B66 A3                 1369 	inc	dptr
   0B67 E5 35              1370 	mov	a,(_iterateStateMachine_sloc2_1_0 + 2)
   0B69 12 31 22           1371 	lcall	__gptrput
                           1372 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:250: callStateHandler(sm, target, &enterEvent) ;
   0B6C 90 00 CA           1373 	mov	dptr,#_callStateHandler_PARM_2
   0B6F E5 33              1374 	mov	a,_iterateStateMachine_sloc2_1_0
   0B71 F0                 1375 	movx	@dptr,a
   0B72 A3                 1376 	inc	dptr
   0B73 E5 34              1377 	mov	a,(_iterateStateMachine_sloc2_1_0 + 1)
   0B75 F0                 1378 	movx	@dptr,a
   0B76 A3                 1379 	inc	dptr
   0B77 E5 35              1380 	mov	a,(_iterateStateMachine_sloc2_1_0 + 2)
   0B79 F0                 1381 	movx	@dptr,a
   0B7A 90 00 CD           1382 	mov	dptr,#_callStateHandler_PARM_3
   0B7D 74 D7              1383 	mov	a,#_iterateStateMachine_enterEvent_1_1
   0B7F F0                 1384 	movx	@dptr,a
   0B80 A3                 1385 	inc	dptr
   0B81 74 00              1386 	mov	a,#(_iterateStateMachine_enterEvent_1_1 >> 8)
   0B83 F0                 1387 	movx	@dptr,a
   0B84 A3                 1388 	inc	dptr
   0B85 E4                 1389 	clr	a
   0B86 F0                 1390 	movx	@dptr,a
   0B87 85 36 82           1391 	mov	dpl,_iterateStateMachine_sloc3_1_0
   0B8A 85 37 83           1392 	mov	dph,(_iterateStateMachine_sloc3_1_0 + 1)
   0B8D 85 38 F0           1393 	mov	b,(_iterateStateMachine_sloc3_1_0 + 2)
   0B90 12 07 E7           1394 	lcall	_callStateHandler
   0B93 02 10 BA           1395 	ljmp	00153$
   0B96                    1396 00152$:
                           1397 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:252: else if(source == (state_t*)(target->parent))
   0B96 85 33 82           1398 	mov	dpl,_iterateStateMachine_sloc2_1_0
   0B99 85 34 83           1399 	mov	dph,(_iterateStateMachine_sloc2_1_0 + 1)
   0B9C 85 35 F0           1400 	mov	b,(_iterateStateMachine_sloc2_1_0 + 2)
   0B9F 12 3D 4E           1401 	lcall	__gptrget
   0BA2 FD                 1402 	mov	r5,a
   0BA3 A3                 1403 	inc	dptr
   0BA4 12 3D 4E           1404 	lcall	__gptrget
   0BA7 FE                 1405 	mov	r6,a
   0BA8 A3                 1406 	inc	dptr
   0BA9 12 3D 4E           1407 	lcall	__gptrget
   0BAC FF                 1408 	mov	r7,a
   0BAD ED                 1409 	mov	a,r5
   0BAE B5 2D 49           1410 	cjne	a,_iterateStateMachine_sloc0_1_0,00149$
   0BB1 EE                 1411 	mov	a,r6
   0BB2 B5 2E 45           1412 	cjne	a,(_iterateStateMachine_sloc0_1_0 + 1),00149$
   0BB5 EF                 1413 	mov	a,r7
   0BB6 B5 2F 41           1414 	cjne	a,(_iterateStateMachine_sloc0_1_0 + 2),00149$
                           1415 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:261: sm->currentState = target ;
   0BB9 85 30 82           1416 	mov	dpl,_iterateStateMachine_sloc1_1_0
   0BBC 85 31 83           1417 	mov	dph,(_iterateStateMachine_sloc1_1_0 + 1)
   0BBF 85 32 F0           1418 	mov	b,(_iterateStateMachine_sloc1_1_0 + 2)
   0BC2 E5 33              1419 	mov	a,_iterateStateMachine_sloc2_1_0
   0BC4 12 31 22           1420 	lcall	__gptrput
   0BC7 A3                 1421 	inc	dptr
   0BC8 E5 34              1422 	mov	a,(_iterateStateMachine_sloc2_1_0 + 1)
   0BCA 12 31 22           1423 	lcall	__gptrput
   0BCD A3                 1424 	inc	dptr
   0BCE E5 35              1425 	mov	a,(_iterateStateMachine_sloc2_1_0 + 2)
   0BD0 12 31 22           1426 	lcall	__gptrput
                           1427 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:262: callStateHandler(sm, target, &enterEvent) ;
   0BD3 90 00 CA           1428 	mov	dptr,#_callStateHandler_PARM_2
   0BD6 E5 33              1429 	mov	a,_iterateStateMachine_sloc2_1_0
   0BD8 F0                 1430 	movx	@dptr,a
   0BD9 A3                 1431 	inc	dptr
   0BDA E5 34              1432 	mov	a,(_iterateStateMachine_sloc2_1_0 + 1)
   0BDC F0                 1433 	movx	@dptr,a
   0BDD A3                 1434 	inc	dptr
   0BDE E5 35              1435 	mov	a,(_iterateStateMachine_sloc2_1_0 + 2)
   0BE0 F0                 1436 	movx	@dptr,a
   0BE1 90 00 CD           1437 	mov	dptr,#_callStateHandler_PARM_3
   0BE4 74 D7              1438 	mov	a,#_iterateStateMachine_enterEvent_1_1
   0BE6 F0                 1439 	movx	@dptr,a
   0BE7 A3                 1440 	inc	dptr
   0BE8 74 00              1441 	mov	a,#(_iterateStateMachine_enterEvent_1_1 >> 8)
   0BEA F0                 1442 	movx	@dptr,a
   0BEB A3                 1443 	inc	dptr
   0BEC E4                 1444 	clr	a
   0BED F0                 1445 	movx	@dptr,a
   0BEE 8A 82              1446 	mov	dpl,r2
   0BF0 8B 83              1447 	mov	dph,r3
   0BF2 8C F0              1448 	mov	b,r4
   0BF4 12 07 E7           1449 	lcall	_callStateHandler
   0BF7 02 10 BA           1450 	ljmp	00153$
   0BFA                    1451 00149$:
                           1452 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:264: else if((state_t*)(source->parent) == (state_t*)(target->parent))
   0BFA 85 2D 82           1453 	mov	dpl,_iterateStateMachine_sloc0_1_0
   0BFD 85 2E 83           1454 	mov	dph,(_iterateStateMachine_sloc0_1_0 + 1)
   0C00 85 2F F0           1455 	mov	b,(_iterateStateMachine_sloc0_1_0 + 2)
   0C03 12 3D 4E           1456 	lcall	__gptrget
   0C06 F5 36              1457 	mov	_iterateStateMachine_sloc3_1_0,a
   0C08 A3                 1458 	inc	dptr
   0C09 12 3D 4E           1459 	lcall	__gptrget
   0C0C F5 37              1460 	mov	(_iterateStateMachine_sloc3_1_0 + 1),a
   0C0E A3                 1461 	inc	dptr
   0C0F 12 3D 4E           1462 	lcall	__gptrget
   0C12 F5 38              1463 	mov	(_iterateStateMachine_sloc3_1_0 + 2),a
   0C14 ED                 1464 	mov	a,r5
   0C15 B5 36 0A           1465 	cjne	a,_iterateStateMachine_sloc3_1_0,00205$
   0C18 EE                 1466 	mov	a,r6
   0C19 B5 37 06           1467 	cjne	a,(_iterateStateMachine_sloc3_1_0 + 1),00205$
   0C1C EF                 1468 	mov	a,r7
   0C1D B5 38 02           1469 	cjne	a,(_iterateStateMachine_sloc3_1_0 + 2),00205$
   0C20 80 03              1470 	sjmp	00206$
   0C22                    1471 00205$:
   0C22 02 0C A3           1472 	ljmp	00146$
   0C25                    1473 00206$:
                           1474 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:273: callStateHandler(sm, source, &exitEvent) ;
   0C25 90 00 CA           1475 	mov	dptr,#_callStateHandler_PARM_2
   0C28 E5 2D              1476 	mov	a,_iterateStateMachine_sloc0_1_0
   0C2A F0                 1477 	movx	@dptr,a
   0C2B A3                 1478 	inc	dptr
   0C2C E5 2E              1479 	mov	a,(_iterateStateMachine_sloc0_1_0 + 1)
   0C2E F0                 1480 	movx	@dptr,a
   0C2F A3                 1481 	inc	dptr
   0C30 E5 2F              1482 	mov	a,(_iterateStateMachine_sloc0_1_0 + 2)
   0C32 F0                 1483 	movx	@dptr,a
   0C33 90 00 CD           1484 	mov	dptr,#_callStateHandler_PARM_3
   0C36 74 D8              1485 	mov	a,#_iterateStateMachine_exitEvent_1_1
   0C38 F0                 1486 	movx	@dptr,a
   0C39 A3                 1487 	inc	dptr
   0C3A 74 00              1488 	mov	a,#(_iterateStateMachine_exitEvent_1_1 >> 8)
   0C3C F0                 1489 	movx	@dptr,a
   0C3D A3                 1490 	inc	dptr
   0C3E E4                 1491 	clr	a
   0C3F F0                 1492 	movx	@dptr,a
   0C40 8A 82              1493 	mov	dpl,r2
   0C42 8B 83              1494 	mov	dph,r3
   0C44 8C F0              1495 	mov	b,r4
   0C46 12 07 E7           1496 	lcall	_callStateHandler
                           1497 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:274: sm->currentState = target ;
   0C49 90 00 D3           1498 	mov	dptr,#_iterateStateMachine_sm_1_1
   0C4C E0                 1499 	movx	a,@dptr
   0C4D F5 39              1500 	mov	_iterateStateMachine_sloc4_1_0,a
   0C4F A3                 1501 	inc	dptr
   0C50 E0                 1502 	movx	a,@dptr
   0C51 F5 3A              1503 	mov	(_iterateStateMachine_sloc4_1_0 + 1),a
   0C53 A3                 1504 	inc	dptr
   0C54 E0                 1505 	movx	a,@dptr
   0C55 F5 3B              1506 	mov	(_iterateStateMachine_sloc4_1_0 + 2),a
   0C57 74 06              1507 	mov	a,#0x06
   0C59 25 39              1508 	add	a,_iterateStateMachine_sloc4_1_0
   0C5B F8                 1509 	mov	r0,a
   0C5C E4                 1510 	clr	a
   0C5D 35 3A              1511 	addc	a,(_iterateStateMachine_sloc4_1_0 + 1)
   0C5F F9                 1512 	mov	r1,a
   0C60 AD 3B              1513 	mov	r5,(_iterateStateMachine_sloc4_1_0 + 2)
   0C62 88 82              1514 	mov	dpl,r0
   0C64 89 83              1515 	mov	dph,r1
   0C66 8D F0              1516 	mov	b,r5
   0C68 E5 33              1517 	mov	a,_iterateStateMachine_sloc2_1_0
   0C6A 12 31 22           1518 	lcall	__gptrput
   0C6D A3                 1519 	inc	dptr
   0C6E E5 34              1520 	mov	a,(_iterateStateMachine_sloc2_1_0 + 1)
   0C70 12 31 22           1521 	lcall	__gptrput
   0C73 A3                 1522 	inc	dptr
   0C74 E5 35              1523 	mov	a,(_iterateStateMachine_sloc2_1_0 + 2)
   0C76 12 31 22           1524 	lcall	__gptrput
                           1525 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:275: callStateHandler(sm, target, &enterEvent) ;
   0C79 90 00 CA           1526 	mov	dptr,#_callStateHandler_PARM_2
   0C7C E5 33              1527 	mov	a,_iterateStateMachine_sloc2_1_0
   0C7E F0                 1528 	movx	@dptr,a
   0C7F A3                 1529 	inc	dptr
   0C80 E5 34              1530 	mov	a,(_iterateStateMachine_sloc2_1_0 + 1)
   0C82 F0                 1531 	movx	@dptr,a
   0C83 A3                 1532 	inc	dptr
   0C84 E5 35              1533 	mov	a,(_iterateStateMachine_sloc2_1_0 + 2)
   0C86 F0                 1534 	movx	@dptr,a
   0C87 90 00 CD           1535 	mov	dptr,#_callStateHandler_PARM_3
   0C8A 74 D7              1536 	mov	a,#_iterateStateMachine_enterEvent_1_1
   0C8C F0                 1537 	movx	@dptr,a
   0C8D A3                 1538 	inc	dptr
   0C8E 74 00              1539 	mov	a,#(_iterateStateMachine_enterEvent_1_1 >> 8)
   0C90 F0                 1540 	movx	@dptr,a
   0C91 A3                 1541 	inc	dptr
   0C92 E4                 1542 	clr	a
   0C93 F0                 1543 	movx	@dptr,a
   0C94 85 39 82           1544 	mov	dpl,_iterateStateMachine_sloc4_1_0
   0C97 85 3A 83           1545 	mov	dph,(_iterateStateMachine_sloc4_1_0 + 1)
   0C9A 85 3B F0           1546 	mov	b,(_iterateStateMachine_sloc4_1_0 + 2)
   0C9D 12 07 E7           1547 	lcall	_callStateHandler
   0CA0 02 10 BA           1548 	ljmp	00153$
   0CA3                    1549 00146$:
                           1550 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:277: else if((state_t*)(source->parent) == target)
   0CA3 E5 33              1551 	mov	a,_iterateStateMachine_sloc2_1_0
   0CA5 B5 36 4B           1552 	cjne	a,_iterateStateMachine_sloc3_1_0,00143$
   0CA8 E5 34              1553 	mov	a,(_iterateStateMachine_sloc2_1_0 + 1)
   0CAA B5 37 46           1554 	cjne	a,(_iterateStateMachine_sloc3_1_0 + 1),00143$
   0CAD E5 35              1555 	mov	a,(_iterateStateMachine_sloc2_1_0 + 2)
   0CAF B5 38 41           1556 	cjne	a,(_iterateStateMachine_sloc3_1_0 + 2),00143$
                           1557 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:287: sm->currentState = target ;
   0CB2 85 30 82           1558 	mov	dpl,_iterateStateMachine_sloc1_1_0
   0CB5 85 31 83           1559 	mov	dph,(_iterateStateMachine_sloc1_1_0 + 1)
   0CB8 85 32 F0           1560 	mov	b,(_iterateStateMachine_sloc1_1_0 + 2)
   0CBB E5 33              1561 	mov	a,_iterateStateMachine_sloc2_1_0
   0CBD 12 31 22           1562 	lcall	__gptrput
   0CC0 A3                 1563 	inc	dptr
   0CC1 E5 34              1564 	mov	a,(_iterateStateMachine_sloc2_1_0 + 1)
   0CC3 12 31 22           1565 	lcall	__gptrput
   0CC6 A3                 1566 	inc	dptr
   0CC7 E5 35              1567 	mov	a,(_iterateStateMachine_sloc2_1_0 + 2)
   0CC9 12 31 22           1568 	lcall	__gptrput
                           1569 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:288: callStateHandler(sm, source, &exitEvent) ;
   0CCC 90 00 CA           1570 	mov	dptr,#_callStateHandler_PARM_2
   0CCF E5 2D              1571 	mov	a,_iterateStateMachine_sloc0_1_0
   0CD1 F0                 1572 	movx	@dptr,a
   0CD2 A3                 1573 	inc	dptr
   0CD3 E5 2E              1574 	mov	a,(_iterateStateMachine_sloc0_1_0 + 1)
   0CD5 F0                 1575 	movx	@dptr,a
   0CD6 A3                 1576 	inc	dptr
   0CD7 E5 2F              1577 	mov	a,(_iterateStateMachine_sloc0_1_0 + 2)
   0CD9 F0                 1578 	movx	@dptr,a
   0CDA 90 00 CD           1579 	mov	dptr,#_callStateHandler_PARM_3
   0CDD 74 D8              1580 	mov	a,#_iterateStateMachine_exitEvent_1_1
   0CDF F0                 1581 	movx	@dptr,a
   0CE0 A3                 1582 	inc	dptr
   0CE1 74 00              1583 	mov	a,#(_iterateStateMachine_exitEvent_1_1 >> 8)
   0CE3 F0                 1584 	movx	@dptr,a
   0CE4 A3                 1585 	inc	dptr
   0CE5 E4                 1586 	clr	a
   0CE6 F0                 1587 	movx	@dptr,a
   0CE7 8A 82              1588 	mov	dpl,r2
   0CE9 8B 83              1589 	mov	dph,r3
   0CEB 8C F0              1590 	mov	b,r4
   0CED 12 07 E7           1591 	lcall	_callStateHandler
   0CF0 02 10 BA           1592 	ljmp	00153$
   0CF3                    1593 00143$:
                           1594 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:307: targetIndex			= 0 ;
   0CF3 90 01 40           1595 	mov	dptr,#_iterateStateMachine_targetIndex_4_14
   0CF6 E4                 1596 	clr	a
   0CF7 F0                 1597 	movx	@dptr,a
                           1598 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:308: stateBeingProcessed	= source ;
   0CF8 90 00 DC           1599 	mov	dptr,#_iterateStateMachine_stateBeingProcessed_2_3
   0CFB E5 2D              1600 	mov	a,_iterateStateMachine_sloc0_1_0
   0CFD F0                 1601 	movx	@dptr,a
   0CFE A3                 1602 	inc	dptr
   0CFF E5 2E              1603 	mov	a,(_iterateStateMachine_sloc0_1_0 + 1)
   0D01 F0                 1604 	movx	@dptr,a
   0D02 A3                 1605 	inc	dptr
   0D03 E5 2F              1606 	mov	a,(_iterateStateMachine_sloc0_1_0 + 2)
   0D05 F0                 1607 	movx	@dptr,a
                           1608 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:310: do
   0D06 7A 00              1609 	mov	r2,#0x00
   0D08                    1610 00118$:
                           1611 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:312: sourceHierarchy[sourceIndex++] = stateBeingProcessed ;
   0D08 8A 03              1612 	mov	ar3,r2
   0D0A 0A                 1613 	inc	r2
   0D0B 90 01 0F           1614 	mov	dptr,#_iterateStateMachine_sourceIndex_4_14
   0D0E EA                 1615 	mov	a,r2
   0D0F F0                 1616 	movx	@dptr,a
   0D10 EB                 1617 	mov	a,r3
   0D11 75 F0 03           1618 	mov	b,#0x03
   0D14 A4                 1619 	mul	ab
   0D15 24 DF              1620 	add	a,#_iterateStateMachine_sourceHierarchy_4_14
   0D17 FB                 1621 	mov	r3,a
   0D18 E4                 1622 	clr	a
   0D19 34 00              1623 	addc	a,#(_iterateStateMachine_sourceHierarchy_4_14 >> 8)
   0D1B FC                 1624 	mov	r4,a
   0D1C 90 00 DC           1625 	mov	dptr,#_iterateStateMachine_stateBeingProcessed_2_3
   0D1F E0                 1626 	movx	a,@dptr
   0D20 FD                 1627 	mov	r5,a
   0D21 A3                 1628 	inc	dptr
   0D22 E0                 1629 	movx	a,@dptr
   0D23 FE                 1630 	mov	r6,a
   0D24 A3                 1631 	inc	dptr
   0D25 E0                 1632 	movx	a,@dptr
   0D26 FF                 1633 	mov	r7,a
   0D27 8B 82              1634 	mov	dpl,r3
   0D29 8C 83              1635 	mov	dph,r4
   0D2B ED                 1636 	mov	a,r5
   0D2C F0                 1637 	movx	@dptr,a
   0D2D A3                 1638 	inc	dptr
   0D2E EE                 1639 	mov	a,r6
   0D2F F0                 1640 	movx	@dptr,a
   0D30 A3                 1641 	inc	dptr
   0D31 EF                 1642 	mov	a,r7
   0D32 F0                 1643 	movx	@dptr,a
                           1644 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:318: if(stateBeingProcessed == target)
   0D33 ED                 1645 	mov	a,r5
   0D34 B5 33 0A           1646 	cjne	a,_iterateStateMachine_sloc2_1_0,00209$
   0D37 EE                 1647 	mov	a,r6
   0D38 B5 34 06           1648 	cjne	a,(_iterateStateMachine_sloc2_1_0 + 1),00209$
   0D3B EF                 1649 	mov	a,r7
   0D3C B5 35 02           1650 	cjne	a,(_iterateStateMachine_sloc2_1_0 + 2),00209$
   0D3F 80 03              1651 	sjmp	00210$
   0D41                    1652 00209$:
   0D41 02 0D D8           1653 	ljmp	00117$
   0D44                    1654 00210$:
                           1655 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:326: sourceIndex-- ;
   0D44 EA                 1656 	mov	a,r2
   0D45 14                 1657 	dec	a
   0D46 90 01 0F           1658 	mov	dptr,#_iterateStateMachine_sourceIndex_4_14
   0D49 F0                 1659 	movx	@dptr,a
                           1660 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:328: while(exitIndex < sourceIndex)
   0D4A 90 01 0F           1661 	mov	dptr,#_iterateStateMachine_sourceIndex_4_14
   0D4D E0                 1662 	movx	a,@dptr
   0D4E FB                 1663 	mov	r3,a
   0D4F 7C 00              1664 	mov	r4,#0x00
   0D51                    1665 00113$:
   0D51 C3                 1666 	clr	c
   0D52 EC                 1667 	mov	a,r4
   0D53 9B                 1668 	subb	a,r3
   0D54 50 57              1669 	jnc	00115$
                           1670 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:334: callStateHandler(sm, sourceHierarchy[exitIndex], &exitEvent) ;
   0D56 C0 03              1671 	push	ar3
   0D58 90 00 D3           1672 	mov	dptr,#_iterateStateMachine_sm_1_1
   0D5B E0                 1673 	movx	a,@dptr
   0D5C F5 39              1674 	mov	_iterateStateMachine_sloc4_1_0,a
   0D5E A3                 1675 	inc	dptr
   0D5F E0                 1676 	movx	a,@dptr
   0D60 F5 3A              1677 	mov	(_iterateStateMachine_sloc4_1_0 + 1),a
   0D62 A3                 1678 	inc	dptr
   0D63 E0                 1679 	movx	a,@dptr
   0D64 F5 3B              1680 	mov	(_iterateStateMachine_sloc4_1_0 + 2),a
   0D66 EC                 1681 	mov	a,r4
   0D67 75 F0 03           1682 	mov	b,#0x03
   0D6A A4                 1683 	mul	ab
   0D6B 24 DF              1684 	add	a,#_iterateStateMachine_sourceHierarchy_4_14
   0D6D F5 82              1685 	mov	dpl,a
   0D6F E4                 1686 	clr	a
   0D70 34 00              1687 	addc	a,#(_iterateStateMachine_sourceHierarchy_4_14 >> 8)
   0D72 F5 83              1688 	mov	dph,a
   0D74 E0                 1689 	movx	a,@dptr
   0D75 FB                 1690 	mov	r3,a
   0D76 A3                 1691 	inc	dptr
   0D77 E0                 1692 	movx	a,@dptr
   0D78 F8                 1693 	mov	r0,a
   0D79 A3                 1694 	inc	dptr
   0D7A E0                 1695 	movx	a,@dptr
   0D7B F9                 1696 	mov	r1,a
   0D7C 90 00 CA           1697 	mov	dptr,#_callStateHandler_PARM_2
   0D7F EB                 1698 	mov	a,r3
   0D80 F0                 1699 	movx	@dptr,a
   0D81 A3                 1700 	inc	dptr
   0D82 E8                 1701 	mov	a,r0
   0D83 F0                 1702 	movx	@dptr,a
   0D84 A3                 1703 	inc	dptr
   0D85 E9                 1704 	mov	a,r1
   0D86 F0                 1705 	movx	@dptr,a
   0D87 90 00 CD           1706 	mov	dptr,#_callStateHandler_PARM_3
   0D8A 74 D8              1707 	mov	a,#_iterateStateMachine_exitEvent_1_1
   0D8C F0                 1708 	movx	@dptr,a
   0D8D A3                 1709 	inc	dptr
   0D8E 74 00              1710 	mov	a,#(_iterateStateMachine_exitEvent_1_1 >> 8)
   0D90 F0                 1711 	movx	@dptr,a
   0D91 A3                 1712 	inc	dptr
   0D92 E4                 1713 	clr	a
   0D93 F0                 1714 	movx	@dptr,a
   0D94 85 39 82           1715 	mov	dpl,_iterateStateMachine_sloc4_1_0
   0D97 85 3A 83           1716 	mov	dph,(_iterateStateMachine_sloc4_1_0 + 1)
   0D9A 85 3B F0           1717 	mov	b,(_iterateStateMachine_sloc4_1_0 + 2)
   0D9D C0 03              1718 	push	ar3
   0D9F C0 04              1719 	push	ar4
   0DA1 12 07 E7           1720 	lcall	_callStateHandler
   0DA4 D0 04              1721 	pop	ar4
   0DA6 D0 03              1722 	pop	ar3
                           1723 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:336: exitIndex++ ;
   0DA8 0C                 1724 	inc	r4
   0DA9 D0 03              1725 	pop	ar3
   0DAB 80 A4              1726 	sjmp	00113$
   0DAD                    1727 00115$:
                           1728 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:339: sm->currentState = target ;
   0DAD 90 00 D3           1729 	mov	dptr,#_iterateStateMachine_sm_1_1
   0DB0 E0                 1730 	movx	a,@dptr
   0DB1 FB                 1731 	mov	r3,a
   0DB2 A3                 1732 	inc	dptr
   0DB3 E0                 1733 	movx	a,@dptr
   0DB4 FC                 1734 	mov	r4,a
   0DB5 A3                 1735 	inc	dptr
   0DB6 E0                 1736 	movx	a,@dptr
   0DB7 F8                 1737 	mov	r0,a
   0DB8 74 06              1738 	mov	a,#0x06
   0DBA 2B                 1739 	add	a,r3
   0DBB FB                 1740 	mov	r3,a
   0DBC E4                 1741 	clr	a
   0DBD 3C                 1742 	addc	a,r4
   0DBE FC                 1743 	mov	r4,a
   0DBF 8B 82              1744 	mov	dpl,r3
   0DC1 8C 83              1745 	mov	dph,r4
   0DC3 88 F0              1746 	mov	b,r0
   0DC5 E5 33              1747 	mov	a,_iterateStateMachine_sloc2_1_0
   0DC7 12 31 22           1748 	lcall	__gptrput
   0DCA A3                 1749 	inc	dptr
   0DCB E5 34              1750 	mov	a,(_iterateStateMachine_sloc2_1_0 + 1)
   0DCD 12 31 22           1751 	lcall	__gptrput
   0DD0 A3                 1752 	inc	dptr
   0DD1 E5 35              1753 	mov	a,(_iterateStateMachine_sloc2_1_0 + 2)
   0DD3 12 31 22           1754 	lcall	__gptrput
                           1755 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:341: break ;
   0DD6 80 32              1756 	sjmp	00120$
   0DD8                    1757 00117$:
                           1758 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:344: stateBeingProcessed = (state_t*)(stateBeingProcessed->parent) ;
   0DD8 8D 82              1759 	mov	dpl,r5
   0DDA 8E 83              1760 	mov	dph,r6
   0DDC 8F F0              1761 	mov	b,r7
   0DDE 12 3D 4E           1762 	lcall	__gptrget
   0DE1 FD                 1763 	mov	r5,a
   0DE2 A3                 1764 	inc	dptr
   0DE3 12 3D 4E           1765 	lcall	__gptrget
   0DE6 FE                 1766 	mov	r6,a
   0DE7 A3                 1767 	inc	dptr
   0DE8 12 3D 4E           1768 	lcall	__gptrget
   0DEB FF                 1769 	mov	r7,a
   0DEC 90 00 DC           1770 	mov	dptr,#_iterateStateMachine_stateBeingProcessed_2_3
   0DEF ED                 1771 	mov	a,r5
   0DF0 F0                 1772 	movx	@dptr,a
   0DF1 A3                 1773 	inc	dptr
   0DF2 EE                 1774 	mov	a,r6
   0DF3 F0                 1775 	movx	@dptr,a
   0DF4 A3                 1776 	inc	dptr
   0DF5 EF                 1777 	mov	a,r7
   0DF6 F0                 1778 	movx	@dptr,a
                           1779 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:345: } while(stateBeingProcessed) ;
   0DF7 90 00 DC           1780 	mov	dptr,#_iterateStateMachine_stateBeingProcessed_2_3
   0DFA E0                 1781 	movx	a,@dptr
   0DFB FB                 1782 	mov	r3,a
   0DFC A3                 1783 	inc	dptr
   0DFD E0                 1784 	movx	a,@dptr
   0DFE FC                 1785 	mov	r4,a
   0DFF A3                 1786 	inc	dptr
   0E00 E0                 1787 	movx	a,@dptr
   0E01 FD                 1788 	mov	r5,a
   0E02 EB                 1789 	mov	a,r3
   0E03 4C                 1790 	orl	a,r4
   0E04 4D                 1791 	orl	a,r5
   0E05 60 03              1792 	jz	00212$
   0E07 02 0D 08           1793 	ljmp	00118$
   0E0A                    1794 00212$:
   0E0A                    1795 00120$:
                           1796 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:347: if(sm->currentState != target)
   0E0A 90 00 D3           1797 	mov	dptr,#_iterateStateMachine_sm_1_1
   0E0D E0                 1798 	movx	a,@dptr
   0E0E FA                 1799 	mov	r2,a
   0E0F A3                 1800 	inc	dptr
   0E10 E0                 1801 	movx	a,@dptr
   0E11 FB                 1802 	mov	r3,a
   0E12 A3                 1803 	inc	dptr
   0E13 E0                 1804 	movx	a,@dptr
   0E14 FC                 1805 	mov	r4,a
   0E15 74 06              1806 	mov	a,#0x06
   0E17 2A                 1807 	add	a,r2
   0E18 FA                 1808 	mov	r2,a
   0E19 E4                 1809 	clr	a
   0E1A 3B                 1810 	addc	a,r3
   0E1B FB                 1811 	mov	r3,a
   0E1C 8A 82              1812 	mov	dpl,r2
   0E1E 8B 83              1813 	mov	dph,r3
   0E20 8C F0              1814 	mov	b,r4
   0E22 12 3D 4E           1815 	lcall	__gptrget
   0E25 FA                 1816 	mov	r2,a
   0E26 A3                 1817 	inc	dptr
   0E27 12 3D 4E           1818 	lcall	__gptrget
   0E2A FB                 1819 	mov	r3,a
   0E2B A3                 1820 	inc	dptr
   0E2C 12 3D 4E           1821 	lcall	__gptrget
   0E2F FC                 1822 	mov	r4,a
   0E30 EA                 1823 	mov	a,r2
   0E31 B5 33 0B           1824 	cjne	a,_iterateStateMachine_sloc2_1_0,00213$
   0E34 EB                 1825 	mov	a,r3
   0E35 B5 34 07           1826 	cjne	a,(_iterateStateMachine_sloc2_1_0 + 1),00213$
   0E38 EC                 1827 	mov	a,r4
   0E39 B5 35 03           1828 	cjne	a,(_iterateStateMachine_sloc2_1_0 + 2),00213$
   0E3C 02 0F 4D           1829 	ljmp	00130$
   0E3F                    1830 00213$:
                           1831 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:353: targetIndex			= 0 ;
   0E3F 90 01 40           1832 	mov	dptr,#_iterateStateMachine_targetIndex_4_14
   0E42 E4                 1833 	clr	a
   0E43 F0                 1834 	movx	@dptr,a
                           1835 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:354: stateBeingProcessed	= target ;
   0E44 90 00 DC           1836 	mov	dptr,#_iterateStateMachine_stateBeingProcessed_2_3
   0E47 E5 33              1837 	mov	a,_iterateStateMachine_sloc2_1_0
   0E49 F0                 1838 	movx	@dptr,a
   0E4A A3                 1839 	inc	dptr
   0E4B E5 34              1840 	mov	a,(_iterateStateMachine_sloc2_1_0 + 1)
   0E4D F0                 1841 	movx	@dptr,a
   0E4E A3                 1842 	inc	dptr
   0E4F E5 35              1843 	mov	a,(_iterateStateMachine_sloc2_1_0 + 2)
   0E51 F0                 1844 	movx	@dptr,a
                           1845 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:356: do
   0E52 7A 00              1846 	mov	r2,#0x00
   0E54                    1847 00126$:
                           1848 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:358: targetHierarchy[targetIndex] = stateBeingProcessed ;
   0E54 EA                 1849 	mov	a,r2
   0E55 75 F0 03           1850 	mov	b,#0x03
   0E58 A4                 1851 	mul	ab
   0E59 24 10              1852 	add	a,#_iterateStateMachine_targetHierarchy_4_14
   0E5B FB                 1853 	mov	r3,a
   0E5C E4                 1854 	clr	a
   0E5D 34 01              1855 	addc	a,#(_iterateStateMachine_targetHierarchy_4_14 >> 8)
   0E5F FC                 1856 	mov	r4,a
   0E60 90 00 DC           1857 	mov	dptr,#_iterateStateMachine_stateBeingProcessed_2_3
   0E63 E0                 1858 	movx	a,@dptr
   0E64 FD                 1859 	mov	r5,a
   0E65 A3                 1860 	inc	dptr
   0E66 E0                 1861 	movx	a,@dptr
   0E67 FE                 1862 	mov	r6,a
   0E68 A3                 1863 	inc	dptr
   0E69 E0                 1864 	movx	a,@dptr
   0E6A FF                 1865 	mov	r7,a
   0E6B 8B 82              1866 	mov	dpl,r3
   0E6D 8C 83              1867 	mov	dph,r4
   0E6F ED                 1868 	mov	a,r5
   0E70 F0                 1869 	movx	@dptr,a
   0E71 A3                 1870 	inc	dptr
   0E72 EE                 1871 	mov	a,r6
   0E73 F0                 1872 	movx	@dptr,a
   0E74 A3                 1873 	inc	dptr
   0E75 EF                 1874 	mov	a,r7
   0E76 F0                 1875 	movx	@dptr,a
                           1876 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:364: if(stateBeingProcessed == source)
   0E77 ED                 1877 	mov	a,r5
   0E78 B5 2D 0A           1878 	cjne	a,_iterateStateMachine_sloc0_1_0,00214$
   0E7B EE                 1879 	mov	a,r6
   0E7C B5 2E 06           1880 	cjne	a,(_iterateStateMachine_sloc0_1_0 + 1),00214$
   0E7F EF                 1881 	mov	a,r7
   0E80 B5 2F 02           1882 	cjne	a,(_iterateStateMachine_sloc0_1_0 + 2),00214$
   0E83 80 03              1883 	sjmp	00215$
   0E85                    1884 00214$:
   0E85 02 0F 15           1885 	ljmp	00125$
   0E88                    1886 00215$:
                           1887 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:370: while(targetIndex--)
   0E88 90 01 40           1888 	mov	dptr,#_iterateStateMachine_targetIndex_4_14
   0E8B E0                 1889 	movx	a,@dptr
   0E8C FB                 1890 	mov	r3,a
   0E8D                    1891 00121$:
   0E8D 8B 04              1892 	mov	ar4,r3
   0E8F 1B                 1893 	dec	r3
   0E90 EC                 1894 	mov	a,r4
   0E91 60 52              1895 	jz	00188$
                           1896 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:375: callStateHandler(sm, targetHierarchy[targetIndex], &enterEvent) ;
   0E93 90 00 D3           1897 	mov	dptr,#_iterateStateMachine_sm_1_1
   0E96 E0                 1898 	movx	a,@dptr
   0E97 F5 39              1899 	mov	_iterateStateMachine_sloc4_1_0,a
   0E99 A3                 1900 	inc	dptr
   0E9A E0                 1901 	movx	a,@dptr
   0E9B F5 3A              1902 	mov	(_iterateStateMachine_sloc4_1_0 + 1),a
   0E9D A3                 1903 	inc	dptr
   0E9E E0                 1904 	movx	a,@dptr
   0E9F F5 3B              1905 	mov	(_iterateStateMachine_sloc4_1_0 + 2),a
   0EA1 EB                 1906 	mov	a,r3
   0EA2 75 F0 03           1907 	mov	b,#0x03
   0EA5 A4                 1908 	mul	ab
   0EA6 24 10              1909 	add	a,#_iterateStateMachine_targetHierarchy_4_14
   0EA8 F5 82              1910 	mov	dpl,a
   0EAA E4                 1911 	clr	a
   0EAB 34 01              1912 	addc	a,#(_iterateStateMachine_targetHierarchy_4_14 >> 8)
   0EAD F5 83              1913 	mov	dph,a
   0EAF C0 03              1914 	push	ar3
   0EB1 E0                 1915 	movx	a,@dptr
   0EB2 FB                 1916 	mov	r3,a
   0EB3 A3                 1917 	inc	dptr
   0EB4 E0                 1918 	movx	a,@dptr
   0EB5 FC                 1919 	mov	r4,a
   0EB6 A3                 1920 	inc	dptr
   0EB7 E0                 1921 	movx	a,@dptr
   0EB8 F8                 1922 	mov	r0,a
   0EB9 90 00 CA           1923 	mov	dptr,#_callStateHandler_PARM_2
   0EBC EB                 1924 	mov	a,r3
   0EBD F0                 1925 	movx	@dptr,a
   0EBE A3                 1926 	inc	dptr
   0EBF EC                 1927 	mov	a,r4
   0EC0 F0                 1928 	movx	@dptr,a
   0EC1 A3                 1929 	inc	dptr
   0EC2 E8                 1930 	mov	a,r0
   0EC3 F0                 1931 	movx	@dptr,a
   0EC4 90 00 CD           1932 	mov	dptr,#_callStateHandler_PARM_3
   0EC7 74 D7              1933 	mov	a,#_iterateStateMachine_enterEvent_1_1
   0EC9 F0                 1934 	movx	@dptr,a
   0ECA A3                 1935 	inc	dptr
   0ECB 74 00              1936 	mov	a,#(_iterateStateMachine_enterEvent_1_1 >> 8)
   0ECD F0                 1937 	movx	@dptr,a
   0ECE A3                 1938 	inc	dptr
   0ECF E4                 1939 	clr	a
   0ED0 F0                 1940 	movx	@dptr,a
   0ED1 85 39 82           1941 	mov	dpl,_iterateStateMachine_sloc4_1_0
   0ED4 85 3A 83           1942 	mov	dph,(_iterateStateMachine_sloc4_1_0 + 1)
   0ED7 85 3B F0           1943 	mov	b,(_iterateStateMachine_sloc4_1_0 + 2)
   0EDA C0 03              1944 	push	ar3
   0EDC 12 07 E7           1945 	lcall	_callStateHandler
   0EDF D0 03              1946 	pop	ar3
   0EE1 D0 03              1947 	pop	ar3
   0EE3 80 A8              1948 	sjmp	00121$
   0EE5                    1949 00188$:
   0EE5 90 01 40           1950 	mov	dptr,#_iterateStateMachine_targetIndex_4_14
   0EE8 EB                 1951 	mov	a,r3
   0EE9 F0                 1952 	movx	@dptr,a
                           1953 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:378: sm->currentState = target ;
   0EEA 90 00 D3           1954 	mov	dptr,#_iterateStateMachine_sm_1_1
   0EED E0                 1955 	movx	a,@dptr
   0EEE FB                 1956 	mov	r3,a
   0EEF A3                 1957 	inc	dptr
   0EF0 E0                 1958 	movx	a,@dptr
   0EF1 FC                 1959 	mov	r4,a
   0EF2 A3                 1960 	inc	dptr
   0EF3 E0                 1961 	movx	a,@dptr
   0EF4 F8                 1962 	mov	r0,a
   0EF5 74 06              1963 	mov	a,#0x06
   0EF7 2B                 1964 	add	a,r3
   0EF8 FB                 1965 	mov	r3,a
   0EF9 E4                 1966 	clr	a
   0EFA 3C                 1967 	addc	a,r4
   0EFB FC                 1968 	mov	r4,a
   0EFC 8B 82              1969 	mov	dpl,r3
   0EFE 8C 83              1970 	mov	dph,r4
   0F00 88 F0              1971 	mov	b,r0
   0F02 E5 33              1972 	mov	a,_iterateStateMachine_sloc2_1_0
   0F04 12 31 22           1973 	lcall	__gptrput
   0F07 A3                 1974 	inc	dptr
   0F08 E5 34              1975 	mov	a,(_iterateStateMachine_sloc2_1_0 + 1)
   0F0A 12 31 22           1976 	lcall	__gptrput
   0F0D A3                 1977 	inc	dptr
   0F0E E5 35              1978 	mov	a,(_iterateStateMachine_sloc2_1_0 + 2)
   0F10 12 31 22           1979 	lcall	__gptrput
                           1980 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:380: break ;
   0F13 80 38              1981 	sjmp	00130$
   0F15                    1982 00125$:
                           1983 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:383: targetIndex++ ;
   0F15 0A                 1984 	inc	r2
   0F16 90 01 40           1985 	mov	dptr,#_iterateStateMachine_targetIndex_4_14
   0F19 EA                 1986 	mov	a,r2
   0F1A F0                 1987 	movx	@dptr,a
                           1988 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:384: stateBeingProcessed = (state_t*)(stateBeingProcessed->parent) ;
   0F1B 8D 82              1989 	mov	dpl,r5
   0F1D 8E 83              1990 	mov	dph,r6
   0F1F 8F F0              1991 	mov	b,r7
   0F21 12 3D 4E           1992 	lcall	__gptrget
   0F24 FD                 1993 	mov	r5,a
   0F25 A3                 1994 	inc	dptr
   0F26 12 3D 4E           1995 	lcall	__gptrget
   0F29 FE                 1996 	mov	r6,a
   0F2A A3                 1997 	inc	dptr
   0F2B 12 3D 4E           1998 	lcall	__gptrget
   0F2E FF                 1999 	mov	r7,a
   0F2F 90 00 DC           2000 	mov	dptr,#_iterateStateMachine_stateBeingProcessed_2_3
   0F32 ED                 2001 	mov	a,r5
   0F33 F0                 2002 	movx	@dptr,a
   0F34 A3                 2003 	inc	dptr
   0F35 EE                 2004 	mov	a,r6
   0F36 F0                 2005 	movx	@dptr,a
   0F37 A3                 2006 	inc	dptr
   0F38 EF                 2007 	mov	a,r7
   0F39 F0                 2008 	movx	@dptr,a
                           2009 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:385: } while(stateBeingProcessed) ;
   0F3A 90 00 DC           2010 	mov	dptr,#_iterateStateMachine_stateBeingProcessed_2_3
   0F3D E0                 2011 	movx	a,@dptr
   0F3E FB                 2012 	mov	r3,a
   0F3F A3                 2013 	inc	dptr
   0F40 E0                 2014 	movx	a,@dptr
   0F41 FC                 2015 	mov	r4,a
   0F42 A3                 2016 	inc	dptr
   0F43 E0                 2017 	movx	a,@dptr
   0F44 FD                 2018 	mov	r5,a
   0F45 EB                 2019 	mov	a,r3
   0F46 4C                 2020 	orl	a,r4
   0F47 4D                 2021 	orl	a,r5
   0F48 60 03              2022 	jz	00217$
   0F4A 02 0E 54           2023 	ljmp	00126$
   0F4D                    2024 00217$:
   0F4D                    2025 00130$:
                           2026 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:388: if(sm->currentState != target)
   0F4D 90 00 D3           2027 	mov	dptr,#_iterateStateMachine_sm_1_1
   0F50 E0                 2028 	movx	a,@dptr
   0F51 FA                 2029 	mov	r2,a
   0F52 A3                 2030 	inc	dptr
   0F53 E0                 2031 	movx	a,@dptr
   0F54 FB                 2032 	mov	r3,a
   0F55 A3                 2033 	inc	dptr
   0F56 E0                 2034 	movx	a,@dptr
   0F57 FC                 2035 	mov	r4,a
   0F58 74 06              2036 	mov	a,#0x06
   0F5A 2A                 2037 	add	a,r2
   0F5B FA                 2038 	mov	r2,a
   0F5C E4                 2039 	clr	a
   0F5D 3B                 2040 	addc	a,r3
   0F5E FB                 2041 	mov	r3,a
   0F5F 8A 82              2042 	mov	dpl,r2
   0F61 8B 83              2043 	mov	dph,r3
   0F63 8C F0              2044 	mov	b,r4
   0F65 12 3D 4E           2045 	lcall	__gptrget
   0F68 FA                 2046 	mov	r2,a
   0F69 A3                 2047 	inc	dptr
   0F6A 12 3D 4E           2048 	lcall	__gptrget
   0F6D FB                 2049 	mov	r3,a
   0F6E A3                 2050 	inc	dptr
   0F6F 12 3D 4E           2051 	lcall	__gptrget
   0F72 FC                 2052 	mov	r4,a
   0F73 EA                 2053 	mov	a,r2
   0F74 B5 33 0B           2054 	cjne	a,_iterateStateMachine_sloc2_1_0,00218$
   0F77 EB                 2055 	mov	a,r3
   0F78 B5 34 07           2056 	cjne	a,(_iterateStateMachine_sloc2_1_0 + 1),00218$
   0F7B EC                 2057 	mov	a,r4
   0F7C B5 35 03           2058 	cjne	a,(_iterateStateMachine_sloc2_1_0 + 2),00218$
   0F7F 02 10 BA           2059 	ljmp	00153$
   0F82                    2060 00218$:
                           2061 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:396: entryIndex	= targetIndex - 1 ;
   0F82 90 01 40           2062 	mov	dptr,#_iterateStateMachine_targetIndex_4_14
   0F85 E0                 2063 	movx	a,@dptr
   0F86 FA                 2064 	mov	r2,a
   0F87 1A                 2065 	dec	r2
   0F88 90 01 41           2066 	mov	dptr,#_iterateStateMachine_entryIndex_4_14
   0F8B EA                 2067 	mov	a,r2
   0F8C F0                 2068 	movx	@dptr,a
                           2069 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:397: exitIndex	= sourceIndex - 1 ;
   0F8D 90 01 0F           2070 	mov	dptr,#_iterateStateMachine_sourceIndex_4_14
   0F90 E0                 2071 	movx	a,@dptr
   0F91 FB                 2072 	mov	r3,a
   0F92 1B                 2073 	dec	r3
                           2074 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:402: while(sourceHierarchy[exitIndex] == targetHierarchy[entryIndex])
   0F93 7C 00              2075 	mov	r4,#0x00
   0F95                    2076 00131$:
   0F95 C0 04              2077 	push	ar4
   0F97 EB                 2078 	mov	a,r3
   0F98 75 F0 03           2079 	mov	b,#0x03
   0F9B A4                 2080 	mul	ab
   0F9C 24 DF              2081 	add	a,#_iterateStateMachine_sourceHierarchy_4_14
   0F9E F5 82              2082 	mov	dpl,a
   0FA0 E4                 2083 	clr	a
   0FA1 34 00              2084 	addc	a,#(_iterateStateMachine_sourceHierarchy_4_14 >> 8)
   0FA3 F5 83              2085 	mov	dph,a
   0FA5 E0                 2086 	movx	a,@dptr
   0FA6 FD                 2087 	mov	r5,a
   0FA7 A3                 2088 	inc	dptr
   0FA8 E0                 2089 	movx	a,@dptr
   0FA9 FE                 2090 	mov	r6,a
   0FAA A3                 2091 	inc	dptr
   0FAB E0                 2092 	movx	a,@dptr
   0FAC FF                 2093 	mov	r7,a
   0FAD EA                 2094 	mov	a,r2
   0FAE 75 F0 03           2095 	mov	b,#0x03
   0FB1 A4                 2096 	mul	ab
   0FB2 24 10              2097 	add	a,#_iterateStateMachine_targetHierarchy_4_14
   0FB4 F5 82              2098 	mov	dpl,a
   0FB6 E4                 2099 	clr	a
   0FB7 34 01              2100 	addc	a,#(_iterateStateMachine_targetHierarchy_4_14 >> 8)
   0FB9 F5 83              2101 	mov	dph,a
   0FBB E0                 2102 	movx	a,@dptr
   0FBC F8                 2103 	mov	r0,a
   0FBD A3                 2104 	inc	dptr
   0FBE E0                 2105 	movx	a,@dptr
   0FBF F9                 2106 	mov	r1,a
   0FC0 A3                 2107 	inc	dptr
   0FC1 E0                 2108 	movx	a,@dptr
   0FC2 FC                 2109 	mov	r4,a
   0FC3 ED                 2110 	mov	a,r5
   0FC4 B5 00 0A           2111 	cjne	a,ar0,00219$
   0FC7 EE                 2112 	mov	a,r6
   0FC8 B5 01 06           2113 	cjne	a,ar1,00219$
   0FCB EF                 2114 	mov	a,r7
   0FCC B5 04 02           2115 	cjne	a,ar4,00219$
   0FCF 80 04              2116 	sjmp	00220$
   0FD1                    2117 00219$:
   0FD1 D0 04              2118 	pop	ar4
   0FD3 80 0C              2119 	sjmp	00189$
   0FD5                    2120 00220$:
   0FD5 D0 04              2121 	pop	ar4
                           2122 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:406: entryIndex-- ;
   0FD7 1A                 2123 	dec	r2
   0FD8 90 01 41           2124 	mov	dptr,#_iterateStateMachine_entryIndex_4_14
   0FDB EA                 2125 	mov	a,r2
   0FDC F0                 2126 	movx	@dptr,a
                           2127 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:407: exitIndex-- ;
   0FDD 1B                 2128 	dec	r3
                           2129 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:413: LCAindex++ ;
   0FDE 0C                 2130 	inc	r4
   0FDF 80 B4              2131 	sjmp	00131$
   0FE1                    2132 00189$:
   0FE1 90 01 41           2133 	mov	dptr,#_iterateStateMachine_entryIndex_4_14
   0FE4 EA                 2134 	mov	a,r2
   0FE5 F0                 2135 	movx	@dptr,a
                           2136 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:421: sourceIndex	= exitIndex + 1 ;
   0FE6 EB                 2137 	mov	a,r3
   0FE7 04                 2138 	inc	a
   0FE8 FA                 2139 	mov	r2,a
                           2140 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:424: while(exitIndex < sourceIndex)
   0FE9 7B 00              2141 	mov	r3,#0x00
   0FEB                    2142 00134$:
   0FEB C3                 2143 	clr	c
   0FEC EB                 2144 	mov	a,r3
   0FED 9A                 2145 	subb	a,r2
   0FEE 50 4D              2146 	jnc	00136$
                           2147 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:430: callStateHandler(sm, sourceHierarchy[exitIndex], &exitEvent) ;
   0FF0 90 00 D3           2148 	mov	dptr,#_iterateStateMachine_sm_1_1
   0FF3 E0                 2149 	movx	a,@dptr
   0FF4 FC                 2150 	mov	r4,a
   0FF5 A3                 2151 	inc	dptr
   0FF6 E0                 2152 	movx	a,@dptr
   0FF7 FD                 2153 	mov	r5,a
   0FF8 A3                 2154 	inc	dptr
   0FF9 E0                 2155 	movx	a,@dptr
   0FFA FE                 2156 	mov	r6,a
   0FFB EB                 2157 	mov	a,r3
   0FFC 75 F0 03           2158 	mov	b,#0x03
   0FFF A4                 2159 	mul	ab
   1000 24 DF              2160 	add	a,#_iterateStateMachine_sourceHierarchy_4_14
   1002 F5 82              2161 	mov	dpl,a
   1004 E4                 2162 	clr	a
   1005 34 00              2163 	addc	a,#(_iterateStateMachine_sourceHierarchy_4_14 >> 8)
   1007 F5 83              2164 	mov	dph,a
   1009 E0                 2165 	movx	a,@dptr
   100A FF                 2166 	mov	r7,a
   100B A3                 2167 	inc	dptr
   100C E0                 2168 	movx	a,@dptr
   100D F8                 2169 	mov	r0,a
   100E A3                 2170 	inc	dptr
   100F E0                 2171 	movx	a,@dptr
   1010 F9                 2172 	mov	r1,a
   1011 90 00 CA           2173 	mov	dptr,#_callStateHandler_PARM_2
   1014 EF                 2174 	mov	a,r7
   1015 F0                 2175 	movx	@dptr,a
   1016 A3                 2176 	inc	dptr
   1017 E8                 2177 	mov	a,r0
   1018 F0                 2178 	movx	@dptr,a
   1019 A3                 2179 	inc	dptr
   101A E9                 2180 	mov	a,r1
   101B F0                 2181 	movx	@dptr,a
   101C 90 00 CD           2182 	mov	dptr,#_callStateHandler_PARM_3
   101F 74 D8              2183 	mov	a,#_iterateStateMachine_exitEvent_1_1
   1021 F0                 2184 	movx	@dptr,a
   1022 A3                 2185 	inc	dptr
   1023 74 00              2186 	mov	a,#(_iterateStateMachine_exitEvent_1_1 >> 8)
   1025 F0                 2187 	movx	@dptr,a
   1026 A3                 2188 	inc	dptr
   1027 E4                 2189 	clr	a
   1028 F0                 2190 	movx	@dptr,a
   1029 8C 82              2191 	mov	dpl,r4
   102B 8D 83              2192 	mov	dph,r5
   102D 8E F0              2193 	mov	b,r6
   102F C0 02              2194 	push	ar2
   1031 C0 03              2195 	push	ar3
   1033 12 07 E7           2196 	lcall	_callStateHandler
   1036 D0 03              2197 	pop	ar3
   1038 D0 02              2198 	pop	ar2
                           2199 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:432: exitIndex++ ;
   103A 0B                 2200 	inc	r3
   103B 80 AE              2201 	sjmp	00134$
   103D                    2202 00136$:
                           2203 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:435: targetIndex = entryIndex + 1 ;
   103D 90 01 41           2204 	mov	dptr,#_iterateStateMachine_entryIndex_4_14
   1040 E0                 2205 	movx	a,@dptr
   1041 FA                 2206 	mov	r2,a
   1042 0A                 2207 	inc	r2
                           2208 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:437: while(targetIndex--)
   1043                    2209 00137$:
   1043 8A 03              2210 	mov	ar3,r2
   1045 1A                 2211 	dec	r2
   1046 EB                 2212 	mov	a,r3
   1047 60 48              2213 	jz	00139$
                           2214 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:442: callStateHandler(sm, targetHierarchy[targetIndex], &enterEvent) ;
   1049 90 00 D3           2215 	mov	dptr,#_iterateStateMachine_sm_1_1
   104C E0                 2216 	movx	a,@dptr
   104D FB                 2217 	mov	r3,a
   104E A3                 2218 	inc	dptr
   104F E0                 2219 	movx	a,@dptr
   1050 FC                 2220 	mov	r4,a
   1051 A3                 2221 	inc	dptr
   1052 E0                 2222 	movx	a,@dptr
   1053 FD                 2223 	mov	r5,a
   1054 EA                 2224 	mov	a,r2
   1055 75 F0 03           2225 	mov	b,#0x03
   1058 A4                 2226 	mul	ab
   1059 24 10              2227 	add	a,#_iterateStateMachine_targetHierarchy_4_14
   105B F5 82              2228 	mov	dpl,a
   105D E4                 2229 	clr	a
   105E 34 01              2230 	addc	a,#(_iterateStateMachine_targetHierarchy_4_14 >> 8)
   1060 F5 83              2231 	mov	dph,a
   1062 E0                 2232 	movx	a,@dptr
   1063 FE                 2233 	mov	r6,a
   1064 A3                 2234 	inc	dptr
   1065 E0                 2235 	movx	a,@dptr
   1066 FF                 2236 	mov	r7,a
   1067 A3                 2237 	inc	dptr
   1068 E0                 2238 	movx	a,@dptr
   1069 F8                 2239 	mov	r0,a
   106A 90 00 CA           2240 	mov	dptr,#_callStateHandler_PARM_2
   106D EE                 2241 	mov	a,r6
   106E F0                 2242 	movx	@dptr,a
   106F A3                 2243 	inc	dptr
   1070 EF                 2244 	mov	a,r7
   1071 F0                 2245 	movx	@dptr,a
   1072 A3                 2246 	inc	dptr
   1073 E8                 2247 	mov	a,r0
   1074 F0                 2248 	movx	@dptr,a
   1075 90 00 CD           2249 	mov	dptr,#_callStateHandler_PARM_3
   1078 74 D7              2250 	mov	a,#_iterateStateMachine_enterEvent_1_1
   107A F0                 2251 	movx	@dptr,a
   107B A3                 2252 	inc	dptr
   107C 74 00              2253 	mov	a,#(_iterateStateMachine_enterEvent_1_1 >> 8)
   107E F0                 2254 	movx	@dptr,a
   107F A3                 2255 	inc	dptr
   1080 E4                 2256 	clr	a
   1081 F0                 2257 	movx	@dptr,a
   1082 8B 82              2258 	mov	dpl,r3
   1084 8C 83              2259 	mov	dph,r4
   1086 8D F0              2260 	mov	b,r5
   1088 C0 02              2261 	push	ar2
   108A 12 07 E7           2262 	lcall	_callStateHandler
   108D D0 02              2263 	pop	ar2
   108F 80 B2              2264 	sjmp	00137$
   1091                    2265 00139$:
                           2266 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:445: sm->currentState = target ;
   1091 90 00 D3           2267 	mov	dptr,#_iterateStateMachine_sm_1_1
   1094 E0                 2268 	movx	a,@dptr
   1095 FA                 2269 	mov	r2,a
   1096 A3                 2270 	inc	dptr
   1097 E0                 2271 	movx	a,@dptr
   1098 FB                 2272 	mov	r3,a
   1099 A3                 2273 	inc	dptr
   109A E0                 2274 	movx	a,@dptr
   109B FC                 2275 	mov	r4,a
   109C 74 06              2276 	mov	a,#0x06
   109E 2A                 2277 	add	a,r2
   109F FA                 2278 	mov	r2,a
   10A0 E4                 2279 	clr	a
   10A1 3B                 2280 	addc	a,r3
   10A2 FB                 2281 	mov	r3,a
   10A3 8A 82              2282 	mov	dpl,r2
   10A5 8B 83              2283 	mov	dph,r3
   10A7 8C F0              2284 	mov	b,r4
   10A9 E5 33              2285 	mov	a,_iterateStateMachine_sloc2_1_0
   10AB 12 31 22           2286 	lcall	__gptrput
   10AE A3                 2287 	inc	dptr
   10AF E5 34              2288 	mov	a,(_iterateStateMachine_sloc2_1_0 + 1)
   10B1 12 31 22           2289 	lcall	__gptrput
   10B4 A3                 2290 	inc	dptr
   10B5 E5 35              2291 	mov	a,(_iterateStateMachine_sloc2_1_0 + 2)
   10B7 12 31 22           2292 	lcall	__gptrput
   10BA                    2293 00153$:
                           2294 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:453: sm->forceTransition = true ;
   10BA 90 00 D3           2295 	mov	dptr,#_iterateStateMachine_sm_1_1
   10BD E0                 2296 	movx	a,@dptr
   10BE FA                 2297 	mov	r2,a
   10BF A3                 2298 	inc	dptr
   10C0 E0                 2299 	movx	a,@dptr
   10C1 FB                 2300 	mov	r3,a
   10C2 A3                 2301 	inc	dptr
   10C3 E0                 2302 	movx	a,@dptr
   10C4 FC                 2303 	mov	r4,a
   10C5 74 14              2304 	mov	a,#0x14
   10C7 2A                 2305 	add	a,r2
   10C8 FA                 2306 	mov	r2,a
   10C9 E4                 2307 	clr	a
   10CA 3B                 2308 	addc	a,r3
   10CB FB                 2309 	mov	r3,a
   10CC 8A 82              2310 	mov	dpl,r2
   10CE 8B 83              2311 	mov	dph,r3
   10D0 8C F0              2312 	mov	b,r4
   10D2 74 01              2313 	mov	a,#0x01
   10D4 02 31 22           2314 	ljmp	__gptrput
                           2315 	.area CSEG    (CODE)
                           2316 	.area CONST   (CODE)
   3D96                    2317 __str_0:
   3D96 53 55 42 53 54 41  2318 	.ascii "SUBSTATE_GET_INFO"
        54 45 5F 47 45 54
        5F 49 4E 46 4F
   3DA7 00                 2319 	.db 0x00
   3DA8                    2320 __str_1:
   3DA8 53 55 42 53 54 41  2321 	.ascii "SUBSTATE_ENTRY"
        54 45 5F 45 4E 54
        52 59
   3DB6 00                 2322 	.db 0x00
   3DB7                    2323 __str_2:
   3DB7 53 55 42 53 54 41  2324 	.ascii "SUBSTATE_INITIAL_TRANSITION"
        54 45 5F 49 4E 49
        54 49 41 4C 5F 54
        52 41 4E 53 49 54
        49 4F 4E
   3DD2 00                 2325 	.db 0x00
   3DD3                    2326 __str_3:
   3DD3 53 55 42 53 54 41  2327 	.ascii "SUBSTATE_EXIT"
        54 45 5F 45 58 49
        54
   3DE0 00                 2328 	.db 0x00
   3DE1                    2329 __str_4:
   3DE1 49 47 4E 4F 52 45  2330 	.ascii "IGNORED"
        44
   3DE8 00                 2331 	.db 0x00
   3DE9                    2332 __str_5:
   3DE9 48 41 4E 44 4C 45  2333 	.ascii "HANDLED"
        44
   3DF0 00                 2334 	.db 0x00
   3DF1                    2335 __str_6:
   3DF1 54 52 41 4E 53 49  2336 	.ascii "TRANSITION"
        54 49 4F 4E
   3DFB 00                 2337 	.db 0x00
                           2338 	.area XINIT   (CODE)
   412D                    2339 __xinit__eventTypes:
   412D 96 3D 80           2340 	.byte __str_0,(__str_0 >> 8),#0x80
   4130 A8 3D 80           2341 	.byte __str_1,(__str_1 >> 8),#0x80
   4133 B7 3D 80           2342 	.byte __str_2,(__str_2 >> 8),#0x80
   4136 D3 3D 80           2343 	.byte __str_3,(__str_3 >> 8),#0x80
   4139                    2344 __xinit__responseTypes:
   4139 E1 3D 80           2345 	.byte __str_4,(__str_4 >> 8),#0x80
   413C E9 3D 80           2346 	.byte __str_5,(__str_5 >> 8),#0x80
   413F F1 3D 80           2347 	.byte __str_6,(__str_6 >> 8),#0x80
                           2348 	.area CABS    (ABS,CODE)
