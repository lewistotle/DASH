                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 2.9.0 #5416 (Mar 22 2009) (MINGW32)
                              4 ; This file was generated Mon Dec 28 11:39:26 2009
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
                             17 	.globl _stateMachines
                             18 	.globl _allocateStateMachineMemory
                             19 	.globl _deallocateStateMachineMemory
                             20 	.globl _registerStateMachine
                             21 	.globl _unregisterStateMachine
                             22 	.globl _iterateAllStateMachines
                             23 	.globl _iterateStateMachine
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
   0024                      41 _callStateHandler_sloc0_1_0:
   0024                      42 	.ds 3
   0027                      43 _callStateHandler_sloc1_1_0:
   0027                      44 	.ds 3
   002A                      45 _iterateStateMachine_sloc0_1_0:
   002A                      46 	.ds 3
   002D                      47 _iterateStateMachine_sloc1_1_0:
   002D                      48 	.ds 3
   0030                      49 _iterateStateMachine_sloc2_1_0:
   0030                      50 	.ds 3
   0033                      51 _iterateStateMachine_sloc3_1_0:
   0033                      52 	.ds 3
   0036                      53 _iterateStateMachine_sloc4_1_0:
   0036                      54 	.ds 3
   0039                      55 _iterateStateMachine_sloc5_1_0:
   0039                      56 	.ds 3
   003C                      57 _iterateStateMachine_sloc6_1_0:
   003C                      58 	.ds 3
   003F                      59 _iterateStateMachine_sloc7_1_0:
   003F                      60 	.ds 3
   0042                      61 _iterateStateMachine_sloc8_1_0:
   0042                      62 	.ds 3
   0045                      63 _iterateStateMachine_sloc9_1_0:
   0045                      64 	.ds 3
   0048                      65 _iterateStateMachine_sloc10_1_0:
   0048                      66 	.ds 3
   004B                      67 _iterateStateMachine_sloc11_1_0:
   004B                      68 	.ds 1
                             69 ;--------------------------------------------------------
                             70 ; overlayable items in internal ram 
                             71 ;--------------------------------------------------------
                             72 	.area OSEG    (OVR,DATA)
                             73 ;--------------------------------------------------------
                             74 ; indirectly addressable internal ram data
                             75 ;--------------------------------------------------------
                             76 	.area ISEG    (DATA)
                             77 ;--------------------------------------------------------
                             78 ; absolute internal ram data
                             79 ;--------------------------------------------------------
                             80 	.area IABS    (ABS,DATA)
                             81 	.area IABS    (ABS,DATA)
                             82 ;--------------------------------------------------------
                             83 ; bit data
                             84 ;--------------------------------------------------------
                             85 	.area BSEG    (BIT)
   0000                      86 _iterateStateMachine_forceTransition_1_1:
   0000                      87 	.ds 1
                             88 ;--------------------------------------------------------
                             89 ; paged external ram data
                             90 ;--------------------------------------------------------
                             91 	.area PSEG    (PAG,XDATA)
                             92 ;--------------------------------------------------------
                             93 ; external ram data
                             94 ;--------------------------------------------------------
                             95 	.area XSEG    (XDATA)
   0023                      96 _stateMachines::
   0023                      97 	.ds 150
   00B9                      98 _allocateStateMachineMemory_sizeInBytes_1_1:
   00B9                      99 	.ds 2
   00BB                     100 _deallocateStateMachineMemory_instance_1_1:
   00BB                     101 	.ds 3
   00BE                     102 _registerStateMachine_sm_1_1:
   00BE                     103 	.ds 3
   00C1                     104 _unregisterStateMachine_sm_1_1:
   00C1                     105 	.ds 3
   00C4                     106 _callStateHandler_PARM_2:
   00C4                     107 	.ds 3
   00C7                     108 _callStateHandler_PARM_3:
   00C7                     109 	.ds 3
   00CA                     110 _callStateHandler_sm_1_1:
   00CA                     111 	.ds 3
   00CD                     112 _iterateStateMachine_sm_1_1:
   00CD                     113 	.ds 3
   00D0                     114 _iterateStateMachine_initialTransitionEvent_1_1:
   00D0                     115 	.ds 1
   00D1                     116 _iterateStateMachine_enterEvent_1_1:
   00D1                     117 	.ds 1
   00D2                     118 _iterateStateMachine_exitEvent_1_1:
   00D2                     119 	.ds 1
   00D3                     120 _iterateStateMachine_iterationMax_1_1:
   00D3                     121 	.ds 2
   00D5                     122 _iterateStateMachine_eventToProcess_2_3:
   00D5                     123 	.ds 3
   00D8                     124 _iterateStateMachine_stateBeingProcessed_2_3:
   00D8                     125 	.ds 3
   00DB                     126 _iterateStateMachine_sourceHierarchy_4_15:
   00DB                     127 	.ds 48
   010B                     128 _iterateStateMachine_sourceIndex_4_15:
   010B                     129 	.ds 1
   010C                     130 _iterateStateMachine_targetHierarchy_4_15:
   010C                     131 	.ds 48
   013C                     132 _iterateStateMachine_targetIndex_4_15:
   013C                     133 	.ds 1
   013D                     134 _iterateStateMachine_LCA_4_15:
   013D                     135 	.ds 3
   0140                     136 _iterateStateMachine_entryIndex_4_15:
   0140                     137 	.ds 1
                            138 ;--------------------------------------------------------
                            139 ; absolute external ram data
                            140 ;--------------------------------------------------------
                            141 	.area XABS    (ABS,XDATA)
                            142 ;--------------------------------------------------------
                            143 ; external initialized ram data
                            144 ;--------------------------------------------------------
                            145 	.area XISEG   (XDATA)
   0F17                     146 _eventTypes::
   0F17                     147 	.ds 12
   0F23                     148 _responseTypes::
   0F23                     149 	.ds 9
                            150 	.area HOME    (CODE)
                            151 	.area GSINIT0 (CODE)
                            152 	.area GSINIT1 (CODE)
                            153 	.area GSINIT2 (CODE)
                            154 	.area GSINIT3 (CODE)
                            155 	.area GSINIT4 (CODE)
                            156 	.area GSINIT5 (CODE)
                            157 	.area GSINIT  (CODE)
                            158 	.area GSFINAL (CODE)
                            159 	.area CSEG    (CODE)
                            160 ;--------------------------------------------------------
                            161 ; global & static initialisations
                            162 ;--------------------------------------------------------
                            163 	.area HOME    (CODE)
                            164 	.area GSINIT  (CODE)
                            165 	.area GSFINAL (CODE)
                            166 	.area GSINIT  (CODE)
                            167 ;------------------------------------------------------------
                            168 ;Allocation info for local variables in function 'iterateStateMachine'
                            169 ;------------------------------------------------------------
                            170 ;sloc0                     Allocated with name '_iterateStateMachine_sloc0_1_0'
                            171 ;sloc1                     Allocated with name '_iterateStateMachine_sloc1_1_0'
                            172 ;sloc2                     Allocated with name '_iterateStateMachine_sloc2_1_0'
                            173 ;sloc3                     Allocated with name '_iterateStateMachine_sloc3_1_0'
                            174 ;sloc4                     Allocated with name '_iterateStateMachine_sloc4_1_0'
                            175 ;sloc5                     Allocated with name '_iterateStateMachine_sloc5_1_0'
                            176 ;sloc6                     Allocated with name '_iterateStateMachine_sloc6_1_0'
                            177 ;sloc7                     Allocated with name '_iterateStateMachine_sloc7_1_0'
                            178 ;sloc8                     Allocated with name '_iterateStateMachine_sloc8_1_0'
                            179 ;sloc9                     Allocated with name '_iterateStateMachine_sloc9_1_0'
                            180 ;sloc10                    Allocated with name '_iterateStateMachine_sloc10_1_0'
                            181 ;sloc11                    Allocated with name '_iterateStateMachine_sloc11_1_0'
                            182 ;sm                        Allocated with name '_iterateStateMachine_sm_1_1'
                            183 ;initialTransitionEvent    Allocated with name '_iterateStateMachine_initialTransitionEvent_1_1'
                            184 ;enterEvent                Allocated with name '_iterateStateMachine_enterEvent_1_1'
                            185 ;exitEvent                 Allocated with name '_iterateStateMachine_exitEvent_1_1'
                            186 ;iterationMax              Allocated with name '_iterateStateMachine_iterationMax_1_1'
                            187 ;eventToProcess            Allocated with name '_iterateStateMachine_eventToProcess_2_3'
                            188 ;stateBeingProcessed       Allocated with name '_iterateStateMachine_stateBeingProcessed_2_3'
                            189 ;action                    Allocated with name '_iterateStateMachine_action_2_3'
                            190 ;source                    Allocated with name '_iterateStateMachine_source_3_10'
                            191 ;target                    Allocated with name '_iterateStateMachine_target_3_10'
                            192 ;sourceHierarchy           Allocated with name '_iterateStateMachine_sourceHierarchy_4_15'
                            193 ;sourceIndex               Allocated with name '_iterateStateMachine_sourceIndex_4_15'
                            194 ;targetHierarchy           Allocated with name '_iterateStateMachine_targetHierarchy_4_15'
                            195 ;targetIndex               Allocated with name '_iterateStateMachine_targetIndex_4_15'
                            196 ;LCA                       Allocated with name '_iterateStateMachine_LCA_4_15'
                            197 ;entryIndex                Allocated with name '_iterateStateMachine_entryIndex_4_15'
                            198 ;exitIndex                 Allocated with name '_iterateStateMachine_exitIndex_4_15'
                            199 ;exitIndex                 Allocated with name '_iterateStateMachine_exitIndex_6_17'
                            200 ;LCAindex                  Allocated with name '_iterateStateMachine_LCAindex_5_23'
                            201 ;------------------------------------------------------------
                            202 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:136: static event_t	initialTransitionEvent	= { SUBSTATE_INITIAL_TRANSITION } ;
   008C 90 00 D0            203 	mov	dptr,#_iterateStateMachine_initialTransitionEvent_1_1
   008F 74 02               204 	mov	a,#0x02
   0091 F0                  205 	movx	@dptr,a
                            206 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:137: static event_t	enterEvent				= { SUBSTATE_ENTRY } ;
   0092 90 00 D1            207 	mov	dptr,#_iterateStateMachine_enterEvent_1_1
   0095 74 01               208 	mov	a,#0x01
   0097 F0                  209 	movx	@dptr,a
                            210 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:138: static event_t	exitEvent				= { SUBSTATE_EXIT } ;
   0098 90 00 D2            211 	mov	dptr,#_iterateStateMachine_exitEvent_1_1
   009B 74 03               212 	mov	a,#0x03
   009D F0                  213 	movx	@dptr,a
                            214 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:140: static int iterationMax = 10 ;
   009E 90 00 D3            215 	mov	dptr,#_iterateStateMachine_iterationMax_1_1
   00A1 74 0A               216 	mov	a,#0x0A
   00A3 F0                  217 	movx	@dptr,a
   00A4 E4                  218 	clr	a
   00A5 A3                  219 	inc	dptr
   00A6 F0                  220 	movx	@dptr,a
                            221 ;--------------------------------------------------------
                            222 ; Home
                            223 ;--------------------------------------------------------
                            224 	.area HOME    (CODE)
                            225 	.area HOME    (CODE)
                            226 ;--------------------------------------------------------
                            227 ; code
                            228 ;--------------------------------------------------------
                            229 	.area CSEG    (CODE)
                            230 ;------------------------------------------------------------
                            231 ;Allocation info for local variables in function 'allocateStateMachineMemory'
                            232 ;------------------------------------------------------------
                            233 ;sizeInBytes               Allocated with name '_allocateStateMachineMemory_sizeInBytes_1_1'
                            234 ;instance                  Allocated with name '_allocateStateMachineMemory_instance_1_1'
                            235 ;------------------------------------------------------------
                            236 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:32: stateMachine_t* allocateStateMachineMemory(		uint16_t sizeInBytes)
                            237 ;	-----------------------------------------
                            238 ;	 function allocateStateMachineMemory
                            239 ;	-----------------------------------------
   0550                     240 _allocateStateMachineMemory:
                    0002    241 	ar2 = 0x02
                    0003    242 	ar3 = 0x03
                    0004    243 	ar4 = 0x04
                    0005    244 	ar5 = 0x05
                    0006    245 	ar6 = 0x06
                    0007    246 	ar7 = 0x07
                    0000    247 	ar0 = 0x00
                    0001    248 	ar1 = 0x01
   0550 AA 83               249 	mov	r2,dph
   0552 E5 82               250 	mov	a,dpl
   0554 90 00 B9            251 	mov	dptr,#_allocateStateMachineMemory_sizeInBytes_1_1
   0557 F0                  252 	movx	@dptr,a
   0558 A3                  253 	inc	dptr
   0559 EA                  254 	mov	a,r2
   055A F0                  255 	movx	@dptr,a
                            256 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:34: stateMachine_t*	instance = malloc(sizeInBytes) ;
   055B 90 00 B9            257 	mov	dptr,#_allocateStateMachineMemory_sizeInBytes_1_1
   055E E0                  258 	movx	a,@dptr
   055F FA                  259 	mov	r2,a
   0560 A3                  260 	inc	dptr
   0561 E0                  261 	movx	a,@dptr
   0562 FB                  262 	mov	r3,a
   0563 8A 82               263 	mov	dpl,r2
   0565 8B 83               264 	mov	dph,r3
   0567 C0 02               265 	push	ar2
   0569 C0 03               266 	push	ar3
   056B 12 33 06            267 	lcall	_malloc
   056E AC 82               268 	mov	r4,dpl
   0570 AD 83               269 	mov	r5,dph
   0572 D0 03               270 	pop	ar3
   0574 D0 02               271 	pop	ar2
   0576 7E 00               272 	mov	r6,#0x00
                            273 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:36: if(instance)
   0578 EC                  274 	mov	a,r4
   0579 4D                  275 	orl	a,r5
   057A 4E                  276 	orl	a,r6
   057B 60 22               277 	jz	00102$
                            278 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:38: memset((char*)instance, 0, sizeInBytes) ;
   057D 90 0A D5            279 	mov	dptr,#_memset_PARM_2
   0580 E4                  280 	clr	a
   0581 F0                  281 	movx	@dptr,a
   0582 90 0A D6            282 	mov	dptr,#_memset_PARM_3
   0585 EA                  283 	mov	a,r2
   0586 F0                  284 	movx	@dptr,a
   0587 A3                  285 	inc	dptr
   0588 EB                  286 	mov	a,r3
   0589 F0                  287 	movx	@dptr,a
   058A 8C 82               288 	mov	dpl,r4
   058C 8D 83               289 	mov	dph,r5
   058E 8E F0               290 	mov	b,r6
   0590 C0 04               291 	push	ar4
   0592 C0 05               292 	push	ar5
   0594 C0 06               293 	push	ar6
   0596 12 32 47            294 	lcall	_memset
   0599 D0 06               295 	pop	ar6
   059B D0 05               296 	pop	ar5
   059D D0 04               297 	pop	ar4
   059F                     298 00102$:
                            299 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:41: return instance ;
   059F 8C 82               300 	mov	dpl,r4
   05A1 8D 83               301 	mov	dph,r5
   05A3 8E F0               302 	mov	b,r6
   05A5 22                  303 	ret
                            304 ;------------------------------------------------------------
                            305 ;Allocation info for local variables in function 'deallocateStateMachineMemory'
                            306 ;------------------------------------------------------------
                            307 ;instance                  Allocated with name '_deallocateStateMachineMemory_instance_1_1'
                            308 ;------------------------------------------------------------
                            309 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:45: void deallocateStateMachineMemory(				stateMachine_t* instance)
                            310 ;	-----------------------------------------
                            311 ;	 function deallocateStateMachineMemory
                            312 ;	-----------------------------------------
   05A6                     313 _deallocateStateMachineMemory:
   05A6 AA F0               314 	mov	r2,b
   05A8 AB 83               315 	mov	r3,dph
   05AA E5 82               316 	mov	a,dpl
   05AC 90 00 BB            317 	mov	dptr,#_deallocateStateMachineMemory_instance_1_1
   05AF F0                  318 	movx	@dptr,a
   05B0 A3                  319 	inc	dptr
   05B1 EB                  320 	mov	a,r3
   05B2 F0                  321 	movx	@dptr,a
   05B3 A3                  322 	inc	dptr
   05B4 EA                  323 	mov	a,r2
   05B5 F0                  324 	movx	@dptr,a
                            325 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:47: if(instance != 0)
   05B6 90 00 BB            326 	mov	dptr,#_deallocateStateMachineMemory_instance_1_1
   05B9 E0                  327 	movx	a,@dptr
   05BA FA                  328 	mov	r2,a
   05BB A3                  329 	inc	dptr
   05BC E0                  330 	movx	a,@dptr
   05BD FB                  331 	mov	r3,a
   05BE A3                  332 	inc	dptr
   05BF E0                  333 	movx	a,@dptr
   05C0 FC                  334 	mov	r4,a
   05C1 EA                  335 	mov	a,r2
   05C2 4B                  336 	orl	a,r3
   05C3 4C                  337 	orl	a,r4
   05C4 60 09               338 	jz	00103$
                            339 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:49: free((char*)instance) ;
   05C6 8A 82               340 	mov	dpl,r2
   05C8 8B 83               341 	mov	dph,r3
   05CA 8C F0               342 	mov	b,r4
   05CC 02 31 F5            343 	ljmp	_free
   05CF                     344 00103$:
   05CF 22                  345 	ret
                            346 ;------------------------------------------------------------
                            347 ;Allocation info for local variables in function 'registerStateMachine'
                            348 ;------------------------------------------------------------
                            349 ;sm                        Allocated with name '_registerStateMachine_sm_1_1'
                            350 ;statetMachineIndex        Allocated with name '_registerStateMachine_statetMachineIndex_2_2'
                            351 ;------------------------------------------------------------
                            352 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:54: bool registerStateMachine(			stateMachine_t* sm)
                            353 ;	-----------------------------------------
                            354 ;	 function registerStateMachine
                            355 ;	-----------------------------------------
   05D0                     356 _registerStateMachine:
   05D0 AA F0               357 	mov	r2,b
   05D2 AB 83               358 	mov	r3,dph
   05D4 E5 82               359 	mov	a,dpl
   05D6 90 00 BE            360 	mov	dptr,#_registerStateMachine_sm_1_1
   05D9 F0                  361 	movx	@dptr,a
   05DA A3                  362 	inc	dptr
   05DB EB                  363 	mov	a,r3
   05DC F0                  364 	movx	@dptr,a
   05DD A3                  365 	inc	dptr
   05DE EA                  366 	mov	a,r2
   05DF F0                  367 	movx	@dptr,a
                            368 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:56: if(sm)
   05E0 90 00 BE            369 	mov	dptr,#_registerStateMachine_sm_1_1
   05E3 E0                  370 	movx	a,@dptr
   05E4 FA                  371 	mov	r2,a
   05E5 A3                  372 	inc	dptr
   05E6 E0                  373 	movx	a,@dptr
   05E7 FB                  374 	mov	r3,a
   05E8 A3                  375 	inc	dptr
   05E9 E0                  376 	movx	a,@dptr
   05EA FC                  377 	mov	r4,a
   05EB EA                  378 	mov	a,r2
   05EC 4B                  379 	orl	a,r3
   05ED 4C                  380 	orl	a,r4
   05EE 60 44               381 	jz	00104$
                            382 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:60: for( statetMachineIndex = 0 ; statetMachineIndex < configMAXIMUM_NUMBER_OF_STATE_MACHINES ; statetMachineIndex++ )
   05F0 7A 00               383 	mov	r2,#0x00
   05F2                     384 00105$:
   05F2 BA 32 00            385 	cjne	r2,#0x32,00116$
   05F5                     386 00116$:
   05F5 50 3D               387 	jnc	00104$
                            388 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:62: if(stateMachines[statetMachineIndex] == NULL)
   05F7 EA                  389 	mov	a,r2
   05F8 75 F0 03            390 	mov	b,#0x03
   05FB A4                  391 	mul	ab
   05FC 24 23               392 	add	a,#_stateMachines
   05FE FB                  393 	mov	r3,a
   05FF E4                  394 	clr	a
   0600 34 00               395 	addc	a,#(_stateMachines >> 8)
   0602 FC                  396 	mov	r4,a
   0603 8B 82               397 	mov	dpl,r3
   0605 8C 83               398 	mov	dph,r4
   0607 E0                  399 	movx	a,@dptr
   0608 FD                  400 	mov	r5,a
   0609 A3                  401 	inc	dptr
   060A E0                  402 	movx	a,@dptr
   060B FE                  403 	mov	r6,a
   060C A3                  404 	inc	dptr
   060D E0                  405 	movx	a,@dptr
   060E FF                  406 	mov	r7,a
   060F BD 00 1F            407 	cjne	r5,#0x00,00107$
   0612 BE 00 1C            408 	cjne	r6,#0x00,00107$
   0615 BF 00 19            409 	cjne	r7,#0x00,00107$
                            410 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:64: stateMachines[statetMachineIndex] = sm ;
   0618 90 00 BE            411 	mov	dptr,#_registerStateMachine_sm_1_1
   061B E0                  412 	movx	a,@dptr
   061C FD                  413 	mov	r5,a
   061D A3                  414 	inc	dptr
   061E E0                  415 	movx	a,@dptr
   061F FE                  416 	mov	r6,a
   0620 A3                  417 	inc	dptr
   0621 E0                  418 	movx	a,@dptr
   0622 FF                  419 	mov	r7,a
   0623 8B 82               420 	mov	dpl,r3
   0625 8C 83               421 	mov	dph,r4
   0627 ED                  422 	mov	a,r5
   0628 F0                  423 	movx	@dptr,a
   0629 A3                  424 	inc	dptr
   062A EE                  425 	mov	a,r6
   062B F0                  426 	movx	@dptr,a
   062C A3                  427 	inc	dptr
   062D EF                  428 	mov	a,r7
   062E F0                  429 	movx	@dptr,a
                            430 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:66: return true ;
   062F D3                  431 	setb	c
   0630 22                  432 	ret
   0631                     433 00107$:
                            434 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:60: for( statetMachineIndex = 0 ; statetMachineIndex < configMAXIMUM_NUMBER_OF_STATE_MACHINES ; statetMachineIndex++ )
   0631 0A                  435 	inc	r2
   0632 80 BE               436 	sjmp	00105$
   0634                     437 00104$:
                            438 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:71: return false ;
   0634 C3                  439 	clr	c
   0635 22                  440 	ret
                            441 ;------------------------------------------------------------
                            442 ;Allocation info for local variables in function 'unregisterStateMachine'
                            443 ;------------------------------------------------------------
                            444 ;sm                        Allocated with name '_unregisterStateMachine_sm_1_1'
                            445 ;statetMachineIndex        Allocated with name '_unregisterStateMachine_statetMachineIndex_2_2'
                            446 ;------------------------------------------------------------
                            447 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:74: bool unregisterStateMachine(		stateMachine_t* sm)
                            448 ;	-----------------------------------------
                            449 ;	 function unregisterStateMachine
                            450 ;	-----------------------------------------
   0636                     451 _unregisterStateMachine:
   0636 AA F0               452 	mov	r2,b
   0638 AB 83               453 	mov	r3,dph
   063A E5 82               454 	mov	a,dpl
   063C 90 00 C1            455 	mov	dptr,#_unregisterStateMachine_sm_1_1
   063F F0                  456 	movx	@dptr,a
   0640 A3                  457 	inc	dptr
   0641 EB                  458 	mov	a,r3
   0642 F0                  459 	movx	@dptr,a
   0643 A3                  460 	inc	dptr
   0644 EA                  461 	mov	a,r2
   0645 F0                  462 	movx	@dptr,a
                            463 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:76: if(sm)
   0646 90 00 C1            464 	mov	dptr,#_unregisterStateMachine_sm_1_1
   0649 E0                  465 	movx	a,@dptr
   064A FA                  466 	mov	r2,a
   064B A3                  467 	inc	dptr
   064C E0                  468 	movx	a,@dptr
   064D FB                  469 	mov	r3,a
   064E A3                  470 	inc	dptr
   064F E0                  471 	movx	a,@dptr
   0650 FC                  472 	mov	r4,a
   0651 EA                  473 	mov	a,r2
   0652 4B                  474 	orl	a,r3
   0653 4C                  475 	orl	a,r4
   0654 60 44               476 	jz	00104$
                            477 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:80: for( statetMachineIndex = 0 ; statetMachineIndex < configMAXIMUM_NUMBER_OF_STATE_MACHINES ; statetMachineIndex++ )
   0656 7D 00               478 	mov	r5,#0x00
   0658                     479 00105$:
   0658 BD 32 00            480 	cjne	r5,#0x32,00116$
   065B                     481 00116$:
   065B 50 3D               482 	jnc	00104$
                            483 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:82: if(stateMachines[statetMachineIndex] == sm)
   065D ED                  484 	mov	a,r5
   065E 75 F0 03            485 	mov	b,#0x03
   0661 A4                  486 	mul	ab
   0662 24 23               487 	add	a,#_stateMachines
   0664 FE                  488 	mov	r6,a
   0665 E4                  489 	clr	a
   0666 34 00               490 	addc	a,#(_stateMachines >> 8)
   0668 FF                  491 	mov	r7,a
   0669 C0 05               492 	push	ar5
   066B 8E 82               493 	mov	dpl,r6
   066D 8F 83               494 	mov	dph,r7
   066F E0                  495 	movx	a,@dptr
   0670 F8                  496 	mov	r0,a
   0671 A3                  497 	inc	dptr
   0672 E0                  498 	movx	a,@dptr
   0673 F9                  499 	mov	r1,a
   0674 A3                  500 	inc	dptr
   0675 E0                  501 	movx	a,@dptr
   0676 FD                  502 	mov	r5,a
   0677 E8                  503 	mov	a,r0
   0678 B5 02 0A            504 	cjne	a,ar2,00118$
   067B E9                  505 	mov	a,r1
   067C B5 03 06            506 	cjne	a,ar3,00118$
   067F ED                  507 	mov	a,r5
   0680 B5 04 02            508 	cjne	a,ar4,00118$
   0683 80 04               509 	sjmp	00119$
   0685                     510 00118$:
   0685 D0 05               511 	pop	ar5
   0687 80 0E               512 	sjmp	00107$
   0689                     513 00119$:
   0689 D0 05               514 	pop	ar5
                            515 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:84: stateMachines[statetMachineIndex] = NULL ;
   068B 8E 82               516 	mov	dpl,r6
   068D 8F 83               517 	mov	dph,r7
   068F E4                  518 	clr	a
   0690 F0                  519 	movx	@dptr,a
   0691 A3                  520 	inc	dptr
   0692 F0                  521 	movx	@dptr,a
   0693 A3                  522 	inc	dptr
   0694 F0                  523 	movx	@dptr,a
                            524 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:86: return true ;
   0695 D3                  525 	setb	c
   0696 22                  526 	ret
   0697                     527 00107$:
                            528 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:80: for( statetMachineIndex = 0 ; statetMachineIndex < configMAXIMUM_NUMBER_OF_STATE_MACHINES ; statetMachineIndex++ )
   0697 0D                  529 	inc	r5
   0698 80 BE               530 	sjmp	00105$
   069A                     531 00104$:
                            532 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:91: return false ;
   069A C3                  533 	clr	c
   069B 22                  534 	ret
                            535 ;------------------------------------------------------------
                            536 ;Allocation info for local variables in function 'iterateAllStateMachines'
                            537 ;------------------------------------------------------------
                            538 ;statetMachineIndex        Allocated with name '_iterateAllStateMachines_statetMachineIndex_1_1'
                            539 ;------------------------------------------------------------
                            540 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:95: void iterateAllStateMachines(	void)
                            541 ;	-----------------------------------------
                            542 ;	 function iterateAllStateMachines
                            543 ;	-----------------------------------------
   069C                     544 _iterateAllStateMachines:
                            545 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:99: for( statetMachineIndex = 0 ; statetMachineIndex < configMAXIMUM_NUMBER_OF_STATE_MACHINES ; statetMachineIndex++ )
   069C 7A 00               546 	mov	r2,#0x00
   069E                     547 00103$:
   069E BA 32 00            548 	cjne	r2,#0x32,00113$
   06A1                     549 00113$:
   06A1 50 31               550 	jnc	00107$
                            551 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:101: if(stateMachines[statetMachineIndex] != NULL)
   06A3 EA                  552 	mov	a,r2
   06A4 75 F0 03            553 	mov	b,#0x03
   06A7 A4                  554 	mul	ab
   06A8 24 23               555 	add	a,#_stateMachines
   06AA F5 82               556 	mov	dpl,a
   06AC E4                  557 	clr	a
   06AD 34 00               558 	addc	a,#(_stateMachines >> 8)
   06AF F5 83               559 	mov	dph,a
   06B1 E0                  560 	movx	a,@dptr
   06B2 FB                  561 	mov	r3,a
   06B3 A3                  562 	inc	dptr
   06B4 E0                  563 	movx	a,@dptr
   06B5 FC                  564 	mov	r4,a
   06B6 A3                  565 	inc	dptr
   06B7 E0                  566 	movx	a,@dptr
   06B8 FD                  567 	mov	r5,a
   06B9 BB 00 08            568 	cjne	r3,#0x00,00115$
   06BC BC 00 05            569 	cjne	r4,#0x00,00115$
   06BF BD 00 02            570 	cjne	r5,#0x00,00115$
   06C2 80 0D               571 	sjmp	00105$
   06C4                     572 00115$:
                            573 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:103: iterateStateMachine(stateMachines[statetMachineIndex]) ;
   06C4 8B 82               574 	mov	dpl,r3
   06C6 8C 83               575 	mov	dph,r4
   06C8 8D F0               576 	mov	b,r5
   06CA C0 02               577 	push	ar2
   06CC 12 08 84            578 	lcall	_iterateStateMachine
   06CF D0 02               579 	pop	ar2
   06D1                     580 00105$:
                            581 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:99: for( statetMachineIndex = 0 ; statetMachineIndex < configMAXIMUM_NUMBER_OF_STATE_MACHINES ; statetMachineIndex++ )
   06D1 0A                  582 	inc	r2
   06D2 80 CA               583 	sjmp	00103$
   06D4                     584 00107$:
   06D4 22                  585 	ret
                            586 ;------------------------------------------------------------
                            587 ;Allocation info for local variables in function 'callStateHandler'
                            588 ;------------------------------------------------------------
                            589 ;sloc0                     Allocated with name '_callStateHandler_sloc0_1_0'
                            590 ;sloc1                     Allocated with name '_callStateHandler_sloc1_1_0'
                            591 ;state                     Allocated with name '_callStateHandler_PARM_2'
                            592 ;event                     Allocated with name '_callStateHandler_PARM_3'
                            593 ;sm                        Allocated with name '_callStateHandler_sm_1_1'
                            594 ;response                  Allocated with name '_callStateHandler_response_1_1'
                            595 ;------------------------------------------------------------
                            596 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:113: stateHandlerResponse_t callStateHandler(stateMachine_t* sm, state_t* state, event_t* event)
                            597 ;	-----------------------------------------
                            598 ;	 function callStateHandler
                            599 ;	-----------------------------------------
   06D5                     600 _callStateHandler:
   06D5 AA F0               601 	mov	r2,b
   06D7 AB 83               602 	mov	r3,dph
   06D9 E5 82               603 	mov	a,dpl
   06DB 90 00 CA            604 	mov	dptr,#_callStateHandler_sm_1_1
   06DE F0                  605 	movx	@dptr,a
   06DF A3                  606 	inc	dptr
   06E0 EB                  607 	mov	a,r3
   06E1 F0                  608 	movx	@dptr,a
   06E2 A3                  609 	inc	dptr
   06E3 EA                  610 	mov	a,r2
   06E4 F0                  611 	movx	@dptr,a
                            612 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:117: printf("\t\t\tCalling state: %s, event: %s, ", state->stateName, event->eventType <= SUBSTATE_EXIT ? eventTypes[event->eventType] : "<USER_EVENT>") ;
   06E5 90 00 C7            613 	mov	dptr,#_callStateHandler_PARM_3
   06E8 E0                  614 	movx	a,@dptr
   06E9 FA                  615 	mov	r2,a
   06EA A3                  616 	inc	dptr
   06EB E0                  617 	movx	a,@dptr
   06EC FB                  618 	mov	r3,a
   06ED A3                  619 	inc	dptr
   06EE E0                  620 	movx	a,@dptr
   06EF FC                  621 	mov	r4,a
   06F0 8A 82               622 	mov	dpl,r2
   06F2 8B 83               623 	mov	dph,r3
   06F4 8C F0               624 	mov	b,r4
   06F6 12 3E 7B            625 	lcall	__gptrget
   06F9 FD                  626 	mov	r5,a
   06FA C3                  627 	clr	c
   06FB 74 03               628 	mov	a,#0x03
   06FD 9D                  629 	subb	a,r5
   06FE B3                  630 	cpl	c
   06FF E4                  631 	clr	a
   0700 33                  632 	rlc	a
   0701 FE                  633 	mov	r6,a
   0702 60 1B               634 	jz	00105$
   0704 ED                  635 	mov	a,r5
   0705 75 F0 03            636 	mov	b,#0x03
   0708 A4                  637 	mul	ab
   0709 24 17               638 	add	a,#_eventTypes
   070B F5 82               639 	mov	dpl,a
   070D E4                  640 	clr	a
   070E 34 0F               641 	addc	a,#(_eventTypes >> 8)
   0710 F5 83               642 	mov	dph,a
   0712 E0                  643 	movx	a,@dptr
   0713 F5 24               644 	mov	_callStateHandler_sloc0_1_0,a
   0715 A3                  645 	inc	dptr
   0716 E0                  646 	movx	a,@dptr
   0717 F5 25               647 	mov	(_callStateHandler_sloc0_1_0 + 1),a
   0719 A3                  648 	inc	dptr
   071A E0                  649 	movx	a,@dptr
   071B F5 26               650 	mov	(_callStateHandler_sloc0_1_0 + 2),a
   071D 80 09               651 	sjmp	00106$
   071F                     652 00105$:
   071F 75 24 E5            653 	mov	_callStateHandler_sloc0_1_0,#__str_1
   0722 75 25 3E            654 	mov	(_callStateHandler_sloc0_1_0 + 1),#(__str_1 >> 8)
   0725 75 26 80            655 	mov	(_callStateHandler_sloc0_1_0 + 2),#0x80
   0728                     656 00106$:
   0728 90 00 C4            657 	mov	dptr,#_callStateHandler_PARM_2
   072B E0                  658 	movx	a,@dptr
   072C F5 27               659 	mov	_callStateHandler_sloc1_1_0,a
   072E A3                  660 	inc	dptr
   072F E0                  661 	movx	a,@dptr
   0730 F5 28               662 	mov	(_callStateHandler_sloc1_1_0 + 1),a
   0732 A3                  663 	inc	dptr
   0733 E0                  664 	movx	a,@dptr
   0734 F5 29               665 	mov	(_callStateHandler_sloc1_1_0 + 2),a
   0736 74 06               666 	mov	a,#0x06
   0738 25 27               667 	add	a,_callStateHandler_sloc1_1_0
   073A FE                  668 	mov	r6,a
   073B E4                  669 	clr	a
   073C 35 28               670 	addc	a,(_callStateHandler_sloc1_1_0 + 1)
   073E FF                  671 	mov	r7,a
   073F AD 29               672 	mov	r5,(_callStateHandler_sloc1_1_0 + 2)
   0741 8E 82               673 	mov	dpl,r6
   0743 8F 83               674 	mov	dph,r7
   0745 8D F0               675 	mov	b,r5
   0747 12 3E 7B            676 	lcall	__gptrget
   074A FE                  677 	mov	r6,a
   074B A3                  678 	inc	dptr
   074C 12 3E 7B            679 	lcall	__gptrget
   074F FF                  680 	mov	r7,a
   0750 A3                  681 	inc	dptr
   0751 12 3E 7B            682 	lcall	__gptrget
   0754 FD                  683 	mov	r5,a
   0755 C0 02               684 	push	ar2
   0757 C0 03               685 	push	ar3
   0759 C0 04               686 	push	ar4
   075B C0 24               687 	push	_callStateHandler_sloc0_1_0
   075D C0 25               688 	push	(_callStateHandler_sloc0_1_0 + 1)
   075F C0 26               689 	push	(_callStateHandler_sloc0_1_0 + 2)
   0761 C0 06               690 	push	ar6
   0763 C0 07               691 	push	ar7
   0765 C0 05               692 	push	ar5
   0767 74 C3               693 	mov	a,#__str_0
   0769 C0 E0               694 	push	acc
   076B 74 3E               695 	mov	a,#(__str_0 >> 8)
   076D C0 E0               696 	push	acc
   076F 74 80               697 	mov	a,#0x80
   0771 C0 E0               698 	push	acc
   0773 12 36 2F            699 	lcall	_printf
   0776 E5 81               700 	mov	a,sp
   0778 24 F7               701 	add	a,#0xf7
   077A F5 81               702 	mov	sp,a
   077C D0 04               703 	pop	ar4
   077E D0 03               704 	pop	ar3
   0780 D0 02               705 	pop	ar2
                            706 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:119: response = ((callStateHandler_t)(state->handler))(sm, event) ;
   0782 74 04               707 	mov	a,#0x04
   0784 25 27               708 	add	a,_callStateHandler_sloc1_1_0
   0786 FD                  709 	mov	r5,a
   0787 E4                  710 	clr	a
   0788 35 28               711 	addc	a,(_callStateHandler_sloc1_1_0 + 1)
   078A FE                  712 	mov	r6,a
   078B AF 29               713 	mov	r7,(_callStateHandler_sloc1_1_0 + 2)
   078D 8D 82               714 	mov	dpl,r5
   078F 8E 83               715 	mov	dph,r6
   0791 8F F0               716 	mov	b,r7
   0793 12 3E 7B            717 	lcall	__gptrget
   0796 FD                  718 	mov	r5,a
   0797 A3                  719 	inc	dptr
   0798 12 3E 7B            720 	lcall	__gptrget
   079B FE                  721 	mov	r6,a
   079C 90 00 CA            722 	mov	dptr,#_callStateHandler_sm_1_1
   079F E0                  723 	movx	a,@dptr
   07A0 FF                  724 	mov	r7,a
   07A1 A3                  725 	inc	dptr
   07A2 E0                  726 	movx	a,@dptr
   07A3 F8                  727 	mov	r0,a
   07A4 A3                  728 	inc	dptr
   07A5 E0                  729 	movx	a,@dptr
   07A6 F9                  730 	mov	r1,a
   07A7 C0 05               731 	push	ar5
   07A9 C0 06               732 	push	ar6
   07AB C0 02               733 	push	ar2
   07AD C0 03               734 	push	ar3
   07AF C0 04               735 	push	ar4
   07B1 74 C4               736 	mov	a,#00111$
   07B3 C0 E0               737 	push	acc
   07B5 74 07               738 	mov	a,#(00111$ >> 8)
   07B7 C0 E0               739 	push	acc
   07B9 C0 05               740 	push	ar5
   07BB C0 06               741 	push	ar6
   07BD 8F 82               742 	mov	dpl,r7
   07BF 88 83               743 	mov	dph,r0
   07C1 89 F0               744 	mov	b,r1
   07C3 22                  745 	ret
   07C4                     746 00111$:
   07C4 AA 82               747 	mov	r2,dpl
   07C6 15 81               748 	dec	sp
   07C8 15 81               749 	dec	sp
   07CA 15 81               750 	dec	sp
   07CC D0 06               751 	pop	ar6
   07CE D0 05               752 	pop	ar5
                            753 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:121: printf("response: %s ", responseTypes[response]) ;
   07D0 EA                  754 	mov	a,r2
   07D1 75 F0 03            755 	mov	b,#0x03
   07D4 A4                  756 	mul	ab
   07D5 24 23               757 	add	a,#_responseTypes
   07D7 F5 82               758 	mov	dpl,a
   07D9 E4                  759 	clr	a
   07DA 34 0F               760 	addc	a,#(_responseTypes >> 8)
   07DC F5 83               761 	mov	dph,a
   07DE E0                  762 	movx	a,@dptr
   07DF FB                  763 	mov	r3,a
   07E0 A3                  764 	inc	dptr
   07E1 E0                  765 	movx	a,@dptr
   07E2 FC                  766 	mov	r4,a
   07E3 A3                  767 	inc	dptr
   07E4 E0                  768 	movx	a,@dptr
   07E5 FD                  769 	mov	r5,a
   07E6 C0 02               770 	push	ar2
   07E8 C0 03               771 	push	ar3
   07EA C0 04               772 	push	ar4
   07EC C0 05               773 	push	ar5
   07EE 74 F2               774 	mov	a,#__str_2
   07F0 C0 E0               775 	push	acc
   07F2 74 3E               776 	mov	a,#(__str_2 >> 8)
   07F4 C0 E0               777 	push	acc
   07F6 74 80               778 	mov	a,#0x80
   07F8 C0 E0               779 	push	acc
   07FA 12 36 2F            780 	lcall	_printf
   07FD E5 81               781 	mov	a,sp
   07FF 24 FA               782 	add	a,#0xfa
   0801 F5 81               783 	mov	sp,a
   0803 D0 02               784 	pop	ar2
                            785 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:123: if(response == TRANSITION)
   0805 BA 02 60            786 	cjne	r2,#0x02,00102$
                            787 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:125: printf("to %s ", ((state_t*)(sm->nextState))->stateName) ;
   0808 90 00 CA            788 	mov	dptr,#_callStateHandler_sm_1_1
   080B E0                  789 	movx	a,@dptr
   080C FB                  790 	mov	r3,a
   080D A3                  791 	inc	dptr
   080E E0                  792 	movx	a,@dptr
   080F FC                  793 	mov	r4,a
   0810 A3                  794 	inc	dptr
   0811 E0                  795 	movx	a,@dptr
   0812 FD                  796 	mov	r5,a
   0813 74 09               797 	mov	a,#0x09
   0815 2B                  798 	add	a,r3
   0816 FB                  799 	mov	r3,a
   0817 E4                  800 	clr	a
   0818 3C                  801 	addc	a,r4
   0819 FC                  802 	mov	r4,a
   081A 8B 82               803 	mov	dpl,r3
   081C 8C 83               804 	mov	dph,r4
   081E 8D F0               805 	mov	b,r5
   0820 12 3E 7B            806 	lcall	__gptrget
   0823 FB                  807 	mov	r3,a
   0824 A3                  808 	inc	dptr
   0825 12 3E 7B            809 	lcall	__gptrget
   0828 FC                  810 	mov	r4,a
   0829 A3                  811 	inc	dptr
   082A 12 3E 7B            812 	lcall	__gptrget
   082D FD                  813 	mov	r5,a
   082E 74 06               814 	mov	a,#0x06
   0830 2B                  815 	add	a,r3
   0831 FB                  816 	mov	r3,a
   0832 E4                  817 	clr	a
   0833 3C                  818 	addc	a,r4
   0834 FC                  819 	mov	r4,a
   0835 8B 82               820 	mov	dpl,r3
   0837 8C 83               821 	mov	dph,r4
   0839 8D F0               822 	mov	b,r5
   083B 12 3E 7B            823 	lcall	__gptrget
   083E FB                  824 	mov	r3,a
   083F A3                  825 	inc	dptr
   0840 12 3E 7B            826 	lcall	__gptrget
   0843 FC                  827 	mov	r4,a
   0844 A3                  828 	inc	dptr
   0845 12 3E 7B            829 	lcall	__gptrget
   0848 FD                  830 	mov	r5,a
   0849 C0 02               831 	push	ar2
   084B C0 03               832 	push	ar3
   084D C0 04               833 	push	ar4
   084F C0 05               834 	push	ar5
   0851 74 00               835 	mov	a,#__str_3
   0853 C0 E0               836 	push	acc
   0855 74 3F               837 	mov	a,#(__str_3 >> 8)
   0857 C0 E0               838 	push	acc
   0859 74 80               839 	mov	a,#0x80
   085B C0 E0               840 	push	acc
   085D 12 36 2F            841 	lcall	_printf
   0860 E5 81               842 	mov	a,sp
   0862 24 FA               843 	add	a,#0xfa
   0864 F5 81               844 	mov	sp,a
   0866 D0 02               845 	pop	ar2
   0868                     846 00102$:
                            847 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:128: printf("\n") ;
   0868 C0 02               848 	push	ar2
   086A 74 07               849 	mov	a,#__str_4
   086C C0 E0               850 	push	acc
   086E 74 3F               851 	mov	a,#(__str_4 >> 8)
   0870 C0 E0               852 	push	acc
   0872 74 80               853 	mov	a,#0x80
   0874 C0 E0               854 	push	acc
   0876 12 36 2F            855 	lcall	_printf
   0879 15 81               856 	dec	sp
   087B 15 81               857 	dec	sp
   087D 15 81               858 	dec	sp
   087F D0 02               859 	pop	ar2
                            860 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:130: return response ;
   0881 8A 82               861 	mov	dpl,r2
   0883 22                  862 	ret
                            863 ;------------------------------------------------------------
                            864 ;Allocation info for local variables in function 'iterateStateMachine'
                            865 ;------------------------------------------------------------
                            866 ;sloc0                     Allocated with name '_iterateStateMachine_sloc0_1_0'
                            867 ;sloc1                     Allocated with name '_iterateStateMachine_sloc1_1_0'
                            868 ;sloc2                     Allocated with name '_iterateStateMachine_sloc2_1_0'
                            869 ;sloc3                     Allocated with name '_iterateStateMachine_sloc3_1_0'
                            870 ;sloc4                     Allocated with name '_iterateStateMachine_sloc4_1_0'
                            871 ;sloc5                     Allocated with name '_iterateStateMachine_sloc5_1_0'
                            872 ;sloc6                     Allocated with name '_iterateStateMachine_sloc6_1_0'
                            873 ;sloc7                     Allocated with name '_iterateStateMachine_sloc7_1_0'
                            874 ;sloc8                     Allocated with name '_iterateStateMachine_sloc8_1_0'
                            875 ;sloc9                     Allocated with name '_iterateStateMachine_sloc9_1_0'
                            876 ;sloc10                    Allocated with name '_iterateStateMachine_sloc10_1_0'
                            877 ;sloc11                    Allocated with name '_iterateStateMachine_sloc11_1_0'
                            878 ;sm                        Allocated with name '_iterateStateMachine_sm_1_1'
                            879 ;initialTransitionEvent    Allocated with name '_iterateStateMachine_initialTransitionEvent_1_1'
                            880 ;enterEvent                Allocated with name '_iterateStateMachine_enterEvent_1_1'
                            881 ;exitEvent                 Allocated with name '_iterateStateMachine_exitEvent_1_1'
                            882 ;iterationMax              Allocated with name '_iterateStateMachine_iterationMax_1_1'
                            883 ;eventToProcess            Allocated with name '_iterateStateMachine_eventToProcess_2_3'
                            884 ;stateBeingProcessed       Allocated with name '_iterateStateMachine_stateBeingProcessed_2_3'
                            885 ;action                    Allocated with name '_iterateStateMachine_action_2_3'
                            886 ;source                    Allocated with name '_iterateStateMachine_source_3_10'
                            887 ;target                    Allocated with name '_iterateStateMachine_target_3_10'
                            888 ;sourceHierarchy           Allocated with name '_iterateStateMachine_sourceHierarchy_4_15'
                            889 ;sourceIndex               Allocated with name '_iterateStateMachine_sourceIndex_4_15'
                            890 ;targetHierarchy           Allocated with name '_iterateStateMachine_targetHierarchy_4_15'
                            891 ;targetIndex               Allocated with name '_iterateStateMachine_targetIndex_4_15'
                            892 ;LCA                       Allocated with name '_iterateStateMachine_LCA_4_15'
                            893 ;entryIndex                Allocated with name '_iterateStateMachine_entryIndex_4_15'
                            894 ;exitIndex                 Allocated with name '_iterateStateMachine_exitIndex_4_15'
                            895 ;exitIndex                 Allocated with name '_iterateStateMachine_exitIndex_6_17'
                            896 ;LCAindex                  Allocated with name '_iterateStateMachine_LCAindex_5_23'
                            897 ;------------------------------------------------------------
                            898 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:134: void iterateStateMachine(	stateMachine_t* sm)
                            899 ;	-----------------------------------------
                            900 ;	 function iterateStateMachine
                            901 ;	-----------------------------------------
   0884                     902 _iterateStateMachine:
   0884 AA F0               903 	mov	r2,b
   0886 AB 83               904 	mov	r3,dph
   0888 E5 82               905 	mov	a,dpl
   088A 90 00 CD            906 	mov	dptr,#_iterateStateMachine_sm_1_1
   088D F0                  907 	movx	@dptr,a
   088E A3                  908 	inc	dptr
   088F EB                  909 	mov	a,r3
   0890 F0                  910 	movx	@dptr,a
   0891 A3                  911 	inc	dptr
   0892 EA                  912 	mov	a,r2
   0893 F0                  913 	movx	@dptr,a
                            914 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:139: bool			forceTransition			= false ;
   0894 C2 00               915 	clr	_iterateStateMachine_forceTransition_1_1
                            916 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:142: printf("\titerating %s\n", sm->stateMachineName) ;
   0896 90 00 CD            917 	mov	dptr,#_iterateStateMachine_sm_1_1
   0899 E0                  918 	movx	a,@dptr
   089A FA                  919 	mov	r2,a
   089B A3                  920 	inc	dptr
   089C E0                  921 	movx	a,@dptr
   089D FB                  922 	mov	r3,a
   089E A3                  923 	inc	dptr
   089F E0                  924 	movx	a,@dptr
   08A0 FC                  925 	mov	r4,a
   08A1 74 03               926 	mov	a,#0x03
   08A3 2A                  927 	add	a,r2
   08A4 FD                  928 	mov	r5,a
   08A5 E4                  929 	clr	a
   08A6 3B                  930 	addc	a,r3
   08A7 FE                  931 	mov	r6,a
   08A8 8C 07               932 	mov	ar7,r4
   08AA 8D 82               933 	mov	dpl,r5
   08AC 8E 83               934 	mov	dph,r6
   08AE 8F F0               935 	mov	b,r7
   08B0 12 3E 7B            936 	lcall	__gptrget
   08B3 FD                  937 	mov	r5,a
   08B4 A3                  938 	inc	dptr
   08B5 12 3E 7B            939 	lcall	__gptrget
   08B8 FE                  940 	mov	r6,a
   08B9 A3                  941 	inc	dptr
   08BA 12 3E 7B            942 	lcall	__gptrget
   08BD FF                  943 	mov	r7,a
   08BE C0 02               944 	push	ar2
   08C0 C0 03               945 	push	ar3
   08C2 C0 04               946 	push	ar4
   08C4 C0 05               947 	push	ar5
   08C6 C0 06               948 	push	ar6
   08C8 C0 07               949 	push	ar7
   08CA 74 09               950 	mov	a,#__str_5
   08CC C0 E0               951 	push	acc
   08CE 74 3F               952 	mov	a,#(__str_5 >> 8)
   08D0 C0 E0               953 	push	acc
   08D2 74 80               954 	mov	a,#0x80
   08D4 C0 E0               955 	push	acc
   08D6 12 36 2F            956 	lcall	_printf
   08D9 E5 81               957 	mov	a,sp
   08DB 24 FA               958 	add	a,#0xfa
   08DD F5 81               959 	mov	sp,a
   08DF D0 04               960 	pop	ar4
   08E1 D0 03               961 	pop	ar3
   08E3 D0 02               962 	pop	ar2
                            963 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:146: if(!sm->stateMachineInitialized)
   08E5 74 13               964 	mov	a,#0x13
   08E7 2A                  965 	add	a,r2
   08E8 FD                  966 	mov	r5,a
   08E9 E4                  967 	clr	a
   08EA 3B                  968 	addc	a,r3
   08EB FE                  969 	mov	r6,a
   08EC 8C 07               970 	mov	ar7,r4
   08EE 8D 82               971 	mov	dpl,r5
   08F0 8E 83               972 	mov	dph,r6
   08F2 8F F0               973 	mov	b,r7
   08F4 12 3E 7B            974 	lcall	__gptrget
   08F7 60 03               975 	jz	00201$
   08F9 02 09 90            976 	ljmp	00174$
   08FC                     977 00201$:
                            978 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:148: printf("\t\tinitializing...\n") ;
   08FC C0 02               979 	push	ar2
   08FE C0 03               980 	push	ar3
   0900 C0 04               981 	push	ar4
   0902 74 18               982 	mov	a,#__str_6
   0904 C0 E0               983 	push	acc
   0906 74 3F               984 	mov	a,#(__str_6 >> 8)
   0908 C0 E0               985 	push	acc
   090A 74 80               986 	mov	a,#0x80
   090C C0 E0               987 	push	acc
   090E 12 36 2F            988 	lcall	_printf
   0911 15 81               989 	dec	sp
   0913 15 81               990 	dec	sp
   0915 15 81               991 	dec	sp
   0917 D0 04               992 	pop	ar4
   0919 D0 03               993 	pop	ar3
   091B D0 02               994 	pop	ar2
                            995 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:150: sm->currentState = (state_t*)sm->topState ;
   091D 74 06               996 	mov	a,#0x06
   091F 2A                  997 	add	a,r2
   0920 F5 2A               998 	mov	_iterateStateMachine_sloc0_1_0,a
   0922 E4                  999 	clr	a
   0923 3B                 1000 	addc	a,r3
   0924 F5 2B              1001 	mov	(_iterateStateMachine_sloc0_1_0 + 1),a
   0926 8C 2C              1002 	mov	(_iterateStateMachine_sloc0_1_0 + 2),r4
   0928 8A 82              1003 	mov	dpl,r2
   092A 8B 83              1004 	mov	dph,r3
   092C 8C F0              1005 	mov	b,r4
   092E 12 3E 7B           1006 	lcall	__gptrget
   0931 F8                 1007 	mov	r0,a
   0932 A3                 1008 	inc	dptr
   0933 12 3E 7B           1009 	lcall	__gptrget
   0936 F9                 1010 	mov	r1,a
   0937 7D 80              1011 	mov	r5,#0x80
   0939 85 2A 82           1012 	mov	dpl,_iterateStateMachine_sloc0_1_0
   093C 85 2B 83           1013 	mov	dph,(_iterateStateMachine_sloc0_1_0 + 1)
   093F 85 2C F0           1014 	mov	b,(_iterateStateMachine_sloc0_1_0 + 2)
   0942 E8                 1015 	mov	a,r0
   0943 12 32 6F           1016 	lcall	__gptrput
   0946 A3                 1017 	inc	dptr
   0947 E9                 1018 	mov	a,r1
   0948 12 32 6F           1019 	lcall	__gptrput
   094B A3                 1020 	inc	dptr
   094C ED                 1021 	mov	a,r5
   094D 12 32 6F           1022 	lcall	__gptrput
                           1023 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:152: callStateHandler(sm, sm->currentState, &enterEvent) ;
   0950 90 00 C4           1024 	mov	dptr,#_callStateHandler_PARM_2
   0953 E8                 1025 	mov	a,r0
   0954 F0                 1026 	movx	@dptr,a
   0955 A3                 1027 	inc	dptr
   0956 E9                 1028 	mov	a,r1
   0957 F0                 1029 	movx	@dptr,a
   0958 A3                 1030 	inc	dptr
   0959 ED                 1031 	mov	a,r5
   095A F0                 1032 	movx	@dptr,a
   095B 90 00 C7           1033 	mov	dptr,#_callStateHandler_PARM_3
   095E 74 D1              1034 	mov	a,#_iterateStateMachine_enterEvent_1_1
   0960 F0                 1035 	movx	@dptr,a
   0961 A3                 1036 	inc	dptr
   0962 74 00              1037 	mov	a,#(_iterateStateMachine_enterEvent_1_1 >> 8)
   0964 F0                 1038 	movx	@dptr,a
   0965 A3                 1039 	inc	dptr
   0966 E4                 1040 	clr	a
   0967 F0                 1041 	movx	@dptr,a
   0968 8A 82              1042 	mov	dpl,r2
   096A 8B 83              1043 	mov	dph,r3
   096C 8C F0              1044 	mov	b,r4
   096E 12 06 D5           1045 	lcall	_callStateHandler
                           1046 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:154: sm->stateMachineInitialized = true ;
   0971 90 00 CD           1047 	mov	dptr,#_iterateStateMachine_sm_1_1
   0974 E0                 1048 	movx	a,@dptr
   0975 FA                 1049 	mov	r2,a
   0976 A3                 1050 	inc	dptr
   0977 E0                 1051 	movx	a,@dptr
   0978 FB                 1052 	mov	r3,a
   0979 A3                 1053 	inc	dptr
   097A E0                 1054 	movx	a,@dptr
   097B FC                 1055 	mov	r4,a
   097C 74 13              1056 	mov	a,#0x13
   097E 2A                 1057 	add	a,r2
   097F FA                 1058 	mov	r2,a
   0980 E4                 1059 	clr	a
   0981 3B                 1060 	addc	a,r3
   0982 FB                 1061 	mov	r3,a
   0983 8A 82              1062 	mov	dpl,r2
   0985 8B 83              1063 	mov	dph,r3
   0987 8C F0              1064 	mov	b,r4
   0989 74 01              1065 	mov	a,#0x01
   098B 12 32 6F           1066 	lcall	__gptrput
                           1067 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:156: forceTransition = true ;
   098E D2 00              1068 	setb	_iterateStateMachine_forceTransition_1_1
                           1069 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:161: while((!isEmpty(&sm->eventQueue)) || (forceTransition))
   0990                    1070 00174$:
   0990 90 00 CD           1071 	mov	dptr,#_iterateStateMachine_sm_1_1
   0993 E0                 1072 	movx	a,@dptr
   0994 F5 42              1073 	mov	_iterateStateMachine_sloc8_1_0,a
   0996 A3                 1074 	inc	dptr
   0997 E0                 1075 	movx	a,@dptr
   0998 F5 43              1076 	mov	(_iterateStateMachine_sloc8_1_0 + 1),a
   099A A3                 1077 	inc	dptr
   099B E0                 1078 	movx	a,@dptr
   099C F5 44              1079 	mov	(_iterateStateMachine_sloc8_1_0 + 2),a
   099E 74 06              1080 	mov	a,#0x06
   09A0 25 42              1081 	add	a,_iterateStateMachine_sloc8_1_0
   09A2 FD                 1082 	mov	r5,a
   09A3 E4                 1083 	clr	a
   09A4 35 43              1084 	addc	a,(_iterateStateMachine_sloc8_1_0 + 1)
   09A6 FE                 1085 	mov	r6,a
   09A7 AF 44              1086 	mov	r7,(_iterateStateMachine_sloc8_1_0 + 2)
   09A9 85 42 2A           1087 	mov	_iterateStateMachine_sloc0_1_0,_iterateStateMachine_sloc8_1_0
   09AC 85 43 2B           1088 	mov	(_iterateStateMachine_sloc0_1_0 + 1),(_iterateStateMachine_sloc8_1_0 + 1)
   09AF 85 44 2C           1089 	mov	(_iterateStateMachine_sloc0_1_0 + 2),(_iterateStateMachine_sloc8_1_0 + 2)
   09B2 85 42 2D           1090 	mov	_iterateStateMachine_sloc1_1_0,_iterateStateMachine_sloc8_1_0
   09B5 85 43 2E           1091 	mov	(_iterateStateMachine_sloc1_1_0 + 1),(_iterateStateMachine_sloc8_1_0 + 1)
   09B8 85 44 2F           1092 	mov	(_iterateStateMachine_sloc1_1_0 + 2),(_iterateStateMachine_sloc8_1_0 + 2)
   09BB 85 42 30           1093 	mov	_iterateStateMachine_sloc2_1_0,_iterateStateMachine_sloc8_1_0
   09BE 85 43 31           1094 	mov	(_iterateStateMachine_sloc2_1_0 + 1),(_iterateStateMachine_sloc8_1_0 + 1)
   09C1 85 44 32           1095 	mov	(_iterateStateMachine_sloc2_1_0 + 2),(_iterateStateMachine_sloc8_1_0 + 2)
   09C4 74 09              1096 	mov	a,#0x09
   09C6 25 42              1097 	add	a,_iterateStateMachine_sloc8_1_0
   09C8 F5 33              1098 	mov	_iterateStateMachine_sloc3_1_0,a
   09CA E4                 1099 	clr	a
   09CB 35 43              1100 	addc	a,(_iterateStateMachine_sloc8_1_0 + 1)
   09CD F5 34              1101 	mov	(_iterateStateMachine_sloc3_1_0 + 1),a
   09CF 85 44 35           1102 	mov	(_iterateStateMachine_sloc3_1_0 + 2),(_iterateStateMachine_sloc8_1_0 + 2)
   09D2 85 42 36           1103 	mov	_iterateStateMachine_sloc4_1_0,_iterateStateMachine_sloc8_1_0
   09D5 85 43 37           1104 	mov	(_iterateStateMachine_sloc4_1_0 + 1),(_iterateStateMachine_sloc8_1_0 + 1)
   09D8 85 44 38           1105 	mov	(_iterateStateMachine_sloc4_1_0 + 2),(_iterateStateMachine_sloc8_1_0 + 2)
   09DB 85 42 39           1106 	mov	_iterateStateMachine_sloc5_1_0,_iterateStateMachine_sloc8_1_0
   09DE 85 43 3A           1107 	mov	(_iterateStateMachine_sloc5_1_0 + 1),(_iterateStateMachine_sloc8_1_0 + 1)
   09E1 85 44 3B           1108 	mov	(_iterateStateMachine_sloc5_1_0 + 2),(_iterateStateMachine_sloc8_1_0 + 2)
   09E4 85 42 3C           1109 	mov	_iterateStateMachine_sloc6_1_0,_iterateStateMachine_sloc8_1_0
   09E7 85 43 3D           1110 	mov	(_iterateStateMachine_sloc6_1_0 + 1),(_iterateStateMachine_sloc8_1_0 + 1)
   09EA 85 44 3E           1111 	mov	(_iterateStateMachine_sloc6_1_0 + 2),(_iterateStateMachine_sloc8_1_0 + 2)
   09ED                    1112 00159$:
   09ED C0 05              1113 	push	ar5
   09EF C0 06              1114 	push	ar6
   09F1 C0 07              1115 	push	ar7
   09F3 74 0C              1116 	mov	a,#0x0C
   09F5 25 2D              1117 	add	a,_iterateStateMachine_sloc1_1_0
   09F7 F8                 1118 	mov	r0,a
   09F8 E4                 1119 	clr	a
   09F9 35 2E              1120 	addc	a,(_iterateStateMachine_sloc1_1_0 + 1)
   09FB F9                 1121 	mov	r1,a
   09FC AD 2F              1122 	mov	r5,(_iterateStateMachine_sloc1_1_0 + 2)
   09FE 88 82              1123 	mov	dpl,r0
   0A00 89 83              1124 	mov	dph,r1
   0A02 8D F0              1125 	mov	b,r5
   0A04 C0 05              1126 	push	ar5
   0A06 C0 06              1127 	push	ar6
   0A08 C0 07              1128 	push	ar7
   0A0A 12 01 8B           1129 	lcall	_isEmpty
   0A0D E5 82              1130 	mov	a,dpl
   0A0F D0 07              1131 	pop	ar7
   0A11 D0 06              1132 	pop	ar6
   0A13 D0 05              1133 	pop	ar5
   0A15 D0 07              1134 	pop	ar7
   0A17 D0 06              1135 	pop	ar6
   0A19 D0 05              1136 	pop	ar5
   0A1B 60 06              1137 	jz	00160$
   0A1D 20 00 03           1138 	jb	_iterateStateMachine_forceTransition_1_1,00203$
   0A20 02 17 35           1139 	ljmp	00161$
   0A23                    1140 00203$:
   0A23                    1141 00160$:
                           1142 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:164: state_t*				stateBeingProcessed	= sm->currentState ;
   0A23 8D 82              1143 	mov	dpl,r5
   0A25 8E 83              1144 	mov	dph,r6
   0A27 8F F0              1145 	mov	b,r7
   0A29 12 3E 7B           1146 	lcall	__gptrget
   0A2C F8                 1147 	mov	r0,a
   0A2D A3                 1148 	inc	dptr
   0A2E 12 3E 7B           1149 	lcall	__gptrget
   0A31 F9                 1150 	mov	r1,a
   0A32 A3                 1151 	inc	dptr
   0A33 12 3E 7B           1152 	lcall	__gptrget
   0A36 FA                 1153 	mov	r2,a
   0A37 90 00 D8           1154 	mov	dptr,#_iterateStateMachine_stateBeingProcessed_2_3
   0A3A E8                 1155 	mov	a,r0
   0A3B F0                 1156 	movx	@dptr,a
   0A3C A3                 1157 	inc	dptr
   0A3D E9                 1158 	mov	a,r1
   0A3E F0                 1159 	movx	@dptr,a
   0A3F A3                 1160 	inc	dptr
   0A40 EA                 1161 	mov	a,r2
   0A41 F0                 1162 	movx	@dptr,a
                           1163 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:167: if(forceTransition)
                           1164 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:169: forceTransition = false ;
   0A42 10 00 02           1165 	jbc	_iterateStateMachine_forceTransition_1_1,00204$
   0A45 80 0F              1166 	sjmp	00104$
   0A47                    1167 00204$:
                           1168 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:170: eventToProcess = &initialTransitionEvent ;
   0A47 90 00 D5           1169 	mov	dptr,#_iterateStateMachine_eventToProcess_2_3
   0A4A 74 D0              1170 	mov	a,#_iterateStateMachine_initialTransitionEvent_1_1
   0A4C F0                 1171 	movx	@dptr,a
   0A4D A3                 1172 	inc	dptr
   0A4E 74 00              1173 	mov	a,#(_iterateStateMachine_initialTransitionEvent_1_1 >> 8)
   0A50 F0                 1174 	movx	@dptr,a
   0A51 A3                 1175 	inc	dptr
   0A52 E4                 1176 	clr	a
   0A53 F0                 1177 	movx	@dptr,a
   0A54 80 31              1178 	sjmp	00105$
   0A56                    1179 00104$:
                           1180 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:174: eventToProcess = Remove(&sm->eventQueue) ; ;
   0A56 C0 05              1181 	push	ar5
   0A58 C0 06              1182 	push	ar6
   0A5A C0 07              1183 	push	ar7
   0A5C 74 0C              1184 	mov	a,#0x0C
   0A5E 25 42              1185 	add	a,_iterateStateMachine_sloc8_1_0
   0A60 F8                 1186 	mov	r0,a
   0A61 E4                 1187 	clr	a
   0A62 35 43              1188 	addc	a,(_iterateStateMachine_sloc8_1_0 + 1)
   0A64 F9                 1189 	mov	r1,a
   0A65 AD 44              1190 	mov	r5,(_iterateStateMachine_sloc8_1_0 + 2)
   0A67 88 82              1191 	mov	dpl,r0
   0A69 89 83              1192 	mov	dph,r1
   0A6B 8D F0              1193 	mov	b,r5
   0A6D 12 04 6F           1194 	lcall	_Remove
   0A70 AD 82              1195 	mov	r5,dpl
   0A72 AE 83              1196 	mov	r6,dph
   0A74 AF F0              1197 	mov	r7,b
   0A76 90 00 D5           1198 	mov	dptr,#_iterateStateMachine_eventToProcess_2_3
   0A79 ED                 1199 	mov	a,r5
   0A7A F0                 1200 	movx	@dptr,a
   0A7B A3                 1201 	inc	dptr
   0A7C EE                 1202 	mov	a,r6
   0A7D F0                 1203 	movx	@dptr,a
   0A7E A3                 1204 	inc	dptr
   0A7F EF                 1205 	mov	a,r7
   0A80 F0                 1206 	movx	@dptr,a
                           1207 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:399: printf("\t\tEvent queue empty.\n") ;
   0A81 D0 07              1208 	pop	ar7
   0A83 D0 06              1209 	pop	ar6
   0A85 D0 05              1210 	pop	ar5
                           1211 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:174: eventToProcess = Remove(&sm->eventQueue) ; ;
   0A87                    1212 00105$:
                           1213 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:177: sm->nextState = (state_t*)0 ;	/* just a little housecleaning */
   0A87 C0 05              1214 	push	ar5
   0A89 C0 06              1215 	push	ar6
   0A8B C0 07              1216 	push	ar7
   0A8D 74 09              1217 	mov	a,#0x09
   0A8F 25 2A              1218 	add	a,_iterateStateMachine_sloc0_1_0
   0A91 F8                 1219 	mov	r0,a
   0A92 E4                 1220 	clr	a
   0A93 35 2B              1221 	addc	a,(_iterateStateMachine_sloc0_1_0 + 1)
   0A95 F9                 1222 	mov	r1,a
   0A96 AD 2C              1223 	mov	r5,(_iterateStateMachine_sloc0_1_0 + 2)
   0A98 88 82              1224 	mov	dpl,r0
   0A9A 89 83              1225 	mov	dph,r1
   0A9C 8D F0              1226 	mov	b,r5
   0A9E E4                 1227 	clr	a
   0A9F 12 32 6F           1228 	lcall	__gptrput
   0AA2 A3                 1229 	inc	dptr
   0AA3 E4                 1230 	clr	a
   0AA4 12 32 6F           1231 	lcall	__gptrput
   0AA7 A3                 1232 	inc	dptr
   0AA8 E4                 1233 	clr	a
   0AA9 12 32 6F           1234 	lcall	__gptrput
                           1235 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:179: if(iterationMax-- == 0)
   0AAC 90 00 D3           1236 	mov	dptr,#_iterateStateMachine_iterationMax_1_1
   0AAF E0                 1237 	movx	a,@dptr
   0AB0 FD                 1238 	mov	r5,a
   0AB1 A3                 1239 	inc	dptr
   0AB2 E0                 1240 	movx	a,@dptr
   0AB3 FE                 1241 	mov	r6,a
   0AB4 ED                 1242 	mov	a,r5
   0AB5 24 FF              1243 	add	a,#0xff
   0AB7 FF                 1244 	mov	r7,a
   0AB8 EE                 1245 	mov	a,r6
   0AB9 34 FF              1246 	addc	a,#0xff
   0ABB F8                 1247 	mov	r0,a
   0ABC 90 00 D3           1248 	mov	dptr,#_iterateStateMachine_iterationMax_1_1
   0ABF EF                 1249 	mov	a,r7
   0AC0 F0                 1250 	movx	@dptr,a
   0AC1 A3                 1251 	inc	dptr
   0AC2 E8                 1252 	mov	a,r0
   0AC3 F0                 1253 	movx	@dptr,a
   0AC4 ED                 1254 	mov	a,r5
   0AC5 4E                 1255 	orl	a,r6
   0AC6 D0 07              1256 	pop	ar7
   0AC8 D0 06              1257 	pop	ar6
   0ACA D0 05              1258 	pop	ar5
   0ACC 70 03              1259 	jnz	00205$
   0ACE 02 17 35           1260 	ljmp	00161$
   0AD1                    1261 00205$:
                           1262 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:184: printf("\t\tProcessing event...\n") ;
   0AD1 C0 05              1263 	push	ar5
   0AD3 C0 06              1264 	push	ar6
   0AD5 C0 07              1265 	push	ar7
   0AD7 74 2B              1266 	mov	a,#__str_7
   0AD9 C0 E0              1267 	push	acc
   0ADB 74 3F              1268 	mov	a,#(__str_7 >> 8)
   0ADD C0 E0              1269 	push	acc
   0ADF 74 80              1270 	mov	a,#0x80
   0AE1 C0 E0              1271 	push	acc
   0AE3 12 36 2F           1272 	lcall	_printf
   0AE6 15 81              1273 	dec	sp
   0AE8 15 81              1274 	dec	sp
   0AEA 15 81              1275 	dec	sp
   0AEC D0 07              1276 	pop	ar7
   0AEE D0 06              1277 	pop	ar6
   0AF0 D0 05              1278 	pop	ar5
                           1279 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:192: do
   0AF2 90 00 D5           1280 	mov	dptr,#_iterateStateMachine_eventToProcess_2_3
   0AF5 E0                 1281 	movx	a,@dptr
   0AF6 F5 3F              1282 	mov	_iterateStateMachine_sloc7_1_0,a
   0AF8 A3                 1283 	inc	dptr
   0AF9 E0                 1284 	movx	a,@dptr
   0AFA F5 40              1285 	mov	(_iterateStateMachine_sloc7_1_0 + 1),a
   0AFC A3                 1286 	inc	dptr
   0AFD E0                 1287 	movx	a,@dptr
   0AFE F5 41              1288 	mov	(_iterateStateMachine_sloc7_1_0 + 2),a
   0B00                    1289 00112$:
                           1290 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:194: action = callStateHandler(sm, stateBeingProcessed, eventToProcess) ;
   0B00 C0 05              1291 	push	ar5
   0B02 C0 06              1292 	push	ar6
   0B04 C0 07              1293 	push	ar7
   0B06 90 00 CD           1294 	mov	dptr,#_iterateStateMachine_sm_1_1
   0B09 E0                 1295 	movx	a,@dptr
   0B0A F8                 1296 	mov	r0,a
   0B0B A3                 1297 	inc	dptr
   0B0C E0                 1298 	movx	a,@dptr
   0B0D F9                 1299 	mov	r1,a
   0B0E A3                 1300 	inc	dptr
   0B0F E0                 1301 	movx	a,@dptr
   0B10 FD                 1302 	mov	r5,a
   0B11 90 00 D8           1303 	mov	dptr,#_iterateStateMachine_stateBeingProcessed_2_3
   0B14 E0                 1304 	movx	a,@dptr
   0B15 F5 45              1305 	mov	_iterateStateMachine_sloc9_1_0,a
   0B17 A3                 1306 	inc	dptr
   0B18 E0                 1307 	movx	a,@dptr
   0B19 F5 46              1308 	mov	(_iterateStateMachine_sloc9_1_0 + 1),a
   0B1B A3                 1309 	inc	dptr
   0B1C E0                 1310 	movx	a,@dptr
   0B1D F5 47              1311 	mov	(_iterateStateMachine_sloc9_1_0 + 2),a
   0B1F 90 00 D5           1312 	mov	dptr,#_iterateStateMachine_eventToProcess_2_3
   0B22 E0                 1313 	movx	a,@dptr
   0B23 FB                 1314 	mov	r3,a
   0B24 A3                 1315 	inc	dptr
   0B25 E0                 1316 	movx	a,@dptr
   0B26 FC                 1317 	mov	r4,a
   0B27 A3                 1318 	inc	dptr
   0B28 E0                 1319 	movx	a,@dptr
   0B29 FA                 1320 	mov	r2,a
   0B2A 90 00 C4           1321 	mov	dptr,#_callStateHandler_PARM_2
   0B2D E5 45              1322 	mov	a,_iterateStateMachine_sloc9_1_0
   0B2F F0                 1323 	movx	@dptr,a
   0B30 A3                 1324 	inc	dptr
   0B31 E5 46              1325 	mov	a,(_iterateStateMachine_sloc9_1_0 + 1)
   0B33 F0                 1326 	movx	@dptr,a
   0B34 A3                 1327 	inc	dptr
   0B35 E5 47              1328 	mov	a,(_iterateStateMachine_sloc9_1_0 + 2)
   0B37 F0                 1329 	movx	@dptr,a
   0B38 90 00 C7           1330 	mov	dptr,#_callStateHandler_PARM_3
   0B3B EB                 1331 	mov	a,r3
   0B3C F0                 1332 	movx	@dptr,a
   0B3D A3                 1333 	inc	dptr
   0B3E EC                 1334 	mov	a,r4
   0B3F F0                 1335 	movx	@dptr,a
   0B40 A3                 1336 	inc	dptr
   0B41 EA                 1337 	mov	a,r2
   0B42 F0                 1338 	movx	@dptr,a
   0B43 88 82              1339 	mov	dpl,r0
   0B45 89 83              1340 	mov	dph,r1
   0B47 8D F0              1341 	mov	b,r5
   0B49 C0 05              1342 	push	ar5
   0B4B C0 06              1343 	push	ar6
   0B4D C0 07              1344 	push	ar7
   0B4F 12 06 D5           1345 	lcall	_callStateHandler
   0B52 85 82 45           1346 	mov	_iterateStateMachine_sloc9_1_0,dpl
   0B55 D0 07              1347 	pop	ar7
   0B57 D0 06              1348 	pop	ar6
   0B59 D0 05              1349 	pop	ar5
                           1350 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:196: if((action == IGNORED) && (eventToProcess->eventType > SUBSTATE_EXIT))
   0B5B D0 07              1351 	pop	ar7
   0B5D D0 06              1352 	pop	ar6
   0B5F D0 05              1353 	pop	ar5
   0B61 E5 45              1354 	mov	a,_iterateStateMachine_sloc9_1_0
   0B63 60 03              1355 	jz	00206$
   0B65 02 0C 13           1356 	ljmp	00114$
   0B68                    1357 00206$:
   0B68 85 3F 82           1358 	mov	dpl,_iterateStateMachine_sloc7_1_0
   0B6B 85 40 83           1359 	mov	dph,(_iterateStateMachine_sloc7_1_0 + 1)
   0B6E 85 41 F0           1360 	mov	b,(_iterateStateMachine_sloc7_1_0 + 2)
   0B71 12 3E 7B           1361 	lcall	__gptrget
   0B74 FA                 1362 	mov  r2,a
   0B75 24 FC              1363 	add	a,#0xff - 0x03
   0B77 40 03              1364 	jc	00207$
   0B79 02 0C 13           1365 	ljmp	00114$
   0B7C                    1366 00207$:
                           1367 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:198: stateBeingProcessed = (state_t*)(stateBeingProcessed->parent) ;
   0B7C 90 00 D8           1368 	mov	dptr,#_iterateStateMachine_stateBeingProcessed_2_3
   0B7F E0                 1369 	movx	a,@dptr
   0B80 FA                 1370 	mov	r2,a
   0B81 A3                 1371 	inc	dptr
   0B82 E0                 1372 	movx	a,@dptr
   0B83 FB                 1373 	mov	r3,a
   0B84 A3                 1374 	inc	dptr
   0B85 E0                 1375 	movx	a,@dptr
   0B86 FC                 1376 	mov	r4,a
   0B87 8A 82              1377 	mov	dpl,r2
   0B89 8B 83              1378 	mov	dph,r3
   0B8B 8C F0              1379 	mov	b,r4
   0B8D 12 3E 7B           1380 	lcall	__gptrget
   0B90 FA                 1381 	mov	r2,a
   0B91 A3                 1382 	inc	dptr
   0B92 12 3E 7B           1383 	lcall	__gptrget
   0B95 FB                 1384 	mov	r3,a
   0B96 A3                 1385 	inc	dptr
   0B97 12 3E 7B           1386 	lcall	__gptrget
   0B9A FC                 1387 	mov	r4,a
   0B9B 90 00 D8           1388 	mov	dptr,#_iterateStateMachine_stateBeingProcessed_2_3
   0B9E EA                 1389 	mov	a,r2
   0B9F F0                 1390 	movx	@dptr,a
   0BA0 A3                 1391 	inc	dptr
   0BA1 EB                 1392 	mov	a,r3
   0BA2 F0                 1393 	movx	@dptr,a
   0BA3 A3                 1394 	inc	dptr
   0BA4 EC                 1395 	mov	a,r4
   0BA5 F0                 1396 	movx	@dptr,a
                           1397 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:200: printf("\t\t\t\t\t\t\tmoving to parent: %s\n", stateBeingProcessed ? stateBeingProcessed->stateName : "<root>") ;
   0BA6 90 00 D8           1398 	mov	dptr,#_iterateStateMachine_stateBeingProcessed_2_3
   0BA9 E0                 1399 	movx	a,@dptr
   0BAA FA                 1400 	mov	r2,a
   0BAB A3                 1401 	inc	dptr
   0BAC E0                 1402 	movx	a,@dptr
   0BAD FB                 1403 	mov	r3,a
   0BAE A3                 1404 	inc	dptr
   0BAF E0                 1405 	movx	a,@dptr
   0BB0 FC                 1406 	mov	r4,a
   0BB1 EA                 1407 	mov	a,r2
   0BB2 4B                 1408 	orl	a,r3
   0BB3 4C                 1409 	orl	a,r4
   0BB4 60 1D              1410 	jz	00164$
   0BB6 74 06              1411 	mov	a,#0x06
   0BB8 2A                 1412 	add	a,r2
   0BB9 FA                 1413 	mov	r2,a
   0BBA E4                 1414 	clr	a
   0BBB 3B                 1415 	addc	a,r3
   0BBC FB                 1416 	mov	r3,a
   0BBD 8A 82              1417 	mov	dpl,r2
   0BBF 8B 83              1418 	mov	dph,r3
   0BC1 8C F0              1419 	mov	b,r4
   0BC3 12 3E 7B           1420 	lcall	__gptrget
   0BC6 FA                 1421 	mov	r2,a
   0BC7 A3                 1422 	inc	dptr
   0BC8 12 3E 7B           1423 	lcall	__gptrget
   0BCB FB                 1424 	mov	r3,a
   0BCC A3                 1425 	inc	dptr
   0BCD 12 3E 7B           1426 	lcall	__gptrget
   0BD0 FC                 1427 	mov	r4,a
   0BD1 80 06              1428 	sjmp	00165$
   0BD3                    1429 00164$:
   0BD3 7A 5F              1430 	mov	r2,#__str_9
   0BD5 7B 3F              1431 	mov	r3,#(__str_9 >> 8)
   0BD7 7C 80              1432 	mov	r4,#0x80
   0BD9                    1433 00165$:
   0BD9 C0 05              1434 	push	ar5
   0BDB C0 06              1435 	push	ar6
   0BDD C0 07              1436 	push	ar7
   0BDF C0 02              1437 	push	ar2
   0BE1 C0 03              1438 	push	ar3
   0BE3 C0 04              1439 	push	ar4
   0BE5 74 42              1440 	mov	a,#__str_8
   0BE7 C0 E0              1441 	push	acc
   0BE9 74 3F              1442 	mov	a,#(__str_8 >> 8)
   0BEB C0 E0              1443 	push	acc
   0BED 74 80              1444 	mov	a,#0x80
   0BEF C0 E0              1445 	push	acc
   0BF1 12 36 2F           1446 	lcall	_printf
   0BF4 E5 81              1447 	mov	a,sp
   0BF6 24 FA              1448 	add	a,#0xfa
   0BF8 F5 81              1449 	mov	sp,a
   0BFA D0 07              1450 	pop	ar7
   0BFC D0 06              1451 	pop	ar6
   0BFE D0 05              1452 	pop	ar5
                           1453 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:209: } while(stateBeingProcessed) ;
   0C00 90 00 D8           1454 	mov	dptr,#_iterateStateMachine_stateBeingProcessed_2_3
   0C03 E0                 1455 	movx	a,@dptr
   0C04 FA                 1456 	mov	r2,a
   0C05 A3                 1457 	inc	dptr
   0C06 E0                 1458 	movx	a,@dptr
   0C07 FB                 1459 	mov	r3,a
   0C08 A3                 1460 	inc	dptr
   0C09 E0                 1461 	movx	a,@dptr
   0C0A FC                 1462 	mov	r4,a
   0C0B EA                 1463 	mov	a,r2
   0C0C 4B                 1464 	orl	a,r3
   0C0D 4C                 1465 	orl	a,r4
   0C0E 60 03              1466 	jz	00209$
   0C10 02 0B 00           1467 	ljmp	00112$
   0C13                    1468 00209$:
   0C13                    1469 00114$:
                           1470 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:211: if(action == TRANSITION)
   0C13 74 02              1471 	mov	a,#0x02
   0C15 B5 45 02           1472 	cjne	a,_iterateStateMachine_sloc9_1_0,00210$
   0C18 80 03              1473 	sjmp	00211$
   0C1A                    1474 00210$:
   0C1A 02 09 ED           1475 	ljmp	00159$
   0C1D                    1476 00211$:
                           1477 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:213: state_t*	source	= sm->currentState ;
   0C1D 74 06              1478 	mov	a,#0x06
   0C1F 25 30              1479 	add	a,_iterateStateMachine_sloc2_1_0
   0C21 FA                 1480 	mov	r2,a
   0C22 E4                 1481 	clr	a
   0C23 35 31              1482 	addc	a,(_iterateStateMachine_sloc2_1_0 + 1)
   0C25 FB                 1483 	mov	r3,a
   0C26 AC 32              1484 	mov	r4,(_iterateStateMachine_sloc2_1_0 + 2)
   0C28 8A 82              1485 	mov	dpl,r2
   0C2A 8B 83              1486 	mov	dph,r3
   0C2C 8C F0              1487 	mov	b,r4
   0C2E 12 3E 7B           1488 	lcall	__gptrget
   0C31 F5 45              1489 	mov	_iterateStateMachine_sloc9_1_0,a
   0C33 A3                 1490 	inc	dptr
   0C34 12 3E 7B           1491 	lcall	__gptrget
   0C37 F5 46              1492 	mov	(_iterateStateMachine_sloc9_1_0 + 1),a
   0C39 A3                 1493 	inc	dptr
   0C3A 12 3E 7B           1494 	lcall	__gptrget
   0C3D F5 47              1495 	mov	(_iterateStateMachine_sloc9_1_0 + 2),a
                           1496 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:214: state_t*	target	= sm->nextState ;
   0C3F 85 33 82           1497 	mov	dpl,_iterateStateMachine_sloc3_1_0
   0C42 85 34 83           1498 	mov	dph,(_iterateStateMachine_sloc3_1_0 + 1)
   0C45 85 35 F0           1499 	mov	b,(_iterateStateMachine_sloc3_1_0 + 2)
   0C48 12 3E 7B           1500 	lcall	__gptrget
   0C4B F5 3F              1501 	mov	_iterateStateMachine_sloc7_1_0,a
   0C4D A3                 1502 	inc	dptr
   0C4E 12 3E 7B           1503 	lcall	__gptrget
   0C51 F5 40              1504 	mov	(_iterateStateMachine_sloc7_1_0 + 1),a
   0C53 A3                 1505 	inc	dptr
   0C54 12 3E 7B           1506 	lcall	__gptrget
   0C57 F5 41              1507 	mov	(_iterateStateMachine_sloc7_1_0 + 2),a
                           1508 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:218: if(source == target)
   0C59 E5 3F              1509 	mov	a,_iterateStateMachine_sloc7_1_0
   0C5B B5 45 0C           1510 	cjne	a,_iterateStateMachine_sloc9_1_0,00212$
   0C5E E5 40              1511 	mov	a,(_iterateStateMachine_sloc7_1_0 + 1)
   0C60 B5 46 07           1512 	cjne	a,(_iterateStateMachine_sloc9_1_0 + 1),00212$
   0C63 E5 41              1513 	mov	a,(_iterateStateMachine_sloc7_1_0 + 2)
   0C65 B5 47 02           1514 	cjne	a,(_iterateStateMachine_sloc9_1_0 + 2),00212$
   0C68 80 03              1515 	sjmp	00213$
   0C6A                    1516 00212$:
   0C6A 02 0D 27           1517 	ljmp	00154$
   0C6D                    1518 00213$:
                           1519 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:220: printf("\t\t\t\tSelf transition.\n") ;
   0C6D C0 05              1520 	push	ar5
   0C6F C0 06              1521 	push	ar6
   0C71 C0 07              1522 	push	ar7
   0C73 C0 05              1523 	push	ar5
   0C75 C0 06              1524 	push	ar6
   0C77 C0 07              1525 	push	ar7
   0C79 74 66              1526 	mov	a,#__str_10
   0C7B C0 E0              1527 	push	acc
   0C7D 74 3F              1528 	mov	a,#(__str_10 >> 8)
   0C7F C0 E0              1529 	push	acc
   0C81 74 80              1530 	mov	a,#0x80
   0C83 C0 E0              1531 	push	acc
   0C85 12 36 2F           1532 	lcall	_printf
   0C88 15 81              1533 	dec	sp
   0C8A 15 81              1534 	dec	sp
   0C8C 15 81              1535 	dec	sp
                           1536 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:224: callStateHandler(sm, source, &exitEvent) ;
   0C8E 90 00 C4           1537 	mov	dptr,#_callStateHandler_PARM_2
   0C91 E5 45              1538 	mov	a,_iterateStateMachine_sloc9_1_0
   0C93 F0                 1539 	movx	@dptr,a
   0C94 A3                 1540 	inc	dptr
   0C95 E5 46              1541 	mov	a,(_iterateStateMachine_sloc9_1_0 + 1)
   0C97 F0                 1542 	movx	@dptr,a
   0C98 A3                 1543 	inc	dptr
   0C99 E5 47              1544 	mov	a,(_iterateStateMachine_sloc9_1_0 + 2)
   0C9B F0                 1545 	movx	@dptr,a
   0C9C 90 00 C7           1546 	mov	dptr,#_callStateHandler_PARM_3
   0C9F 74 D2              1547 	mov	a,#_iterateStateMachine_exitEvent_1_1
   0CA1 F0                 1548 	movx	@dptr,a
   0CA2 A3                 1549 	inc	dptr
   0CA3 74 00              1550 	mov	a,#(_iterateStateMachine_exitEvent_1_1 >> 8)
   0CA5 F0                 1551 	movx	@dptr,a
   0CA6 A3                 1552 	inc	dptr
   0CA7 E4                 1553 	clr	a
   0CA8 F0                 1554 	movx	@dptr,a
   0CA9 85 30 82           1555 	mov	dpl,_iterateStateMachine_sloc2_1_0
   0CAC 85 31 83           1556 	mov	dph,(_iterateStateMachine_sloc2_1_0 + 1)
   0CAF 85 32 F0           1557 	mov	b,(_iterateStateMachine_sloc2_1_0 + 2)
   0CB2 12 06 D5           1558 	lcall	_callStateHandler
   0CB5 D0 07              1559 	pop	ar7
   0CB7 D0 06              1560 	pop	ar6
   0CB9 D0 05              1561 	pop	ar5
                           1562 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:225: sm->currentState = target ;
   0CBB 90 00 CD           1563 	mov	dptr,#_iterateStateMachine_sm_1_1
   0CBE E0                 1564 	movx	a,@dptr
   0CBF F5 48              1565 	mov	_iterateStateMachine_sloc10_1_0,a
   0CC1 A3                 1566 	inc	dptr
   0CC2 E0                 1567 	movx	a,@dptr
   0CC3 F5 49              1568 	mov	(_iterateStateMachine_sloc10_1_0 + 1),a
   0CC5 A3                 1569 	inc	dptr
   0CC6 E0                 1570 	movx	a,@dptr
   0CC7 F5 4A              1571 	mov	(_iterateStateMachine_sloc10_1_0 + 2),a
   0CC9 74 06              1572 	mov	a,#0x06
   0CCB 25 48              1573 	add	a,_iterateStateMachine_sloc10_1_0
   0CCD FE                 1574 	mov	r6,a
   0CCE E4                 1575 	clr	a
   0CCF 35 49              1576 	addc	a,(_iterateStateMachine_sloc10_1_0 + 1)
   0CD1 FF                 1577 	mov	r7,a
   0CD2 AD 4A              1578 	mov	r5,(_iterateStateMachine_sloc10_1_0 + 2)
   0CD4 8E 82              1579 	mov	dpl,r6
   0CD6 8F 83              1580 	mov	dph,r7
   0CD8 8D F0              1581 	mov	b,r5
   0CDA E5 3F              1582 	mov	a,_iterateStateMachine_sloc7_1_0
   0CDC 12 32 6F           1583 	lcall	__gptrput
   0CDF A3                 1584 	inc	dptr
   0CE0 E5 40              1585 	mov	a,(_iterateStateMachine_sloc7_1_0 + 1)
   0CE2 12 32 6F           1586 	lcall	__gptrput
   0CE5 A3                 1587 	inc	dptr
   0CE6 E5 41              1588 	mov	a,(_iterateStateMachine_sloc7_1_0 + 2)
   0CE8 12 32 6F           1589 	lcall	__gptrput
                           1590 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:226: callStateHandler(sm, target, &enterEvent) ;
   0CEB 90 00 C4           1591 	mov	dptr,#_callStateHandler_PARM_2
   0CEE E5 3F              1592 	mov	a,_iterateStateMachine_sloc7_1_0
   0CF0 F0                 1593 	movx	@dptr,a
   0CF1 A3                 1594 	inc	dptr
   0CF2 E5 40              1595 	mov	a,(_iterateStateMachine_sloc7_1_0 + 1)
   0CF4 F0                 1596 	movx	@dptr,a
   0CF5 A3                 1597 	inc	dptr
   0CF6 E5 41              1598 	mov	a,(_iterateStateMachine_sloc7_1_0 + 2)
   0CF8 F0                 1599 	movx	@dptr,a
   0CF9 90 00 C7           1600 	mov	dptr,#_callStateHandler_PARM_3
   0CFC 74 D1              1601 	mov	a,#_iterateStateMachine_enterEvent_1_1
   0CFE F0                 1602 	movx	@dptr,a
   0CFF A3                 1603 	inc	dptr
   0D00 74 00              1604 	mov	a,#(_iterateStateMachine_enterEvent_1_1 >> 8)
   0D02 F0                 1605 	movx	@dptr,a
   0D03 A3                 1606 	inc	dptr
   0D04 E4                 1607 	clr	a
   0D05 F0                 1608 	movx	@dptr,a
   0D06 85 48 82           1609 	mov	dpl,_iterateStateMachine_sloc10_1_0
   0D09 85 49 83           1610 	mov	dph,(_iterateStateMachine_sloc10_1_0 + 1)
   0D0C 85 4A F0           1611 	mov	b,(_iterateStateMachine_sloc10_1_0 + 2)
   0D0F C0 05              1612 	push	ar5
   0D11 C0 06              1613 	push	ar6
   0D13 C0 07              1614 	push	ar7
   0D15 12 06 D5           1615 	lcall	_callStateHandler
   0D18 D0 07              1616 	pop	ar7
   0D1A D0 06              1617 	pop	ar6
   0D1C D0 05              1618 	pop	ar5
   0D1E D0 07              1619 	pop	ar7
   0D20 D0 06              1620 	pop	ar6
   0D22 D0 05              1621 	pop	ar5
   0D24 02 17 30           1622 	ljmp	00155$
   0D27                    1623 00154$:
                           1624 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:228: else if(source == (state_t*)(target->parent))
   0D27 C0 02              1625 	push	ar2
   0D29 C0 03              1626 	push	ar3
   0D2B C0 04              1627 	push	ar4
   0D2D 85 3F 82           1628 	mov	dpl,_iterateStateMachine_sloc7_1_0
   0D30 85 40 83           1629 	mov	dph,(_iterateStateMachine_sloc7_1_0 + 1)
   0D33 85 41 F0           1630 	mov	b,(_iterateStateMachine_sloc7_1_0 + 2)
   0D36 12 3E 7B           1631 	lcall	__gptrget
   0D39 F8                 1632 	mov	r0,a
   0D3A A3                 1633 	inc	dptr
   0D3B 12 3E 7B           1634 	lcall	__gptrget
   0D3E F9                 1635 	mov	r1,a
   0D3F A3                 1636 	inc	dptr
   0D40 12 3E 7B           1637 	lcall	__gptrget
   0D43 FA                 1638 	mov	r2,a
   0D44 E8                 1639 	mov	a,r0
   0D45 B5 45 0A           1640 	cjne	a,_iterateStateMachine_sloc9_1_0,00214$
   0D48 E9                 1641 	mov	a,r1
   0D49 B5 46 06           1642 	cjne	a,(_iterateStateMachine_sloc9_1_0 + 1),00214$
   0D4C EA                 1643 	mov	a,r2
   0D4D B5 47 02           1644 	cjne	a,(_iterateStateMachine_sloc9_1_0 + 2),00214$
   0D50 80 08              1645 	sjmp	00215$
   0D52                    1646 00214$:
   0D52 D0 04              1647 	pop	ar4
   0D54 D0 03              1648 	pop	ar3
   0D56 D0 02              1649 	pop	ar2
   0D58 80 74              1650 	sjmp	00151$
   0D5A                    1651 00215$:
                           1652 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:230: printf("\t\t\t\tTransition to direct child.\n") ;
   0D5A C0 05              1653 	push	ar5
   0D5C C0 06              1654 	push	ar6
   0D5E C0 07              1655 	push	ar7
   0D60 74 7C              1656 	mov	a,#__str_11
   0D62 C0 E0              1657 	push	acc
   0D64 74 3F              1658 	mov	a,#(__str_11 >> 8)
   0D66 C0 E0              1659 	push	acc
   0D68 74 80              1660 	mov	a,#0x80
   0D6A C0 E0              1661 	push	acc
   0D6C 12 36 2F           1662 	lcall	_printf
   0D6F 15 81              1663 	dec	sp
   0D71 15 81              1664 	dec	sp
   0D73 15 81              1665 	dec	sp
   0D75 D0 07              1666 	pop	ar7
   0D77 D0 06              1667 	pop	ar6
   0D79 D0 05              1668 	pop	ar5
   0D7B D0 04              1669 	pop	ar4
   0D7D D0 03              1670 	pop	ar3
   0D7F D0 02              1671 	pop	ar2
                           1672 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:235: sm->currentState = target ;
   0D81 8A 82              1673 	mov	dpl,r2
   0D83 8B 83              1674 	mov	dph,r3
   0D85 8C F0              1675 	mov	b,r4
   0D87 E5 3F              1676 	mov	a,_iterateStateMachine_sloc7_1_0
   0D89 12 32 6F           1677 	lcall	__gptrput
   0D8C A3                 1678 	inc	dptr
   0D8D E5 40              1679 	mov	a,(_iterateStateMachine_sloc7_1_0 + 1)
   0D8F 12 32 6F           1680 	lcall	__gptrput
   0D92 A3                 1681 	inc	dptr
   0D93 E5 41              1682 	mov	a,(_iterateStateMachine_sloc7_1_0 + 2)
   0D95 12 32 6F           1683 	lcall	__gptrput
                           1684 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:236: callStateHandler(sm, target, &enterEvent) ;
   0D98 90 00 C4           1685 	mov	dptr,#_callStateHandler_PARM_2
   0D9B E5 3F              1686 	mov	a,_iterateStateMachine_sloc7_1_0
   0D9D F0                 1687 	movx	@dptr,a
   0D9E A3                 1688 	inc	dptr
   0D9F E5 40              1689 	mov	a,(_iterateStateMachine_sloc7_1_0 + 1)
   0DA1 F0                 1690 	movx	@dptr,a
   0DA2 A3                 1691 	inc	dptr
   0DA3 E5 41              1692 	mov	a,(_iterateStateMachine_sloc7_1_0 + 2)
   0DA5 F0                 1693 	movx	@dptr,a
   0DA6 90 00 C7           1694 	mov	dptr,#_callStateHandler_PARM_3
   0DA9 74 D1              1695 	mov	a,#_iterateStateMachine_enterEvent_1_1
   0DAB F0                 1696 	movx	@dptr,a
   0DAC A3                 1697 	inc	dptr
   0DAD 74 00              1698 	mov	a,#(_iterateStateMachine_enterEvent_1_1 >> 8)
   0DAF F0                 1699 	movx	@dptr,a
   0DB0 A3                 1700 	inc	dptr
   0DB1 E4                 1701 	clr	a
   0DB2 F0                 1702 	movx	@dptr,a
   0DB3 85 30 82           1703 	mov	dpl,_iterateStateMachine_sloc2_1_0
   0DB6 85 31 83           1704 	mov	dph,(_iterateStateMachine_sloc2_1_0 + 1)
   0DB9 85 32 F0           1705 	mov	b,(_iterateStateMachine_sloc2_1_0 + 2)
   0DBC C0 05              1706 	push	ar5
   0DBE C0 06              1707 	push	ar6
   0DC0 C0 07              1708 	push	ar7
   0DC2 12 06 D5           1709 	lcall	_callStateHandler
   0DC5 D0 07              1710 	pop	ar7
   0DC7 D0 06              1711 	pop	ar6
   0DC9 D0 05              1712 	pop	ar5
   0DCB 02 17 30           1713 	ljmp	00155$
   0DCE                    1714 00151$:
                           1715 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:238: else if((state_t*)(source->parent) == (state_t*)(target->parent))
   0DCE C0 02              1716 	push	ar2
   0DD0 C0 03              1717 	push	ar3
   0DD2 C0 04              1718 	push	ar4
   0DD4 85 45 82           1719 	mov	dpl,_iterateStateMachine_sloc9_1_0
   0DD7 85 46 83           1720 	mov	dph,(_iterateStateMachine_sloc9_1_0 + 1)
   0DDA 85 47 F0           1721 	mov	b,(_iterateStateMachine_sloc9_1_0 + 2)
   0DDD 12 3E 7B           1722 	lcall	__gptrget
   0DE0 F5 48              1723 	mov	_iterateStateMachine_sloc10_1_0,a
   0DE2 A3                 1724 	inc	dptr
   0DE3 12 3E 7B           1725 	lcall	__gptrget
   0DE6 F5 49              1726 	mov	(_iterateStateMachine_sloc10_1_0 + 1),a
   0DE8 A3                 1727 	inc	dptr
   0DE9 12 3E 7B           1728 	lcall	__gptrget
   0DEC F5 4A              1729 	mov	(_iterateStateMachine_sloc10_1_0 + 2),a
   0DEE 85 3F 82           1730 	mov	dpl,_iterateStateMachine_sloc7_1_0
   0DF1 85 40 83           1731 	mov	dph,(_iterateStateMachine_sloc7_1_0 + 1)
   0DF4 85 41 F0           1732 	mov	b,(_iterateStateMachine_sloc7_1_0 + 2)
   0DF7 12 3E 7B           1733 	lcall	__gptrget
   0DFA FB                 1734 	mov	r3,a
   0DFB A3                 1735 	inc	dptr
   0DFC 12 3E 7B           1736 	lcall	__gptrget
   0DFF FC                 1737 	mov	r4,a
   0E00 A3                 1738 	inc	dptr
   0E01 12 3E 7B           1739 	lcall	__gptrget
   0E04 FA                 1740 	mov	r2,a
   0E05 EB                 1741 	mov	a,r3
   0E06 B5 48 0A           1742 	cjne	a,_iterateStateMachine_sloc10_1_0,00216$
   0E09 EC                 1743 	mov	a,r4
   0E0A B5 49 06           1744 	cjne	a,(_iterateStateMachine_sloc10_1_0 + 1),00216$
   0E0D EA                 1745 	mov	a,r2
   0E0E B5 4A 02           1746 	cjne	a,(_iterateStateMachine_sloc10_1_0 + 2),00216$
   0E11 80 09              1747 	sjmp	00217$
   0E13                    1748 00216$:
   0E13 D0 04              1749 	pop	ar4
   0E15 D0 03              1750 	pop	ar3
   0E17 D0 02              1751 	pop	ar2
   0E19 02 0E DC           1752 	ljmp	00148$
   0E1C                    1753 00217$:
   0E1C D0 04              1754 	pop	ar4
   0E1E D0 03              1755 	pop	ar3
   0E20 D0 02              1756 	pop	ar2
                           1757 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:240: printf("\t\t\t\tTransition to direct peer.\n") ;
   0E22 C0 05              1758 	push	ar5
   0E24 C0 06              1759 	push	ar6
   0E26 C0 07              1760 	push	ar7
   0E28 C0 05              1761 	push	ar5
   0E2A C0 06              1762 	push	ar6
   0E2C C0 07              1763 	push	ar7
   0E2E 74 9D              1764 	mov	a,#__str_12
   0E30 C0 E0              1765 	push	acc
   0E32 74 3F              1766 	mov	a,#(__str_12 >> 8)
   0E34 C0 E0              1767 	push	acc
   0E36 74 80              1768 	mov	a,#0x80
   0E38 C0 E0              1769 	push	acc
   0E3A 12 36 2F           1770 	lcall	_printf
   0E3D 15 81              1771 	dec	sp
   0E3F 15 81              1772 	dec	sp
   0E41 15 81              1773 	dec	sp
                           1774 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:245: callStateHandler(sm, source, &exitEvent) ;
   0E43 90 00 C4           1775 	mov	dptr,#_callStateHandler_PARM_2
   0E46 E5 45              1776 	mov	a,_iterateStateMachine_sloc9_1_0
   0E48 F0                 1777 	movx	@dptr,a
   0E49 A3                 1778 	inc	dptr
   0E4A E5 46              1779 	mov	a,(_iterateStateMachine_sloc9_1_0 + 1)
   0E4C F0                 1780 	movx	@dptr,a
   0E4D A3                 1781 	inc	dptr
   0E4E E5 47              1782 	mov	a,(_iterateStateMachine_sloc9_1_0 + 2)
   0E50 F0                 1783 	movx	@dptr,a
   0E51 90 00 C7           1784 	mov	dptr,#_callStateHandler_PARM_3
   0E54 74 D2              1785 	mov	a,#_iterateStateMachine_exitEvent_1_1
   0E56 F0                 1786 	movx	@dptr,a
   0E57 A3                 1787 	inc	dptr
   0E58 74 00              1788 	mov	a,#(_iterateStateMachine_exitEvent_1_1 >> 8)
   0E5A F0                 1789 	movx	@dptr,a
   0E5B A3                 1790 	inc	dptr
   0E5C E4                 1791 	clr	a
   0E5D F0                 1792 	movx	@dptr,a
   0E5E 85 30 82           1793 	mov	dpl,_iterateStateMachine_sloc2_1_0
   0E61 85 31 83           1794 	mov	dph,(_iterateStateMachine_sloc2_1_0 + 1)
   0E64 85 32 F0           1795 	mov	b,(_iterateStateMachine_sloc2_1_0 + 2)
   0E67 12 06 D5           1796 	lcall	_callStateHandler
   0E6A D0 07              1797 	pop	ar7
   0E6C D0 06              1798 	pop	ar6
   0E6E D0 05              1799 	pop	ar5
                           1800 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:246: sm->currentState = target ;
   0E70 90 00 CD           1801 	mov	dptr,#_iterateStateMachine_sm_1_1
   0E73 E0                 1802 	movx	a,@dptr
   0E74 F5 48              1803 	mov	_iterateStateMachine_sloc10_1_0,a
   0E76 A3                 1804 	inc	dptr
   0E77 E0                 1805 	movx	a,@dptr
   0E78 F5 49              1806 	mov	(_iterateStateMachine_sloc10_1_0 + 1),a
   0E7A A3                 1807 	inc	dptr
   0E7B E0                 1808 	movx	a,@dptr
   0E7C F5 4A              1809 	mov	(_iterateStateMachine_sloc10_1_0 + 2),a
   0E7E 74 06              1810 	mov	a,#0x06
   0E80 25 48              1811 	add	a,_iterateStateMachine_sloc10_1_0
   0E82 FE                 1812 	mov	r6,a
   0E83 E4                 1813 	clr	a
   0E84 35 49              1814 	addc	a,(_iterateStateMachine_sloc10_1_0 + 1)
   0E86 FF                 1815 	mov	r7,a
   0E87 AD 4A              1816 	mov	r5,(_iterateStateMachine_sloc10_1_0 + 2)
   0E89 8E 82              1817 	mov	dpl,r6
   0E8B 8F 83              1818 	mov	dph,r7
   0E8D 8D F0              1819 	mov	b,r5
   0E8F E5 3F              1820 	mov	a,_iterateStateMachine_sloc7_1_0
   0E91 12 32 6F           1821 	lcall	__gptrput
   0E94 A3                 1822 	inc	dptr
   0E95 E5 40              1823 	mov	a,(_iterateStateMachine_sloc7_1_0 + 1)
   0E97 12 32 6F           1824 	lcall	__gptrput
   0E9A A3                 1825 	inc	dptr
   0E9B E5 41              1826 	mov	a,(_iterateStateMachine_sloc7_1_0 + 2)
   0E9D 12 32 6F           1827 	lcall	__gptrput
                           1828 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:247: callStateHandler(sm, target, &enterEvent) ;
   0EA0 90 00 C4           1829 	mov	dptr,#_callStateHandler_PARM_2
   0EA3 E5 3F              1830 	mov	a,_iterateStateMachine_sloc7_1_0
   0EA5 F0                 1831 	movx	@dptr,a
   0EA6 A3                 1832 	inc	dptr
   0EA7 E5 40              1833 	mov	a,(_iterateStateMachine_sloc7_1_0 + 1)
   0EA9 F0                 1834 	movx	@dptr,a
   0EAA A3                 1835 	inc	dptr
   0EAB E5 41              1836 	mov	a,(_iterateStateMachine_sloc7_1_0 + 2)
   0EAD F0                 1837 	movx	@dptr,a
   0EAE 90 00 C7           1838 	mov	dptr,#_callStateHandler_PARM_3
   0EB1 74 D1              1839 	mov	a,#_iterateStateMachine_enterEvent_1_1
   0EB3 F0                 1840 	movx	@dptr,a
   0EB4 A3                 1841 	inc	dptr
   0EB5 74 00              1842 	mov	a,#(_iterateStateMachine_enterEvent_1_1 >> 8)
   0EB7 F0                 1843 	movx	@dptr,a
   0EB8 A3                 1844 	inc	dptr
   0EB9 E4                 1845 	clr	a
   0EBA F0                 1846 	movx	@dptr,a
   0EBB 85 48 82           1847 	mov	dpl,_iterateStateMachine_sloc10_1_0
   0EBE 85 49 83           1848 	mov	dph,(_iterateStateMachine_sloc10_1_0 + 1)
   0EC1 85 4A F0           1849 	mov	b,(_iterateStateMachine_sloc10_1_0 + 2)
   0EC4 C0 05              1850 	push	ar5
   0EC6 C0 06              1851 	push	ar6
   0EC8 C0 07              1852 	push	ar7
   0ECA 12 06 D5           1853 	lcall	_callStateHandler
   0ECD D0 07              1854 	pop	ar7
   0ECF D0 06              1855 	pop	ar6
   0ED1 D0 05              1856 	pop	ar5
   0ED3 D0 07              1857 	pop	ar7
   0ED5 D0 06              1858 	pop	ar6
   0ED7 D0 05              1859 	pop	ar5
   0ED9 02 17 30           1860 	ljmp	00155$
   0EDC                    1861 00148$:
                           1862 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:249: else if((state_t*)(source->parent) == target)
   0EDC C0 02              1863 	push	ar2
   0EDE C0 03              1864 	push	ar3
   0EE0 C0 04              1865 	push	ar4
   0EE2 85 45 82           1866 	mov	dpl,_iterateStateMachine_sloc9_1_0
   0EE5 85 46 83           1867 	mov	dph,(_iterateStateMachine_sloc9_1_0 + 1)
   0EE8 85 47 F0           1868 	mov	b,(_iterateStateMachine_sloc9_1_0 + 2)
   0EEB 12 3E 7B           1869 	lcall	__gptrget
   0EEE F8                 1870 	mov	r0,a
   0EEF A3                 1871 	inc	dptr
   0EF0 12 3E 7B           1872 	lcall	__gptrget
   0EF3 F9                 1873 	mov	r1,a
   0EF4 A3                 1874 	inc	dptr
   0EF5 12 3E 7B           1875 	lcall	__gptrget
   0EF8 FA                 1876 	mov	r2,a
   0EF9 E8                 1877 	mov	a,r0
   0EFA B5 3F 0A           1878 	cjne	a,_iterateStateMachine_sloc7_1_0,00218$
   0EFD E9                 1879 	mov	a,r1
   0EFE B5 40 06           1880 	cjne	a,(_iterateStateMachine_sloc7_1_0 + 1),00218$
   0F01 EA                 1881 	mov	a,r2
   0F02 B5 41 02           1882 	cjne	a,(_iterateStateMachine_sloc7_1_0 + 2),00218$
   0F05 80 08              1883 	sjmp	00219$
   0F07                    1884 00218$:
   0F07 D0 04              1885 	pop	ar4
   0F09 D0 03              1886 	pop	ar3
   0F0B D0 02              1887 	pop	ar2
   0F0D 80 74              1888 	sjmp	00145$
   0F0F                    1889 00219$:
                           1890 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:251: printf("\t\t\t\tTransition to direct parent.\n") ;
   0F0F C0 05              1891 	push	ar5
   0F11 C0 06              1892 	push	ar6
   0F13 C0 07              1893 	push	ar7
   0F15 74 BD              1894 	mov	a,#__str_13
   0F17 C0 E0              1895 	push	acc
   0F19 74 3F              1896 	mov	a,#(__str_13 >> 8)
   0F1B C0 E0              1897 	push	acc
   0F1D 74 80              1898 	mov	a,#0x80
   0F1F C0 E0              1899 	push	acc
   0F21 12 36 2F           1900 	lcall	_printf
   0F24 15 81              1901 	dec	sp
   0F26 15 81              1902 	dec	sp
   0F28 15 81              1903 	dec	sp
   0F2A D0 07              1904 	pop	ar7
   0F2C D0 06              1905 	pop	ar6
   0F2E D0 05              1906 	pop	ar5
   0F30 D0 04              1907 	pop	ar4
   0F32 D0 03              1908 	pop	ar3
   0F34 D0 02              1909 	pop	ar2
                           1910 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:257: sm->currentState = target ;
   0F36 8A 82              1911 	mov	dpl,r2
   0F38 8B 83              1912 	mov	dph,r3
   0F3A 8C F0              1913 	mov	b,r4
   0F3C E5 3F              1914 	mov	a,_iterateStateMachine_sloc7_1_0
   0F3E 12 32 6F           1915 	lcall	__gptrput
   0F41 A3                 1916 	inc	dptr
   0F42 E5 40              1917 	mov	a,(_iterateStateMachine_sloc7_1_0 + 1)
   0F44 12 32 6F           1918 	lcall	__gptrput
   0F47 A3                 1919 	inc	dptr
   0F48 E5 41              1920 	mov	a,(_iterateStateMachine_sloc7_1_0 + 2)
   0F4A 12 32 6F           1921 	lcall	__gptrput
                           1922 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:258: callStateHandler(sm, source, &exitEvent) ;
   0F4D 90 00 C4           1923 	mov	dptr,#_callStateHandler_PARM_2
   0F50 E5 45              1924 	mov	a,_iterateStateMachine_sloc9_1_0
   0F52 F0                 1925 	movx	@dptr,a
   0F53 A3                 1926 	inc	dptr
   0F54 E5 46              1927 	mov	a,(_iterateStateMachine_sloc9_1_0 + 1)
   0F56 F0                 1928 	movx	@dptr,a
   0F57 A3                 1929 	inc	dptr
   0F58 E5 47              1930 	mov	a,(_iterateStateMachine_sloc9_1_0 + 2)
   0F5A F0                 1931 	movx	@dptr,a
   0F5B 90 00 C7           1932 	mov	dptr,#_callStateHandler_PARM_3
   0F5E 74 D2              1933 	mov	a,#_iterateStateMachine_exitEvent_1_1
   0F60 F0                 1934 	movx	@dptr,a
   0F61 A3                 1935 	inc	dptr
   0F62 74 00              1936 	mov	a,#(_iterateStateMachine_exitEvent_1_1 >> 8)
   0F64 F0                 1937 	movx	@dptr,a
   0F65 A3                 1938 	inc	dptr
   0F66 E4                 1939 	clr	a
   0F67 F0                 1940 	movx	@dptr,a
   0F68 85 30 82           1941 	mov	dpl,_iterateStateMachine_sloc2_1_0
   0F6B 85 31 83           1942 	mov	dph,(_iterateStateMachine_sloc2_1_0 + 1)
   0F6E 85 32 F0           1943 	mov	b,(_iterateStateMachine_sloc2_1_0 + 2)
   0F71 C0 05              1944 	push	ar5
   0F73 C0 06              1945 	push	ar6
   0F75 C0 07              1946 	push	ar7
   0F77 12 06 D5           1947 	lcall	_callStateHandler
   0F7A D0 07              1948 	pop	ar7
   0F7C D0 06              1949 	pop	ar6
   0F7E D0 05              1950 	pop	ar5
   0F80 02 17 30           1951 	ljmp	00155$
   0F83                    1952 00145$:
                           1953 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:272: printf("\t\t\t\tScanning source hierarchy...\n") ;
   0F83 C0 05              1954 	push	ar5
   0F85 C0 06              1955 	push	ar6
   0F87 C0 07              1956 	push	ar7
   0F89 74 DF              1957 	mov	a,#__str_14
   0F8B C0 E0              1958 	push	acc
   0F8D 74 3F              1959 	mov	a,#(__str_14 >> 8)
   0F8F C0 E0              1960 	push	acc
   0F91 74 80              1961 	mov	a,#0x80
   0F93 C0 E0              1962 	push	acc
   0F95 12 36 2F           1963 	lcall	_printf
   0F98 15 81              1964 	dec	sp
   0F9A 15 81              1965 	dec	sp
   0F9C 15 81              1966 	dec	sp
   0F9E D0 07              1967 	pop	ar7
   0FA0 D0 06              1968 	pop	ar6
   0FA2 D0 05              1969 	pop	ar5
                           1970 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:275: targetIndex			= 0 ;
   0FA4 90 01 3C           1971 	mov	dptr,#_iterateStateMachine_targetIndex_4_15
   0FA7 E4                 1972 	clr	a
   0FA8 F0                 1973 	movx	@dptr,a
                           1974 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:276: stateBeingProcessed	= source ;
   0FA9 90 00 D8           1975 	mov	dptr,#_iterateStateMachine_stateBeingProcessed_2_3
   0FAC E5 45              1976 	mov	a,_iterateStateMachine_sloc9_1_0
   0FAE F0                 1977 	movx	@dptr,a
   0FAF A3                 1978 	inc	dptr
   0FB0 E5 46              1979 	mov	a,(_iterateStateMachine_sloc9_1_0 + 1)
   0FB2 F0                 1980 	movx	@dptr,a
   0FB3 A3                 1981 	inc	dptr
   0FB4 E5 47              1982 	mov	a,(_iterateStateMachine_sloc9_1_0 + 2)
   0FB6 F0                 1983 	movx	@dptr,a
                           1984 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:278: do
   0FB7 7A 00              1985 	mov	r2,#0x00
   0FB9                    1986 00120$:
                           1987 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:280: sourceHierarchy[sourceIndex++] = stateBeingProcessed ;
   0FB9 C0 05              1988 	push	ar5
   0FBB C0 06              1989 	push	ar6
   0FBD C0 07              1990 	push	ar7
   0FBF 8A 03              1991 	mov	ar3,r2
   0FC1 0A                 1992 	inc	r2
   0FC2 90 01 0B           1993 	mov	dptr,#_iterateStateMachine_sourceIndex_4_15
   0FC5 EA                 1994 	mov	a,r2
   0FC6 F0                 1995 	movx	@dptr,a
   0FC7 EB                 1996 	mov	a,r3
   0FC8 75 F0 03           1997 	mov	b,#0x03
   0FCB A4                 1998 	mul	ab
   0FCC 24 DB              1999 	add	a,#_iterateStateMachine_sourceHierarchy_4_15
   0FCE FB                 2000 	mov	r3,a
   0FCF E4                 2001 	clr	a
   0FD0 34 00              2002 	addc	a,#(_iterateStateMachine_sourceHierarchy_4_15 >> 8)
   0FD2 FC                 2003 	mov	r4,a
   0FD3 90 00 D8           2004 	mov	dptr,#_iterateStateMachine_stateBeingProcessed_2_3
   0FD6 E0                 2005 	movx	a,@dptr
   0FD7 F5 48              2006 	mov	_iterateStateMachine_sloc10_1_0,a
   0FD9 A3                 2007 	inc	dptr
   0FDA E0                 2008 	movx	a,@dptr
   0FDB F5 49              2009 	mov	(_iterateStateMachine_sloc10_1_0 + 1),a
   0FDD A3                 2010 	inc	dptr
   0FDE E0                 2011 	movx	a,@dptr
   0FDF F5 4A              2012 	mov	(_iterateStateMachine_sloc10_1_0 + 2),a
   0FE1 8B 82              2013 	mov	dpl,r3
   0FE3 8C 83              2014 	mov	dph,r4
   0FE5 E5 48              2015 	mov	a,_iterateStateMachine_sloc10_1_0
   0FE7 F0                 2016 	movx	@dptr,a
   0FE8 A3                 2017 	inc	dptr
   0FE9 E5 49              2018 	mov	a,(_iterateStateMachine_sloc10_1_0 + 1)
   0FEB F0                 2019 	movx	@dptr,a
   0FEC A3                 2020 	inc	dptr
   0FED E5 4A              2021 	mov	a,(_iterateStateMachine_sloc10_1_0 + 2)
   0FEF F0                 2022 	movx	@dptr,a
                           2023 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:282: printf("\t\t\t\t\tsourceHierarchy[%d] = %s\n", sourceIndex - 1, stateBeingProcessed->stateName) ;
   0FF0 74 06              2024 	mov	a,#0x06
   0FF2 25 48              2025 	add	a,_iterateStateMachine_sloc10_1_0
   0FF4 FB                 2026 	mov	r3,a
   0FF5 E4                 2027 	clr	a
   0FF6 35 49              2028 	addc	a,(_iterateStateMachine_sloc10_1_0 + 1)
   0FF8 FC                 2029 	mov	r4,a
   0FF9 A8 4A              2030 	mov	r0,(_iterateStateMachine_sloc10_1_0 + 2)
   0FFB 8B 82              2031 	mov	dpl,r3
   0FFD 8C 83              2032 	mov	dph,r4
   0FFF 88 F0              2033 	mov	b,r0
   1001 12 3E 7B           2034 	lcall	__gptrget
   1004 FB                 2035 	mov	r3,a
   1005 A3                 2036 	inc	dptr
   1006 12 3E 7B           2037 	lcall	__gptrget
   1009 FC                 2038 	mov	r4,a
   100A A3                 2039 	inc	dptr
   100B 12 3E 7B           2040 	lcall	__gptrget
   100E F8                 2041 	mov	r0,a
   100F 8A 01              2042 	mov	ar1,r2
   1011 7D 00              2043 	mov	r5,#0x00
   1013 19                 2044 	dec	r1
   1014 B9 FF 01           2045 	cjne	r1,#0xff,00220$
   1017 1D                 2046 	dec	r5
   1018                    2047 00220$:
   1018 C0 02              2048 	push	ar2
   101A C0 05              2049 	push	ar5
   101C C0 06              2050 	push	ar6
   101E C0 07              2051 	push	ar7
   1020 C0 03              2052 	push	ar3
   1022 C0 04              2053 	push	ar4
   1024 C0 00              2054 	push	ar0
   1026 C0 01              2055 	push	ar1
   1028 C0 05              2056 	push	ar5
   102A 74 01              2057 	mov	a,#__str_15
   102C C0 E0              2058 	push	acc
   102E 74 40              2059 	mov	a,#(__str_15 >> 8)
   1030 C0 E0              2060 	push	acc
   1032 74 80              2061 	mov	a,#0x80
   1034 C0 E0              2062 	push	acc
   1036 12 36 2F           2063 	lcall	_printf
   1039 E5 81              2064 	mov	a,sp
   103B 24 F8              2065 	add	a,#0xf8
   103D F5 81              2066 	mov	sp,a
   103F D0 07              2067 	pop	ar7
   1041 D0 06              2068 	pop	ar6
   1043 D0 05              2069 	pop	ar5
   1045 D0 02              2070 	pop	ar2
                           2071 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:284: if(stateBeingProcessed == target)
   1047 E5 3F              2072 	mov	a,_iterateStateMachine_sloc7_1_0
   1049 B5 48 0C           2073 	cjne	a,_iterateStateMachine_sloc10_1_0,00221$
   104C E5 40              2074 	mov	a,(_iterateStateMachine_sloc7_1_0 + 1)
   104E B5 49 07           2075 	cjne	a,(_iterateStateMachine_sloc10_1_0 + 1),00221$
   1051 E5 41              2076 	mov	a,(_iterateStateMachine_sloc7_1_0 + 2)
   1053 B5 4A 02           2077 	cjne	a,(_iterateStateMachine_sloc10_1_0 + 2),00221$
   1056 80 09              2078 	sjmp	00222$
   1058                    2079 00221$:
   1058 D0 07              2080 	pop	ar7
   105A D0 06              2081 	pop	ar6
   105C D0 05              2082 	pop	ar5
   105E 02 11 4B           2083 	ljmp	00119$
   1061                    2084 00222$:
   1061 D0 07              2085 	pop	ar7
   1063 D0 06              2086 	pop	ar6
   1065 D0 05              2087 	pop	ar5
                           2088 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:288: printf("\t\t\t\t\t\tFound target as ancestor of source\n") ;
   1067 C0 02              2089 	push	ar2
   1069 C0 05              2090 	push	ar5
   106B C0 06              2091 	push	ar6
   106D C0 07              2092 	push	ar7
   106F 74 20              2093 	mov	a,#__str_16
   1071 C0 E0              2094 	push	acc
   1073 74 40              2095 	mov	a,#(__str_16 >> 8)
   1075 C0 E0              2096 	push	acc
   1077 74 80              2097 	mov	a,#0x80
   1079 C0 E0              2098 	push	acc
   107B 12 36 2F           2099 	lcall	_printf
   107E 15 81              2100 	dec	sp
   1080 15 81              2101 	dec	sp
   1082 15 81              2102 	dec	sp
   1084 D0 07              2103 	pop	ar7
   1086 D0 06              2104 	pop	ar6
   1088 D0 05              2105 	pop	ar5
   108A D0 02              2106 	pop	ar2
                           2107 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:290: sourceIndex-- ;
   108C EA                 2108 	mov	a,r2
   108D 14                 2109 	dec	a
   108E FB                 2110 	mov	r3,a
   108F 90 01 0B           2111 	mov	dptr,#_iterateStateMachine_sourceIndex_4_15
   1092 F0                 2112 	movx	@dptr,a
                           2113 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:292: while(exitIndex < sourceIndex)
   1093 8B 4B              2114 	mov	_iterateStateMachine_sloc11_1_0,r3
   1095 7C 00              2115 	mov	r4,#0x00
   1097                    2116 00115$:
   1097 C3                 2117 	clr	c
   1098 EC                 2118 	mov	a,r4
   1099 95 4B              2119 	subb	a,_iterateStateMachine_sloc11_1_0
   109B 40 03              2120 	jc	00223$
   109D 02 11 27           2121 	ljmp	00117$
   10A0                    2122 00223$:
                           2123 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:294: printf("\t\t\t\t") ;
   10A0 C0 05              2124 	push	ar5
   10A2 C0 06              2125 	push	ar6
   10A4 C0 07              2126 	push	ar7
   10A6 C0 04              2127 	push	ar4
   10A8 C0 05              2128 	push	ar5
   10AA C0 06              2129 	push	ar6
   10AC C0 07              2130 	push	ar7
   10AE 74 4A              2131 	mov	a,#__str_17
   10B0 C0 E0              2132 	push	acc
   10B2 74 40              2133 	mov	a,#(__str_17 >> 8)
   10B4 C0 E0              2134 	push	acc
   10B6 74 80              2135 	mov	a,#0x80
   10B8 C0 E0              2136 	push	acc
   10BA 12 36 2F           2137 	lcall	_printf
   10BD 15 81              2138 	dec	sp
   10BF 15 81              2139 	dec	sp
   10C1 15 81              2140 	dec	sp
   10C3 D0 07              2141 	pop	ar7
   10C5 D0 06              2142 	pop	ar6
   10C7 D0 05              2143 	pop	ar5
   10C9 D0 04              2144 	pop	ar4
                           2145 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:296: callStateHandler(sm, sourceHierarchy[exitIndex], &exitEvent) ;
   10CB 90 00 CD           2146 	mov	dptr,#_iterateStateMachine_sm_1_1
   10CE E0                 2147 	movx	a,@dptr
   10CF F8                 2148 	mov	r0,a
   10D0 A3                 2149 	inc	dptr
   10D1 E0                 2150 	movx	a,@dptr
   10D2 F9                 2151 	mov	r1,a
   10D3 A3                 2152 	inc	dptr
   10D4 E0                 2153 	movx	a,@dptr
   10D5 FD                 2154 	mov	r5,a
   10D6 EC                 2155 	mov	a,r4
   10D7 75 F0 03           2156 	mov	b,#0x03
   10DA A4                 2157 	mul	ab
   10DB 24 DB              2158 	add	a,#_iterateStateMachine_sourceHierarchy_4_15
   10DD F5 82              2159 	mov	dpl,a
   10DF E4                 2160 	clr	a
   10E0 34 00              2161 	addc	a,#(_iterateStateMachine_sourceHierarchy_4_15 >> 8)
   10E2 F5 83              2162 	mov	dph,a
   10E4 E0                 2163 	movx	a,@dptr
   10E5 FE                 2164 	mov	r6,a
   10E6 A3                 2165 	inc	dptr
   10E7 E0                 2166 	movx	a,@dptr
   10E8 FF                 2167 	mov	r7,a
   10E9 A3                 2168 	inc	dptr
   10EA E0                 2169 	movx	a,@dptr
   10EB FB                 2170 	mov	r3,a
   10EC 90 00 C4           2171 	mov	dptr,#_callStateHandler_PARM_2
   10EF EE                 2172 	mov	a,r6
   10F0 F0                 2173 	movx	@dptr,a
   10F1 A3                 2174 	inc	dptr
   10F2 EF                 2175 	mov	a,r7
   10F3 F0                 2176 	movx	@dptr,a
   10F4 A3                 2177 	inc	dptr
   10F5 EB                 2178 	mov	a,r3
   10F6 F0                 2179 	movx	@dptr,a
   10F7 90 00 C7           2180 	mov	dptr,#_callStateHandler_PARM_3
   10FA 74 D2              2181 	mov	a,#_iterateStateMachine_exitEvent_1_1
   10FC F0                 2182 	movx	@dptr,a
   10FD A3                 2183 	inc	dptr
   10FE 74 00              2184 	mov	a,#(_iterateStateMachine_exitEvent_1_1 >> 8)
   1100 F0                 2185 	movx	@dptr,a
   1101 A3                 2186 	inc	dptr
   1102 E4                 2187 	clr	a
   1103 F0                 2188 	movx	@dptr,a
   1104 88 82              2189 	mov	dpl,r0
   1106 89 83              2190 	mov	dph,r1
   1108 8D F0              2191 	mov	b,r5
   110A C0 04              2192 	push	ar4
   110C C0 05              2193 	push	ar5
   110E C0 06              2194 	push	ar6
   1110 C0 07              2195 	push	ar7
   1112 12 06 D5           2196 	lcall	_callStateHandler
   1115 D0 07              2197 	pop	ar7
   1117 D0 06              2198 	pop	ar6
   1119 D0 05              2199 	pop	ar5
   111B D0 04              2200 	pop	ar4
                           2201 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:298: exitIndex++ ;
   111D 0C                 2202 	inc	r4
   111E D0 07              2203 	pop	ar7
   1120 D0 06              2204 	pop	ar6
   1122 D0 05              2205 	pop	ar5
   1124 02 10 97           2206 	ljmp	00115$
   1127                    2207 00117$:
                           2208 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:301: sm->currentState = target ;
   1127 74 06              2209 	mov	a,#0x06
   1129 25 36              2210 	add	a,_iterateStateMachine_sloc4_1_0
   112B FB                 2211 	mov	r3,a
   112C E4                 2212 	clr	a
   112D 35 37              2213 	addc	a,(_iterateStateMachine_sloc4_1_0 + 1)
   112F FC                 2214 	mov	r4,a
   1130 A8 38              2215 	mov	r0,(_iterateStateMachine_sloc4_1_0 + 2)
   1132 8B 82              2216 	mov	dpl,r3
   1134 8C 83              2217 	mov	dph,r4
   1136 88 F0              2218 	mov	b,r0
   1138 E5 3F              2219 	mov	a,_iterateStateMachine_sloc7_1_0
   113A 12 32 6F           2220 	lcall	__gptrput
   113D A3                 2221 	inc	dptr
   113E E5 40              2222 	mov	a,(_iterateStateMachine_sloc7_1_0 + 1)
   1140 12 32 6F           2223 	lcall	__gptrput
   1143 A3                 2224 	inc	dptr
   1144 E5 41              2225 	mov	a,(_iterateStateMachine_sloc7_1_0 + 2)
   1146 12 32 6F           2226 	lcall	__gptrput
                           2227 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:303: break ;
   1149 80 35              2228 	sjmp	00122$
   114B                    2229 00119$:
                           2230 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:306: stateBeingProcessed = (state_t*)(stateBeingProcessed->parent) ;
   114B 85 48 82           2231 	mov	dpl,_iterateStateMachine_sloc10_1_0
   114E 85 49 83           2232 	mov	dph,(_iterateStateMachine_sloc10_1_0 + 1)
   1151 85 4A F0           2233 	mov	b,(_iterateStateMachine_sloc10_1_0 + 2)
   1154 12 3E 7B           2234 	lcall	__gptrget
   1157 FB                 2235 	mov	r3,a
   1158 A3                 2236 	inc	dptr
   1159 12 3E 7B           2237 	lcall	__gptrget
   115C FC                 2238 	mov	r4,a
   115D A3                 2239 	inc	dptr
   115E 12 3E 7B           2240 	lcall	__gptrget
   1161 F8                 2241 	mov	r0,a
   1162 90 00 D8           2242 	mov	dptr,#_iterateStateMachine_stateBeingProcessed_2_3
   1165 EB                 2243 	mov	a,r3
   1166 F0                 2244 	movx	@dptr,a
   1167 A3                 2245 	inc	dptr
   1168 EC                 2246 	mov	a,r4
   1169 F0                 2247 	movx	@dptr,a
   116A A3                 2248 	inc	dptr
   116B E8                 2249 	mov	a,r0
   116C F0                 2250 	movx	@dptr,a
                           2251 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:307: } while(stateBeingProcessed) ;
   116D 90 00 D8           2252 	mov	dptr,#_iterateStateMachine_stateBeingProcessed_2_3
   1170 E0                 2253 	movx	a,@dptr
   1171 FB                 2254 	mov	r3,a
   1172 A3                 2255 	inc	dptr
   1173 E0                 2256 	movx	a,@dptr
   1174 FC                 2257 	mov	r4,a
   1175 A3                 2258 	inc	dptr
   1176 E0                 2259 	movx	a,@dptr
   1177 F8                 2260 	mov	r0,a
   1178 EB                 2261 	mov	a,r3
   1179 4C                 2262 	orl	a,r4
   117A 48                 2263 	orl	a,r0
   117B 60 03              2264 	jz	00224$
   117D 02 0F B9           2265 	ljmp	00120$
   1180                    2266 00224$:
   1180                    2267 00122$:
                           2268 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:309: if(sm->currentState != target)
   1180 8D 82              2269 	mov	dpl,r5
   1182 8E 83              2270 	mov	dph,r6
   1184 8F F0              2271 	mov	b,r7
   1186 12 3E 7B           2272 	lcall	__gptrget
   1189 FA                 2273 	mov	r2,a
   118A A3                 2274 	inc	dptr
   118B 12 3E 7B           2275 	lcall	__gptrget
   118E FB                 2276 	mov	r3,a
   118F A3                 2277 	inc	dptr
   1190 12 3E 7B           2278 	lcall	__gptrget
   1193 FC                 2279 	mov	r4,a
   1194 EA                 2280 	mov	a,r2
   1195 B5 3F 0B           2281 	cjne	a,_iterateStateMachine_sloc7_1_0,00225$
   1198 EB                 2282 	mov	a,r3
   1199 B5 40 07           2283 	cjne	a,(_iterateStateMachine_sloc7_1_0 + 1),00225$
   119C EC                 2284 	mov	a,r4
   119D B5 41 03           2285 	cjne	a,(_iterateStateMachine_sloc7_1_0 + 2),00225$
   11A0 02 13 87           2286 	ljmp	00132$
   11A3                    2287 00225$:
                           2288 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:311: printf("\t\t\t\tScanning target hierarchy...\n") ;
   11A3 C0 05              2289 	push	ar5
   11A5 C0 06              2290 	push	ar6
   11A7 C0 07              2291 	push	ar7
   11A9 74 4F              2292 	mov	a,#__str_18
   11AB C0 E0              2293 	push	acc
   11AD 74 40              2294 	mov	a,#(__str_18 >> 8)
   11AF C0 E0              2295 	push	acc
   11B1 74 80              2296 	mov	a,#0x80
   11B3 C0 E0              2297 	push	acc
   11B5 12 36 2F           2298 	lcall	_printf
   11B8 15 81              2299 	dec	sp
   11BA 15 81              2300 	dec	sp
   11BC 15 81              2301 	dec	sp
   11BE D0 07              2302 	pop	ar7
   11C0 D0 06              2303 	pop	ar6
   11C2 D0 05              2304 	pop	ar5
                           2305 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:313: targetIndex			= 0 ;
   11C4 90 01 3C           2306 	mov	dptr,#_iterateStateMachine_targetIndex_4_15
   11C7 E4                 2307 	clr	a
   11C8 F0                 2308 	movx	@dptr,a
                           2309 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:314: stateBeingProcessed	= target ;
   11C9 90 00 D8           2310 	mov	dptr,#_iterateStateMachine_stateBeingProcessed_2_3
   11CC E5 3F              2311 	mov	a,_iterateStateMachine_sloc7_1_0
   11CE F0                 2312 	movx	@dptr,a
   11CF A3                 2313 	inc	dptr
   11D0 E5 40              2314 	mov	a,(_iterateStateMachine_sloc7_1_0 + 1)
   11D2 F0                 2315 	movx	@dptr,a
   11D3 A3                 2316 	inc	dptr
   11D4 E5 41              2317 	mov	a,(_iterateStateMachine_sloc7_1_0 + 2)
   11D6 F0                 2318 	movx	@dptr,a
                           2319 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:316: do
   11D7 7A 00              2320 	mov	r2,#0x00
   11D9                    2321 00128$:
                           2322 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:318: targetHierarchy[targetIndex] = stateBeingProcessed ;
   11D9 C0 05              2323 	push	ar5
   11DB C0 06              2324 	push	ar6
   11DD C0 07              2325 	push	ar7
   11DF EA                 2326 	mov	a,r2
   11E0 75 F0 03           2327 	mov	b,#0x03
   11E3 A4                 2328 	mul	ab
   11E4 24 0C              2329 	add	a,#_iterateStateMachine_targetHierarchy_4_15
   11E6 FB                 2330 	mov	r3,a
   11E7 E4                 2331 	clr	a
   11E8 34 01              2332 	addc	a,#(_iterateStateMachine_targetHierarchy_4_15 >> 8)
   11EA FC                 2333 	mov	r4,a
   11EB 90 00 D8           2334 	mov	dptr,#_iterateStateMachine_stateBeingProcessed_2_3
   11EE E0                 2335 	movx	a,@dptr
   11EF F5 48              2336 	mov	_iterateStateMachine_sloc10_1_0,a
   11F1 A3                 2337 	inc	dptr
   11F2 E0                 2338 	movx	a,@dptr
   11F3 F5 49              2339 	mov	(_iterateStateMachine_sloc10_1_0 + 1),a
   11F5 A3                 2340 	inc	dptr
   11F6 E0                 2341 	movx	a,@dptr
   11F7 F5 4A              2342 	mov	(_iterateStateMachine_sloc10_1_0 + 2),a
   11F9 8B 82              2343 	mov	dpl,r3
   11FB 8C 83              2344 	mov	dph,r4
   11FD E5 48              2345 	mov	a,_iterateStateMachine_sloc10_1_0
   11FF F0                 2346 	movx	@dptr,a
   1200 A3                 2347 	inc	dptr
   1201 E5 49              2348 	mov	a,(_iterateStateMachine_sloc10_1_0 + 1)
   1203 F0                 2349 	movx	@dptr,a
   1204 A3                 2350 	inc	dptr
   1205 E5 4A              2351 	mov	a,(_iterateStateMachine_sloc10_1_0 + 2)
   1207 F0                 2352 	movx	@dptr,a
                           2353 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:320: printf("\t\t\t\t\ttargetHierarchy[%d] = %s\n", targetIndex, stateBeingProcessed->stateName) ;
   1208 74 06              2354 	mov	a,#0x06
   120A 25 48              2355 	add	a,_iterateStateMachine_sloc10_1_0
   120C FB                 2356 	mov	r3,a
   120D E4                 2357 	clr	a
   120E 35 49              2358 	addc	a,(_iterateStateMachine_sloc10_1_0 + 1)
   1210 FC                 2359 	mov	r4,a
   1211 A8 4A              2360 	mov	r0,(_iterateStateMachine_sloc10_1_0 + 2)
   1213 8B 82              2361 	mov	dpl,r3
   1215 8C 83              2362 	mov	dph,r4
   1217 88 F0              2363 	mov	b,r0
   1219 12 3E 7B           2364 	lcall	__gptrget
   121C FB                 2365 	mov	r3,a
   121D A3                 2366 	inc	dptr
   121E 12 3E 7B           2367 	lcall	__gptrget
   1221 FC                 2368 	mov	r4,a
   1222 A3                 2369 	inc	dptr
   1223 12 3E 7B           2370 	lcall	__gptrget
   1226 F8                 2371 	mov	r0,a
   1227 8A 01              2372 	mov	ar1,r2
   1229 7D 00              2373 	mov	r5,#0x00
   122B C0 02              2374 	push	ar2
   122D C0 05              2375 	push	ar5
   122F C0 06              2376 	push	ar6
   1231 C0 07              2377 	push	ar7
   1233 C0 03              2378 	push	ar3
   1235 C0 04              2379 	push	ar4
   1237 C0 00              2380 	push	ar0
   1239 C0 01              2381 	push	ar1
   123B C0 05              2382 	push	ar5
   123D 74 71              2383 	mov	a,#__str_19
   123F C0 E0              2384 	push	acc
   1241 74 40              2385 	mov	a,#(__str_19 >> 8)
   1243 C0 E0              2386 	push	acc
   1245 74 80              2387 	mov	a,#0x80
   1247 C0 E0              2388 	push	acc
   1249 12 36 2F           2389 	lcall	_printf
   124C E5 81              2390 	mov	a,sp
   124E 24 F8              2391 	add	a,#0xf8
   1250 F5 81              2392 	mov	sp,a
   1252 D0 07              2393 	pop	ar7
   1254 D0 06              2394 	pop	ar6
   1256 D0 05              2395 	pop	ar5
   1258 D0 02              2396 	pop	ar2
                           2397 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:322: if(stateBeingProcessed == source)
   125A E5 45              2398 	mov	a,_iterateStateMachine_sloc9_1_0
   125C B5 48 0C           2399 	cjne	a,_iterateStateMachine_sloc10_1_0,00226$
   125F E5 46              2400 	mov	a,(_iterateStateMachine_sloc9_1_0 + 1)
   1261 B5 49 07           2401 	cjne	a,(_iterateStateMachine_sloc10_1_0 + 1),00226$
   1264 E5 47              2402 	mov	a,(_iterateStateMachine_sloc9_1_0 + 2)
   1266 B5 4A 02           2403 	cjne	a,(_iterateStateMachine_sloc10_1_0 + 2),00226$
   1269 80 09              2404 	sjmp	00227$
   126B                    2405 00226$:
   126B D0 07              2406 	pop	ar7
   126D D0 06              2407 	pop	ar6
   126F D0 05              2408 	pop	ar5
   1271 02 13 4C           2409 	ljmp	00127$
   1274                    2410 00227$:
                           2411 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:324: printf("\t\t\t\t\t\tFound source as ancestor of target\n") ;
   1274 74 90              2412 	mov	a,#__str_20
   1276 C0 E0              2413 	push	acc
   1278 74 40              2414 	mov	a,#(__str_20 >> 8)
   127A C0 E0              2415 	push	acc
   127C 74 80              2416 	mov	a,#0x80
   127E C0 E0              2417 	push	acc
   1280 12 36 2F           2418 	lcall	_printf
   1283 15 81              2419 	dec	sp
   1285 15 81              2420 	dec	sp
   1287 15 81              2421 	dec	sp
   1289 D0 07              2422 	pop	ar7
   128B D0 06              2423 	pop	ar6
   128D D0 05              2424 	pop	ar5
                           2425 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:326: while(targetIndex--)
   128F 90 01 3C           2426 	mov	dptr,#_iterateStateMachine_targetIndex_4_15
   1292 E0                 2427 	movx	a,@dptr
   1293 FB                 2428 	mov	r3,a
   1294                    2429 00123$:
   1294 8B 04              2430 	mov	ar4,r3
   1296 1B                 2431 	dec	r3
   1297 EC                 2432 	mov	a,r4
   1298 70 03              2433 	jnz	00228$
   129A 02 13 23           2434 	ljmp	00197$
   129D                    2435 00228$:
                           2436 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:328: printf("\t\t\t\t") ;
   129D C0 05              2437 	push	ar5
   129F C0 06              2438 	push	ar6
   12A1 C0 07              2439 	push	ar7
   12A3 C0 03              2440 	push	ar3
   12A5 C0 05              2441 	push	ar5
   12A7 C0 06              2442 	push	ar6
   12A9 C0 07              2443 	push	ar7
   12AB 74 4A              2444 	mov	a,#__str_17
   12AD C0 E0              2445 	push	acc
   12AF 74 40              2446 	mov	a,#(__str_17 >> 8)
   12B1 C0 E0              2447 	push	acc
   12B3 74 80              2448 	mov	a,#0x80
   12B5 C0 E0              2449 	push	acc
   12B7 12 36 2F           2450 	lcall	_printf
   12BA 15 81              2451 	dec	sp
   12BC 15 81              2452 	dec	sp
   12BE 15 81              2453 	dec	sp
   12C0 D0 07              2454 	pop	ar7
   12C2 D0 06              2455 	pop	ar6
   12C4 D0 05              2456 	pop	ar5
   12C6 D0 03              2457 	pop	ar3
                           2458 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:329: callStateHandler(sm, targetHierarchy[targetIndex], &enterEvent) ;
   12C8 90 00 CD           2459 	mov	dptr,#_iterateStateMachine_sm_1_1
   12CB E0                 2460 	movx	a,@dptr
   12CC FC                 2461 	mov	r4,a
   12CD A3                 2462 	inc	dptr
   12CE E0                 2463 	movx	a,@dptr
   12CF F8                 2464 	mov	r0,a
   12D0 A3                 2465 	inc	dptr
   12D1 E0                 2466 	movx	a,@dptr
   12D2 F9                 2467 	mov	r1,a
   12D3 EB                 2468 	mov	a,r3
   12D4 75 F0 03           2469 	mov	b,#0x03
   12D7 A4                 2470 	mul	ab
   12D8 24 0C              2471 	add	a,#_iterateStateMachine_targetHierarchy_4_15
   12DA F5 82              2472 	mov	dpl,a
   12DC E4                 2473 	clr	a
   12DD 34 01              2474 	addc	a,#(_iterateStateMachine_targetHierarchy_4_15 >> 8)
   12DF F5 83              2475 	mov	dph,a
   12E1 E0                 2476 	movx	a,@dptr
   12E2 FD                 2477 	mov	r5,a
   12E3 A3                 2478 	inc	dptr
   12E4 E0                 2479 	movx	a,@dptr
   12E5 FE                 2480 	mov	r6,a
   12E6 A3                 2481 	inc	dptr
   12E7 E0                 2482 	movx	a,@dptr
   12E8 FF                 2483 	mov	r7,a
   12E9 90 00 C4           2484 	mov	dptr,#_callStateHandler_PARM_2
   12EC ED                 2485 	mov	a,r5
   12ED F0                 2486 	movx	@dptr,a
   12EE A3                 2487 	inc	dptr
   12EF EE                 2488 	mov	a,r6
   12F0 F0                 2489 	movx	@dptr,a
   12F1 A3                 2490 	inc	dptr
   12F2 EF                 2491 	mov	a,r7
   12F3 F0                 2492 	movx	@dptr,a
   12F4 90 00 C7           2493 	mov	dptr,#_callStateHandler_PARM_3
   12F7 74 D1              2494 	mov	a,#_iterateStateMachine_enterEvent_1_1
   12F9 F0                 2495 	movx	@dptr,a
   12FA A3                 2496 	inc	dptr
   12FB 74 00              2497 	mov	a,#(_iterateStateMachine_enterEvent_1_1 >> 8)
   12FD F0                 2498 	movx	@dptr,a
   12FE A3                 2499 	inc	dptr
   12FF E4                 2500 	clr	a
   1300 F0                 2501 	movx	@dptr,a
   1301 8C 82              2502 	mov	dpl,r4
   1303 88 83              2503 	mov	dph,r0
   1305 89 F0              2504 	mov	b,r1
   1307 C0 03              2505 	push	ar3
   1309 C0 05              2506 	push	ar5
   130B C0 06              2507 	push	ar6
   130D C0 07              2508 	push	ar7
   130F 12 06 D5           2509 	lcall	_callStateHandler
   1312 D0 07              2510 	pop	ar7
   1314 D0 06              2511 	pop	ar6
   1316 D0 05              2512 	pop	ar5
   1318 D0 03              2513 	pop	ar3
   131A D0 07              2514 	pop	ar7
   131C D0 06              2515 	pop	ar6
   131E D0 05              2516 	pop	ar5
   1320 02 12 94           2517 	ljmp	00123$
   1323                    2518 00197$:
   1323 90 01 3C           2519 	mov	dptr,#_iterateStateMachine_targetIndex_4_15
   1326 EB                 2520 	mov	a,r3
   1327 F0                 2521 	movx	@dptr,a
                           2522 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:332: sm->currentState = target ;
   1328 74 06              2523 	mov	a,#0x06
   132A 25 39              2524 	add	a,_iterateStateMachine_sloc5_1_0
   132C FB                 2525 	mov	r3,a
   132D E4                 2526 	clr	a
   132E 35 3A              2527 	addc	a,(_iterateStateMachine_sloc5_1_0 + 1)
   1330 FC                 2528 	mov	r4,a
   1331 A8 3B              2529 	mov	r0,(_iterateStateMachine_sloc5_1_0 + 2)
   1333 8B 82              2530 	mov	dpl,r3
   1335 8C 83              2531 	mov	dph,r4
   1337 88 F0              2532 	mov	b,r0
   1339 E5 3F              2533 	mov	a,_iterateStateMachine_sloc7_1_0
   133B 12 32 6F           2534 	lcall	__gptrput
   133E A3                 2535 	inc	dptr
   133F E5 40              2536 	mov	a,(_iterateStateMachine_sloc7_1_0 + 1)
   1341 12 32 6F           2537 	lcall	__gptrput
   1344 A3                 2538 	inc	dptr
   1345 E5 41              2539 	mov	a,(_iterateStateMachine_sloc7_1_0 + 2)
   1347 12 32 6F           2540 	lcall	__gptrput
                           2541 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:334: break ;
   134A 80 3B              2542 	sjmp	00132$
   134C                    2543 00127$:
                           2544 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:337: targetIndex++ ;
   134C 0A                 2545 	inc	r2
   134D 90 01 3C           2546 	mov	dptr,#_iterateStateMachine_targetIndex_4_15
   1350 EA                 2547 	mov	a,r2
   1351 F0                 2548 	movx	@dptr,a
                           2549 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:338: stateBeingProcessed = (state_t*)(stateBeingProcessed->parent) ;
   1352 85 48 82           2550 	mov	dpl,_iterateStateMachine_sloc10_1_0
   1355 85 49 83           2551 	mov	dph,(_iterateStateMachine_sloc10_1_0 + 1)
   1358 85 4A F0           2552 	mov	b,(_iterateStateMachine_sloc10_1_0 + 2)
   135B 12 3E 7B           2553 	lcall	__gptrget
   135E FB                 2554 	mov	r3,a
   135F A3                 2555 	inc	dptr
   1360 12 3E 7B           2556 	lcall	__gptrget
   1363 FC                 2557 	mov	r4,a
   1364 A3                 2558 	inc	dptr
   1365 12 3E 7B           2559 	lcall	__gptrget
   1368 F8                 2560 	mov	r0,a
   1369 90 00 D8           2561 	mov	dptr,#_iterateStateMachine_stateBeingProcessed_2_3
   136C EB                 2562 	mov	a,r3
   136D F0                 2563 	movx	@dptr,a
   136E A3                 2564 	inc	dptr
   136F EC                 2565 	mov	a,r4
   1370 F0                 2566 	movx	@dptr,a
   1371 A3                 2567 	inc	dptr
   1372 E8                 2568 	mov	a,r0
   1373 F0                 2569 	movx	@dptr,a
                           2570 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:339: } while(stateBeingProcessed) ;
   1374 90 00 D8           2571 	mov	dptr,#_iterateStateMachine_stateBeingProcessed_2_3
   1377 E0                 2572 	movx	a,@dptr
   1378 FB                 2573 	mov	r3,a
   1379 A3                 2574 	inc	dptr
   137A E0                 2575 	movx	a,@dptr
   137B FC                 2576 	mov	r4,a
   137C A3                 2577 	inc	dptr
   137D E0                 2578 	movx	a,@dptr
   137E F8                 2579 	mov	r0,a
   137F EB                 2580 	mov	a,r3
   1380 4C                 2581 	orl	a,r4
   1381 48                 2582 	orl	a,r0
   1382 60 03              2583 	jz	00229$
   1384 02 11 D9           2584 	ljmp	00128$
   1387                    2585 00229$:
   1387                    2586 00132$:
                           2587 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:342: if(sm->currentState != target)
   1387 8D 82              2588 	mov	dpl,r5
   1389 8E 83              2589 	mov	dph,r6
   138B 8F F0              2590 	mov	b,r7
   138D 12 3E 7B           2591 	lcall	__gptrget
   1390 FA                 2592 	mov	r2,a
   1391 A3                 2593 	inc	dptr
   1392 12 3E 7B           2594 	lcall	__gptrget
   1395 FB                 2595 	mov	r3,a
   1396 A3                 2596 	inc	dptr
   1397 12 3E 7B           2597 	lcall	__gptrget
   139A FC                 2598 	mov	r4,a
   139B EA                 2599 	mov	a,r2
   139C B5 3F 0B           2600 	cjne	a,_iterateStateMachine_sloc7_1_0,00230$
   139F EB                 2601 	mov	a,r3
   13A0 B5 40 07           2602 	cjne	a,(_iterateStateMachine_sloc7_1_0 + 1),00230$
   13A3 EC                 2603 	mov	a,r4
   13A4 B5 41 03           2604 	cjne	a,(_iterateStateMachine_sloc7_1_0 + 2),00230$
   13A7 02 17 30           2605 	ljmp	00155$
   13AA                    2606 00230$:
                           2607 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:346: printf("\t\t\t\tStill haven't found relationship. Scanning for LCA...\n") ;
   13AA C0 05              2608 	push	ar5
   13AC C0 06              2609 	push	ar6
   13AE C0 07              2610 	push	ar7
   13B0 C0 05              2611 	push	ar5
   13B2 C0 06              2612 	push	ar6
   13B4 C0 07              2613 	push	ar7
   13B6 74 BA              2614 	mov	a,#__str_21
   13B8 C0 E0              2615 	push	acc
   13BA 74 40              2616 	mov	a,#(__str_21 >> 8)
   13BC C0 E0              2617 	push	acc
   13BE 74 80              2618 	mov	a,#0x80
   13C0 C0 E0              2619 	push	acc
   13C2 12 36 2F           2620 	lcall	_printf
   13C5 15 81              2621 	dec	sp
   13C7 15 81              2622 	dec	sp
   13C9 15 81              2623 	dec	sp
   13CB D0 07              2624 	pop	ar7
   13CD D0 06              2625 	pop	ar6
   13CF D0 05              2626 	pop	ar5
                           2627 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:347: LCA			= 0 ;
   13D1 90 01 3D           2628 	mov	dptr,#_iterateStateMachine_LCA_4_15
   13D4 E4                 2629 	clr	a
   13D5 F0                 2630 	movx	@dptr,a
   13D6 A3                 2631 	inc	dptr
   13D7 F0                 2632 	movx	@dptr,a
   13D8 A3                 2633 	inc	dptr
   13D9 F0                 2634 	movx	@dptr,a
                           2635 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:348: entryIndex	= targetIndex - 1 ;
   13DA 90 01 3C           2636 	mov	dptr,#_iterateStateMachine_targetIndex_4_15
   13DD E0                 2637 	movx	a,@dptr
   13DE FA                 2638 	mov	r2,a
   13DF 1A                 2639 	dec	r2
   13E0 90 01 40           2640 	mov	dptr,#_iterateStateMachine_entryIndex_4_15
   13E3 EA                 2641 	mov	a,r2
   13E4 F0                 2642 	movx	@dptr,a
                           2643 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:349: exitIndex	= sourceIndex - 1 ;
   13E5 90 01 0B           2644 	mov	dptr,#_iterateStateMachine_sourceIndex_4_15
   13E8 E0                 2645 	movx	a,@dptr
   13E9 FB                 2646 	mov	r3,a
   13EA 1B                 2647 	dec	r3
                           2648 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:350: printf("\t\t\t\t\tentryIndex = %d, exitIndex = %d\n", entryIndex, exitIndex) ;
   13EB 8B 04              2649 	mov	ar4,r3
   13ED 78 00              2650 	mov	r0,#0x00
   13EF 8A 01              2651 	mov	ar1,r2
   13F1 7D 00              2652 	mov	r5,#0x00
   13F3 C0 02              2653 	push	ar2
   13F5 C0 03              2654 	push	ar3
   13F7 C0 05              2655 	push	ar5
   13F9 C0 06              2656 	push	ar6
   13FB C0 07              2657 	push	ar7
   13FD C0 04              2658 	push	ar4
   13FF C0 00              2659 	push	ar0
   1401 C0 01              2660 	push	ar1
   1403 C0 05              2661 	push	ar5
   1405 74 F5              2662 	mov	a,#__str_22
   1407 C0 E0              2663 	push	acc
   1409 74 40              2664 	mov	a,#(__str_22 >> 8)
   140B C0 E0              2665 	push	acc
   140D 74 80              2666 	mov	a,#0x80
   140F C0 E0              2667 	push	acc
   1411 12 36 2F           2668 	lcall	_printf
   1414 E5 81              2669 	mov	a,sp
   1416 24 F9              2670 	add	a,#0xf9
   1418 F5 81              2671 	mov	sp,a
   141A D0 07              2672 	pop	ar7
   141C D0 06              2673 	pop	ar6
   141E D0 05              2674 	pop	ar5
   1420 D0 03              2675 	pop	ar3
   1422 D0 02              2676 	pop	ar2
                           2677 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:399: printf("\t\tEvent queue empty.\n") ;
   1424 D0 07              2678 	pop	ar7
   1426 D0 06              2679 	pop	ar6
   1428 D0 05              2680 	pop	ar5
                           2681 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:352: while(sourceHierarchy[exitIndex] == targetHierarchy[entryIndex])
   142A 7C 00              2682 	mov	r4,#0x00
   142C                    2683 00133$:
   142C C0 05              2684 	push	ar5
   142E C0 06              2685 	push	ar6
   1430 C0 07              2686 	push	ar7
   1432 EB                 2687 	mov	a,r3
   1433 75 F0 03           2688 	mov	b,#0x03
   1436 A4                 2689 	mul	ab
   1437 24 DB              2690 	add	a,#_iterateStateMachine_sourceHierarchy_4_15
   1439 F5 82              2691 	mov	dpl,a
   143B E4                 2692 	clr	a
   143C 34 00              2693 	addc	a,#(_iterateStateMachine_sourceHierarchy_4_15 >> 8)
   143E F5 83              2694 	mov	dph,a
   1440 E0                 2695 	movx	a,@dptr
   1441 F5 48              2696 	mov	_iterateStateMachine_sloc10_1_0,a
   1443 A3                 2697 	inc	dptr
   1444 E0                 2698 	movx	a,@dptr
   1445 F5 49              2699 	mov	(_iterateStateMachine_sloc10_1_0 + 1),a
   1447 A3                 2700 	inc	dptr
   1448 E0                 2701 	movx	a,@dptr
   1449 F5 4A              2702 	mov	(_iterateStateMachine_sloc10_1_0 + 2),a
   144B EA                 2703 	mov	a,r2
   144C 75 F0 03           2704 	mov	b,#0x03
   144F A4                 2705 	mul	ab
   1450 24 0C              2706 	add	a,#_iterateStateMachine_targetHierarchy_4_15
   1452 F5 82              2707 	mov	dpl,a
   1454 E4                 2708 	clr	a
   1455 34 01              2709 	addc	a,#(_iterateStateMachine_targetHierarchy_4_15 >> 8)
   1457 F5 83              2710 	mov	dph,a
   1459 E0                 2711 	movx	a,@dptr
   145A F8                 2712 	mov	r0,a
   145B A3                 2713 	inc	dptr
   145C E0                 2714 	movx	a,@dptr
   145D F9                 2715 	mov	r1,a
   145E A3                 2716 	inc	dptr
   145F E0                 2717 	movx	a,@dptr
   1460 FD                 2718 	mov	r5,a
   1461 E8                 2719 	mov	a,r0
   1462 B5 48 0A           2720 	cjne	a,_iterateStateMachine_sloc10_1_0,00231$
   1465 E9                 2721 	mov	a,r1
   1466 B5 49 06           2722 	cjne	a,(_iterateStateMachine_sloc10_1_0 + 1),00231$
   1469 ED                 2723 	mov	a,r5
   146A B5 4A 02           2724 	cjne	a,(_iterateStateMachine_sloc10_1_0 + 2),00231$
   146D 80 09              2725 	sjmp	00232$
   146F                    2726 00231$:
   146F D0 07              2727 	pop	ar7
   1471 D0 06              2728 	pop	ar6
   1473 D0 05              2729 	pop	ar5
   1475 02 14 F8           2730 	ljmp	00198$
   1478                    2731 00232$:
   1478 D0 07              2732 	pop	ar7
   147A D0 06              2733 	pop	ar6
                           2734 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:354: LCA = sourceHierarchy[exitIndex] ;
   147C C0 06              2735 	push	ar6
   147E C0 07              2736 	push	ar7
   1480 90 01 3D           2737 	mov	dptr,#_iterateStateMachine_LCA_4_15
   1483 E5 48              2738 	mov	a,_iterateStateMachine_sloc10_1_0
   1485 F0                 2739 	movx	@dptr,a
   1486 A3                 2740 	inc	dptr
   1487 E5 49              2741 	mov	a,(_iterateStateMachine_sloc10_1_0 + 1)
   1489 F0                 2742 	movx	@dptr,a
   148A A3                 2743 	inc	dptr
   148B E5 4A              2744 	mov	a,(_iterateStateMachine_sloc10_1_0 + 2)
   148D F0                 2745 	movx	@dptr,a
                           2746 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:356: entryIndex-- ;
   148E 1A                 2747 	dec	r2
   148F 90 01 40           2748 	mov	dptr,#_iterateStateMachine_entryIndex_4_15
   1492 EA                 2749 	mov	a,r2
   1493 F0                 2750 	movx	@dptr,a
                           2751 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:357: exitIndex-- ;
   1494 1B                 2752 	dec	r3
                           2753 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:359: printf("\t\t\t\t\tCurrent LCA candidate: %s\n", LCA->stateName) ;
   1495 90 01 3D           2754 	mov	dptr,#_iterateStateMachine_LCA_4_15
   1498 E0                 2755 	movx	a,@dptr
   1499 F8                 2756 	mov	r0,a
   149A A3                 2757 	inc	dptr
   149B E0                 2758 	movx	a,@dptr
   149C F9                 2759 	mov	r1,a
   149D A3                 2760 	inc	dptr
   149E E0                 2761 	movx	a,@dptr
   149F FD                 2762 	mov	r5,a
   14A0 74 06              2763 	mov	a,#0x06
   14A2 28                 2764 	add	a,r0
   14A3 F8                 2765 	mov	r0,a
   14A4 E4                 2766 	clr	a
   14A5 39                 2767 	addc	a,r1
   14A6 F9                 2768 	mov	r1,a
   14A7 88 82              2769 	mov	dpl,r0
   14A9 89 83              2770 	mov	dph,r1
   14AB 8D F0              2771 	mov	b,r5
   14AD 12 3E 7B           2772 	lcall	__gptrget
   14B0 F8                 2773 	mov	r0,a
   14B1 A3                 2774 	inc	dptr
   14B2 12 3E 7B           2775 	lcall	__gptrget
   14B5 F9                 2776 	mov	r1,a
   14B6 A3                 2777 	inc	dptr
   14B7 12 3E 7B           2778 	lcall	__gptrget
   14BA FD                 2779 	mov	r5,a
   14BB C0 02              2780 	push	ar2
   14BD C0 03              2781 	push	ar3
   14BF C0 04              2782 	push	ar4
   14C1 C0 05              2783 	push	ar5
   14C3 C0 06              2784 	push	ar6
   14C5 C0 07              2785 	push	ar7
   14C7 C0 00              2786 	push	ar0
   14C9 C0 01              2787 	push	ar1
   14CB C0 05              2788 	push	ar5
   14CD 74 1B              2789 	mov	a,#__str_23
   14CF C0 E0              2790 	push	acc
   14D1 74 41              2791 	mov	a,#(__str_23 >> 8)
   14D3 C0 E0              2792 	push	acc
   14D5 74 80              2793 	mov	a,#0x80
   14D7 C0 E0              2794 	push	acc
   14D9 12 36 2F           2795 	lcall	_printf
   14DC E5 81              2796 	mov	a,sp
   14DE 24 FA              2797 	add	a,#0xfa
   14E0 F5 81              2798 	mov	sp,a
   14E2 D0 07              2799 	pop	ar7
   14E4 D0 06              2800 	pop	ar6
   14E6 D0 05              2801 	pop	ar5
   14E8 D0 04              2802 	pop	ar4
   14EA D0 03              2803 	pop	ar3
   14EC D0 02              2804 	pop	ar2
                           2805 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:361: LCAindex++ ;
   14EE 0C                 2806 	inc	r4
   14EF D0 07              2807 	pop	ar7
   14F1 D0 06              2808 	pop	ar6
   14F3 D0 05              2809 	pop	ar5
   14F5 02 14 2C           2810 	ljmp	00133$
   14F8                    2811 00198$:
   14F8 90 01 40           2812 	mov	dptr,#_iterateStateMachine_entryIndex_4_15
   14FB EA                 2813 	mov	a,r2
   14FC F0                 2814 	movx	@dptr,a
                           2815 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:364: printf("\t\t\t\t\tLCA of %s and %s is: %s\n", source->stateName, target->stateName, LCA->stateName) ;
   14FD C0 05              2816 	push	ar5
   14FF C0 06              2817 	push	ar6
   1501 C0 07              2818 	push	ar7
   1503 90 01 3D           2819 	mov	dptr,#_iterateStateMachine_LCA_4_15
   1506 E0                 2820 	movx	a,@dptr
   1507 FC                 2821 	mov	r4,a
   1508 A3                 2822 	inc	dptr
   1509 E0                 2823 	movx	a,@dptr
   150A F8                 2824 	mov	r0,a
   150B A3                 2825 	inc	dptr
   150C E0                 2826 	movx	a,@dptr
   150D F9                 2827 	mov	r1,a
   150E 74 06              2828 	mov	a,#0x06
   1510 2C                 2829 	add	a,r4
   1511 FC                 2830 	mov	r4,a
   1512 E4                 2831 	clr	a
   1513 38                 2832 	addc	a,r0
   1514 F8                 2833 	mov	r0,a
   1515 8C 82              2834 	mov	dpl,r4
   1517 88 83              2835 	mov	dph,r0
   1519 89 F0              2836 	mov	b,r1
   151B 12 3E 7B           2837 	lcall	__gptrget
   151E FC                 2838 	mov	r4,a
   151F A3                 2839 	inc	dptr
   1520 12 3E 7B           2840 	lcall	__gptrget
   1523 F8                 2841 	mov	r0,a
   1524 A3                 2842 	inc	dptr
   1525 12 3E 7B           2843 	lcall	__gptrget
   1528 F9                 2844 	mov	r1,a
   1529 74 06              2845 	mov	a,#0x06
   152B 25 3F              2846 	add	a,_iterateStateMachine_sloc7_1_0
   152D FD                 2847 	mov	r5,a
   152E E4                 2848 	clr	a
   152F 35 40              2849 	addc	a,(_iterateStateMachine_sloc7_1_0 + 1)
   1531 FE                 2850 	mov	r6,a
   1532 AF 41              2851 	mov	r7,(_iterateStateMachine_sloc7_1_0 + 2)
   1534 8D 82              2852 	mov	dpl,r5
   1536 8E 83              2853 	mov	dph,r6
   1538 8F F0              2854 	mov	b,r7
   153A 12 3E 7B           2855 	lcall	__gptrget
   153D F5 48              2856 	mov	_iterateStateMachine_sloc10_1_0,a
   153F A3                 2857 	inc	dptr
   1540 12 3E 7B           2858 	lcall	__gptrget
   1543 F5 49              2859 	mov	(_iterateStateMachine_sloc10_1_0 + 1),a
   1545 A3                 2860 	inc	dptr
   1546 12 3E 7B           2861 	lcall	__gptrget
   1549 F5 4A              2862 	mov	(_iterateStateMachine_sloc10_1_0 + 2),a
   154B 74 06              2863 	mov	a,#0x06
   154D 25 45              2864 	add	a,_iterateStateMachine_sloc9_1_0
   154F FD                 2865 	mov	r5,a
   1550 E4                 2866 	clr	a
   1551 35 46              2867 	addc	a,(_iterateStateMachine_sloc9_1_0 + 1)
   1553 FE                 2868 	mov	r6,a
   1554 AF 47              2869 	mov	r7,(_iterateStateMachine_sloc9_1_0 + 2)
   1556 8D 82              2870 	mov	dpl,r5
   1558 8E 83              2871 	mov	dph,r6
   155A 8F F0              2872 	mov	b,r7
   155C 12 3E 7B           2873 	lcall	__gptrget
   155F FD                 2874 	mov	r5,a
   1560 A3                 2875 	inc	dptr
   1561 12 3E 7B           2876 	lcall	__gptrget
   1564 FE                 2877 	mov	r6,a
   1565 A3                 2878 	inc	dptr
   1566 12 3E 7B           2879 	lcall	__gptrget
   1569 FF                 2880 	mov	r7,a
   156A C0 02              2881 	push	ar2
   156C C0 03              2882 	push	ar3
   156E C0 05              2883 	push	ar5
   1570 C0 06              2884 	push	ar6
   1572 C0 07              2885 	push	ar7
   1574 C0 04              2886 	push	ar4
   1576 C0 00              2887 	push	ar0
   1578 C0 01              2888 	push	ar1
   157A C0 48              2889 	push	_iterateStateMachine_sloc10_1_0
   157C C0 49              2890 	push	(_iterateStateMachine_sloc10_1_0 + 1)
   157E C0 4A              2891 	push	(_iterateStateMachine_sloc10_1_0 + 2)
   1580 C0 05              2892 	push	ar5
   1582 C0 06              2893 	push	ar6
   1584 C0 07              2894 	push	ar7
   1586 74 3B              2895 	mov	a,#__str_24
   1588 C0 E0              2896 	push	acc
   158A 74 41              2897 	mov	a,#(__str_24 >> 8)
   158C C0 E0              2898 	push	acc
   158E 74 80              2899 	mov	a,#0x80
   1590 C0 E0              2900 	push	acc
   1592 12 36 2F           2901 	lcall	_printf
   1595 E5 81              2902 	mov	a,sp
   1597 24 F4              2903 	add	a,#0xf4
   1599 F5 81              2904 	mov	sp,a
   159B D0 07              2905 	pop	ar7
   159D D0 06              2906 	pop	ar6
   159F D0 05              2907 	pop	ar5
   15A1 D0 03              2908 	pop	ar3
   15A3 D0 02              2909 	pop	ar2
                           2910 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:365: printf("\t\t\t\t\tentryIndex = %d, exitIndex = %d\n", entryIndex, exitIndex) ;
   15A5 8B 04              2911 	mov	ar4,r3
   15A7 7D 00              2912 	mov	r5,#0x00
   15A9 7E 00              2913 	mov	r6,#0x00
   15AB C0 03              2914 	push	ar3
   15AD C0 05              2915 	push	ar5
   15AF C0 06              2916 	push	ar6
   15B1 C0 07              2917 	push	ar7
   15B3 C0 04              2918 	push	ar4
   15B5 C0 05              2919 	push	ar5
   15B7 C0 02              2920 	push	ar2
   15B9 C0 06              2921 	push	ar6
   15BB 74 F5              2922 	mov	a,#__str_22
   15BD C0 E0              2923 	push	acc
   15BF 74 40              2924 	mov	a,#(__str_22 >> 8)
   15C1 C0 E0              2925 	push	acc
   15C3 74 80              2926 	mov	a,#0x80
   15C5 C0 E0              2927 	push	acc
   15C7 12 36 2F           2928 	lcall	_printf
   15CA E5 81              2929 	mov	a,sp
   15CC 24 F9              2930 	add	a,#0xf9
   15CE F5 81              2931 	mov	sp,a
   15D0 D0 07              2932 	pop	ar7
   15D2 D0 06              2933 	pop	ar6
   15D4 D0 05              2934 	pop	ar5
   15D6 D0 03              2935 	pop	ar3
                           2936 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:367: sourceIndex	= exitIndex + 1 ;
   15D8 EB                 2937 	mov	a,r3
   15D9 04                 2938 	inc	a
   15DA F5 4B              2939 	mov	_iterateStateMachine_sloc11_1_0,a
                           2940 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:399: printf("\t\tEvent queue empty.\n") ;
   15DC D0 07              2941 	pop	ar7
   15DE D0 06              2942 	pop	ar6
   15E0 D0 05              2943 	pop	ar5
                           2944 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:370: while(exitIndex < sourceIndex)
   15E2 AA 4B              2945 	mov	r2,_iterateStateMachine_sloc11_1_0
   15E4 7B 00              2946 	mov	r3,#0x00
   15E6                    2947 00136$:
   15E6 C3                 2948 	clr	c
   15E7 EB                 2949 	mov	a,r3
   15E8 9A                 2950 	subb	a,r2
   15E9 40 03              2951 	jc	00233$
   15EB 02 16 79           2952 	ljmp	00138$
   15EE                    2953 00233$:
                           2954 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:372: printf("\t\t\t\t") ;
   15EE C0 05              2955 	push	ar5
   15F0 C0 06              2956 	push	ar6
   15F2 C0 07              2957 	push	ar7
   15F4 C0 02              2958 	push	ar2
   15F6 C0 03              2959 	push	ar3
   15F8 C0 05              2960 	push	ar5
   15FA C0 06              2961 	push	ar6
   15FC C0 07              2962 	push	ar7
   15FE 74 4A              2963 	mov	a,#__str_17
   1600 C0 E0              2964 	push	acc
   1602 74 40              2965 	mov	a,#(__str_17 >> 8)
   1604 C0 E0              2966 	push	acc
   1606 74 80              2967 	mov	a,#0x80
   1608 C0 E0              2968 	push	acc
   160A 12 36 2F           2969 	lcall	_printf
   160D 15 81              2970 	dec	sp
   160F 15 81              2971 	dec	sp
   1611 15 81              2972 	dec	sp
   1613 D0 07              2973 	pop	ar7
   1615 D0 06              2974 	pop	ar6
   1617 D0 05              2975 	pop	ar5
   1619 D0 03              2976 	pop	ar3
                           2977 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:374: callStateHandler(sm, sourceHierarchy[exitIndex], &exitEvent) ;
   161B 90 00 CD           2978 	mov	dptr,#_iterateStateMachine_sm_1_1
   161E E0                 2979 	movx	a,@dptr
   161F FC                 2980 	mov	r4,a
   1620 A3                 2981 	inc	dptr
   1621 E0                 2982 	movx	a,@dptr
   1622 F8                 2983 	mov	r0,a
   1623 A3                 2984 	inc	dptr
   1624 E0                 2985 	movx	a,@dptr
   1625 F9                 2986 	mov	r1,a
   1626 EB                 2987 	mov	a,r3
   1627 75 F0 03           2988 	mov	b,#0x03
   162A A4                 2989 	mul	ab
   162B 24 DB              2990 	add	a,#_iterateStateMachine_sourceHierarchy_4_15
   162D F5 82              2991 	mov	dpl,a
   162F E4                 2992 	clr	a
   1630 34 00              2993 	addc	a,#(_iterateStateMachine_sourceHierarchy_4_15 >> 8)
   1632 F5 83              2994 	mov	dph,a
   1634 E0                 2995 	movx	a,@dptr
   1635 FD                 2996 	mov	r5,a
   1636 A3                 2997 	inc	dptr
   1637 E0                 2998 	movx	a,@dptr
   1638 FE                 2999 	mov	r6,a
   1639 A3                 3000 	inc	dptr
   163A E0                 3001 	movx	a,@dptr
   163B FF                 3002 	mov	r7,a
   163C 90 00 C4           3003 	mov	dptr,#_callStateHandler_PARM_2
   163F ED                 3004 	mov	a,r5
   1640 F0                 3005 	movx	@dptr,a
   1641 A3                 3006 	inc	dptr
   1642 EE                 3007 	mov	a,r6
   1643 F0                 3008 	movx	@dptr,a
   1644 A3                 3009 	inc	dptr
   1645 EF                 3010 	mov	a,r7
   1646 F0                 3011 	movx	@dptr,a
   1647 90 00 C7           3012 	mov	dptr,#_callStateHandler_PARM_3
   164A 74 D2              3013 	mov	a,#_iterateStateMachine_exitEvent_1_1
   164C F0                 3014 	movx	@dptr,a
   164D A3                 3015 	inc	dptr
   164E 74 00              3016 	mov	a,#(_iterateStateMachine_exitEvent_1_1 >> 8)
   1650 F0                 3017 	movx	@dptr,a
   1651 A3                 3018 	inc	dptr
   1652 E4                 3019 	clr	a
   1653 F0                 3020 	movx	@dptr,a
   1654 8C 82              3021 	mov	dpl,r4
   1656 88 83              3022 	mov	dph,r0
   1658 89 F0              3023 	mov	b,r1
   165A C0 03              3024 	push	ar3
   165C C0 05              3025 	push	ar5
   165E C0 06              3026 	push	ar6
   1660 C0 07              3027 	push	ar7
   1662 12 06 D5           3028 	lcall	_callStateHandler
   1665 D0 07              3029 	pop	ar7
   1667 D0 06              3030 	pop	ar6
   1669 D0 05              3031 	pop	ar5
   166B D0 03              3032 	pop	ar3
   166D D0 02              3033 	pop	ar2
                           3034 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:376: exitIndex++ ;
   166F 0B                 3035 	inc	r3
   1670 D0 07              3036 	pop	ar7
   1672 D0 06              3037 	pop	ar6
   1674 D0 05              3038 	pop	ar5
   1676 02 15 E6           3039 	ljmp	00136$
   1679                    3040 00138$:
                           3041 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:379: targetIndex = entryIndex + 1 ;
   1679 90 01 40           3042 	mov	dptr,#_iterateStateMachine_entryIndex_4_15
   167C E0                 3043 	movx	a,@dptr
   167D FA                 3044 	mov	r2,a
   167E 0A                 3045 	inc	r2
                           3046 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:381: while(targetIndex--)
   167F                    3047 00139$:
   167F 8A 03              3048 	mov	ar3,r2
   1681 1A                 3049 	dec	r2
   1682 EB                 3050 	mov	a,r3
   1683 70 03              3051 	jnz	00234$
   1685 02 17 0E           3052 	ljmp	00141$
   1688                    3053 00234$:
                           3054 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:383: printf("\t\t\t\t") ;
   1688 C0 05              3055 	push	ar5
   168A C0 06              3056 	push	ar6
   168C C0 07              3057 	push	ar7
   168E C0 02              3058 	push	ar2
   1690 C0 05              3059 	push	ar5
   1692 C0 06              3060 	push	ar6
   1694 C0 07              3061 	push	ar7
   1696 74 4A              3062 	mov	a,#__str_17
   1698 C0 E0              3063 	push	acc
   169A 74 40              3064 	mov	a,#(__str_17 >> 8)
   169C C0 E0              3065 	push	acc
   169E 74 80              3066 	mov	a,#0x80
   16A0 C0 E0              3067 	push	acc
   16A2 12 36 2F           3068 	lcall	_printf
   16A5 15 81              3069 	dec	sp
   16A7 15 81              3070 	dec	sp
   16A9 15 81              3071 	dec	sp
   16AB D0 07              3072 	pop	ar7
   16AD D0 06              3073 	pop	ar6
   16AF D0 05              3074 	pop	ar5
   16B1 D0 02              3075 	pop	ar2
                           3076 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:384: callStateHandler(sm, targetHierarchy[targetIndex], &enterEvent) ;
   16B3 90 00 CD           3077 	mov	dptr,#_iterateStateMachine_sm_1_1
   16B6 E0                 3078 	movx	a,@dptr
   16B7 FB                 3079 	mov	r3,a
   16B8 A3                 3080 	inc	dptr
   16B9 E0                 3081 	movx	a,@dptr
   16BA FC                 3082 	mov	r4,a
   16BB A3                 3083 	inc	dptr
   16BC E0                 3084 	movx	a,@dptr
   16BD F8                 3085 	mov	r0,a
   16BE EA                 3086 	mov	a,r2
   16BF 75 F0 03           3087 	mov	b,#0x03
   16C2 A4                 3088 	mul	ab
   16C3 24 0C              3089 	add	a,#_iterateStateMachine_targetHierarchy_4_15
   16C5 F5 82              3090 	mov	dpl,a
   16C7 E4                 3091 	clr	a
   16C8 34 01              3092 	addc	a,#(_iterateStateMachine_targetHierarchy_4_15 >> 8)
   16CA F5 83              3093 	mov	dph,a
   16CC E0                 3094 	movx	a,@dptr
   16CD F9                 3095 	mov	r1,a
   16CE A3                 3096 	inc	dptr
   16CF E0                 3097 	movx	a,@dptr
   16D0 FD                 3098 	mov	r5,a
   16D1 A3                 3099 	inc	dptr
   16D2 E0                 3100 	movx	a,@dptr
   16D3 FE                 3101 	mov	r6,a
   16D4 90 00 C4           3102 	mov	dptr,#_callStateHandler_PARM_2
   16D7 E9                 3103 	mov	a,r1
   16D8 F0                 3104 	movx	@dptr,a
   16D9 A3                 3105 	inc	dptr
   16DA ED                 3106 	mov	a,r5
   16DB F0                 3107 	movx	@dptr,a
   16DC A3                 3108 	inc	dptr
   16DD EE                 3109 	mov	a,r6
   16DE F0                 3110 	movx	@dptr,a
   16DF 90 00 C7           3111 	mov	dptr,#_callStateHandler_PARM_3
   16E2 74 D1              3112 	mov	a,#_iterateStateMachine_enterEvent_1_1
   16E4 F0                 3113 	movx	@dptr,a
   16E5 A3                 3114 	inc	dptr
   16E6 74 00              3115 	mov	a,#(_iterateStateMachine_enterEvent_1_1 >> 8)
   16E8 F0                 3116 	movx	@dptr,a
   16E9 A3                 3117 	inc	dptr
   16EA E4                 3118 	clr	a
   16EB F0                 3119 	movx	@dptr,a
   16EC 8B 82              3120 	mov	dpl,r3
   16EE 8C 83              3121 	mov	dph,r4
   16F0 88 F0              3122 	mov	b,r0
   16F2 C0 02              3123 	push	ar2
   16F4 C0 05              3124 	push	ar5
   16F6 C0 06              3125 	push	ar6
   16F8 C0 07              3126 	push	ar7
   16FA 12 06 D5           3127 	lcall	_callStateHandler
   16FD D0 07              3128 	pop	ar7
   16FF D0 06              3129 	pop	ar6
   1701 D0 05              3130 	pop	ar5
   1703 D0 02              3131 	pop	ar2
   1705 D0 07              3132 	pop	ar7
   1707 D0 06              3133 	pop	ar6
   1709 D0 05              3134 	pop	ar5
   170B 02 16 7F           3135 	ljmp	00139$
   170E                    3136 00141$:
                           3137 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:387: sm->currentState = target ;
   170E 74 06              3138 	mov	a,#0x06
   1710 25 3C              3139 	add	a,_iterateStateMachine_sloc6_1_0
   1712 FA                 3140 	mov	r2,a
   1713 E4                 3141 	clr	a
   1714 35 3D              3142 	addc	a,(_iterateStateMachine_sloc6_1_0 + 1)
   1716 FB                 3143 	mov	r3,a
   1717 AC 3E              3144 	mov	r4,(_iterateStateMachine_sloc6_1_0 + 2)
   1719 8A 82              3145 	mov	dpl,r2
   171B 8B 83              3146 	mov	dph,r3
   171D 8C F0              3147 	mov	b,r4
   171F E5 3F              3148 	mov	a,_iterateStateMachine_sloc7_1_0
   1721 12 32 6F           3149 	lcall	__gptrput
   1724 A3                 3150 	inc	dptr
   1725 E5 40              3151 	mov	a,(_iterateStateMachine_sloc7_1_0 + 1)
   1727 12 32 6F           3152 	lcall	__gptrput
   172A A3                 3153 	inc	dptr
   172B E5 41              3154 	mov	a,(_iterateStateMachine_sloc7_1_0 + 2)
   172D 12 32 6F           3155 	lcall	__gptrput
   1730                    3156 00155$:
                           3157 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:395: forceTransition = true ;
   1730 D2 00              3158 	setb	_iterateStateMachine_forceTransition_1_1
   1732 02 09 ED           3159 	ljmp	00159$
   1735                    3160 00161$:
                           3161 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:399: printf("\t\tEvent queue empty.\n") ;
   1735 74 59              3162 	mov	a,#__str_25
   1737 C0 E0              3163 	push	acc
   1739 74 41              3164 	mov	a,#(__str_25 >> 8)
   173B C0 E0              3165 	push	acc
   173D 74 80              3166 	mov	a,#0x80
   173F C0 E0              3167 	push	acc
   1741 12 36 2F           3168 	lcall	_printf
   1744 15 81              3169 	dec	sp
   1746 15 81              3170 	dec	sp
   1748 15 81              3171 	dec	sp
   174A 22                 3172 	ret
                           3173 	.area CSEG    (CODE)
                           3174 	.area CONST   (CODE)
   3EC3                    3175 __str_0:
   3EC3 09                 3176 	.db 0x09
   3EC4 09                 3177 	.db 0x09
   3EC5 09                 3178 	.db 0x09
   3EC6 43 61 6C 6C 69 6E  3179 	.ascii "Calling state: %s, event: %s, "
        67 20 73 74 61 74
        65 3A 20 25 73 2C
        20 65 76 65 6E 74
        3A 20 25 73 2C 20
   3EE4 00                 3180 	.db 0x00
   3EE5                    3181 __str_1:
   3EE5 3C 55 53 45 52 5F  3182 	.ascii "<USER_EVENT>"
        45 56 45 4E 54 3E
   3EF1 00                 3183 	.db 0x00
   3EF2                    3184 __str_2:
   3EF2 72 65 73 70 6F 6E  3185 	.ascii "response: %s "
        73 65 3A 20 25 73
        20
   3EFF 00                 3186 	.db 0x00
   3F00                    3187 __str_3:
   3F00 74 6F 20 25 73 20  3188 	.ascii "to %s "
   3F06 00                 3189 	.db 0x00
   3F07                    3190 __str_4:
   3F07 0A                 3191 	.db 0x0A
   3F08 00                 3192 	.db 0x00
   3F09                    3193 __str_5:
   3F09 09                 3194 	.db 0x09
   3F0A 69 74 65 72 61 74  3195 	.ascii "iterating %s"
        69 6E 67 20 25 73
   3F16 0A                 3196 	.db 0x0A
   3F17 00                 3197 	.db 0x00
   3F18                    3198 __str_6:
   3F18 09                 3199 	.db 0x09
   3F19 09                 3200 	.db 0x09
   3F1A 69 6E 69 74 69 61  3201 	.ascii "initializing..."
        6C 69 7A 69 6E 67
        2E 2E 2E
   3F29 0A                 3202 	.db 0x0A
   3F2A 00                 3203 	.db 0x00
   3F2B                    3204 __str_7:
   3F2B 09                 3205 	.db 0x09
   3F2C 09                 3206 	.db 0x09
   3F2D 50 72 6F 63 65 73  3207 	.ascii "Processing event..."
        73 69 6E 67 20 65
        76 65 6E 74 2E 2E
        2E
   3F40 0A                 3208 	.db 0x0A
   3F41 00                 3209 	.db 0x00
   3F42                    3210 __str_8:
   3F42 09                 3211 	.db 0x09
   3F43 09                 3212 	.db 0x09
   3F44 09                 3213 	.db 0x09
   3F45 09                 3214 	.db 0x09
   3F46 09                 3215 	.db 0x09
   3F47 09                 3216 	.db 0x09
   3F48 09                 3217 	.db 0x09
   3F49 6D 6F 76 69 6E 67  3218 	.ascii "moving to parent: %s"
        20 74 6F 20 70 61
        72 65 6E 74 3A 20
        25 73
   3F5D 0A                 3219 	.db 0x0A
   3F5E 00                 3220 	.db 0x00
   3F5F                    3221 __str_9:
   3F5F 3C 72 6F 6F 74 3E  3222 	.ascii "<root>"
   3F65 00                 3223 	.db 0x00
   3F66                    3224 __str_10:
   3F66 09                 3225 	.db 0x09
   3F67 09                 3226 	.db 0x09
   3F68 09                 3227 	.db 0x09
   3F69 09                 3228 	.db 0x09
   3F6A 53 65 6C 66 20 74  3229 	.ascii "Self transition."
        72 61 6E 73 69 74
        69 6F 6E 2E
   3F7A 0A                 3230 	.db 0x0A
   3F7B 00                 3231 	.db 0x00
   3F7C                    3232 __str_11:
   3F7C 09                 3233 	.db 0x09
   3F7D 09                 3234 	.db 0x09
   3F7E 09                 3235 	.db 0x09
   3F7F 09                 3236 	.db 0x09
   3F80 54 72 61 6E 73 69  3237 	.ascii "Transition to direct child."
        74 69 6F 6E 20 74
        6F 20 64 69 72 65
        63 74 20 63 68 69
        6C 64 2E
   3F9B 0A                 3238 	.db 0x0A
   3F9C 00                 3239 	.db 0x00
   3F9D                    3240 __str_12:
   3F9D 09                 3241 	.db 0x09
   3F9E 09                 3242 	.db 0x09
   3F9F 09                 3243 	.db 0x09
   3FA0 09                 3244 	.db 0x09
   3FA1 54 72 61 6E 73 69  3245 	.ascii "Transition to direct peer."
        74 69 6F 6E 20 74
        6F 20 64 69 72 65
        63 74 20 70 65 65
        72 2E
   3FBB 0A                 3246 	.db 0x0A
   3FBC 00                 3247 	.db 0x00
   3FBD                    3248 __str_13:
   3FBD 09                 3249 	.db 0x09
   3FBE 09                 3250 	.db 0x09
   3FBF 09                 3251 	.db 0x09
   3FC0 09                 3252 	.db 0x09
   3FC1 54 72 61 6E 73 69  3253 	.ascii "Transition to direct parent."
        74 69 6F 6E 20 74
        6F 20 64 69 72 65
        63 74 20 70 61 72
        65 6E 74 2E
   3FDD 0A                 3254 	.db 0x0A
   3FDE 00                 3255 	.db 0x00
   3FDF                    3256 __str_14:
   3FDF 09                 3257 	.db 0x09
   3FE0 09                 3258 	.db 0x09
   3FE1 09                 3259 	.db 0x09
   3FE2 09                 3260 	.db 0x09
   3FE3 53 63 61 6E 6E 69  3261 	.ascii "Scanning source hierarchy..."
        6E 67 20 73 6F 75
        72 63 65 20 68 69
        65 72 61 72 63 68
        79 2E 2E 2E
   3FFF 0A                 3262 	.db 0x0A
   4000 00                 3263 	.db 0x00
   4001                    3264 __str_15:
   4001 09                 3265 	.db 0x09
   4002 09                 3266 	.db 0x09
   4003 09                 3267 	.db 0x09
   4004 09                 3268 	.db 0x09
   4005 09                 3269 	.db 0x09
   4006 73 6F 75 72 63 65  3270 	.ascii "sourceHierarchy[%d] = %s"
        48 69 65 72 61 72
        63 68 79 5B 25 64
        5D 20 3D 20 25 73
   401E 0A                 3271 	.db 0x0A
   401F 00                 3272 	.db 0x00
   4020                    3273 __str_16:
   4020 09                 3274 	.db 0x09
   4021 09                 3275 	.db 0x09
   4022 09                 3276 	.db 0x09
   4023 09                 3277 	.db 0x09
   4024 09                 3278 	.db 0x09
   4025 09                 3279 	.db 0x09
   4026 46 6F 75 6E 64 20  3280 	.ascii "Found target as ancestor of source"
        74 61 72 67 65 74
        20 61 73 20 61 6E
        63 65 73 74 6F 72
        20 6F 66 20 73 6F
        75 72 63 65
   4048 0A                 3281 	.db 0x0A
   4049 00                 3282 	.db 0x00
   404A                    3283 __str_17:
   404A 09                 3284 	.db 0x09
   404B 09                 3285 	.db 0x09
   404C 09                 3286 	.db 0x09
   404D 09                 3287 	.db 0x09
   404E 00                 3288 	.db 0x00
   404F                    3289 __str_18:
   404F 09                 3290 	.db 0x09
   4050 09                 3291 	.db 0x09
   4051 09                 3292 	.db 0x09
   4052 09                 3293 	.db 0x09
   4053 53 63 61 6E 6E 69  3294 	.ascii "Scanning target hierarchy..."
        6E 67 20 74 61 72
        67 65 74 20 68 69
        65 72 61 72 63 68
        79 2E 2E 2E
   406F 0A                 3295 	.db 0x0A
   4070 00                 3296 	.db 0x00
   4071                    3297 __str_19:
   4071 09                 3298 	.db 0x09
   4072 09                 3299 	.db 0x09
   4073 09                 3300 	.db 0x09
   4074 09                 3301 	.db 0x09
   4075 09                 3302 	.db 0x09
   4076 74 61 72 67 65 74  3303 	.ascii "targetHierarchy[%d] = %s"
        48 69 65 72 61 72
        63 68 79 5B 25 64
        5D 20 3D 20 25 73
   408E 0A                 3304 	.db 0x0A
   408F 00                 3305 	.db 0x00
   4090                    3306 __str_20:
   4090 09                 3307 	.db 0x09
   4091 09                 3308 	.db 0x09
   4092 09                 3309 	.db 0x09
   4093 09                 3310 	.db 0x09
   4094 09                 3311 	.db 0x09
   4095 09                 3312 	.db 0x09
   4096 46 6F 75 6E 64 20  3313 	.ascii "Found source as ancestor of target"
        73 6F 75 72 63 65
        20 61 73 20 61 6E
        63 65 73 74 6F 72
        20 6F 66 20 74 61
        72 67 65 74
   40B8 0A                 3314 	.db 0x0A
   40B9 00                 3315 	.db 0x00
   40BA                    3316 __str_21:
   40BA 09                 3317 	.db 0x09
   40BB 09                 3318 	.db 0x09
   40BC 09                 3319 	.db 0x09
   40BD 09                 3320 	.db 0x09
   40BE 53 74 69 6C 6C 20  3321 	.ascii "Still haven't found relationship. Scanning for LCA..."
        68 61 76 65 6E 27
        74 20 66 6F 75 6E
        64 20 72 65 6C 61
        74 69 6F 6E 73 68
        69 70 2E 20 53 63
        61 6E 6E 69 6E 67
        20 66 6F 72 20 4C
        43 41 2E 2E 2E
   40F3 0A                 3322 	.db 0x0A
   40F4 00                 3323 	.db 0x00
   40F5                    3324 __str_22:
   40F5 09                 3325 	.db 0x09
   40F6 09                 3326 	.db 0x09
   40F7 09                 3327 	.db 0x09
   40F8 09                 3328 	.db 0x09
   40F9 09                 3329 	.db 0x09
   40FA 65 6E 74 72 79 49  3330 	.ascii "entryIndex = %d, exitIndex = %d"
        6E 64 65 78 20 3D
        20 25 64 2C 20 65
        78 69 74 49 6E 64
        65 78 20 3D 20 25
        64
   4119 0A                 3331 	.db 0x0A
   411A 00                 3332 	.db 0x00
   411B                    3333 __str_23:
   411B 09                 3334 	.db 0x09
   411C 09                 3335 	.db 0x09
   411D 09                 3336 	.db 0x09
   411E 09                 3337 	.db 0x09
   411F 09                 3338 	.db 0x09
   4120 43 75 72 72 65 6E  3339 	.ascii "Current LCA candidate: %s"
        74 20 4C 43 41 20
        63 61 6E 64 69 64
        61 74 65 3A 20 25
        73
   4139 0A                 3340 	.db 0x0A
   413A 00                 3341 	.db 0x00
   413B                    3342 __str_24:
   413B 09                 3343 	.db 0x09
   413C 09                 3344 	.db 0x09
   413D 09                 3345 	.db 0x09
   413E 09                 3346 	.db 0x09
   413F 09                 3347 	.db 0x09
   4140 4C 43 41 20 6F 66  3348 	.ascii "LCA of %s and %s is: %s"
        20 25 73 20 61 6E
        64 20 25 73 20 69
        73 3A 20 25 73
   4157 0A                 3349 	.db 0x0A
   4158 00                 3350 	.db 0x00
   4159                    3351 __str_25:
   4159 09                 3352 	.db 0x09
   415A 09                 3353 	.db 0x09
   415B 45 76 65 6E 74 20  3354 	.ascii "Event queue empty."
        71 75 65 75 65 20
        65 6D 70 74 79 2E
   416D 0A                 3355 	.db 0x0A
   416E 00                 3356 	.db 0x00
   416F                    3357 __str_26:
   416F 53 55 42 53 54 41  3358 	.ascii "SUBSTATE_GET_INFO"
        54 45 5F 47 45 54
        5F 49 4E 46 4F
   4180 00                 3359 	.db 0x00
   4181                    3360 __str_27:
   4181 53 55 42 53 54 41  3361 	.ascii "SUBSTATE_ENTRY"
        54 45 5F 45 4E 54
        52 59
   418F 00                 3362 	.db 0x00
   4190                    3363 __str_28:
   4190 53 55 42 53 54 41  3364 	.ascii "SUBSTATE_INITIAL_TRANSITION"
        54 45 5F 49 4E 49
        54 49 41 4C 5F 54
        52 41 4E 53 49 54
        49 4F 4E
   41AB 00                 3365 	.db 0x00
   41AC                    3366 __str_29:
   41AC 53 55 42 53 54 41  3367 	.ascii "SUBSTATE_EXIT"
        54 45 5F 45 58 49
        54
   41B9 00                 3368 	.db 0x00
   41BA                    3369 __str_30:
   41BA 49 47 4E 4F 52 45  3370 	.ascii "IGNORED"
        44
   41C1 00                 3371 	.db 0x00
   41C2                    3372 __str_31:
   41C2 48 41 4E 44 4C 45  3373 	.ascii "HANDLED"
        44
   41C9 00                 3374 	.db 0x00
   41CA                    3375 __str_32:
   41CA 54 52 41 4E 53 49  3376 	.ascii "TRANSITION"
        54 49 4F 4E
   41D4 00                 3377 	.db 0x00
                           3378 	.area XINIT   (CODE)
   4453                    3379 __xinit__eventTypes:
   4453 6F 41 80           3380 	.byte __str_26,(__str_26 >> 8),#0x80
   4456 81 41 80           3381 	.byte __str_27,(__str_27 >> 8),#0x80
   4459 90 41 80           3382 	.byte __str_28,(__str_28 >> 8),#0x80
   445C AC 41 80           3383 	.byte __str_29,(__str_29 >> 8),#0x80
   445F                    3384 __xinit__responseTypes:
   445F BA 41 80           3385 	.byte __str_30,(__str_30 >> 8),#0x80
   4462 C2 41 80           3386 	.byte __str_31,(__str_31 >> 8),#0x80
   4465 CA 41 80           3387 	.byte __str_32,(__str_32 >> 8),#0x80
                           3388 	.area CABS    (ABS,CODE)
