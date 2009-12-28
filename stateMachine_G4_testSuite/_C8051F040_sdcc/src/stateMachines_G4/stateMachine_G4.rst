                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 2.9.0 #5416 (Mar 22 2009) (MINGW32)
                              4 ; This file was generated Mon Dec 28 03:35:58 2009
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
   0023                      41 _callStateHandler_sloc0_1_0:
   0023                      42 	.ds 3
   0026                      43 _callStateHandler_sloc1_1_0:
   0026                      44 	.ds 3
   0029                      45 _iterateStateMachine_sloc0_1_0:
   0029                      46 	.ds 3
   002C                      47 _iterateStateMachine_sloc1_1_0:
   002C                      48 	.ds 3
   002F                      49 _iterateStateMachine_sloc2_1_0:
   002F                      50 	.ds 3
   0032                      51 _iterateStateMachine_sloc3_1_0:
   0032                      52 	.ds 3
   0035                      53 _iterateStateMachine_sloc4_1_0:
   0035                      54 	.ds 3
   0038                      55 _iterateStateMachine_sloc5_1_0:
   0038                      56 	.ds 3
   003B                      57 _iterateStateMachine_sloc6_1_0:
   003B                      58 	.ds 3
   003E                      59 _iterateStateMachine_sloc7_1_0:
   003E                      60 	.ds 3
   0041                      61 _iterateStateMachine_sloc8_1_0:
   0041                      62 	.ds 1
   0042                      63 _iterateStateMachine_sloc9_1_0:
   0042                      64 	.ds 3
   0045                      65 _iterateStateMachine_sloc10_1_0:
   0045                      66 	.ds 3
                             67 ;--------------------------------------------------------
                             68 ; overlayable items in internal ram 
                             69 ;--------------------------------------------------------
                             70 	.area OSEG    (OVR,DATA)
                             71 ;--------------------------------------------------------
                             72 ; indirectly addressable internal ram data
                             73 ;--------------------------------------------------------
                             74 	.area ISEG    (DATA)
                             75 ;--------------------------------------------------------
                             76 ; absolute internal ram data
                             77 ;--------------------------------------------------------
                             78 	.area IABS    (ABS,DATA)
                             79 	.area IABS    (ABS,DATA)
                             80 ;--------------------------------------------------------
                             81 ; bit data
                             82 ;--------------------------------------------------------
                             83 	.area BSEG    (BIT)
                             84 ;--------------------------------------------------------
                             85 ; paged external ram data
                             86 ;--------------------------------------------------------
                             87 	.area PSEG    (PAG,XDATA)
                             88 ;--------------------------------------------------------
                             89 ; external ram data
                             90 ;--------------------------------------------------------
                             91 	.area XSEG    (XDATA)
   0023                      92 _stateMachines::
   0023                      93 	.ds 150
   00B9                      94 _allocateStateMachineMemory_sizeInBytes_1_1:
   00B9                      95 	.ds 2
   00BB                      96 _deallocateStateMachineMemory_instance_1_1:
   00BB                      97 	.ds 3
   00BE                      98 _registerStateMachine_sm_1_1:
   00BE                      99 	.ds 3
   00C1                     100 _unregisterStateMachine_sm_1_1:
   00C1                     101 	.ds 3
   00C4                     102 _callStateHandler_PARM_2:
   00C4                     103 	.ds 3
   00C7                     104 _callStateHandler_PARM_3:
   00C7                     105 	.ds 3
   00CA                     106 _callStateHandler_sm_1_1:
   00CA                     107 	.ds 3
   00CD                     108 _iterateStateMachine_sm_1_1:
   00CD                     109 	.ds 3
   00D0                     110 _iterateStateMachine_initialTransitionEvent_1_1:
   00D0                     111 	.ds 1
   00D1                     112 _iterateStateMachine_enterEvent_1_1:
   00D1                     113 	.ds 1
   00D2                     114 _iterateStateMachine_exitEvent_1_1:
   00D2                     115 	.ds 1
   00D3                     116 _iterateStateMachine_iterationMax_1_1:
   00D3                     117 	.ds 2
   00D5                     118 _iterateStateMachine_stateBeingProcessed_2_3:
   00D5                     119 	.ds 3
   00D8                     120 _iterateStateMachine_sourceHierarchy_4_13:
   00D8                     121 	.ds 48
   0108                     122 _iterateStateMachine_sourceIndex_4_13:
   0108                     123 	.ds 1
   0109                     124 _iterateStateMachine_targetHierarchy_4_13:
   0109                     125 	.ds 48
   0139                     126 _iterateStateMachine_targetIndex_4_13:
   0139                     127 	.ds 1
   013A                     128 _iterateStateMachine_LCA_4_13:
   013A                     129 	.ds 3
   013D                     130 _iterateStateMachine_entryIndex_4_13:
   013D                     131 	.ds 1
                            132 ;--------------------------------------------------------
                            133 ; absolute external ram data
                            134 ;--------------------------------------------------------
                            135 	.area XABS    (ABS,XDATA)
                            136 ;--------------------------------------------------------
                            137 ; external initialized ram data
                            138 ;--------------------------------------------------------
                            139 	.area XISEG   (XDATA)
   0F14                     140 _eventTypes::
   0F14                     141 	.ds 12
   0F20                     142 _responseTypes::
   0F20                     143 	.ds 9
                            144 	.area HOME    (CODE)
                            145 	.area GSINIT0 (CODE)
                            146 	.area GSINIT1 (CODE)
                            147 	.area GSINIT2 (CODE)
                            148 	.area GSINIT3 (CODE)
                            149 	.area GSINIT4 (CODE)
                            150 	.area GSINIT5 (CODE)
                            151 	.area GSINIT  (CODE)
                            152 	.area GSFINAL (CODE)
                            153 	.area CSEG    (CODE)
                            154 ;--------------------------------------------------------
                            155 ; global & static initialisations
                            156 ;--------------------------------------------------------
                            157 	.area HOME    (CODE)
                            158 	.area GSINIT  (CODE)
                            159 	.area GSFINAL (CODE)
                            160 	.area GSINIT  (CODE)
                            161 ;------------------------------------------------------------
                            162 ;Allocation info for local variables in function 'iterateStateMachine'
                            163 ;------------------------------------------------------------
                            164 ;sloc0                     Allocated with name '_iterateStateMachine_sloc0_1_0'
                            165 ;sloc1                     Allocated with name '_iterateStateMachine_sloc1_1_0'
                            166 ;sloc2                     Allocated with name '_iterateStateMachine_sloc2_1_0'
                            167 ;sloc3                     Allocated with name '_iterateStateMachine_sloc3_1_0'
                            168 ;sloc4                     Allocated with name '_iterateStateMachine_sloc4_1_0'
                            169 ;sloc5                     Allocated with name '_iterateStateMachine_sloc5_1_0'
                            170 ;sloc6                     Allocated with name '_iterateStateMachine_sloc6_1_0'
                            171 ;sloc7                     Allocated with name '_iterateStateMachine_sloc7_1_0'
                            172 ;sloc8                     Allocated with name '_iterateStateMachine_sloc8_1_0'
                            173 ;sloc9                     Allocated with name '_iterateStateMachine_sloc9_1_0'
                            174 ;sloc10                    Allocated with name '_iterateStateMachine_sloc10_1_0'
                            175 ;sm                        Allocated with name '_iterateStateMachine_sm_1_1'
                            176 ;initialTransitionEvent    Allocated with name '_iterateStateMachine_initialTransitionEvent_1_1'
                            177 ;enterEvent                Allocated with name '_iterateStateMachine_enterEvent_1_1'
                            178 ;exitEvent                 Allocated with name '_iterateStateMachine_exitEvent_1_1'
                            179 ;iterationMax              Allocated with name '_iterateStateMachine_iterationMax_1_1'
                            180 ;eventToProcess            Allocated with name '_iterateStateMachine_eventToProcess_2_3'
                            181 ;stateBeingProcessed       Allocated with name '_iterateStateMachine_stateBeingProcessed_2_3'
                            182 ;action                    Allocated with name '_iterateStateMachine_action_2_3'
                            183 ;source                    Allocated with name '_iterateStateMachine_source_3_8'
                            184 ;target                    Allocated with name '_iterateStateMachine_target_3_8'
                            185 ;sourceHierarchy           Allocated with name '_iterateStateMachine_sourceHierarchy_4_13'
                            186 ;sourceIndex               Allocated with name '_iterateStateMachine_sourceIndex_4_13'
                            187 ;targetHierarchy           Allocated with name '_iterateStateMachine_targetHierarchy_4_13'
                            188 ;targetIndex               Allocated with name '_iterateStateMachine_targetIndex_4_13'
                            189 ;LCA                       Allocated with name '_iterateStateMachine_LCA_4_13'
                            190 ;entryIndex                Allocated with name '_iterateStateMachine_entryIndex_4_13'
                            191 ;exitIndex                 Allocated with name '_iterateStateMachine_exitIndex_4_13'
                            192 ;exitIndex                 Allocated with name '_iterateStateMachine_exitIndex_6_15'
                            193 ;LCAindex                  Allocated with name '_iterateStateMachine_LCAindex_5_21'
                            194 ;------------------------------------------------------------
                            195 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:136: static event_t	initialTransitionEvent	= { SUBSTATE_INITIAL_TRANSITION } ;
   008C 90 00 D0            196 	mov	dptr,#_iterateStateMachine_initialTransitionEvent_1_1
   008F 74 02               197 	mov	a,#0x02
   0091 F0                  198 	movx	@dptr,a
                            199 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:137: static event_t	enterEvent				= { SUBSTATE_ENTRY } ;
   0092 90 00 D1            200 	mov	dptr,#_iterateStateMachine_enterEvent_1_1
   0095 74 01               201 	mov	a,#0x01
   0097 F0                  202 	movx	@dptr,a
                            203 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:138: static event_t	exitEvent				= { SUBSTATE_EXIT } ;
   0098 90 00 D2            204 	mov	dptr,#_iterateStateMachine_exitEvent_1_1
   009B 74 03               205 	mov	a,#0x03
   009D F0                  206 	movx	@dptr,a
                            207 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:139: static int iterationMax = 10 ;
   009E 90 00 D3            208 	mov	dptr,#_iterateStateMachine_iterationMax_1_1
   00A1 74 0A               209 	mov	a,#0x0A
   00A3 F0                  210 	movx	@dptr,a
   00A4 E4                  211 	clr	a
   00A5 A3                  212 	inc	dptr
   00A6 F0                  213 	movx	@dptr,a
                            214 ;--------------------------------------------------------
                            215 ; Home
                            216 ;--------------------------------------------------------
                            217 	.area HOME    (CODE)
                            218 	.area HOME    (CODE)
                            219 ;--------------------------------------------------------
                            220 ; code
                            221 ;--------------------------------------------------------
                            222 	.area CSEG    (CODE)
                            223 ;------------------------------------------------------------
                            224 ;Allocation info for local variables in function 'allocateStateMachineMemory'
                            225 ;------------------------------------------------------------
                            226 ;sizeInBytes               Allocated with name '_allocateStateMachineMemory_sizeInBytes_1_1'
                            227 ;instance                  Allocated with name '_allocateStateMachineMemory_instance_1_1'
                            228 ;------------------------------------------------------------
                            229 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:32: stateMachine_t* allocateStateMachineMemory(		uint16_t sizeInBytes)
                            230 ;	-----------------------------------------
                            231 ;	 function allocateStateMachineMemory
                            232 ;	-----------------------------------------
   0550                     233 _allocateStateMachineMemory:
                    0002    234 	ar2 = 0x02
                    0003    235 	ar3 = 0x03
                    0004    236 	ar4 = 0x04
                    0005    237 	ar5 = 0x05
                    0006    238 	ar6 = 0x06
                    0007    239 	ar7 = 0x07
                    0000    240 	ar0 = 0x00
                    0001    241 	ar1 = 0x01
   0550 AA 83               242 	mov	r2,dph
   0552 E5 82               243 	mov	a,dpl
   0554 90 00 B9            244 	mov	dptr,#_allocateStateMachineMemory_sizeInBytes_1_1
   0557 F0                  245 	movx	@dptr,a
   0558 A3                  246 	inc	dptr
   0559 EA                  247 	mov	a,r2
   055A F0                  248 	movx	@dptr,a
                            249 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:34: stateMachine_t*	instance = malloc(sizeInBytes) ;
   055B 90 00 B9            250 	mov	dptr,#_allocateStateMachineMemory_sizeInBytes_1_1
   055E E0                  251 	movx	a,@dptr
   055F FA                  252 	mov	r2,a
   0560 A3                  253 	inc	dptr
   0561 E0                  254 	movx	a,@dptr
   0562 FB                  255 	mov	r3,a
   0563 8A 82               256 	mov	dpl,r2
   0565 8B 83               257 	mov	dph,r3
   0567 C0 02               258 	push	ar2
   0569 C0 03               259 	push	ar3
   056B 12 33 0A            260 	lcall	_malloc
   056E AC 82               261 	mov	r4,dpl
   0570 AD 83               262 	mov	r5,dph
   0572 D0 03               263 	pop	ar3
   0574 D0 02               264 	pop	ar2
   0576 7E 00               265 	mov	r6,#0x00
                            266 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:36: if(instance)
   0578 EC                  267 	mov	a,r4
   0579 4D                  268 	orl	a,r5
   057A 4E                  269 	orl	a,r6
   057B 60 22               270 	jz	00102$
                            271 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:38: memset((char*)instance, 0, sizeInBytes) ;
   057D 90 0A D2            272 	mov	dptr,#_memset_PARM_2
   0580 E4                  273 	clr	a
   0581 F0                  274 	movx	@dptr,a
   0582 90 0A D3            275 	mov	dptr,#_memset_PARM_3
   0585 EA                  276 	mov	a,r2
   0586 F0                  277 	movx	@dptr,a
   0587 A3                  278 	inc	dptr
   0588 EB                  279 	mov	a,r3
   0589 F0                  280 	movx	@dptr,a
   058A 8C 82               281 	mov	dpl,r4
   058C 8D 83               282 	mov	dph,r5
   058E 8E F0               283 	mov	b,r6
   0590 C0 04               284 	push	ar4
   0592 C0 05               285 	push	ar5
   0594 C0 06               286 	push	ar6
   0596 12 32 4B            287 	lcall	_memset
   0599 D0 06               288 	pop	ar6
   059B D0 05               289 	pop	ar5
   059D D0 04               290 	pop	ar4
   059F                     291 00102$:
                            292 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:41: return instance ;
   059F 8C 82               293 	mov	dpl,r4
   05A1 8D 83               294 	mov	dph,r5
   05A3 8E F0               295 	mov	b,r6
   05A5 22                  296 	ret
                            297 ;------------------------------------------------------------
                            298 ;Allocation info for local variables in function 'deallocateStateMachineMemory'
                            299 ;------------------------------------------------------------
                            300 ;instance                  Allocated with name '_deallocateStateMachineMemory_instance_1_1'
                            301 ;------------------------------------------------------------
                            302 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:45: void deallocateStateMachineMemory(				stateMachine_t* instance)
                            303 ;	-----------------------------------------
                            304 ;	 function deallocateStateMachineMemory
                            305 ;	-----------------------------------------
   05A6                     306 _deallocateStateMachineMemory:
   05A6 AA F0               307 	mov	r2,b
   05A8 AB 83               308 	mov	r3,dph
   05AA E5 82               309 	mov	a,dpl
   05AC 90 00 BB            310 	mov	dptr,#_deallocateStateMachineMemory_instance_1_1
   05AF F0                  311 	movx	@dptr,a
   05B0 A3                  312 	inc	dptr
   05B1 EB                  313 	mov	a,r3
   05B2 F0                  314 	movx	@dptr,a
   05B3 A3                  315 	inc	dptr
   05B4 EA                  316 	mov	a,r2
   05B5 F0                  317 	movx	@dptr,a
                            318 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:47: if(instance != 0)
   05B6 90 00 BB            319 	mov	dptr,#_deallocateStateMachineMemory_instance_1_1
   05B9 E0                  320 	movx	a,@dptr
   05BA FA                  321 	mov	r2,a
   05BB A3                  322 	inc	dptr
   05BC E0                  323 	movx	a,@dptr
   05BD FB                  324 	mov	r3,a
   05BE A3                  325 	inc	dptr
   05BF E0                  326 	movx	a,@dptr
   05C0 FC                  327 	mov	r4,a
   05C1 EA                  328 	mov	a,r2
   05C2 4B                  329 	orl	a,r3
   05C3 4C                  330 	orl	a,r4
   05C4 60 09               331 	jz	00103$
                            332 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:49: free((char*)instance) ;
   05C6 8A 82               333 	mov	dpl,r2
   05C8 8B 83               334 	mov	dph,r3
   05CA 8C F0               335 	mov	b,r4
   05CC 02 31 F9            336 	ljmp	_free
   05CF                     337 00103$:
   05CF 22                  338 	ret
                            339 ;------------------------------------------------------------
                            340 ;Allocation info for local variables in function 'registerStateMachine'
                            341 ;------------------------------------------------------------
                            342 ;sm                        Allocated with name '_registerStateMachine_sm_1_1'
                            343 ;statetMachineIndex        Allocated with name '_registerStateMachine_statetMachineIndex_2_2'
                            344 ;------------------------------------------------------------
                            345 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:54: bool registerStateMachine(			stateMachine_t* sm)
                            346 ;	-----------------------------------------
                            347 ;	 function registerStateMachine
                            348 ;	-----------------------------------------
   05D0                     349 _registerStateMachine:
   05D0 AA F0               350 	mov	r2,b
   05D2 AB 83               351 	mov	r3,dph
   05D4 E5 82               352 	mov	a,dpl
   05D6 90 00 BE            353 	mov	dptr,#_registerStateMachine_sm_1_1
   05D9 F0                  354 	movx	@dptr,a
   05DA A3                  355 	inc	dptr
   05DB EB                  356 	mov	a,r3
   05DC F0                  357 	movx	@dptr,a
   05DD A3                  358 	inc	dptr
   05DE EA                  359 	mov	a,r2
   05DF F0                  360 	movx	@dptr,a
                            361 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:56: if(sm)
   05E0 90 00 BE            362 	mov	dptr,#_registerStateMachine_sm_1_1
   05E3 E0                  363 	movx	a,@dptr
   05E4 FA                  364 	mov	r2,a
   05E5 A3                  365 	inc	dptr
   05E6 E0                  366 	movx	a,@dptr
   05E7 FB                  367 	mov	r3,a
   05E8 A3                  368 	inc	dptr
   05E9 E0                  369 	movx	a,@dptr
   05EA FC                  370 	mov	r4,a
   05EB EA                  371 	mov	a,r2
   05EC 4B                  372 	orl	a,r3
   05ED 4C                  373 	orl	a,r4
   05EE 60 44               374 	jz	00104$
                            375 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:60: for( statetMachineIndex = 0 ; statetMachineIndex < configMAXIMUM_NUMBER_OF_STATE_MACHINES ; statetMachineIndex++ )
   05F0 7A 00               376 	mov	r2,#0x00
   05F2                     377 00105$:
   05F2 BA 32 00            378 	cjne	r2,#0x32,00116$
   05F5                     379 00116$:
   05F5 50 3D               380 	jnc	00104$
                            381 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:62: if(stateMachines[statetMachineIndex] == NULL)
   05F7 EA                  382 	mov	a,r2
   05F8 75 F0 03            383 	mov	b,#0x03
   05FB A4                  384 	mul	ab
   05FC 24 23               385 	add	a,#_stateMachines
   05FE FB                  386 	mov	r3,a
   05FF E4                  387 	clr	a
   0600 34 00               388 	addc	a,#(_stateMachines >> 8)
   0602 FC                  389 	mov	r4,a
   0603 8B 82               390 	mov	dpl,r3
   0605 8C 83               391 	mov	dph,r4
   0607 E0                  392 	movx	a,@dptr
   0608 FD                  393 	mov	r5,a
   0609 A3                  394 	inc	dptr
   060A E0                  395 	movx	a,@dptr
   060B FE                  396 	mov	r6,a
   060C A3                  397 	inc	dptr
   060D E0                  398 	movx	a,@dptr
   060E FF                  399 	mov	r7,a
   060F BD 00 1F            400 	cjne	r5,#0x00,00107$
   0612 BE 00 1C            401 	cjne	r6,#0x00,00107$
   0615 BF 00 19            402 	cjne	r7,#0x00,00107$
                            403 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:64: stateMachines[statetMachineIndex] = sm ;
   0618 90 00 BE            404 	mov	dptr,#_registerStateMachine_sm_1_1
   061B E0                  405 	movx	a,@dptr
   061C FD                  406 	mov	r5,a
   061D A3                  407 	inc	dptr
   061E E0                  408 	movx	a,@dptr
   061F FE                  409 	mov	r6,a
   0620 A3                  410 	inc	dptr
   0621 E0                  411 	movx	a,@dptr
   0622 FF                  412 	mov	r7,a
   0623 8B 82               413 	mov	dpl,r3
   0625 8C 83               414 	mov	dph,r4
   0627 ED                  415 	mov	a,r5
   0628 F0                  416 	movx	@dptr,a
   0629 A3                  417 	inc	dptr
   062A EE                  418 	mov	a,r6
   062B F0                  419 	movx	@dptr,a
   062C A3                  420 	inc	dptr
   062D EF                  421 	mov	a,r7
   062E F0                  422 	movx	@dptr,a
                            423 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:66: return true ;
   062F D3                  424 	setb	c
   0630 22                  425 	ret
   0631                     426 00107$:
                            427 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:60: for( statetMachineIndex = 0 ; statetMachineIndex < configMAXIMUM_NUMBER_OF_STATE_MACHINES ; statetMachineIndex++ )
   0631 0A                  428 	inc	r2
   0632 80 BE               429 	sjmp	00105$
   0634                     430 00104$:
                            431 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:71: return false ;
   0634 C3                  432 	clr	c
   0635 22                  433 	ret
                            434 ;------------------------------------------------------------
                            435 ;Allocation info for local variables in function 'unregisterStateMachine'
                            436 ;------------------------------------------------------------
                            437 ;sm                        Allocated with name '_unregisterStateMachine_sm_1_1'
                            438 ;statetMachineIndex        Allocated with name '_unregisterStateMachine_statetMachineIndex_2_2'
                            439 ;------------------------------------------------------------
                            440 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:74: bool unregisterStateMachine(		stateMachine_t* sm)
                            441 ;	-----------------------------------------
                            442 ;	 function unregisterStateMachine
                            443 ;	-----------------------------------------
   0636                     444 _unregisterStateMachine:
   0636 AA F0               445 	mov	r2,b
   0638 AB 83               446 	mov	r3,dph
   063A E5 82               447 	mov	a,dpl
   063C 90 00 C1            448 	mov	dptr,#_unregisterStateMachine_sm_1_1
   063F F0                  449 	movx	@dptr,a
   0640 A3                  450 	inc	dptr
   0641 EB                  451 	mov	a,r3
   0642 F0                  452 	movx	@dptr,a
   0643 A3                  453 	inc	dptr
   0644 EA                  454 	mov	a,r2
   0645 F0                  455 	movx	@dptr,a
                            456 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:76: if(sm)
   0646 90 00 C1            457 	mov	dptr,#_unregisterStateMachine_sm_1_1
   0649 E0                  458 	movx	a,@dptr
   064A FA                  459 	mov	r2,a
   064B A3                  460 	inc	dptr
   064C E0                  461 	movx	a,@dptr
   064D FB                  462 	mov	r3,a
   064E A3                  463 	inc	dptr
   064F E0                  464 	movx	a,@dptr
   0650 FC                  465 	mov	r4,a
   0651 EA                  466 	mov	a,r2
   0652 4B                  467 	orl	a,r3
   0653 4C                  468 	orl	a,r4
   0654 60 44               469 	jz	00104$
                            470 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:80: for( statetMachineIndex = 0 ; statetMachineIndex < configMAXIMUM_NUMBER_OF_STATE_MACHINES ; statetMachineIndex++ )
   0656 7D 00               471 	mov	r5,#0x00
   0658                     472 00105$:
   0658 BD 32 00            473 	cjne	r5,#0x32,00116$
   065B                     474 00116$:
   065B 50 3D               475 	jnc	00104$
                            476 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:82: if(stateMachines[statetMachineIndex] == sm)
   065D ED                  477 	mov	a,r5
   065E 75 F0 03            478 	mov	b,#0x03
   0661 A4                  479 	mul	ab
   0662 24 23               480 	add	a,#_stateMachines
   0664 FE                  481 	mov	r6,a
   0665 E4                  482 	clr	a
   0666 34 00               483 	addc	a,#(_stateMachines >> 8)
   0668 FF                  484 	mov	r7,a
   0669 C0 05               485 	push	ar5
   066B 8E 82               486 	mov	dpl,r6
   066D 8F 83               487 	mov	dph,r7
   066F E0                  488 	movx	a,@dptr
   0670 F8                  489 	mov	r0,a
   0671 A3                  490 	inc	dptr
   0672 E0                  491 	movx	a,@dptr
   0673 F9                  492 	mov	r1,a
   0674 A3                  493 	inc	dptr
   0675 E0                  494 	movx	a,@dptr
   0676 FD                  495 	mov	r5,a
   0677 E8                  496 	mov	a,r0
   0678 B5 02 0A            497 	cjne	a,ar2,00118$
   067B E9                  498 	mov	a,r1
   067C B5 03 06            499 	cjne	a,ar3,00118$
   067F ED                  500 	mov	a,r5
   0680 B5 04 02            501 	cjne	a,ar4,00118$
   0683 80 04               502 	sjmp	00119$
   0685                     503 00118$:
   0685 D0 05               504 	pop	ar5
   0687 80 0E               505 	sjmp	00107$
   0689                     506 00119$:
   0689 D0 05               507 	pop	ar5
                            508 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:84: stateMachines[statetMachineIndex] = NULL ;
   068B 8E 82               509 	mov	dpl,r6
   068D 8F 83               510 	mov	dph,r7
   068F E4                  511 	clr	a
   0690 F0                  512 	movx	@dptr,a
   0691 A3                  513 	inc	dptr
   0692 F0                  514 	movx	@dptr,a
   0693 A3                  515 	inc	dptr
   0694 F0                  516 	movx	@dptr,a
                            517 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:86: return true ;
   0695 D3                  518 	setb	c
   0696 22                  519 	ret
   0697                     520 00107$:
                            521 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:80: for( statetMachineIndex = 0 ; statetMachineIndex < configMAXIMUM_NUMBER_OF_STATE_MACHINES ; statetMachineIndex++ )
   0697 0D                  522 	inc	r5
   0698 80 BE               523 	sjmp	00105$
   069A                     524 00104$:
                            525 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:91: return false ;
   069A C3                  526 	clr	c
   069B 22                  527 	ret
                            528 ;------------------------------------------------------------
                            529 ;Allocation info for local variables in function 'iterateAllStateMachines'
                            530 ;------------------------------------------------------------
                            531 ;statetMachineIndex        Allocated with name '_iterateAllStateMachines_statetMachineIndex_1_1'
                            532 ;------------------------------------------------------------
                            533 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:95: void iterateAllStateMachines(	void)
                            534 ;	-----------------------------------------
                            535 ;	 function iterateAllStateMachines
                            536 ;	-----------------------------------------
   069C                     537 _iterateAllStateMachines:
                            538 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:99: for( statetMachineIndex = 0 ; statetMachineIndex < configMAXIMUM_NUMBER_OF_STATE_MACHINES ; statetMachineIndex++ )
   069C 7A 00               539 	mov	r2,#0x00
   069E                     540 00103$:
   069E BA 32 00            541 	cjne	r2,#0x32,00113$
   06A1                     542 00113$:
   06A1 50 31               543 	jnc	00107$
                            544 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:101: if(stateMachines[statetMachineIndex] != NULL)
   06A3 EA                  545 	mov	a,r2
   06A4 75 F0 03            546 	mov	b,#0x03
   06A7 A4                  547 	mul	ab
   06A8 24 23               548 	add	a,#_stateMachines
   06AA F5 82               549 	mov	dpl,a
   06AC E4                  550 	clr	a
   06AD 34 00               551 	addc	a,#(_stateMachines >> 8)
   06AF F5 83               552 	mov	dph,a
   06B1 E0                  553 	movx	a,@dptr
   06B2 FB                  554 	mov	r3,a
   06B3 A3                  555 	inc	dptr
   06B4 E0                  556 	movx	a,@dptr
   06B5 FC                  557 	mov	r4,a
   06B6 A3                  558 	inc	dptr
   06B7 E0                  559 	movx	a,@dptr
   06B8 FD                  560 	mov	r5,a
   06B9 BB 00 08            561 	cjne	r3,#0x00,00115$
   06BC BC 00 05            562 	cjne	r4,#0x00,00115$
   06BF BD 00 02            563 	cjne	r5,#0x00,00115$
   06C2 80 0D               564 	sjmp	00105$
   06C4                     565 00115$:
                            566 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:103: iterateStateMachine(stateMachines[statetMachineIndex]) ;
   06C4 8B 82               567 	mov	dpl,r3
   06C6 8C 83               568 	mov	dph,r4
   06C8 8D F0               569 	mov	b,r5
   06CA C0 02               570 	push	ar2
   06CC 12 08 84            571 	lcall	_iterateStateMachine
   06CF D0 02               572 	pop	ar2
   06D1                     573 00105$:
                            574 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:99: for( statetMachineIndex = 0 ; statetMachineIndex < configMAXIMUM_NUMBER_OF_STATE_MACHINES ; statetMachineIndex++ )
   06D1 0A                  575 	inc	r2
   06D2 80 CA               576 	sjmp	00103$
   06D4                     577 00107$:
   06D4 22                  578 	ret
                            579 ;------------------------------------------------------------
                            580 ;Allocation info for local variables in function 'callStateHandler'
                            581 ;------------------------------------------------------------
                            582 ;sloc0                     Allocated with name '_callStateHandler_sloc0_1_0'
                            583 ;sloc1                     Allocated with name '_callStateHandler_sloc1_1_0'
                            584 ;state                     Allocated with name '_callStateHandler_PARM_2'
                            585 ;event                     Allocated with name '_callStateHandler_PARM_3'
                            586 ;sm                        Allocated with name '_callStateHandler_sm_1_1'
                            587 ;response                  Allocated with name '_callStateHandler_response_1_1'
                            588 ;------------------------------------------------------------
                            589 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:113: stateHandlerResponse_t callStateHandler(stateMachine_t* sm, state_t* state, event_t* event)
                            590 ;	-----------------------------------------
                            591 ;	 function callStateHandler
                            592 ;	-----------------------------------------
   06D5                     593 _callStateHandler:
   06D5 AA F0               594 	mov	r2,b
   06D7 AB 83               595 	mov	r3,dph
   06D9 E5 82               596 	mov	a,dpl
   06DB 90 00 CA            597 	mov	dptr,#_callStateHandler_sm_1_1
   06DE F0                  598 	movx	@dptr,a
   06DF A3                  599 	inc	dptr
   06E0 EB                  600 	mov	a,r3
   06E1 F0                  601 	movx	@dptr,a
   06E2 A3                  602 	inc	dptr
   06E3 EA                  603 	mov	a,r2
   06E4 F0                  604 	movx	@dptr,a
                            605 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:117: printf("\t\t\tCalling state: %s, event: %s, ", state->stateName, event->eventType <= SUBSTATE_EXIT ? eventTypes[event->eventType] : "<USER_EVENT>") ;
   06E5 90 00 C7            606 	mov	dptr,#_callStateHandler_PARM_3
   06E8 E0                  607 	movx	a,@dptr
   06E9 FA                  608 	mov	r2,a
   06EA A3                  609 	inc	dptr
   06EB E0                  610 	movx	a,@dptr
   06EC FB                  611 	mov	r3,a
   06ED A3                  612 	inc	dptr
   06EE E0                  613 	movx	a,@dptr
   06EF FC                  614 	mov	r4,a
   06F0 8A 82               615 	mov	dpl,r2
   06F2 8B 83               616 	mov	dph,r3
   06F4 8C F0               617 	mov	b,r4
   06F6 12 3E 7F            618 	lcall	__gptrget
   06F9 FD                  619 	mov	r5,a
   06FA C3                  620 	clr	c
   06FB 74 03               621 	mov	a,#0x03
   06FD 9D                  622 	subb	a,r5
   06FE B3                  623 	cpl	c
   06FF E4                  624 	clr	a
   0700 33                  625 	rlc	a
   0701 FE                  626 	mov	r6,a
   0702 60 1B               627 	jz	00105$
   0704 ED                  628 	mov	a,r5
   0705 75 F0 03            629 	mov	b,#0x03
   0708 A4                  630 	mul	ab
   0709 24 14               631 	add	a,#_eventTypes
   070B F5 82               632 	mov	dpl,a
   070D E4                  633 	clr	a
   070E 34 0F               634 	addc	a,#(_eventTypes >> 8)
   0710 F5 83               635 	mov	dph,a
   0712 E0                  636 	movx	a,@dptr
   0713 F5 23               637 	mov	_callStateHandler_sloc0_1_0,a
   0715 A3                  638 	inc	dptr
   0716 E0                  639 	movx	a,@dptr
   0717 F5 24               640 	mov	(_callStateHandler_sloc0_1_0 + 1),a
   0719 A3                  641 	inc	dptr
   071A E0                  642 	movx	a,@dptr
   071B F5 25               643 	mov	(_callStateHandler_sloc0_1_0 + 2),a
   071D 80 09               644 	sjmp	00106$
   071F                     645 00105$:
   071F 75 23 E9            646 	mov	_callStateHandler_sloc0_1_0,#__str_1
   0722 75 24 3E            647 	mov	(_callStateHandler_sloc0_1_0 + 1),#(__str_1 >> 8)
   0725 75 25 80            648 	mov	(_callStateHandler_sloc0_1_0 + 2),#0x80
   0728                     649 00106$:
   0728 90 00 C4            650 	mov	dptr,#_callStateHandler_PARM_2
   072B E0                  651 	movx	a,@dptr
   072C F5 26               652 	mov	_callStateHandler_sloc1_1_0,a
   072E A3                  653 	inc	dptr
   072F E0                  654 	movx	a,@dptr
   0730 F5 27               655 	mov	(_callStateHandler_sloc1_1_0 + 1),a
   0732 A3                  656 	inc	dptr
   0733 E0                  657 	movx	a,@dptr
   0734 F5 28               658 	mov	(_callStateHandler_sloc1_1_0 + 2),a
   0736 74 06               659 	mov	a,#0x06
   0738 25 26               660 	add	a,_callStateHandler_sloc1_1_0
   073A FE                  661 	mov	r6,a
   073B E4                  662 	clr	a
   073C 35 27               663 	addc	a,(_callStateHandler_sloc1_1_0 + 1)
   073E FF                  664 	mov	r7,a
   073F AD 28               665 	mov	r5,(_callStateHandler_sloc1_1_0 + 2)
   0741 8E 82               666 	mov	dpl,r6
   0743 8F 83               667 	mov	dph,r7
   0745 8D F0               668 	mov	b,r5
   0747 12 3E 7F            669 	lcall	__gptrget
   074A FE                  670 	mov	r6,a
   074B A3                  671 	inc	dptr
   074C 12 3E 7F            672 	lcall	__gptrget
   074F FF                  673 	mov	r7,a
   0750 A3                  674 	inc	dptr
   0751 12 3E 7F            675 	lcall	__gptrget
   0754 FD                  676 	mov	r5,a
   0755 C0 02               677 	push	ar2
   0757 C0 03               678 	push	ar3
   0759 C0 04               679 	push	ar4
   075B C0 23               680 	push	_callStateHandler_sloc0_1_0
   075D C0 24               681 	push	(_callStateHandler_sloc0_1_0 + 1)
   075F C0 25               682 	push	(_callStateHandler_sloc0_1_0 + 2)
   0761 C0 06               683 	push	ar6
   0763 C0 07               684 	push	ar7
   0765 C0 05               685 	push	ar5
   0767 74 C7               686 	mov	a,#__str_0
   0769 C0 E0               687 	push	acc
   076B 74 3E               688 	mov	a,#(__str_0 >> 8)
   076D C0 E0               689 	push	acc
   076F 74 80               690 	mov	a,#0x80
   0771 C0 E0               691 	push	acc
   0773 12 36 33            692 	lcall	_printf
   0776 E5 81               693 	mov	a,sp
   0778 24 F7               694 	add	a,#0xf7
   077A F5 81               695 	mov	sp,a
   077C D0 04               696 	pop	ar4
   077E D0 03               697 	pop	ar3
   0780 D0 02               698 	pop	ar2
                            699 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:119: response = ((callStateHandler_t)(state->handler))(sm, event) ;
   0782 74 04               700 	mov	a,#0x04
   0784 25 26               701 	add	a,_callStateHandler_sloc1_1_0
   0786 FD                  702 	mov	r5,a
   0787 E4                  703 	clr	a
   0788 35 27               704 	addc	a,(_callStateHandler_sloc1_1_0 + 1)
   078A FE                  705 	mov	r6,a
   078B AF 28               706 	mov	r7,(_callStateHandler_sloc1_1_0 + 2)
   078D 8D 82               707 	mov	dpl,r5
   078F 8E 83               708 	mov	dph,r6
   0791 8F F0               709 	mov	b,r7
   0793 12 3E 7F            710 	lcall	__gptrget
   0796 FD                  711 	mov	r5,a
   0797 A3                  712 	inc	dptr
   0798 12 3E 7F            713 	lcall	__gptrget
   079B FE                  714 	mov	r6,a
   079C 90 00 CA            715 	mov	dptr,#_callStateHandler_sm_1_1
   079F E0                  716 	movx	a,@dptr
   07A0 FF                  717 	mov	r7,a
   07A1 A3                  718 	inc	dptr
   07A2 E0                  719 	movx	a,@dptr
   07A3 F8                  720 	mov	r0,a
   07A4 A3                  721 	inc	dptr
   07A5 E0                  722 	movx	a,@dptr
   07A6 F9                  723 	mov	r1,a
   07A7 C0 05               724 	push	ar5
   07A9 C0 06               725 	push	ar6
   07AB C0 02               726 	push	ar2
   07AD C0 03               727 	push	ar3
   07AF C0 04               728 	push	ar4
   07B1 74 C4               729 	mov	a,#00111$
   07B3 C0 E0               730 	push	acc
   07B5 74 07               731 	mov	a,#(00111$ >> 8)
   07B7 C0 E0               732 	push	acc
   07B9 C0 05               733 	push	ar5
   07BB C0 06               734 	push	ar6
   07BD 8F 82               735 	mov	dpl,r7
   07BF 88 83               736 	mov	dph,r0
   07C1 89 F0               737 	mov	b,r1
   07C3 22                  738 	ret
   07C4                     739 00111$:
   07C4 AA 82               740 	mov	r2,dpl
   07C6 15 81               741 	dec	sp
   07C8 15 81               742 	dec	sp
   07CA 15 81               743 	dec	sp
   07CC D0 06               744 	pop	ar6
   07CE D0 05               745 	pop	ar5
                            746 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:121: printf("response: %s ", responseTypes[response]) ;
   07D0 EA                  747 	mov	a,r2
   07D1 75 F0 03            748 	mov	b,#0x03
   07D4 A4                  749 	mul	ab
   07D5 24 20               750 	add	a,#_responseTypes
   07D7 F5 82               751 	mov	dpl,a
   07D9 E4                  752 	clr	a
   07DA 34 0F               753 	addc	a,#(_responseTypes >> 8)
   07DC F5 83               754 	mov	dph,a
   07DE E0                  755 	movx	a,@dptr
   07DF FB                  756 	mov	r3,a
   07E0 A3                  757 	inc	dptr
   07E1 E0                  758 	movx	a,@dptr
   07E2 FC                  759 	mov	r4,a
   07E3 A3                  760 	inc	dptr
   07E4 E0                  761 	movx	a,@dptr
   07E5 FD                  762 	mov	r5,a
   07E6 C0 02               763 	push	ar2
   07E8 C0 03               764 	push	ar3
   07EA C0 04               765 	push	ar4
   07EC C0 05               766 	push	ar5
   07EE 74 F6               767 	mov	a,#__str_2
   07F0 C0 E0               768 	push	acc
   07F2 74 3E               769 	mov	a,#(__str_2 >> 8)
   07F4 C0 E0               770 	push	acc
   07F6 74 80               771 	mov	a,#0x80
   07F8 C0 E0               772 	push	acc
   07FA 12 36 33            773 	lcall	_printf
   07FD E5 81               774 	mov	a,sp
   07FF 24 FA               775 	add	a,#0xfa
   0801 F5 81               776 	mov	sp,a
   0803 D0 02               777 	pop	ar2
                            778 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:123: if(response == TRANSITION)
   0805 BA 02 60            779 	cjne	r2,#0x02,00102$
                            780 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:125: printf("to %s ", ((state_t*)(sm->nextState))->stateName) ;
   0808 90 00 CA            781 	mov	dptr,#_callStateHandler_sm_1_1
   080B E0                  782 	movx	a,@dptr
   080C FB                  783 	mov	r3,a
   080D A3                  784 	inc	dptr
   080E E0                  785 	movx	a,@dptr
   080F FC                  786 	mov	r4,a
   0810 A3                  787 	inc	dptr
   0811 E0                  788 	movx	a,@dptr
   0812 FD                  789 	mov	r5,a
   0813 74 09               790 	mov	a,#0x09
   0815 2B                  791 	add	a,r3
   0816 FB                  792 	mov	r3,a
   0817 E4                  793 	clr	a
   0818 3C                  794 	addc	a,r4
   0819 FC                  795 	mov	r4,a
   081A 8B 82               796 	mov	dpl,r3
   081C 8C 83               797 	mov	dph,r4
   081E 8D F0               798 	mov	b,r5
   0820 12 3E 7F            799 	lcall	__gptrget
   0823 FB                  800 	mov	r3,a
   0824 A3                  801 	inc	dptr
   0825 12 3E 7F            802 	lcall	__gptrget
   0828 FC                  803 	mov	r4,a
   0829 A3                  804 	inc	dptr
   082A 12 3E 7F            805 	lcall	__gptrget
   082D FD                  806 	mov	r5,a
   082E 74 06               807 	mov	a,#0x06
   0830 2B                  808 	add	a,r3
   0831 FB                  809 	mov	r3,a
   0832 E4                  810 	clr	a
   0833 3C                  811 	addc	a,r4
   0834 FC                  812 	mov	r4,a
   0835 8B 82               813 	mov	dpl,r3
   0837 8C 83               814 	mov	dph,r4
   0839 8D F0               815 	mov	b,r5
   083B 12 3E 7F            816 	lcall	__gptrget
   083E FB                  817 	mov	r3,a
   083F A3                  818 	inc	dptr
   0840 12 3E 7F            819 	lcall	__gptrget
   0843 FC                  820 	mov	r4,a
   0844 A3                  821 	inc	dptr
   0845 12 3E 7F            822 	lcall	__gptrget
   0848 FD                  823 	mov	r5,a
   0849 C0 02               824 	push	ar2
   084B C0 03               825 	push	ar3
   084D C0 04               826 	push	ar4
   084F C0 05               827 	push	ar5
   0851 74 04               828 	mov	a,#__str_3
   0853 C0 E0               829 	push	acc
   0855 74 3F               830 	mov	a,#(__str_3 >> 8)
   0857 C0 E0               831 	push	acc
   0859 74 80               832 	mov	a,#0x80
   085B C0 E0               833 	push	acc
   085D 12 36 33            834 	lcall	_printf
   0860 E5 81               835 	mov	a,sp
   0862 24 FA               836 	add	a,#0xfa
   0864 F5 81               837 	mov	sp,a
   0866 D0 02               838 	pop	ar2
   0868                     839 00102$:
                            840 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:128: printf("\n") ;
   0868 C0 02               841 	push	ar2
   086A 74 0B               842 	mov	a,#__str_4
   086C C0 E0               843 	push	acc
   086E 74 3F               844 	mov	a,#(__str_4 >> 8)
   0870 C0 E0               845 	push	acc
   0872 74 80               846 	mov	a,#0x80
   0874 C0 E0               847 	push	acc
   0876 12 36 33            848 	lcall	_printf
   0879 15 81               849 	dec	sp
   087B 15 81               850 	dec	sp
   087D 15 81               851 	dec	sp
   087F D0 02               852 	pop	ar2
                            853 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:130: return response ;
   0881 8A 82               854 	mov	dpl,r2
   0883 22                  855 	ret
                            856 ;------------------------------------------------------------
                            857 ;Allocation info for local variables in function 'iterateStateMachine'
                            858 ;------------------------------------------------------------
                            859 ;sloc0                     Allocated with name '_iterateStateMachine_sloc0_1_0'
                            860 ;sloc1                     Allocated with name '_iterateStateMachine_sloc1_1_0'
                            861 ;sloc2                     Allocated with name '_iterateStateMachine_sloc2_1_0'
                            862 ;sloc3                     Allocated with name '_iterateStateMachine_sloc3_1_0'
                            863 ;sloc4                     Allocated with name '_iterateStateMachine_sloc4_1_0'
                            864 ;sloc5                     Allocated with name '_iterateStateMachine_sloc5_1_0'
                            865 ;sloc6                     Allocated with name '_iterateStateMachine_sloc6_1_0'
                            866 ;sloc7                     Allocated with name '_iterateStateMachine_sloc7_1_0'
                            867 ;sloc8                     Allocated with name '_iterateStateMachine_sloc8_1_0'
                            868 ;sloc9                     Allocated with name '_iterateStateMachine_sloc9_1_0'
                            869 ;sloc10                    Allocated with name '_iterateStateMachine_sloc10_1_0'
                            870 ;sm                        Allocated with name '_iterateStateMachine_sm_1_1'
                            871 ;initialTransitionEvent    Allocated with name '_iterateStateMachine_initialTransitionEvent_1_1'
                            872 ;enterEvent                Allocated with name '_iterateStateMachine_enterEvent_1_1'
                            873 ;exitEvent                 Allocated with name '_iterateStateMachine_exitEvent_1_1'
                            874 ;iterationMax              Allocated with name '_iterateStateMachine_iterationMax_1_1'
                            875 ;eventToProcess            Allocated with name '_iterateStateMachine_eventToProcess_2_3'
                            876 ;stateBeingProcessed       Allocated with name '_iterateStateMachine_stateBeingProcessed_2_3'
                            877 ;action                    Allocated with name '_iterateStateMachine_action_2_3'
                            878 ;source                    Allocated with name '_iterateStateMachine_source_3_8'
                            879 ;target                    Allocated with name '_iterateStateMachine_target_3_8'
                            880 ;sourceHierarchy           Allocated with name '_iterateStateMachine_sourceHierarchy_4_13'
                            881 ;sourceIndex               Allocated with name '_iterateStateMachine_sourceIndex_4_13'
                            882 ;targetHierarchy           Allocated with name '_iterateStateMachine_targetHierarchy_4_13'
                            883 ;targetIndex               Allocated with name '_iterateStateMachine_targetIndex_4_13'
                            884 ;LCA                       Allocated with name '_iterateStateMachine_LCA_4_13'
                            885 ;entryIndex                Allocated with name '_iterateStateMachine_entryIndex_4_13'
                            886 ;exitIndex                 Allocated with name '_iterateStateMachine_exitIndex_4_13'
                            887 ;exitIndex                 Allocated with name '_iterateStateMachine_exitIndex_6_15'
                            888 ;LCAindex                  Allocated with name '_iterateStateMachine_LCAindex_5_21'
                            889 ;------------------------------------------------------------
                            890 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:134: void iterateStateMachine(	stateMachine_t* sm)
                            891 ;	-----------------------------------------
                            892 ;	 function iterateStateMachine
                            893 ;	-----------------------------------------
   0884                     894 _iterateStateMachine:
   0884 AA F0               895 	mov	r2,b
   0886 AB 83               896 	mov	r3,dph
   0888 E5 82               897 	mov	a,dpl
   088A 90 00 CD            898 	mov	dptr,#_iterateStateMachine_sm_1_1
   088D F0                  899 	movx	@dptr,a
   088E A3                  900 	inc	dptr
   088F EB                  901 	mov	a,r3
   0890 F0                  902 	movx	@dptr,a
   0891 A3                  903 	inc	dptr
   0892 EA                  904 	mov	a,r2
   0893 F0                  905 	movx	@dptr,a
                            906 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:141: printf("\titerating %s\n", sm->stateMachineName) ;
   0894 90 00 CD            907 	mov	dptr,#_iterateStateMachine_sm_1_1
   0897 E0                  908 	movx	a,@dptr
   0898 FA                  909 	mov	r2,a
   0899 A3                  910 	inc	dptr
   089A E0                  911 	movx	a,@dptr
   089B FB                  912 	mov	r3,a
   089C A3                  913 	inc	dptr
   089D E0                  914 	movx	a,@dptr
   089E FC                  915 	mov	r4,a
   089F 74 03               916 	mov	a,#0x03
   08A1 2A                  917 	add	a,r2
   08A2 FD                  918 	mov	r5,a
   08A3 E4                  919 	clr	a
   08A4 3B                  920 	addc	a,r3
   08A5 FE                  921 	mov	r6,a
   08A6 8C 07               922 	mov	ar7,r4
   08A8 8D 82               923 	mov	dpl,r5
   08AA 8E 83               924 	mov	dph,r6
   08AC 8F F0               925 	mov	b,r7
   08AE 12 3E 7F            926 	lcall	__gptrget
   08B1 FD                  927 	mov	r5,a
   08B2 A3                  928 	inc	dptr
   08B3 12 3E 7F            929 	lcall	__gptrget
   08B6 FE                  930 	mov	r6,a
   08B7 A3                  931 	inc	dptr
   08B8 12 3E 7F            932 	lcall	__gptrget
   08BB FF                  933 	mov	r7,a
   08BC C0 02               934 	push	ar2
   08BE C0 03               935 	push	ar3
   08C0 C0 04               936 	push	ar4
   08C2 C0 05               937 	push	ar5
   08C4 C0 06               938 	push	ar6
   08C6 C0 07               939 	push	ar7
   08C8 74 0D               940 	mov	a,#__str_5
   08CA C0 E0               941 	push	acc
   08CC 74 3F               942 	mov	a,#(__str_5 >> 8)
   08CE C0 E0               943 	push	acc
   08D0 74 80               944 	mov	a,#0x80
   08D2 C0 E0               945 	push	acc
   08D4 12 36 33            946 	lcall	_printf
   08D7 E5 81               947 	mov	a,sp
   08D9 24 FA               948 	add	a,#0xfa
   08DB F5 81               949 	mov	sp,a
   08DD D0 04               950 	pop	ar4
   08DF D0 03               951 	pop	ar3
   08E1 D0 02               952 	pop	ar2
                            953 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:145: if(!sm->stateMachineInitialized)
   08E3 74 13               954 	mov	a,#0x13
   08E5 2A                  955 	add	a,r2
   08E6 F5 29               956 	mov	_iterateStateMachine_sloc0_1_0,a
   08E8 E4                  957 	clr	a
   08E9 3B                  958 	addc	a,r3
   08EA F5 2A               959 	mov	(_iterateStateMachine_sloc0_1_0 + 1),a
   08EC 8C 2B               960 	mov	(_iterateStateMachine_sloc0_1_0 + 2),r4
   08EE 85 29 82            961 	mov	dpl,_iterateStateMachine_sloc0_1_0
   08F1 85 2A 83            962 	mov	dph,(_iterateStateMachine_sloc0_1_0 + 1)
   08F4 85 2B F0            963 	mov	b,(_iterateStateMachine_sloc0_1_0 + 2)
   08F7 12 3E 7F            964 	lcall	__gptrget
   08FA 60 03               965 	jz	00196$
   08FC 02 09 B2            966 	ljmp	00169$
   08FF                     967 00196$:
                            968 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:147: printf("\t\tinitializing...\n") ;
   08FF C0 02               969 	push	ar2
   0901 C0 03               970 	push	ar3
   0903 C0 04               971 	push	ar4
   0905 74 1C               972 	mov	a,#__str_6
   0907 C0 E0               973 	push	acc
   0909 74 3F               974 	mov	a,#(__str_6 >> 8)
   090B C0 E0               975 	push	acc
   090D 74 80               976 	mov	a,#0x80
   090F C0 E0               977 	push	acc
   0911 12 36 33            978 	lcall	_printf
   0914 15 81               979 	dec	sp
   0916 15 81               980 	dec	sp
   0918 15 81               981 	dec	sp
   091A D0 04               982 	pop	ar4
   091C D0 03               983 	pop	ar3
   091E D0 02               984 	pop	ar2
                            985 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:149: NormalInsert(&sm->eventQueue, &enterEvent) ;
   0920 74 0C               986 	mov	a,#0x0C
   0922 2A                  987 	add	a,r2
   0923 F8                  988 	mov	r0,a
   0924 E4                  989 	clr	a
   0925 3B                  990 	addc	a,r3
   0926 F9                  991 	mov	r1,a
   0927 8C 05               992 	mov	ar5,r4
   0929 90 00 14            993 	mov	dptr,#_NormalInsert_PARM_2
   092C 74 D1               994 	mov	a,#_iterateStateMachine_enterEvent_1_1
   092E F0                  995 	movx	@dptr,a
   092F A3                  996 	inc	dptr
   0930 74 00               997 	mov	a,#(_iterateStateMachine_enterEvent_1_1 >> 8)
   0932 F0                  998 	movx	@dptr,a
   0933 A3                  999 	inc	dptr
   0934 E4                 1000 	clr	a
   0935 F0                 1001 	movx	@dptr,a
   0936 88 82              1002 	mov	dpl,r0
   0938 89 83              1003 	mov	dph,r1
   093A 8D F0              1004 	mov	b,r5
   093C C0 02              1005 	push	ar2
   093E C0 03              1006 	push	ar3
   0940 C0 04              1007 	push	ar4
   0942 12 02 43           1008 	lcall	_NormalInsert
   0945 D0 04              1009 	pop	ar4
   0947 D0 03              1010 	pop	ar3
   0949 D0 02              1011 	pop	ar2
                           1012 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:150: NormalInsert(&sm->eventQueue, &initialTransitionEvent) ;
   094B 74 0C              1013 	mov	a,#0x0C
   094D 2A                 1014 	add	a,r2
   094E FD                 1015 	mov	r5,a
   094F E4                 1016 	clr	a
   0950 3B                 1017 	addc	a,r3
   0951 FE                 1018 	mov	r6,a
   0952 8C 07              1019 	mov	ar7,r4
   0954 90 00 14           1020 	mov	dptr,#_NormalInsert_PARM_2
   0957 74 D0              1021 	mov	a,#_iterateStateMachine_initialTransitionEvent_1_1
   0959 F0                 1022 	movx	@dptr,a
   095A A3                 1023 	inc	dptr
   095B 74 00              1024 	mov	a,#(_iterateStateMachine_initialTransitionEvent_1_1 >> 8)
   095D F0                 1025 	movx	@dptr,a
   095E A3                 1026 	inc	dptr
   095F E4                 1027 	clr	a
   0960 F0                 1028 	movx	@dptr,a
   0961 8D 82              1029 	mov	dpl,r5
   0963 8E 83              1030 	mov	dph,r6
   0965 8F F0              1031 	mov	b,r7
   0967 C0 02              1032 	push	ar2
   0969 C0 03              1033 	push	ar3
   096B C0 04              1034 	push	ar4
   096D 12 02 43           1035 	lcall	_NormalInsert
   0970 D0 04              1036 	pop	ar4
   0972 D0 03              1037 	pop	ar3
   0974 D0 02              1038 	pop	ar2
                           1039 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:152: sm->currentState			= (state_t*)sm->topState ;
   0976 74 06              1040 	mov	a,#0x06
   0978 2A                 1041 	add	a,r2
   0979 FD                 1042 	mov	r5,a
   097A E4                 1043 	clr	a
   097B 3B                 1044 	addc	a,r3
   097C FE                 1045 	mov	r6,a
   097D 8C 07              1046 	mov	ar7,r4
   097F 8A 82              1047 	mov	dpl,r2
   0981 8B 83              1048 	mov	dph,r3
   0983 8C F0              1049 	mov	b,r4
   0985 12 3E 7F           1050 	lcall	__gptrget
   0988 FA                 1051 	mov	r2,a
   0989 A3                 1052 	inc	dptr
   098A 12 3E 7F           1053 	lcall	__gptrget
   098D FB                 1054 	mov	r3,a
   098E 7C 80              1055 	mov	r4,#0x80
   0990 8D 82              1056 	mov	dpl,r5
   0992 8E 83              1057 	mov	dph,r6
   0994 8F F0              1058 	mov	b,r7
   0996 EA                 1059 	mov	a,r2
   0997 12 32 73           1060 	lcall	__gptrput
   099A A3                 1061 	inc	dptr
   099B EB                 1062 	mov	a,r3
   099C 12 32 73           1063 	lcall	__gptrput
   099F A3                 1064 	inc	dptr
   09A0 EC                 1065 	mov	a,r4
   09A1 12 32 73           1066 	lcall	__gptrput
                           1067 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:153: sm->stateMachineInitialized	= true ;
   09A4 85 29 82           1068 	mov	dpl,_iterateStateMachine_sloc0_1_0
   09A7 85 2A 83           1069 	mov	dph,(_iterateStateMachine_sloc0_1_0 + 1)
   09AA 85 2B F0           1070 	mov	b,(_iterateStateMachine_sloc0_1_0 + 2)
   09AD 74 01              1071 	mov	a,#0x01
   09AF 12 32 73           1072 	lcall	__gptrput
                           1073 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:158: while(!isEmpty(&sm->eventQueue))
   09B2                    1074 00169$:
   09B2 90 00 CD           1075 	mov	dptr,#_iterateStateMachine_sm_1_1
   09B5 E0                 1076 	movx	a,@dptr
   09B6 F5 3E              1077 	mov	_iterateStateMachine_sloc7_1_0,a
   09B8 A3                 1078 	inc	dptr
   09B9 E0                 1079 	movx	a,@dptr
   09BA F5 3F              1080 	mov	(_iterateStateMachine_sloc7_1_0 + 1),a
   09BC A3                 1081 	inc	dptr
   09BD E0                 1082 	movx	a,@dptr
   09BE F5 40              1083 	mov	(_iterateStateMachine_sloc7_1_0 + 2),a
   09C0 AD 3E              1084 	mov	r5,_iterateStateMachine_sloc7_1_0
   09C2 AE 3F              1085 	mov	r6,(_iterateStateMachine_sloc7_1_0 + 1)
   09C4 AF 40              1086 	mov	r7,(_iterateStateMachine_sloc7_1_0 + 2)
   09C6 74 09              1087 	mov	a,#0x09
   09C8 25 3E              1088 	add	a,_iterateStateMachine_sloc7_1_0
   09CA F5 29              1089 	mov	_iterateStateMachine_sloc0_1_0,a
   09CC E4                 1090 	clr	a
   09CD 35 3F              1091 	addc	a,(_iterateStateMachine_sloc7_1_0 + 1)
   09CF F5 2A              1092 	mov	(_iterateStateMachine_sloc0_1_0 + 1),a
   09D1 85 40 2B           1093 	mov	(_iterateStateMachine_sloc0_1_0 + 2),(_iterateStateMachine_sloc7_1_0 + 2)
   09D4 85 3E 2C           1094 	mov	_iterateStateMachine_sloc1_1_0,_iterateStateMachine_sloc7_1_0
   09D7 85 3F 2D           1095 	mov	(_iterateStateMachine_sloc1_1_0 + 1),(_iterateStateMachine_sloc7_1_0 + 1)
   09DA 85 40 2E           1096 	mov	(_iterateStateMachine_sloc1_1_0 + 2),(_iterateStateMachine_sloc7_1_0 + 2)
   09DD 85 3E 2F           1097 	mov	_iterateStateMachine_sloc2_1_0,_iterateStateMachine_sloc7_1_0
   09E0 85 3F 30           1098 	mov	(_iterateStateMachine_sloc2_1_0 + 1),(_iterateStateMachine_sloc7_1_0 + 1)
   09E3 85 40 31           1099 	mov	(_iterateStateMachine_sloc2_1_0 + 2),(_iterateStateMachine_sloc7_1_0 + 2)
   09E6 74 06              1100 	mov	a,#0x06
   09E8 25 3E              1101 	add	a,_iterateStateMachine_sloc7_1_0
   09EA F5 32              1102 	mov	_iterateStateMachine_sloc3_1_0,a
   09EC E4                 1103 	clr	a
   09ED 35 3F              1104 	addc	a,(_iterateStateMachine_sloc7_1_0 + 1)
   09EF F5 33              1105 	mov	(_iterateStateMachine_sloc3_1_0 + 1),a
   09F1 85 40 34           1106 	mov	(_iterateStateMachine_sloc3_1_0 + 2),(_iterateStateMachine_sloc7_1_0 + 2)
   09F4 85 3E 35           1107 	mov	_iterateStateMachine_sloc4_1_0,_iterateStateMachine_sloc7_1_0
   09F7 85 3F 36           1108 	mov	(_iterateStateMachine_sloc4_1_0 + 1),(_iterateStateMachine_sloc7_1_0 + 1)
   09FA 85 40 37           1109 	mov	(_iterateStateMachine_sloc4_1_0 + 2),(_iterateStateMachine_sloc7_1_0 + 2)
   09FD 85 3E 38           1110 	mov	_iterateStateMachine_sloc5_1_0,_iterateStateMachine_sloc7_1_0
   0A00 85 3F 39           1111 	mov	(_iterateStateMachine_sloc5_1_0 + 1),(_iterateStateMachine_sloc7_1_0 + 1)
   0A03 85 40 3A           1112 	mov	(_iterateStateMachine_sloc5_1_0 + 2),(_iterateStateMachine_sloc7_1_0 + 2)
   0A06                    1113 00155$:
   0A06 C0 05              1114 	push	ar5
   0A08 C0 06              1115 	push	ar6
   0A0A C0 07              1116 	push	ar7
   0A0C 74 0C              1117 	mov	a,#0x0C
   0A0E 25 3E              1118 	add	a,_iterateStateMachine_sloc7_1_0
   0A10 F8                 1119 	mov	r0,a
   0A11 E4                 1120 	clr	a
   0A12 35 3F              1121 	addc	a,(_iterateStateMachine_sloc7_1_0 + 1)
   0A14 F9                 1122 	mov	r1,a
   0A15 AD 40              1123 	mov	r5,(_iterateStateMachine_sloc7_1_0 + 2)
   0A17 88 82              1124 	mov	dpl,r0
   0A19 89 83              1125 	mov	dph,r1
   0A1B 8D F0              1126 	mov	b,r5
   0A1D C0 05              1127 	push	ar5
   0A1F C0 06              1128 	push	ar6
   0A21 C0 07              1129 	push	ar7
   0A23 12 01 8B           1130 	lcall	_isEmpty
   0A26 E5 82              1131 	mov	a,dpl
   0A28 D0 07              1132 	pop	ar7
   0A2A D0 06              1133 	pop	ar6
   0A2C D0 05              1134 	pop	ar5
   0A2E D0 07              1135 	pop	ar7
   0A30 D0 06              1136 	pop	ar6
   0A32 D0 05              1137 	pop	ar5
   0A34 60 03              1138 	jz	00197$
   0A36 02 17 39           1139 	ljmp	00157$
   0A39                    1140 00197$:
                           1141 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:160: event_t*				eventToProcess		= Remove(&sm->eventQueue) ;
   0A39 C0 05              1142 	push	ar5
   0A3B C0 06              1143 	push	ar6
   0A3D C0 07              1144 	push	ar7
   0A3F 74 0C              1145 	mov	a,#0x0C
   0A41 25 3E              1146 	add	a,_iterateStateMachine_sloc7_1_0
   0A43 F8                 1147 	mov	r0,a
   0A44 E4                 1148 	clr	a
   0A45 35 3F              1149 	addc	a,(_iterateStateMachine_sloc7_1_0 + 1)
   0A47 F9                 1150 	mov	r1,a
   0A48 AD 40              1151 	mov	r5,(_iterateStateMachine_sloc7_1_0 + 2)
   0A4A 88 82              1152 	mov	dpl,r0
   0A4C 89 83              1153 	mov	dph,r1
   0A4E 8D F0              1154 	mov	b,r5
   0A50 C0 05              1155 	push	ar5
   0A52 C0 06              1156 	push	ar6
   0A54 C0 07              1157 	push	ar7
   0A56 12 04 6F           1158 	lcall	_Remove
   0A59 85 82 3B           1159 	mov	_iterateStateMachine_sloc6_1_0,dpl
   0A5C 85 83 3C           1160 	mov	(_iterateStateMachine_sloc6_1_0 + 1),dph
   0A5F 85 F0 3D           1161 	mov	(_iterateStateMachine_sloc6_1_0 + 2),b
   0A62 D0 07              1162 	pop	ar7
   0A64 D0 06              1163 	pop	ar6
   0A66 D0 05              1164 	pop	ar5
                           1165 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:161: state_t*				stateBeingProcessed	= sm->currentState ;
   0A68 85 32 82           1166 	mov	dpl,_iterateStateMachine_sloc3_1_0
   0A6B 85 33 83           1167 	mov	dph,(_iterateStateMachine_sloc3_1_0 + 1)
   0A6E 85 34 F0           1168 	mov	b,(_iterateStateMachine_sloc3_1_0 + 2)
   0A71 12 3E 7F           1169 	lcall	__gptrget
   0A74 FD                 1170 	mov	r5,a
   0A75 A3                 1171 	inc	dptr
   0A76 12 3E 7F           1172 	lcall	__gptrget
   0A79 FE                 1173 	mov	r6,a
   0A7A A3                 1174 	inc	dptr
   0A7B 12 3E 7F           1175 	lcall	__gptrget
   0A7E FF                 1176 	mov	r7,a
   0A7F 90 00 D5           1177 	mov	dptr,#_iterateStateMachine_stateBeingProcessed_2_3
   0A82 ED                 1178 	mov	a,r5
   0A83 F0                 1179 	movx	@dptr,a
   0A84 A3                 1180 	inc	dptr
   0A85 EE                 1181 	mov	a,r6
   0A86 F0                 1182 	movx	@dptr,a
   0A87 A3                 1183 	inc	dptr
   0A88 EF                 1184 	mov	a,r7
   0A89 F0                 1185 	movx	@dptr,a
                           1186 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:164: sm->nextState = (state_t*)0 ;	// just a little housecleaning
   0A8A 74 09              1187 	mov	a,#0x09
   0A8C 25 3E              1188 	add	a,_iterateStateMachine_sloc7_1_0
   0A8E FD                 1189 	mov	r5,a
   0A8F E4                 1190 	clr	a
   0A90 35 3F              1191 	addc	a,(_iterateStateMachine_sloc7_1_0 + 1)
   0A92 FE                 1192 	mov	r6,a
   0A93 AF 40              1193 	mov	r7,(_iterateStateMachine_sloc7_1_0 + 2)
   0A95 8D 82              1194 	mov	dpl,r5
   0A97 8E 83              1195 	mov	dph,r6
   0A99 8F F0              1196 	mov	b,r7
   0A9B E4                 1197 	clr	a
   0A9C 12 32 73           1198 	lcall	__gptrput
   0A9F A3                 1199 	inc	dptr
   0AA0 E4                 1200 	clr	a
   0AA1 12 32 73           1201 	lcall	__gptrput
   0AA4 A3                 1202 	inc	dptr
   0AA5 E4                 1203 	clr	a
   0AA6 12 32 73           1204 	lcall	__gptrput
                           1205 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:166: if(iterationMax-- == 0)
   0AA9 90 00 D3           1206 	mov	dptr,#_iterateStateMachine_iterationMax_1_1
   0AAC E0                 1207 	movx	a,@dptr
   0AAD FD                 1208 	mov	r5,a
   0AAE A3                 1209 	inc	dptr
   0AAF E0                 1210 	movx	a,@dptr
   0AB0 FE                 1211 	mov	r6,a
   0AB1 ED                 1212 	mov	a,r5
   0AB2 24 FF              1213 	add	a,#0xff
   0AB4 FF                 1214 	mov	r7,a
   0AB5 EE                 1215 	mov	a,r6
   0AB6 34 FF              1216 	addc	a,#0xff
   0AB8 F8                 1217 	mov	r0,a
   0AB9 90 00 D3           1218 	mov	dptr,#_iterateStateMachine_iterationMax_1_1
   0ABC EF                 1219 	mov	a,r7
   0ABD F0                 1220 	movx	@dptr,a
   0ABE A3                 1221 	inc	dptr
   0ABF E8                 1222 	mov	a,r0
   0AC0 F0                 1223 	movx	@dptr,a
   0AC1 ED                 1224 	mov	a,r5
   0AC2 4E                 1225 	orl	a,r6
   0AC3 D0 07              1226 	pop	ar7
   0AC5 D0 06              1227 	pop	ar6
   0AC7 D0 05              1228 	pop	ar5
   0AC9 70 03              1229 	jnz	00198$
   0ACB 02 17 39           1230 	ljmp	00157$
   0ACE                    1231 00198$:
                           1232 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:171: printf("\t\tProcessing event...\n") ;
   0ACE C0 05              1233 	push	ar5
   0AD0 C0 06              1234 	push	ar6
   0AD2 C0 07              1235 	push	ar7
   0AD4 74 2F              1236 	mov	a,#__str_7
   0AD6 C0 E0              1237 	push	acc
   0AD8 74 3F              1238 	mov	a,#(__str_7 >> 8)
   0ADA C0 E0              1239 	push	acc
   0ADC 74 80              1240 	mov	a,#0x80
   0ADE C0 E0              1241 	push	acc
   0AE0 12 36 33           1242 	lcall	_printf
   0AE3 15 81              1243 	dec	sp
   0AE5 15 81              1244 	dec	sp
   0AE7 15 81              1245 	dec	sp
   0AE9 D0 07              1246 	pop	ar7
   0AEB D0 06              1247 	pop	ar6
   0AED D0 05              1248 	pop	ar5
                           1249 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:183: do
   0AEF                    1250 00109$:
                           1251 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:185: action = callStateHandler(sm, stateBeingProcessed, eventToProcess) ;
   0AEF C0 05              1252 	push	ar5
   0AF1 C0 06              1253 	push	ar6
   0AF3 C0 07              1254 	push	ar7
   0AF5 90 00 CD           1255 	mov	dptr,#_iterateStateMachine_sm_1_1
   0AF8 E0                 1256 	movx	a,@dptr
   0AF9 F8                 1257 	mov	r0,a
   0AFA A3                 1258 	inc	dptr
   0AFB E0                 1259 	movx	a,@dptr
   0AFC F9                 1260 	mov	r1,a
   0AFD A3                 1261 	inc	dptr
   0AFE E0                 1262 	movx	a,@dptr
   0AFF FD                 1263 	mov	r5,a
   0B00 90 00 D5           1264 	mov	dptr,#_iterateStateMachine_stateBeingProcessed_2_3
   0B03 E0                 1265 	movx	a,@dptr
   0B04 FE                 1266 	mov	r6,a
   0B05 A3                 1267 	inc	dptr
   0B06 E0                 1268 	movx	a,@dptr
   0B07 FF                 1269 	mov	r7,a
   0B08 A3                 1270 	inc	dptr
   0B09 E0                 1271 	movx	a,@dptr
   0B0A FA                 1272 	mov	r2,a
   0B0B 90 00 C4           1273 	mov	dptr,#_callStateHandler_PARM_2
   0B0E EE                 1274 	mov	a,r6
   0B0F F0                 1275 	movx	@dptr,a
   0B10 A3                 1276 	inc	dptr
   0B11 EF                 1277 	mov	a,r7
   0B12 F0                 1278 	movx	@dptr,a
   0B13 A3                 1279 	inc	dptr
   0B14 EA                 1280 	mov	a,r2
   0B15 F0                 1281 	movx	@dptr,a
   0B16 90 00 C7           1282 	mov	dptr,#_callStateHandler_PARM_3
   0B19 E5 3B              1283 	mov	a,_iterateStateMachine_sloc6_1_0
   0B1B F0                 1284 	movx	@dptr,a
   0B1C A3                 1285 	inc	dptr
   0B1D E5 3C              1286 	mov	a,(_iterateStateMachine_sloc6_1_0 + 1)
   0B1F F0                 1287 	movx	@dptr,a
   0B20 A3                 1288 	inc	dptr
   0B21 E5 3D              1289 	mov	a,(_iterateStateMachine_sloc6_1_0 + 2)
   0B23 F0                 1290 	movx	@dptr,a
   0B24 88 82              1291 	mov	dpl,r0
   0B26 89 83              1292 	mov	dph,r1
   0B28 8D F0              1293 	mov	b,r5
   0B2A C0 05              1294 	push	ar5
   0B2C C0 06              1295 	push	ar6
   0B2E C0 07              1296 	push	ar7
   0B30 12 06 D5           1297 	lcall	_callStateHandler
   0B33 85 82 41           1298 	mov	_iterateStateMachine_sloc8_1_0,dpl
   0B36 D0 07              1299 	pop	ar7
   0B38 D0 06              1300 	pop	ar6
   0B3A D0 05              1301 	pop	ar5
                           1302 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:187: if((action == IGNORED) && (eventToProcess->eventType > SUBSTATE_EXIT))
   0B3C D0 07              1303 	pop	ar7
   0B3E D0 06              1304 	pop	ar6
   0B40 D0 05              1305 	pop	ar5
   0B42 E5 41              1306 	mov	a,_iterateStateMachine_sloc8_1_0
   0B44 60 03              1307 	jz	00199$
   0B46 02 0B F4           1308 	ljmp	00111$
   0B49                    1309 00199$:
   0B49 85 3B 82           1310 	mov	dpl,_iterateStateMachine_sloc6_1_0
   0B4C 85 3C 83           1311 	mov	dph,(_iterateStateMachine_sloc6_1_0 + 1)
   0B4F 85 3D F0           1312 	mov	b,(_iterateStateMachine_sloc6_1_0 + 2)
   0B52 12 3E 7F           1313 	lcall	__gptrget
   0B55 FA                 1314 	mov  r2,a
   0B56 24 FC              1315 	add	a,#0xff - 0x03
   0B58 40 03              1316 	jc	00200$
   0B5A 02 0B F4           1317 	ljmp	00111$
   0B5D                    1318 00200$:
                           1319 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:189: stateBeingProcessed = stateBeingProcessed->parent ;
   0B5D 90 00 D5           1320 	mov	dptr,#_iterateStateMachine_stateBeingProcessed_2_3
   0B60 E0                 1321 	movx	a,@dptr
   0B61 FA                 1322 	mov	r2,a
   0B62 A3                 1323 	inc	dptr
   0B63 E0                 1324 	movx	a,@dptr
   0B64 FB                 1325 	mov	r3,a
   0B65 A3                 1326 	inc	dptr
   0B66 E0                 1327 	movx	a,@dptr
   0B67 FC                 1328 	mov	r4,a
   0B68 8A 82              1329 	mov	dpl,r2
   0B6A 8B 83              1330 	mov	dph,r3
   0B6C 8C F0              1331 	mov	b,r4
   0B6E 12 3E 7F           1332 	lcall	__gptrget
   0B71 FA                 1333 	mov	r2,a
   0B72 A3                 1334 	inc	dptr
   0B73 12 3E 7F           1335 	lcall	__gptrget
   0B76 FB                 1336 	mov	r3,a
   0B77 A3                 1337 	inc	dptr
   0B78 12 3E 7F           1338 	lcall	__gptrget
   0B7B FC                 1339 	mov	r4,a
   0B7C 90 00 D5           1340 	mov	dptr,#_iterateStateMachine_stateBeingProcessed_2_3
   0B7F EA                 1341 	mov	a,r2
   0B80 F0                 1342 	movx	@dptr,a
   0B81 A3                 1343 	inc	dptr
   0B82 EB                 1344 	mov	a,r3
   0B83 F0                 1345 	movx	@dptr,a
   0B84 A3                 1346 	inc	dptr
   0B85 EC                 1347 	mov	a,r4
   0B86 F0                 1348 	movx	@dptr,a
                           1349 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:191: printf("\t\t\t\t\t\t\tmoving to parent: %s\n", stateBeingProcessed ? stateBeingProcessed->stateName : "<root>") ;
   0B87 90 00 D5           1350 	mov	dptr,#_iterateStateMachine_stateBeingProcessed_2_3
   0B8A E0                 1351 	movx	a,@dptr
   0B8B FA                 1352 	mov	r2,a
   0B8C A3                 1353 	inc	dptr
   0B8D E0                 1354 	movx	a,@dptr
   0B8E FB                 1355 	mov	r3,a
   0B8F A3                 1356 	inc	dptr
   0B90 E0                 1357 	movx	a,@dptr
   0B91 FC                 1358 	mov	r4,a
   0B92 EA                 1359 	mov	a,r2
   0B93 4B                 1360 	orl	a,r3
   0B94 4C                 1361 	orl	a,r4
   0B95 60 1D              1362 	jz	00160$
   0B97 74 06              1363 	mov	a,#0x06
   0B99 2A                 1364 	add	a,r2
   0B9A FA                 1365 	mov	r2,a
   0B9B E4                 1366 	clr	a
   0B9C 3B                 1367 	addc	a,r3
   0B9D FB                 1368 	mov	r3,a
   0B9E 8A 82              1369 	mov	dpl,r2
   0BA0 8B 83              1370 	mov	dph,r3
   0BA2 8C F0              1371 	mov	b,r4
   0BA4 12 3E 7F           1372 	lcall	__gptrget
   0BA7 FA                 1373 	mov	r2,a
   0BA8 A3                 1374 	inc	dptr
   0BA9 12 3E 7F           1375 	lcall	__gptrget
   0BAC FB                 1376 	mov	r3,a
   0BAD A3                 1377 	inc	dptr
   0BAE 12 3E 7F           1378 	lcall	__gptrget
   0BB1 FC                 1379 	mov	r4,a
   0BB2 80 06              1380 	sjmp	00161$
   0BB4                    1381 00160$:
   0BB4 7A 63              1382 	mov	r2,#__str_9
   0BB6 7B 3F              1383 	mov	r3,#(__str_9 >> 8)
   0BB8 7C 80              1384 	mov	r4,#0x80
   0BBA                    1385 00161$:
   0BBA C0 05              1386 	push	ar5
   0BBC C0 06              1387 	push	ar6
   0BBE C0 07              1388 	push	ar7
   0BC0 C0 02              1389 	push	ar2
   0BC2 C0 03              1390 	push	ar3
   0BC4 C0 04              1391 	push	ar4
   0BC6 74 46              1392 	mov	a,#__str_8
   0BC8 C0 E0              1393 	push	acc
   0BCA 74 3F              1394 	mov	a,#(__str_8 >> 8)
   0BCC C0 E0              1395 	push	acc
   0BCE 74 80              1396 	mov	a,#0x80
   0BD0 C0 E0              1397 	push	acc
   0BD2 12 36 33           1398 	lcall	_printf
   0BD5 E5 81              1399 	mov	a,sp
   0BD7 24 FA              1400 	add	a,#0xfa
   0BD9 F5 81              1401 	mov	sp,a
   0BDB D0 07              1402 	pop	ar7
   0BDD D0 06              1403 	pop	ar6
   0BDF D0 05              1404 	pop	ar5
                           1405 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:200: } while(stateBeingProcessed) ;
   0BE1 90 00 D5           1406 	mov	dptr,#_iterateStateMachine_stateBeingProcessed_2_3
   0BE4 E0                 1407 	movx	a,@dptr
   0BE5 FA                 1408 	mov	r2,a
   0BE6 A3                 1409 	inc	dptr
   0BE7 E0                 1410 	movx	a,@dptr
   0BE8 FB                 1411 	mov	r3,a
   0BE9 A3                 1412 	inc	dptr
   0BEA E0                 1413 	movx	a,@dptr
   0BEB FC                 1414 	mov	r4,a
   0BEC EA                 1415 	mov	a,r2
   0BED 4B                 1416 	orl	a,r3
   0BEE 4C                 1417 	orl	a,r4
   0BEF 60 03              1418 	jz	00202$
   0BF1 02 0A EF           1419 	ljmp	00109$
   0BF4                    1420 00202$:
   0BF4                    1421 00111$:
                           1422 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:204: if(action == TRANSITION)
   0BF4 74 02              1423 	mov	a,#0x02
   0BF6 B5 41 02           1424 	cjne	a,_iterateStateMachine_sloc8_1_0,00203$
   0BF9 80 03              1425 	sjmp	00204$
   0BFB                    1426 00203$:
   0BFB 02 0A 06           1427 	ljmp	00155$
   0BFE                    1428 00204$:
                           1429 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:206: state_t*	source	= sm->currentState ;
   0BFE 74 06              1430 	mov	a,#0x06
   0C00 2D                 1431 	add	a,r5
   0C01 FA                 1432 	mov	r2,a
   0C02 E4                 1433 	clr	a
   0C03 3E                 1434 	addc	a,r6
   0C04 FB                 1435 	mov	r3,a
   0C05 8F 04              1436 	mov	ar4,r7
   0C07 8A 82              1437 	mov	dpl,r2
   0C09 8B 83              1438 	mov	dph,r3
   0C0B 8C F0              1439 	mov	b,r4
   0C0D 12 3E 7F           1440 	lcall	__gptrget
   0C10 F5 3B              1441 	mov	_iterateStateMachine_sloc6_1_0,a
   0C12 A3                 1442 	inc	dptr
   0C13 12 3E 7F           1443 	lcall	__gptrget
   0C16 F5 3C              1444 	mov	(_iterateStateMachine_sloc6_1_0 + 1),a
   0C18 A3                 1445 	inc	dptr
   0C19 12 3E 7F           1446 	lcall	__gptrget
   0C1C F5 3D              1447 	mov	(_iterateStateMachine_sloc6_1_0 + 2),a
                           1448 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:207: state_t*	target	= sm->nextState ;
   0C1E 85 29 82           1449 	mov	dpl,_iterateStateMachine_sloc0_1_0
   0C21 85 2A 83           1450 	mov	dph,(_iterateStateMachine_sloc0_1_0 + 1)
   0C24 85 2B F0           1451 	mov	b,(_iterateStateMachine_sloc0_1_0 + 2)
   0C27 12 3E 7F           1452 	lcall	__gptrget
   0C2A F5 42              1453 	mov	_iterateStateMachine_sloc9_1_0,a
   0C2C A3                 1454 	inc	dptr
   0C2D 12 3E 7F           1455 	lcall	__gptrget
   0C30 F5 43              1456 	mov	(_iterateStateMachine_sloc9_1_0 + 1),a
   0C32 A3                 1457 	inc	dptr
   0C33 12 3E 7F           1458 	lcall	__gptrget
   0C36 F5 44              1459 	mov	(_iterateStateMachine_sloc9_1_0 + 2),a
                           1460 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:213: if(source == target)
   0C38 E5 42              1461 	mov	a,_iterateStateMachine_sloc9_1_0
   0C3A B5 3B 0C           1462 	cjne	a,_iterateStateMachine_sloc6_1_0,00205$
   0C3D E5 43              1463 	mov	a,(_iterateStateMachine_sloc9_1_0 + 1)
   0C3F B5 3C 07           1464 	cjne	a,(_iterateStateMachine_sloc6_1_0 + 1),00205$
   0C42 E5 44              1465 	mov	a,(_iterateStateMachine_sloc9_1_0 + 2)
   0C44 B5 3D 02           1466 	cjne	a,(_iterateStateMachine_sloc6_1_0 + 2),00205$
   0C47 80 03              1467 	sjmp	00206$
   0C49                    1468 00205$:
   0C49 02 0D 03           1469 	ljmp	00151$
   0C4C                    1470 00206$:
                           1471 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:215: printf("\t\t\t\tSelf transition.\n") ;
   0C4C C0 05              1472 	push	ar5
   0C4E C0 06              1473 	push	ar6
   0C50 C0 07              1474 	push	ar7
   0C52 74 6A              1475 	mov	a,#__str_10
   0C54 C0 E0              1476 	push	acc
   0C56 74 3F              1477 	mov	a,#(__str_10 >> 8)
   0C58 C0 E0              1478 	push	acc
   0C5A 74 80              1479 	mov	a,#0x80
   0C5C C0 E0              1480 	push	acc
   0C5E 12 36 33           1481 	lcall	_printf
   0C61 15 81              1482 	dec	sp
   0C63 15 81              1483 	dec	sp
   0C65 15 81              1484 	dec	sp
   0C67 D0 07              1485 	pop	ar7
   0C69 D0 06              1486 	pop	ar6
   0C6B D0 05              1487 	pop	ar5
                           1488 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:219: callStateHandler(sm, source, &exitEvent) ;
   0C6D 90 00 C4           1489 	mov	dptr,#_callStateHandler_PARM_2
   0C70 E5 3B              1490 	mov	a,_iterateStateMachine_sloc6_1_0
   0C72 F0                 1491 	movx	@dptr,a
   0C73 A3                 1492 	inc	dptr
   0C74 E5 3C              1493 	mov	a,(_iterateStateMachine_sloc6_1_0 + 1)
   0C76 F0                 1494 	movx	@dptr,a
   0C77 A3                 1495 	inc	dptr
   0C78 E5 3D              1496 	mov	a,(_iterateStateMachine_sloc6_1_0 + 2)
   0C7A F0                 1497 	movx	@dptr,a
   0C7B 90 00 C7           1498 	mov	dptr,#_callStateHandler_PARM_3
   0C7E 74 D2              1499 	mov	a,#_iterateStateMachine_exitEvent_1_1
   0C80 F0                 1500 	movx	@dptr,a
   0C81 A3                 1501 	inc	dptr
   0C82 74 00              1502 	mov	a,#(_iterateStateMachine_exitEvent_1_1 >> 8)
   0C84 F0                 1503 	movx	@dptr,a
   0C85 A3                 1504 	inc	dptr
   0C86 E4                 1505 	clr	a
   0C87 F0                 1506 	movx	@dptr,a
   0C88 8D 82              1507 	mov	dpl,r5
   0C8A 8E 83              1508 	mov	dph,r6
   0C8C 8F F0              1509 	mov	b,r7
   0C8E C0 05              1510 	push	ar5
   0C90 C0 06              1511 	push	ar6
   0C92 C0 07              1512 	push	ar7
   0C94 12 06 D5           1513 	lcall	_callStateHandler
                           1514 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:220: sm->currentState = target ;
   0C97 90 00 CD           1515 	mov	dptr,#_iterateStateMachine_sm_1_1
   0C9A E0                 1516 	movx	a,@dptr
   0C9B F5 45              1517 	mov	_iterateStateMachine_sloc10_1_0,a
   0C9D A3                 1518 	inc	dptr
   0C9E E0                 1519 	movx	a,@dptr
   0C9F F5 46              1520 	mov	(_iterateStateMachine_sloc10_1_0 + 1),a
   0CA1 A3                 1521 	inc	dptr
   0CA2 E0                 1522 	movx	a,@dptr
   0CA3 F5 47              1523 	mov	(_iterateStateMachine_sloc10_1_0 + 2),a
   0CA5 74 06              1524 	mov	a,#0x06
   0CA7 25 45              1525 	add	a,_iterateStateMachine_sloc10_1_0
   0CA9 FE                 1526 	mov	r6,a
   0CAA E4                 1527 	clr	a
   0CAB 35 46              1528 	addc	a,(_iterateStateMachine_sloc10_1_0 + 1)
   0CAD FF                 1529 	mov	r7,a
   0CAE AD 47              1530 	mov	r5,(_iterateStateMachine_sloc10_1_0 + 2)
   0CB0 8E 82              1531 	mov	dpl,r6
   0CB2 8F 83              1532 	mov	dph,r7
   0CB4 8D F0              1533 	mov	b,r5
   0CB6 E5 42              1534 	mov	a,_iterateStateMachine_sloc9_1_0
   0CB8 12 32 73           1535 	lcall	__gptrput
   0CBB A3                 1536 	inc	dptr
   0CBC E5 43              1537 	mov	a,(_iterateStateMachine_sloc9_1_0 + 1)
   0CBE 12 32 73           1538 	lcall	__gptrput
   0CC1 A3                 1539 	inc	dptr
   0CC2 E5 44              1540 	mov	a,(_iterateStateMachine_sloc9_1_0 + 2)
   0CC4 12 32 73           1541 	lcall	__gptrput
                           1542 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:221: callStateHandler(sm, target, &enterEvent) ;
   0CC7 90 00 C4           1543 	mov	dptr,#_callStateHandler_PARM_2
   0CCA E5 42              1544 	mov	a,_iterateStateMachine_sloc9_1_0
   0CCC F0                 1545 	movx	@dptr,a
   0CCD A3                 1546 	inc	dptr
   0CCE E5 43              1547 	mov	a,(_iterateStateMachine_sloc9_1_0 + 1)
   0CD0 F0                 1548 	movx	@dptr,a
   0CD1 A3                 1549 	inc	dptr
   0CD2 E5 44              1550 	mov	a,(_iterateStateMachine_sloc9_1_0 + 2)
   0CD4 F0                 1551 	movx	@dptr,a
   0CD5 90 00 C7           1552 	mov	dptr,#_callStateHandler_PARM_3
   0CD8 74 D1              1553 	mov	a,#_iterateStateMachine_enterEvent_1_1
   0CDA F0                 1554 	movx	@dptr,a
   0CDB A3                 1555 	inc	dptr
   0CDC 74 00              1556 	mov	a,#(_iterateStateMachine_enterEvent_1_1 >> 8)
   0CDE F0                 1557 	movx	@dptr,a
   0CDF A3                 1558 	inc	dptr
   0CE0 E4                 1559 	clr	a
   0CE1 F0                 1560 	movx	@dptr,a
   0CE2 85 45 82           1561 	mov	dpl,_iterateStateMachine_sloc10_1_0
   0CE5 85 46 83           1562 	mov	dph,(_iterateStateMachine_sloc10_1_0 + 1)
   0CE8 85 47 F0           1563 	mov	b,(_iterateStateMachine_sloc10_1_0 + 2)
   0CEB C0 05              1564 	push	ar5
   0CED C0 06              1565 	push	ar6
   0CEF C0 07              1566 	push	ar7
   0CF1 12 06 D5           1567 	lcall	_callStateHandler
   0CF4 D0 07              1568 	pop	ar7
   0CF6 D0 06              1569 	pop	ar6
   0CF8 D0 05              1570 	pop	ar5
   0CFA D0 07              1571 	pop	ar7
   0CFC D0 06              1572 	pop	ar6
   0CFE D0 05              1573 	pop	ar5
   0D00 02 17 09           1574 	ljmp	00152$
   0D03                    1575 00151$:
                           1576 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:223: else if(source == (state_t*)(target->parent))
   0D03 C0 02              1577 	push	ar2
   0D05 C0 03              1578 	push	ar3
   0D07 C0 04              1579 	push	ar4
   0D09 85 42 82           1580 	mov	dpl,_iterateStateMachine_sloc9_1_0
   0D0C 85 43 83           1581 	mov	dph,(_iterateStateMachine_sloc9_1_0 + 1)
   0D0F 85 44 F0           1582 	mov	b,(_iterateStateMachine_sloc9_1_0 + 2)
   0D12 12 3E 7F           1583 	lcall	__gptrget
   0D15 F8                 1584 	mov	r0,a
   0D16 A3                 1585 	inc	dptr
   0D17 12 3E 7F           1586 	lcall	__gptrget
   0D1A F9                 1587 	mov	r1,a
   0D1B A3                 1588 	inc	dptr
   0D1C 12 3E 7F           1589 	lcall	__gptrget
   0D1F FA                 1590 	mov	r2,a
   0D20 E8                 1591 	mov	a,r0
   0D21 B5 3B 0A           1592 	cjne	a,_iterateStateMachine_sloc6_1_0,00207$
   0D24 E9                 1593 	mov	a,r1
   0D25 B5 3C 06           1594 	cjne	a,(_iterateStateMachine_sloc6_1_0 + 1),00207$
   0D28 EA                 1595 	mov	a,r2
   0D29 B5 3D 02           1596 	cjne	a,(_iterateStateMachine_sloc6_1_0 + 2),00207$
   0D2C 80 08              1597 	sjmp	00208$
   0D2E                    1598 00207$:
   0D2E D0 04              1599 	pop	ar4
   0D30 D0 03              1600 	pop	ar3
   0D32 D0 02              1601 	pop	ar2
   0D34 80 71              1602 	sjmp	00148$
   0D36                    1603 00208$:
                           1604 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:225: printf("\t\t\t\tTransition to direct child.\n") ;
   0D36 C0 05              1605 	push	ar5
   0D38 C0 06              1606 	push	ar6
   0D3A C0 07              1607 	push	ar7
   0D3C 74 80              1608 	mov	a,#__str_11
   0D3E C0 E0              1609 	push	acc
   0D40 74 3F              1610 	mov	a,#(__str_11 >> 8)
   0D42 C0 E0              1611 	push	acc
   0D44 74 80              1612 	mov	a,#0x80
   0D46 C0 E0              1613 	push	acc
   0D48 12 36 33           1614 	lcall	_printf
   0D4B 15 81              1615 	dec	sp
   0D4D 15 81              1616 	dec	sp
   0D4F 15 81              1617 	dec	sp
   0D51 D0 07              1618 	pop	ar7
   0D53 D0 06              1619 	pop	ar6
   0D55 D0 05              1620 	pop	ar5
   0D57 D0 04              1621 	pop	ar4
   0D59 D0 03              1622 	pop	ar3
   0D5B D0 02              1623 	pop	ar2
                           1624 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:230: sm->currentState = target ;
   0D5D 8A 82              1625 	mov	dpl,r2
   0D5F 8B 83              1626 	mov	dph,r3
   0D61 8C F0              1627 	mov	b,r4
   0D63 E5 42              1628 	mov	a,_iterateStateMachine_sloc9_1_0
   0D65 12 32 73           1629 	lcall	__gptrput
   0D68 A3                 1630 	inc	dptr
   0D69 E5 43              1631 	mov	a,(_iterateStateMachine_sloc9_1_0 + 1)
   0D6B 12 32 73           1632 	lcall	__gptrput
   0D6E A3                 1633 	inc	dptr
   0D6F E5 44              1634 	mov	a,(_iterateStateMachine_sloc9_1_0 + 2)
   0D71 12 32 73           1635 	lcall	__gptrput
                           1636 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:231: callStateHandler(sm, target, &enterEvent) ;
   0D74 90 00 C4           1637 	mov	dptr,#_callStateHandler_PARM_2
   0D77 E5 42              1638 	mov	a,_iterateStateMachine_sloc9_1_0
   0D79 F0                 1639 	movx	@dptr,a
   0D7A A3                 1640 	inc	dptr
   0D7B E5 43              1641 	mov	a,(_iterateStateMachine_sloc9_1_0 + 1)
   0D7D F0                 1642 	movx	@dptr,a
   0D7E A3                 1643 	inc	dptr
   0D7F E5 44              1644 	mov	a,(_iterateStateMachine_sloc9_1_0 + 2)
   0D81 F0                 1645 	movx	@dptr,a
   0D82 90 00 C7           1646 	mov	dptr,#_callStateHandler_PARM_3
   0D85 74 D1              1647 	mov	a,#_iterateStateMachine_enterEvent_1_1
   0D87 F0                 1648 	movx	@dptr,a
   0D88 A3                 1649 	inc	dptr
   0D89 74 00              1650 	mov	a,#(_iterateStateMachine_enterEvent_1_1 >> 8)
   0D8B F0                 1651 	movx	@dptr,a
   0D8C A3                 1652 	inc	dptr
   0D8D E4                 1653 	clr	a
   0D8E F0                 1654 	movx	@dptr,a
   0D8F 8D 82              1655 	mov	dpl,r5
   0D91 8E 83              1656 	mov	dph,r6
   0D93 8F F0              1657 	mov	b,r7
   0D95 C0 05              1658 	push	ar5
   0D97 C0 06              1659 	push	ar6
   0D99 C0 07              1660 	push	ar7
   0D9B 12 06 D5           1661 	lcall	_callStateHandler
   0D9E D0 07              1662 	pop	ar7
   0DA0 D0 06              1663 	pop	ar6
   0DA2 D0 05              1664 	pop	ar5
   0DA4 02 17 09           1665 	ljmp	00152$
   0DA7                    1666 00148$:
                           1667 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:233: else if((state_t*)(source->parent) == (state_t*)(target->parent))
   0DA7 C0 02              1668 	push	ar2
   0DA9 C0 03              1669 	push	ar3
   0DAB C0 04              1670 	push	ar4
   0DAD 85 3B 82           1671 	mov	dpl,_iterateStateMachine_sloc6_1_0
   0DB0 85 3C 83           1672 	mov	dph,(_iterateStateMachine_sloc6_1_0 + 1)
   0DB3 85 3D F0           1673 	mov	b,(_iterateStateMachine_sloc6_1_0 + 2)
   0DB6 12 3E 7F           1674 	lcall	__gptrget
   0DB9 F5 45              1675 	mov	_iterateStateMachine_sloc10_1_0,a
   0DBB A3                 1676 	inc	dptr
   0DBC 12 3E 7F           1677 	lcall	__gptrget
   0DBF F5 46              1678 	mov	(_iterateStateMachine_sloc10_1_0 + 1),a
   0DC1 A3                 1679 	inc	dptr
   0DC2 12 3E 7F           1680 	lcall	__gptrget
   0DC5 F5 47              1681 	mov	(_iterateStateMachine_sloc10_1_0 + 2),a
   0DC7 85 42 82           1682 	mov	dpl,_iterateStateMachine_sloc9_1_0
   0DCA 85 43 83           1683 	mov	dph,(_iterateStateMachine_sloc9_1_0 + 1)
   0DCD 85 44 F0           1684 	mov	b,(_iterateStateMachine_sloc9_1_0 + 2)
   0DD0 12 3E 7F           1685 	lcall	__gptrget
   0DD3 FB                 1686 	mov	r3,a
   0DD4 A3                 1687 	inc	dptr
   0DD5 12 3E 7F           1688 	lcall	__gptrget
   0DD8 FC                 1689 	mov	r4,a
   0DD9 A3                 1690 	inc	dptr
   0DDA 12 3E 7F           1691 	lcall	__gptrget
   0DDD FA                 1692 	mov	r2,a
   0DDE EB                 1693 	mov	a,r3
   0DDF B5 45 0A           1694 	cjne	a,_iterateStateMachine_sloc10_1_0,00209$
   0DE2 EC                 1695 	mov	a,r4
   0DE3 B5 46 06           1696 	cjne	a,(_iterateStateMachine_sloc10_1_0 + 1),00209$
   0DE6 EA                 1697 	mov	a,r2
   0DE7 B5 47 02           1698 	cjne	a,(_iterateStateMachine_sloc10_1_0 + 2),00209$
   0DEA 80 09              1699 	sjmp	00210$
   0DEC                    1700 00209$:
   0DEC D0 04              1701 	pop	ar4
   0DEE D0 03              1702 	pop	ar3
   0DF0 D0 02              1703 	pop	ar2
   0DF2 02 0E B2           1704 	ljmp	00145$
   0DF5                    1705 00210$:
   0DF5 D0 04              1706 	pop	ar4
   0DF7 D0 03              1707 	pop	ar3
   0DF9 D0 02              1708 	pop	ar2
                           1709 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:235: printf("\t\t\t\tTransition to direct peer.\n") ;
   0DFB C0 05              1710 	push	ar5
   0DFD C0 06              1711 	push	ar6
   0DFF C0 07              1712 	push	ar7
   0E01 74 A1              1713 	mov	a,#__str_12
   0E03 C0 E0              1714 	push	acc
   0E05 74 3F              1715 	mov	a,#(__str_12 >> 8)
   0E07 C0 E0              1716 	push	acc
   0E09 74 80              1717 	mov	a,#0x80
   0E0B C0 E0              1718 	push	acc
   0E0D 12 36 33           1719 	lcall	_printf
   0E10 15 81              1720 	dec	sp
   0E12 15 81              1721 	dec	sp
   0E14 15 81              1722 	dec	sp
   0E16 D0 07              1723 	pop	ar7
   0E18 D0 06              1724 	pop	ar6
   0E1A D0 05              1725 	pop	ar5
                           1726 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:240: callStateHandler(sm, source, &exitEvent) ;
   0E1C 90 00 C4           1727 	mov	dptr,#_callStateHandler_PARM_2
   0E1F E5 3B              1728 	mov	a,_iterateStateMachine_sloc6_1_0
   0E21 F0                 1729 	movx	@dptr,a
   0E22 A3                 1730 	inc	dptr
   0E23 E5 3C              1731 	mov	a,(_iterateStateMachine_sloc6_1_0 + 1)
   0E25 F0                 1732 	movx	@dptr,a
   0E26 A3                 1733 	inc	dptr
   0E27 E5 3D              1734 	mov	a,(_iterateStateMachine_sloc6_1_0 + 2)
   0E29 F0                 1735 	movx	@dptr,a
   0E2A 90 00 C7           1736 	mov	dptr,#_callStateHandler_PARM_3
   0E2D 74 D2              1737 	mov	a,#_iterateStateMachine_exitEvent_1_1
   0E2F F0                 1738 	movx	@dptr,a
   0E30 A3                 1739 	inc	dptr
   0E31 74 00              1740 	mov	a,#(_iterateStateMachine_exitEvent_1_1 >> 8)
   0E33 F0                 1741 	movx	@dptr,a
   0E34 A3                 1742 	inc	dptr
   0E35 E4                 1743 	clr	a
   0E36 F0                 1744 	movx	@dptr,a
   0E37 8D 82              1745 	mov	dpl,r5
   0E39 8E 83              1746 	mov	dph,r6
   0E3B 8F F0              1747 	mov	b,r7
   0E3D C0 05              1748 	push	ar5
   0E3F C0 06              1749 	push	ar6
   0E41 C0 07              1750 	push	ar7
   0E43 12 06 D5           1751 	lcall	_callStateHandler
                           1752 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:241: sm->currentState = target ;
   0E46 90 00 CD           1753 	mov	dptr,#_iterateStateMachine_sm_1_1
   0E49 E0                 1754 	movx	a,@dptr
   0E4A F5 45              1755 	mov	_iterateStateMachine_sloc10_1_0,a
   0E4C A3                 1756 	inc	dptr
   0E4D E0                 1757 	movx	a,@dptr
   0E4E F5 46              1758 	mov	(_iterateStateMachine_sloc10_1_0 + 1),a
   0E50 A3                 1759 	inc	dptr
   0E51 E0                 1760 	movx	a,@dptr
   0E52 F5 47              1761 	mov	(_iterateStateMachine_sloc10_1_0 + 2),a
   0E54 74 06              1762 	mov	a,#0x06
   0E56 25 45              1763 	add	a,_iterateStateMachine_sloc10_1_0
   0E58 FE                 1764 	mov	r6,a
   0E59 E4                 1765 	clr	a
   0E5A 35 46              1766 	addc	a,(_iterateStateMachine_sloc10_1_0 + 1)
   0E5C FF                 1767 	mov	r7,a
   0E5D AD 47              1768 	mov	r5,(_iterateStateMachine_sloc10_1_0 + 2)
   0E5F 8E 82              1769 	mov	dpl,r6
   0E61 8F 83              1770 	mov	dph,r7
   0E63 8D F0              1771 	mov	b,r5
   0E65 E5 42              1772 	mov	a,_iterateStateMachine_sloc9_1_0
   0E67 12 32 73           1773 	lcall	__gptrput
   0E6A A3                 1774 	inc	dptr
   0E6B E5 43              1775 	mov	a,(_iterateStateMachine_sloc9_1_0 + 1)
   0E6D 12 32 73           1776 	lcall	__gptrput
   0E70 A3                 1777 	inc	dptr
   0E71 E5 44              1778 	mov	a,(_iterateStateMachine_sloc9_1_0 + 2)
   0E73 12 32 73           1779 	lcall	__gptrput
                           1780 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:242: callStateHandler(sm, target, &enterEvent) ;
   0E76 90 00 C4           1781 	mov	dptr,#_callStateHandler_PARM_2
   0E79 E5 42              1782 	mov	a,_iterateStateMachine_sloc9_1_0
   0E7B F0                 1783 	movx	@dptr,a
   0E7C A3                 1784 	inc	dptr
   0E7D E5 43              1785 	mov	a,(_iterateStateMachine_sloc9_1_0 + 1)
   0E7F F0                 1786 	movx	@dptr,a
   0E80 A3                 1787 	inc	dptr
   0E81 E5 44              1788 	mov	a,(_iterateStateMachine_sloc9_1_0 + 2)
   0E83 F0                 1789 	movx	@dptr,a
   0E84 90 00 C7           1790 	mov	dptr,#_callStateHandler_PARM_3
   0E87 74 D1              1791 	mov	a,#_iterateStateMachine_enterEvent_1_1
   0E89 F0                 1792 	movx	@dptr,a
   0E8A A3                 1793 	inc	dptr
   0E8B 74 00              1794 	mov	a,#(_iterateStateMachine_enterEvent_1_1 >> 8)
   0E8D F0                 1795 	movx	@dptr,a
   0E8E A3                 1796 	inc	dptr
   0E8F E4                 1797 	clr	a
   0E90 F0                 1798 	movx	@dptr,a
   0E91 85 45 82           1799 	mov	dpl,_iterateStateMachine_sloc10_1_0
   0E94 85 46 83           1800 	mov	dph,(_iterateStateMachine_sloc10_1_0 + 1)
   0E97 85 47 F0           1801 	mov	b,(_iterateStateMachine_sloc10_1_0 + 2)
   0E9A C0 05              1802 	push	ar5
   0E9C C0 06              1803 	push	ar6
   0E9E C0 07              1804 	push	ar7
   0EA0 12 06 D5           1805 	lcall	_callStateHandler
   0EA3 D0 07              1806 	pop	ar7
   0EA5 D0 06              1807 	pop	ar6
   0EA7 D0 05              1808 	pop	ar5
   0EA9 D0 07              1809 	pop	ar7
   0EAB D0 06              1810 	pop	ar6
   0EAD D0 05              1811 	pop	ar5
   0EAF 02 17 09           1812 	ljmp	00152$
   0EB2                    1813 00145$:
                           1814 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:244: else if((state_t*)(source->parent) == target)
   0EB2 C0 02              1815 	push	ar2
   0EB4 C0 03              1816 	push	ar3
   0EB6 C0 04              1817 	push	ar4
   0EB8 85 3B 82           1818 	mov	dpl,_iterateStateMachine_sloc6_1_0
   0EBB 85 3C 83           1819 	mov	dph,(_iterateStateMachine_sloc6_1_0 + 1)
   0EBE 85 3D F0           1820 	mov	b,(_iterateStateMachine_sloc6_1_0 + 2)
   0EC1 12 3E 7F           1821 	lcall	__gptrget
   0EC4 F8                 1822 	mov	r0,a
   0EC5 A3                 1823 	inc	dptr
   0EC6 12 3E 7F           1824 	lcall	__gptrget
   0EC9 F9                 1825 	mov	r1,a
   0ECA A3                 1826 	inc	dptr
   0ECB 12 3E 7F           1827 	lcall	__gptrget
   0ECE FA                 1828 	mov	r2,a
   0ECF E8                 1829 	mov	a,r0
   0ED0 B5 42 0A           1830 	cjne	a,_iterateStateMachine_sloc9_1_0,00211$
   0ED3 E9                 1831 	mov	a,r1
   0ED4 B5 43 06           1832 	cjne	a,(_iterateStateMachine_sloc9_1_0 + 1),00211$
   0ED7 EA                 1833 	mov	a,r2
   0ED8 B5 44 02           1834 	cjne	a,(_iterateStateMachine_sloc9_1_0 + 2),00211$
   0EDB 80 08              1835 	sjmp	00212$
   0EDD                    1836 00211$:
   0EDD D0 04              1837 	pop	ar4
   0EDF D0 03              1838 	pop	ar3
   0EE1 D0 02              1839 	pop	ar2
   0EE3 80 71              1840 	sjmp	00142$
   0EE5                    1841 00212$:
                           1842 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:246: printf("\t\t\t\tTransition to direct parent.\n") ;
   0EE5 C0 05              1843 	push	ar5
   0EE7 C0 06              1844 	push	ar6
   0EE9 C0 07              1845 	push	ar7
   0EEB 74 C1              1846 	mov	a,#__str_13
   0EED C0 E0              1847 	push	acc
   0EEF 74 3F              1848 	mov	a,#(__str_13 >> 8)
   0EF1 C0 E0              1849 	push	acc
   0EF3 74 80              1850 	mov	a,#0x80
   0EF5 C0 E0              1851 	push	acc
   0EF7 12 36 33           1852 	lcall	_printf
   0EFA 15 81              1853 	dec	sp
   0EFC 15 81              1854 	dec	sp
   0EFE 15 81              1855 	dec	sp
   0F00 D0 07              1856 	pop	ar7
   0F02 D0 06              1857 	pop	ar6
   0F04 D0 05              1858 	pop	ar5
   0F06 D0 04              1859 	pop	ar4
   0F08 D0 03              1860 	pop	ar3
   0F0A D0 02              1861 	pop	ar2
                           1862 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:252: sm->currentState = target ;
   0F0C 8A 82              1863 	mov	dpl,r2
   0F0E 8B 83              1864 	mov	dph,r3
   0F10 8C F0              1865 	mov	b,r4
   0F12 E5 42              1866 	mov	a,_iterateStateMachine_sloc9_1_0
   0F14 12 32 73           1867 	lcall	__gptrput
   0F17 A3                 1868 	inc	dptr
   0F18 E5 43              1869 	mov	a,(_iterateStateMachine_sloc9_1_0 + 1)
   0F1A 12 32 73           1870 	lcall	__gptrput
   0F1D A3                 1871 	inc	dptr
   0F1E E5 44              1872 	mov	a,(_iterateStateMachine_sloc9_1_0 + 2)
   0F20 12 32 73           1873 	lcall	__gptrput
                           1874 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:253: callStateHandler(sm, source, &exitEvent) ;
   0F23 90 00 C4           1875 	mov	dptr,#_callStateHandler_PARM_2
   0F26 E5 3B              1876 	mov	a,_iterateStateMachine_sloc6_1_0
   0F28 F0                 1877 	movx	@dptr,a
   0F29 A3                 1878 	inc	dptr
   0F2A E5 3C              1879 	mov	a,(_iterateStateMachine_sloc6_1_0 + 1)
   0F2C F0                 1880 	movx	@dptr,a
   0F2D A3                 1881 	inc	dptr
   0F2E E5 3D              1882 	mov	a,(_iterateStateMachine_sloc6_1_0 + 2)
   0F30 F0                 1883 	movx	@dptr,a
   0F31 90 00 C7           1884 	mov	dptr,#_callStateHandler_PARM_3
   0F34 74 D2              1885 	mov	a,#_iterateStateMachine_exitEvent_1_1
   0F36 F0                 1886 	movx	@dptr,a
   0F37 A3                 1887 	inc	dptr
   0F38 74 00              1888 	mov	a,#(_iterateStateMachine_exitEvent_1_1 >> 8)
   0F3A F0                 1889 	movx	@dptr,a
   0F3B A3                 1890 	inc	dptr
   0F3C E4                 1891 	clr	a
   0F3D F0                 1892 	movx	@dptr,a
   0F3E 8D 82              1893 	mov	dpl,r5
   0F40 8E 83              1894 	mov	dph,r6
   0F42 8F F0              1895 	mov	b,r7
   0F44 C0 05              1896 	push	ar5
   0F46 C0 06              1897 	push	ar6
   0F48 C0 07              1898 	push	ar7
   0F4A 12 06 D5           1899 	lcall	_callStateHandler
   0F4D D0 07              1900 	pop	ar7
   0F4F D0 06              1901 	pop	ar6
   0F51 D0 05              1902 	pop	ar5
   0F53 02 17 09           1903 	ljmp	00152$
   0F56                    1904 00142$:
                           1905 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:267: printf("\t\t\t\tScanning source hierarchy...\n") ;
   0F56 C0 05              1906 	push	ar5
   0F58 C0 06              1907 	push	ar6
   0F5A C0 07              1908 	push	ar7
   0F5C 74 E3              1909 	mov	a,#__str_14
   0F5E C0 E0              1910 	push	acc
   0F60 74 3F              1911 	mov	a,#(__str_14 >> 8)
   0F62 C0 E0              1912 	push	acc
   0F64 74 80              1913 	mov	a,#0x80
   0F66 C0 E0              1914 	push	acc
   0F68 12 36 33           1915 	lcall	_printf
   0F6B 15 81              1916 	dec	sp
   0F6D 15 81              1917 	dec	sp
   0F6F 15 81              1918 	dec	sp
   0F71 D0 07              1919 	pop	ar7
   0F73 D0 06              1920 	pop	ar6
   0F75 D0 05              1921 	pop	ar5
                           1922 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:270: targetIndex			= 0 ;
   0F77 90 01 39           1923 	mov	dptr,#_iterateStateMachine_targetIndex_4_13
   0F7A E4                 1924 	clr	a
   0F7B F0                 1925 	movx	@dptr,a
                           1926 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:271: stateBeingProcessed	= source ;
   0F7C 90 00 D5           1927 	mov	dptr,#_iterateStateMachine_stateBeingProcessed_2_3
   0F7F E5 3B              1928 	mov	a,_iterateStateMachine_sloc6_1_0
   0F81 F0                 1929 	movx	@dptr,a
   0F82 A3                 1930 	inc	dptr
   0F83 E5 3C              1931 	mov	a,(_iterateStateMachine_sloc6_1_0 + 1)
   0F85 F0                 1932 	movx	@dptr,a
   0F86 A3                 1933 	inc	dptr
   0F87 E5 3D              1934 	mov	a,(_iterateStateMachine_sloc6_1_0 + 2)
   0F89 F0                 1935 	movx	@dptr,a
                           1936 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:273: do
   0F8A 7A 00              1937 	mov	r2,#0x00
   0F8C                    1938 00117$:
                           1939 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:275: sourceHierarchy[sourceIndex++] = stateBeingProcessed ;
   0F8C C0 05              1940 	push	ar5
   0F8E C0 06              1941 	push	ar6
   0F90 C0 07              1942 	push	ar7
   0F92 8A 03              1943 	mov	ar3,r2
   0F94 0A                 1944 	inc	r2
   0F95 90 01 08           1945 	mov	dptr,#_iterateStateMachine_sourceIndex_4_13
   0F98 EA                 1946 	mov	a,r2
   0F99 F0                 1947 	movx	@dptr,a
   0F9A EB                 1948 	mov	a,r3
   0F9B 75 F0 03           1949 	mov	b,#0x03
   0F9E A4                 1950 	mul	ab
   0F9F 24 D8              1951 	add	a,#_iterateStateMachine_sourceHierarchy_4_13
   0FA1 FB                 1952 	mov	r3,a
   0FA2 E4                 1953 	clr	a
   0FA3 34 00              1954 	addc	a,#(_iterateStateMachine_sourceHierarchy_4_13 >> 8)
   0FA5 FC                 1955 	mov	r4,a
   0FA6 90 00 D5           1956 	mov	dptr,#_iterateStateMachine_stateBeingProcessed_2_3
   0FA9 E0                 1957 	movx	a,@dptr
   0FAA F5 45              1958 	mov	_iterateStateMachine_sloc10_1_0,a
   0FAC A3                 1959 	inc	dptr
   0FAD E0                 1960 	movx	a,@dptr
   0FAE F5 46              1961 	mov	(_iterateStateMachine_sloc10_1_0 + 1),a
   0FB0 A3                 1962 	inc	dptr
   0FB1 E0                 1963 	movx	a,@dptr
   0FB2 F5 47              1964 	mov	(_iterateStateMachine_sloc10_1_0 + 2),a
   0FB4 8B 82              1965 	mov	dpl,r3
   0FB6 8C 83              1966 	mov	dph,r4
   0FB8 E5 45              1967 	mov	a,_iterateStateMachine_sloc10_1_0
   0FBA F0                 1968 	movx	@dptr,a
   0FBB A3                 1969 	inc	dptr
   0FBC E5 46              1970 	mov	a,(_iterateStateMachine_sloc10_1_0 + 1)
   0FBE F0                 1971 	movx	@dptr,a
   0FBF A3                 1972 	inc	dptr
   0FC0 E5 47              1973 	mov	a,(_iterateStateMachine_sloc10_1_0 + 2)
   0FC2 F0                 1974 	movx	@dptr,a
                           1975 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:277: printf("\t\t\t\t\tsourceHierarchy[%d] = %s\n", sourceIndex - 1, stateBeingProcessed->stateName) ;
   0FC3 74 06              1976 	mov	a,#0x06
   0FC5 25 45              1977 	add	a,_iterateStateMachine_sloc10_1_0
   0FC7 FB                 1978 	mov	r3,a
   0FC8 E4                 1979 	clr	a
   0FC9 35 46              1980 	addc	a,(_iterateStateMachine_sloc10_1_0 + 1)
   0FCB FC                 1981 	mov	r4,a
   0FCC A8 47              1982 	mov	r0,(_iterateStateMachine_sloc10_1_0 + 2)
   0FCE 8B 82              1983 	mov	dpl,r3
   0FD0 8C 83              1984 	mov	dph,r4
   0FD2 88 F0              1985 	mov	b,r0
   0FD4 12 3E 7F           1986 	lcall	__gptrget
   0FD7 FB                 1987 	mov	r3,a
   0FD8 A3                 1988 	inc	dptr
   0FD9 12 3E 7F           1989 	lcall	__gptrget
   0FDC FC                 1990 	mov	r4,a
   0FDD A3                 1991 	inc	dptr
   0FDE 12 3E 7F           1992 	lcall	__gptrget
   0FE1 F8                 1993 	mov	r0,a
   0FE2 8A 01              1994 	mov	ar1,r2
   0FE4 7D 00              1995 	mov	r5,#0x00
   0FE6 19                 1996 	dec	r1
   0FE7 B9 FF 01           1997 	cjne	r1,#0xff,00213$
   0FEA 1D                 1998 	dec	r5
   0FEB                    1999 00213$:
   0FEB C0 02              2000 	push	ar2
   0FED C0 05              2001 	push	ar5
   0FEF C0 06              2002 	push	ar6
   0FF1 C0 07              2003 	push	ar7
   0FF3 C0 03              2004 	push	ar3
   0FF5 C0 04              2005 	push	ar4
   0FF7 C0 00              2006 	push	ar0
   0FF9 C0 01              2007 	push	ar1
   0FFB C0 05              2008 	push	ar5
   0FFD 74 05              2009 	mov	a,#__str_15
   0FFF C0 E0              2010 	push	acc
   1001 74 40              2011 	mov	a,#(__str_15 >> 8)
   1003 C0 E0              2012 	push	acc
   1005 74 80              2013 	mov	a,#0x80
   1007 C0 E0              2014 	push	acc
   1009 12 36 33           2015 	lcall	_printf
   100C E5 81              2016 	mov	a,sp
   100E 24 F8              2017 	add	a,#0xf8
   1010 F5 81              2018 	mov	sp,a
   1012 D0 07              2019 	pop	ar7
   1014 D0 06              2020 	pop	ar6
   1016 D0 05              2021 	pop	ar5
   1018 D0 02              2022 	pop	ar2
                           2023 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:279: if(stateBeingProcessed == target)
   101A E5 42              2024 	mov	a,_iterateStateMachine_sloc9_1_0
   101C B5 45 0C           2025 	cjne	a,_iterateStateMachine_sloc10_1_0,00214$
   101F E5 43              2026 	mov	a,(_iterateStateMachine_sloc9_1_0 + 1)
   1021 B5 46 07           2027 	cjne	a,(_iterateStateMachine_sloc10_1_0 + 1),00214$
   1024 E5 44              2028 	mov	a,(_iterateStateMachine_sloc9_1_0 + 2)
   1026 B5 47 02           2029 	cjne	a,(_iterateStateMachine_sloc10_1_0 + 2),00214$
   1029 80 09              2030 	sjmp	00215$
   102B                    2031 00214$:
   102B D0 07              2032 	pop	ar7
   102D D0 06              2033 	pop	ar6
   102F D0 05              2034 	pop	ar5
   1031 02 11 1E           2035 	ljmp	00116$
   1034                    2036 00215$:
   1034 D0 07              2037 	pop	ar7
   1036 D0 06              2038 	pop	ar6
   1038 D0 05              2039 	pop	ar5
                           2040 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:283: printf("\t\t\t\t\t\tFound target as ancestor of source\n") ;
   103A C0 02              2041 	push	ar2
   103C C0 05              2042 	push	ar5
   103E C0 06              2043 	push	ar6
   1040 C0 07              2044 	push	ar7
   1042 74 24              2045 	mov	a,#__str_16
   1044 C0 E0              2046 	push	acc
   1046 74 40              2047 	mov	a,#(__str_16 >> 8)
   1048 C0 E0              2048 	push	acc
   104A 74 80              2049 	mov	a,#0x80
   104C C0 E0              2050 	push	acc
   104E 12 36 33           2051 	lcall	_printf
   1051 15 81              2052 	dec	sp
   1053 15 81              2053 	dec	sp
   1055 15 81              2054 	dec	sp
   1057 D0 07              2055 	pop	ar7
   1059 D0 06              2056 	pop	ar6
   105B D0 05              2057 	pop	ar5
   105D D0 02              2058 	pop	ar2
                           2059 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:285: sourceIndex-- ;
   105F EA                 2060 	mov	a,r2
   1060 14                 2061 	dec	a
   1061 FB                 2062 	mov	r3,a
   1062 90 01 08           2063 	mov	dptr,#_iterateStateMachine_sourceIndex_4_13
   1065 F0                 2064 	movx	@dptr,a
                           2065 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:287: while(exitIndex < sourceIndex)
   1066 8B 41              2066 	mov	_iterateStateMachine_sloc8_1_0,r3
   1068 7C 00              2067 	mov	r4,#0x00
   106A                    2068 00112$:
   106A C3                 2069 	clr	c
   106B EC                 2070 	mov	a,r4
   106C 95 41              2071 	subb	a,_iterateStateMachine_sloc8_1_0
   106E 40 03              2072 	jc	00216$
   1070 02 10 FA           2073 	ljmp	00114$
   1073                    2074 00216$:
                           2075 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:289: printf("\t\t\t\t") ;
   1073 C0 05              2076 	push	ar5
   1075 C0 06              2077 	push	ar6
   1077 C0 07              2078 	push	ar7
   1079 C0 04              2079 	push	ar4
   107B C0 05              2080 	push	ar5
   107D C0 06              2081 	push	ar6
   107F C0 07              2082 	push	ar7
   1081 74 4E              2083 	mov	a,#__str_17
   1083 C0 E0              2084 	push	acc
   1085 74 40              2085 	mov	a,#(__str_17 >> 8)
   1087 C0 E0              2086 	push	acc
   1089 74 80              2087 	mov	a,#0x80
   108B C0 E0              2088 	push	acc
   108D 12 36 33           2089 	lcall	_printf
   1090 15 81              2090 	dec	sp
   1092 15 81              2091 	dec	sp
   1094 15 81              2092 	dec	sp
   1096 D0 07              2093 	pop	ar7
   1098 D0 06              2094 	pop	ar6
   109A D0 05              2095 	pop	ar5
   109C D0 04              2096 	pop	ar4
                           2097 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:291: callStateHandler(sm, sourceHierarchy[exitIndex], &exitEvent) ;
   109E 90 00 CD           2098 	mov	dptr,#_iterateStateMachine_sm_1_1
   10A1 E0                 2099 	movx	a,@dptr
   10A2 F8                 2100 	mov	r0,a
   10A3 A3                 2101 	inc	dptr
   10A4 E0                 2102 	movx	a,@dptr
   10A5 F9                 2103 	mov	r1,a
   10A6 A3                 2104 	inc	dptr
   10A7 E0                 2105 	movx	a,@dptr
   10A8 FD                 2106 	mov	r5,a
   10A9 EC                 2107 	mov	a,r4
   10AA 75 F0 03           2108 	mov	b,#0x03
   10AD A4                 2109 	mul	ab
   10AE 24 D8              2110 	add	a,#_iterateStateMachine_sourceHierarchy_4_13
   10B0 F5 82              2111 	mov	dpl,a
   10B2 E4                 2112 	clr	a
   10B3 34 00              2113 	addc	a,#(_iterateStateMachine_sourceHierarchy_4_13 >> 8)
   10B5 F5 83              2114 	mov	dph,a
   10B7 E0                 2115 	movx	a,@dptr
   10B8 FE                 2116 	mov	r6,a
   10B9 A3                 2117 	inc	dptr
   10BA E0                 2118 	movx	a,@dptr
   10BB FF                 2119 	mov	r7,a
   10BC A3                 2120 	inc	dptr
   10BD E0                 2121 	movx	a,@dptr
   10BE FB                 2122 	mov	r3,a
   10BF 90 00 C4           2123 	mov	dptr,#_callStateHandler_PARM_2
   10C2 EE                 2124 	mov	a,r6
   10C3 F0                 2125 	movx	@dptr,a
   10C4 A3                 2126 	inc	dptr
   10C5 EF                 2127 	mov	a,r7
   10C6 F0                 2128 	movx	@dptr,a
   10C7 A3                 2129 	inc	dptr
   10C8 EB                 2130 	mov	a,r3
   10C9 F0                 2131 	movx	@dptr,a
   10CA 90 00 C7           2132 	mov	dptr,#_callStateHandler_PARM_3
   10CD 74 D2              2133 	mov	a,#_iterateStateMachine_exitEvent_1_1
   10CF F0                 2134 	movx	@dptr,a
   10D0 A3                 2135 	inc	dptr
   10D1 74 00              2136 	mov	a,#(_iterateStateMachine_exitEvent_1_1 >> 8)
   10D3 F0                 2137 	movx	@dptr,a
   10D4 A3                 2138 	inc	dptr
   10D5 E4                 2139 	clr	a
   10D6 F0                 2140 	movx	@dptr,a
   10D7 88 82              2141 	mov	dpl,r0
   10D9 89 83              2142 	mov	dph,r1
   10DB 8D F0              2143 	mov	b,r5
   10DD C0 04              2144 	push	ar4
   10DF C0 05              2145 	push	ar5
   10E1 C0 06              2146 	push	ar6
   10E3 C0 07              2147 	push	ar7
   10E5 12 06 D5           2148 	lcall	_callStateHandler
   10E8 D0 07              2149 	pop	ar7
   10EA D0 06              2150 	pop	ar6
   10EC D0 05              2151 	pop	ar5
   10EE D0 04              2152 	pop	ar4
                           2153 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:293: exitIndex++ ;
   10F0 0C                 2154 	inc	r4
   10F1 D0 07              2155 	pop	ar7
   10F3 D0 06              2156 	pop	ar6
   10F5 D0 05              2157 	pop	ar5
   10F7 02 10 6A           2158 	ljmp	00112$
   10FA                    2159 00114$:
                           2160 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:296: sm->currentState = target ;
   10FA 74 06              2161 	mov	a,#0x06
   10FC 25 2C              2162 	add	a,_iterateStateMachine_sloc1_1_0
   10FE FB                 2163 	mov	r3,a
   10FF E4                 2164 	clr	a
   1100 35 2D              2165 	addc	a,(_iterateStateMachine_sloc1_1_0 + 1)
   1102 FC                 2166 	mov	r4,a
   1103 A8 2E              2167 	mov	r0,(_iterateStateMachine_sloc1_1_0 + 2)
   1105 8B 82              2168 	mov	dpl,r3
   1107 8C 83              2169 	mov	dph,r4
   1109 88 F0              2170 	mov	b,r0
   110B E5 42              2171 	mov	a,_iterateStateMachine_sloc9_1_0
   110D 12 32 73           2172 	lcall	__gptrput
   1110 A3                 2173 	inc	dptr
   1111 E5 43              2174 	mov	a,(_iterateStateMachine_sloc9_1_0 + 1)
   1113 12 32 73           2175 	lcall	__gptrput
   1116 A3                 2176 	inc	dptr
   1117 E5 44              2177 	mov	a,(_iterateStateMachine_sloc9_1_0 + 2)
   1119 12 32 73           2178 	lcall	__gptrput
                           2179 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:298: break ;
   111C 80 35              2180 	sjmp	00119$
   111E                    2181 00116$:
                           2182 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:301: stateBeingProcessed = stateBeingProcessed->parent ;
   111E 85 45 82           2183 	mov	dpl,_iterateStateMachine_sloc10_1_0
   1121 85 46 83           2184 	mov	dph,(_iterateStateMachine_sloc10_1_0 + 1)
   1124 85 47 F0           2185 	mov	b,(_iterateStateMachine_sloc10_1_0 + 2)
   1127 12 3E 7F           2186 	lcall	__gptrget
   112A FB                 2187 	mov	r3,a
   112B A3                 2188 	inc	dptr
   112C 12 3E 7F           2189 	lcall	__gptrget
   112F FC                 2190 	mov	r4,a
   1130 A3                 2191 	inc	dptr
   1131 12 3E 7F           2192 	lcall	__gptrget
   1134 F8                 2193 	mov	r0,a
   1135 90 00 D5           2194 	mov	dptr,#_iterateStateMachine_stateBeingProcessed_2_3
   1138 EB                 2195 	mov	a,r3
   1139 F0                 2196 	movx	@dptr,a
   113A A3                 2197 	inc	dptr
   113B EC                 2198 	mov	a,r4
   113C F0                 2199 	movx	@dptr,a
   113D A3                 2200 	inc	dptr
   113E E8                 2201 	mov	a,r0
   113F F0                 2202 	movx	@dptr,a
                           2203 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:302: } while(stateBeingProcessed) ;
   1140 90 00 D5           2204 	mov	dptr,#_iterateStateMachine_stateBeingProcessed_2_3
   1143 E0                 2205 	movx	a,@dptr
   1144 FB                 2206 	mov	r3,a
   1145 A3                 2207 	inc	dptr
   1146 E0                 2208 	movx	a,@dptr
   1147 FC                 2209 	mov	r4,a
   1148 A3                 2210 	inc	dptr
   1149 E0                 2211 	movx	a,@dptr
   114A F8                 2212 	mov	r0,a
   114B EB                 2213 	mov	a,r3
   114C 4C                 2214 	orl	a,r4
   114D 48                 2215 	orl	a,r0
   114E 60 03              2216 	jz	00217$
   1150 02 0F 8C           2217 	ljmp	00117$
   1153                    2218 00217$:
   1153                    2219 00119$:
                           2220 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:304: if(sm->currentState != target)
   1153 85 32 82           2221 	mov	dpl,_iterateStateMachine_sloc3_1_0
   1156 85 33 83           2222 	mov	dph,(_iterateStateMachine_sloc3_1_0 + 1)
   1159 85 34 F0           2223 	mov	b,(_iterateStateMachine_sloc3_1_0 + 2)
   115C 12 3E 7F           2224 	lcall	__gptrget
   115F FA                 2225 	mov	r2,a
   1160 A3                 2226 	inc	dptr
   1161 12 3E 7F           2227 	lcall	__gptrget
   1164 FB                 2228 	mov	r3,a
   1165 A3                 2229 	inc	dptr
   1166 12 3E 7F           2230 	lcall	__gptrget
   1169 FC                 2231 	mov	r4,a
   116A EA                 2232 	mov	a,r2
   116B B5 42 0B           2233 	cjne	a,_iterateStateMachine_sloc9_1_0,00218$
   116E EB                 2234 	mov	a,r3
   116F B5 43 07           2235 	cjne	a,(_iterateStateMachine_sloc9_1_0 + 1),00218$
   1172 EC                 2236 	mov	a,r4
   1173 B5 44 03           2237 	cjne	a,(_iterateStateMachine_sloc9_1_0 + 2),00218$
   1176 02 13 5D           2238 	ljmp	00129$
   1179                    2239 00218$:
                           2240 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:306: printf("\t\t\t\tScanning target hierarchy...\n") ;
   1179 C0 05              2241 	push	ar5
   117B C0 06              2242 	push	ar6
   117D C0 07              2243 	push	ar7
   117F 74 53              2244 	mov	a,#__str_18
   1181 C0 E0              2245 	push	acc
   1183 74 40              2246 	mov	a,#(__str_18 >> 8)
   1185 C0 E0              2247 	push	acc
   1187 74 80              2248 	mov	a,#0x80
   1189 C0 E0              2249 	push	acc
   118B 12 36 33           2250 	lcall	_printf
   118E 15 81              2251 	dec	sp
   1190 15 81              2252 	dec	sp
   1192 15 81              2253 	dec	sp
   1194 D0 07              2254 	pop	ar7
   1196 D0 06              2255 	pop	ar6
   1198 D0 05              2256 	pop	ar5
                           2257 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:308: targetIndex			= 0 ;
   119A 90 01 39           2258 	mov	dptr,#_iterateStateMachine_targetIndex_4_13
   119D E4                 2259 	clr	a
   119E F0                 2260 	movx	@dptr,a
                           2261 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:309: stateBeingProcessed	= target ;
   119F 90 00 D5           2262 	mov	dptr,#_iterateStateMachine_stateBeingProcessed_2_3
   11A2 E5 42              2263 	mov	a,_iterateStateMachine_sloc9_1_0
   11A4 F0                 2264 	movx	@dptr,a
   11A5 A3                 2265 	inc	dptr
   11A6 E5 43              2266 	mov	a,(_iterateStateMachine_sloc9_1_0 + 1)
   11A8 F0                 2267 	movx	@dptr,a
   11A9 A3                 2268 	inc	dptr
   11AA E5 44              2269 	mov	a,(_iterateStateMachine_sloc9_1_0 + 2)
   11AC F0                 2270 	movx	@dptr,a
                           2271 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:311: do
   11AD 7A 00              2272 	mov	r2,#0x00
   11AF                    2273 00125$:
                           2274 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:313: targetHierarchy[targetIndex] = stateBeingProcessed ;
   11AF C0 05              2275 	push	ar5
   11B1 C0 06              2276 	push	ar6
   11B3 C0 07              2277 	push	ar7
   11B5 EA                 2278 	mov	a,r2
   11B6 75 F0 03           2279 	mov	b,#0x03
   11B9 A4                 2280 	mul	ab
   11BA 24 09              2281 	add	a,#_iterateStateMachine_targetHierarchy_4_13
   11BC FB                 2282 	mov	r3,a
   11BD E4                 2283 	clr	a
   11BE 34 01              2284 	addc	a,#(_iterateStateMachine_targetHierarchy_4_13 >> 8)
   11C0 FC                 2285 	mov	r4,a
   11C1 90 00 D5           2286 	mov	dptr,#_iterateStateMachine_stateBeingProcessed_2_3
   11C4 E0                 2287 	movx	a,@dptr
   11C5 F5 45              2288 	mov	_iterateStateMachine_sloc10_1_0,a
   11C7 A3                 2289 	inc	dptr
   11C8 E0                 2290 	movx	a,@dptr
   11C9 F5 46              2291 	mov	(_iterateStateMachine_sloc10_1_0 + 1),a
   11CB A3                 2292 	inc	dptr
   11CC E0                 2293 	movx	a,@dptr
   11CD F5 47              2294 	mov	(_iterateStateMachine_sloc10_1_0 + 2),a
   11CF 8B 82              2295 	mov	dpl,r3
   11D1 8C 83              2296 	mov	dph,r4
   11D3 E5 45              2297 	mov	a,_iterateStateMachine_sloc10_1_0
   11D5 F0                 2298 	movx	@dptr,a
   11D6 A3                 2299 	inc	dptr
   11D7 E5 46              2300 	mov	a,(_iterateStateMachine_sloc10_1_0 + 1)
   11D9 F0                 2301 	movx	@dptr,a
   11DA A3                 2302 	inc	dptr
   11DB E5 47              2303 	mov	a,(_iterateStateMachine_sloc10_1_0 + 2)
   11DD F0                 2304 	movx	@dptr,a
                           2305 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:315: printf("\t\t\t\t\ttargetHierarchy[%d] = %s\n", targetIndex, stateBeingProcessed->stateName) ;
   11DE 74 06              2306 	mov	a,#0x06
   11E0 25 45              2307 	add	a,_iterateStateMachine_sloc10_1_0
   11E2 FB                 2308 	mov	r3,a
   11E3 E4                 2309 	clr	a
   11E4 35 46              2310 	addc	a,(_iterateStateMachine_sloc10_1_0 + 1)
   11E6 FC                 2311 	mov	r4,a
   11E7 A8 47              2312 	mov	r0,(_iterateStateMachine_sloc10_1_0 + 2)
   11E9 8B 82              2313 	mov	dpl,r3
   11EB 8C 83              2314 	mov	dph,r4
   11ED 88 F0              2315 	mov	b,r0
   11EF 12 3E 7F           2316 	lcall	__gptrget
   11F2 FB                 2317 	mov	r3,a
   11F3 A3                 2318 	inc	dptr
   11F4 12 3E 7F           2319 	lcall	__gptrget
   11F7 FC                 2320 	mov	r4,a
   11F8 A3                 2321 	inc	dptr
   11F9 12 3E 7F           2322 	lcall	__gptrget
   11FC F8                 2323 	mov	r0,a
   11FD 8A 01              2324 	mov	ar1,r2
   11FF 7D 00              2325 	mov	r5,#0x00
   1201 C0 02              2326 	push	ar2
   1203 C0 05              2327 	push	ar5
   1205 C0 06              2328 	push	ar6
   1207 C0 07              2329 	push	ar7
   1209 C0 03              2330 	push	ar3
   120B C0 04              2331 	push	ar4
   120D C0 00              2332 	push	ar0
   120F C0 01              2333 	push	ar1
   1211 C0 05              2334 	push	ar5
   1213 74 75              2335 	mov	a,#__str_19
   1215 C0 E0              2336 	push	acc
   1217 74 40              2337 	mov	a,#(__str_19 >> 8)
   1219 C0 E0              2338 	push	acc
   121B 74 80              2339 	mov	a,#0x80
   121D C0 E0              2340 	push	acc
   121F 12 36 33           2341 	lcall	_printf
   1222 E5 81              2342 	mov	a,sp
   1224 24 F8              2343 	add	a,#0xf8
   1226 F5 81              2344 	mov	sp,a
   1228 D0 07              2345 	pop	ar7
   122A D0 06              2346 	pop	ar6
   122C D0 05              2347 	pop	ar5
   122E D0 02              2348 	pop	ar2
                           2349 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:317: if(stateBeingProcessed == source)
   1230 E5 3B              2350 	mov	a,_iterateStateMachine_sloc6_1_0
   1232 B5 45 0C           2351 	cjne	a,_iterateStateMachine_sloc10_1_0,00219$
   1235 E5 3C              2352 	mov	a,(_iterateStateMachine_sloc6_1_0 + 1)
   1237 B5 46 07           2353 	cjne	a,(_iterateStateMachine_sloc10_1_0 + 1),00219$
   123A E5 3D              2354 	mov	a,(_iterateStateMachine_sloc6_1_0 + 2)
   123C B5 47 02           2355 	cjne	a,(_iterateStateMachine_sloc10_1_0 + 2),00219$
   123F 80 09              2356 	sjmp	00220$
   1241                    2357 00219$:
   1241 D0 07              2358 	pop	ar7
   1243 D0 06              2359 	pop	ar6
   1245 D0 05              2360 	pop	ar5
   1247 02 13 22           2361 	ljmp	00124$
   124A                    2362 00220$:
                           2363 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:319: printf("\t\t\t\t\t\tFound source as ancestor of target\n") ;
   124A 74 94              2364 	mov	a,#__str_20
   124C C0 E0              2365 	push	acc
   124E 74 40              2366 	mov	a,#(__str_20 >> 8)
   1250 C0 E0              2367 	push	acc
   1252 74 80              2368 	mov	a,#0x80
   1254 C0 E0              2369 	push	acc
   1256 12 36 33           2370 	lcall	_printf
   1259 15 81              2371 	dec	sp
   125B 15 81              2372 	dec	sp
   125D 15 81              2373 	dec	sp
   125F D0 07              2374 	pop	ar7
   1261 D0 06              2375 	pop	ar6
   1263 D0 05              2376 	pop	ar5
                           2377 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:321: while(targetIndex--)
   1265 90 01 39           2378 	mov	dptr,#_iterateStateMachine_targetIndex_4_13
   1268 E0                 2379 	movx	a,@dptr
   1269 FB                 2380 	mov	r3,a
   126A                    2381 00120$:
   126A 8B 04              2382 	mov	ar4,r3
   126C 1B                 2383 	dec	r3
   126D EC                 2384 	mov	a,r4
   126E 70 03              2385 	jnz	00221$
   1270 02 12 F9           2386 	ljmp	00192$
   1273                    2387 00221$:
                           2388 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:323: printf("\t\t\t\t") ;
   1273 C0 05              2389 	push	ar5
   1275 C0 06              2390 	push	ar6
   1277 C0 07              2391 	push	ar7
   1279 C0 03              2392 	push	ar3
   127B C0 05              2393 	push	ar5
   127D C0 06              2394 	push	ar6
   127F C0 07              2395 	push	ar7
   1281 74 4E              2396 	mov	a,#__str_17
   1283 C0 E0              2397 	push	acc
   1285 74 40              2398 	mov	a,#(__str_17 >> 8)
   1287 C0 E0              2399 	push	acc
   1289 74 80              2400 	mov	a,#0x80
   128B C0 E0              2401 	push	acc
   128D 12 36 33           2402 	lcall	_printf
   1290 15 81              2403 	dec	sp
   1292 15 81              2404 	dec	sp
   1294 15 81              2405 	dec	sp
   1296 D0 07              2406 	pop	ar7
   1298 D0 06              2407 	pop	ar6
   129A D0 05              2408 	pop	ar5
   129C D0 03              2409 	pop	ar3
                           2410 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:324: callStateHandler(sm, targetHierarchy[targetIndex], &enterEvent) ;
   129E 90 00 CD           2411 	mov	dptr,#_iterateStateMachine_sm_1_1
   12A1 E0                 2412 	movx	a,@dptr
   12A2 FC                 2413 	mov	r4,a
   12A3 A3                 2414 	inc	dptr
   12A4 E0                 2415 	movx	a,@dptr
   12A5 F8                 2416 	mov	r0,a
   12A6 A3                 2417 	inc	dptr
   12A7 E0                 2418 	movx	a,@dptr
   12A8 F9                 2419 	mov	r1,a
   12A9 EB                 2420 	mov	a,r3
   12AA 75 F0 03           2421 	mov	b,#0x03
   12AD A4                 2422 	mul	ab
   12AE 24 09              2423 	add	a,#_iterateStateMachine_targetHierarchy_4_13
   12B0 F5 82              2424 	mov	dpl,a
   12B2 E4                 2425 	clr	a
   12B3 34 01              2426 	addc	a,#(_iterateStateMachine_targetHierarchy_4_13 >> 8)
   12B5 F5 83              2427 	mov	dph,a
   12B7 E0                 2428 	movx	a,@dptr
   12B8 FD                 2429 	mov	r5,a
   12B9 A3                 2430 	inc	dptr
   12BA E0                 2431 	movx	a,@dptr
   12BB FE                 2432 	mov	r6,a
   12BC A3                 2433 	inc	dptr
   12BD E0                 2434 	movx	a,@dptr
   12BE FF                 2435 	mov	r7,a
   12BF 90 00 C4           2436 	mov	dptr,#_callStateHandler_PARM_2
   12C2 ED                 2437 	mov	a,r5
   12C3 F0                 2438 	movx	@dptr,a
   12C4 A3                 2439 	inc	dptr
   12C5 EE                 2440 	mov	a,r6
   12C6 F0                 2441 	movx	@dptr,a
   12C7 A3                 2442 	inc	dptr
   12C8 EF                 2443 	mov	a,r7
   12C9 F0                 2444 	movx	@dptr,a
   12CA 90 00 C7           2445 	mov	dptr,#_callStateHandler_PARM_3
   12CD 74 D1              2446 	mov	a,#_iterateStateMachine_enterEvent_1_1
   12CF F0                 2447 	movx	@dptr,a
   12D0 A3                 2448 	inc	dptr
   12D1 74 00              2449 	mov	a,#(_iterateStateMachine_enterEvent_1_1 >> 8)
   12D3 F0                 2450 	movx	@dptr,a
   12D4 A3                 2451 	inc	dptr
   12D5 E4                 2452 	clr	a
   12D6 F0                 2453 	movx	@dptr,a
   12D7 8C 82              2454 	mov	dpl,r4
   12D9 88 83              2455 	mov	dph,r0
   12DB 89 F0              2456 	mov	b,r1
   12DD C0 03              2457 	push	ar3
   12DF C0 05              2458 	push	ar5
   12E1 C0 06              2459 	push	ar6
   12E3 C0 07              2460 	push	ar7
   12E5 12 06 D5           2461 	lcall	_callStateHandler
   12E8 D0 07              2462 	pop	ar7
   12EA D0 06              2463 	pop	ar6
   12EC D0 05              2464 	pop	ar5
   12EE D0 03              2465 	pop	ar3
   12F0 D0 07              2466 	pop	ar7
   12F2 D0 06              2467 	pop	ar6
   12F4 D0 05              2468 	pop	ar5
   12F6 02 12 6A           2469 	ljmp	00120$
   12F9                    2470 00192$:
   12F9 90 01 39           2471 	mov	dptr,#_iterateStateMachine_targetIndex_4_13
   12FC EB                 2472 	mov	a,r3
   12FD F0                 2473 	movx	@dptr,a
                           2474 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:327: sm->currentState = target ;
   12FE 74 06              2475 	mov	a,#0x06
   1300 25 2F              2476 	add	a,_iterateStateMachine_sloc2_1_0
   1302 FB                 2477 	mov	r3,a
   1303 E4                 2478 	clr	a
   1304 35 30              2479 	addc	a,(_iterateStateMachine_sloc2_1_0 + 1)
   1306 FC                 2480 	mov	r4,a
   1307 A8 31              2481 	mov	r0,(_iterateStateMachine_sloc2_1_0 + 2)
   1309 8B 82              2482 	mov	dpl,r3
   130B 8C 83              2483 	mov	dph,r4
   130D 88 F0              2484 	mov	b,r0
   130F E5 42              2485 	mov	a,_iterateStateMachine_sloc9_1_0
   1311 12 32 73           2486 	lcall	__gptrput
   1314 A3                 2487 	inc	dptr
   1315 E5 43              2488 	mov	a,(_iterateStateMachine_sloc9_1_0 + 1)
   1317 12 32 73           2489 	lcall	__gptrput
   131A A3                 2490 	inc	dptr
   131B E5 44              2491 	mov	a,(_iterateStateMachine_sloc9_1_0 + 2)
   131D 12 32 73           2492 	lcall	__gptrput
                           2493 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:329: break ;
   1320 80 3B              2494 	sjmp	00129$
   1322                    2495 00124$:
                           2496 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:332: targetIndex++ ;
   1322 0A                 2497 	inc	r2
   1323 90 01 39           2498 	mov	dptr,#_iterateStateMachine_targetIndex_4_13
   1326 EA                 2499 	mov	a,r2
   1327 F0                 2500 	movx	@dptr,a
                           2501 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:333: stateBeingProcessed = stateBeingProcessed->parent ;
   1328 85 45 82           2502 	mov	dpl,_iterateStateMachine_sloc10_1_0
   132B 85 46 83           2503 	mov	dph,(_iterateStateMachine_sloc10_1_0 + 1)
   132E 85 47 F0           2504 	mov	b,(_iterateStateMachine_sloc10_1_0 + 2)
   1331 12 3E 7F           2505 	lcall	__gptrget
   1334 FB                 2506 	mov	r3,a
   1335 A3                 2507 	inc	dptr
   1336 12 3E 7F           2508 	lcall	__gptrget
   1339 FC                 2509 	mov	r4,a
   133A A3                 2510 	inc	dptr
   133B 12 3E 7F           2511 	lcall	__gptrget
   133E F8                 2512 	mov	r0,a
   133F 90 00 D5           2513 	mov	dptr,#_iterateStateMachine_stateBeingProcessed_2_3
   1342 EB                 2514 	mov	a,r3
   1343 F0                 2515 	movx	@dptr,a
   1344 A3                 2516 	inc	dptr
   1345 EC                 2517 	mov	a,r4
   1346 F0                 2518 	movx	@dptr,a
   1347 A3                 2519 	inc	dptr
   1348 E8                 2520 	mov	a,r0
   1349 F0                 2521 	movx	@dptr,a
                           2522 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:334: } while(stateBeingProcessed) ;
   134A 90 00 D5           2523 	mov	dptr,#_iterateStateMachine_stateBeingProcessed_2_3
   134D E0                 2524 	movx	a,@dptr
   134E FB                 2525 	mov	r3,a
   134F A3                 2526 	inc	dptr
   1350 E0                 2527 	movx	a,@dptr
   1351 FC                 2528 	mov	r4,a
   1352 A3                 2529 	inc	dptr
   1353 E0                 2530 	movx	a,@dptr
   1354 F8                 2531 	mov	r0,a
   1355 EB                 2532 	mov	a,r3
   1356 4C                 2533 	orl	a,r4
   1357 48                 2534 	orl	a,r0
   1358 60 03              2535 	jz	00222$
   135A 02 11 AF           2536 	ljmp	00125$
   135D                    2537 00222$:
   135D                    2538 00129$:
                           2539 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:337: if(sm->currentState != target)
   135D 85 32 82           2540 	mov	dpl,_iterateStateMachine_sloc3_1_0
   1360 85 33 83           2541 	mov	dph,(_iterateStateMachine_sloc3_1_0 + 1)
   1363 85 34 F0           2542 	mov	b,(_iterateStateMachine_sloc3_1_0 + 2)
   1366 12 3E 7F           2543 	lcall	__gptrget
   1369 FA                 2544 	mov	r2,a
   136A A3                 2545 	inc	dptr
   136B 12 3E 7F           2546 	lcall	__gptrget
   136E FB                 2547 	mov	r3,a
   136F A3                 2548 	inc	dptr
   1370 12 3E 7F           2549 	lcall	__gptrget
   1373 FC                 2550 	mov	r4,a
   1374 EA                 2551 	mov	a,r2
   1375 B5 42 0B           2552 	cjne	a,_iterateStateMachine_sloc9_1_0,00223$
   1378 EB                 2553 	mov	a,r3
   1379 B5 43 07           2554 	cjne	a,(_iterateStateMachine_sloc9_1_0 + 1),00223$
   137C EC                 2555 	mov	a,r4
   137D B5 44 03           2556 	cjne	a,(_iterateStateMachine_sloc9_1_0 + 2),00223$
   1380 02 17 09           2557 	ljmp	00152$
   1383                    2558 00223$:
                           2559 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:341: printf("\t\t\t\tStill haven't found relationship. Scanning for LCA...\n") ;
   1383 C0 05              2560 	push	ar5
   1385 C0 06              2561 	push	ar6
   1387 C0 07              2562 	push	ar7
   1389 C0 05              2563 	push	ar5
   138B C0 06              2564 	push	ar6
   138D C0 07              2565 	push	ar7
   138F 74 BE              2566 	mov	a,#__str_21
   1391 C0 E0              2567 	push	acc
   1393 74 40              2568 	mov	a,#(__str_21 >> 8)
   1395 C0 E0              2569 	push	acc
   1397 74 80              2570 	mov	a,#0x80
   1399 C0 E0              2571 	push	acc
   139B 12 36 33           2572 	lcall	_printf
   139E 15 81              2573 	dec	sp
   13A0 15 81              2574 	dec	sp
   13A2 15 81              2575 	dec	sp
   13A4 D0 07              2576 	pop	ar7
   13A6 D0 06              2577 	pop	ar6
   13A8 D0 05              2578 	pop	ar5
                           2579 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:342: LCA			= 0 ;
   13AA 90 01 3A           2580 	mov	dptr,#_iterateStateMachine_LCA_4_13
   13AD E4                 2581 	clr	a
   13AE F0                 2582 	movx	@dptr,a
   13AF A3                 2583 	inc	dptr
   13B0 F0                 2584 	movx	@dptr,a
   13B1 A3                 2585 	inc	dptr
   13B2 F0                 2586 	movx	@dptr,a
                           2587 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:343: entryIndex	= targetIndex - 1 ;
   13B3 90 01 39           2588 	mov	dptr,#_iterateStateMachine_targetIndex_4_13
   13B6 E0                 2589 	movx	a,@dptr
   13B7 FA                 2590 	mov	r2,a
   13B8 1A                 2591 	dec	r2
   13B9 90 01 3D           2592 	mov	dptr,#_iterateStateMachine_entryIndex_4_13
   13BC EA                 2593 	mov	a,r2
   13BD F0                 2594 	movx	@dptr,a
                           2595 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:344: exitIndex	= sourceIndex - 1 ;
   13BE 90 01 08           2596 	mov	dptr,#_iterateStateMachine_sourceIndex_4_13
   13C1 E0                 2597 	movx	a,@dptr
   13C2 FB                 2598 	mov	r3,a
   13C3 1B                 2599 	dec	r3
                           2600 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:345: printf("\t\t\t\t\tentryIndex = %d, exitIndex = %d\n", entryIndex, exitIndex) ;
   13C4 8B 04              2601 	mov	ar4,r3
   13C6 78 00              2602 	mov	r0,#0x00
   13C8 8A 01              2603 	mov	ar1,r2
   13CA 7D 00              2604 	mov	r5,#0x00
   13CC C0 02              2605 	push	ar2
   13CE C0 03              2606 	push	ar3
   13D0 C0 05              2607 	push	ar5
   13D2 C0 06              2608 	push	ar6
   13D4 C0 07              2609 	push	ar7
   13D6 C0 04              2610 	push	ar4
   13D8 C0 00              2611 	push	ar0
   13DA C0 01              2612 	push	ar1
   13DC C0 05              2613 	push	ar5
   13DE 74 F9              2614 	mov	a,#__str_22
   13E0 C0 E0              2615 	push	acc
   13E2 74 40              2616 	mov	a,#(__str_22 >> 8)
   13E4 C0 E0              2617 	push	acc
   13E6 74 80              2618 	mov	a,#0x80
   13E8 C0 E0              2619 	push	acc
   13EA 12 36 33           2620 	lcall	_printf
   13ED E5 81              2621 	mov	a,sp
   13EF 24 F9              2622 	add	a,#0xf9
   13F1 F5 81              2623 	mov	sp,a
   13F3 D0 07              2624 	pop	ar7
   13F5 D0 06              2625 	pop	ar6
   13F7 D0 05              2626 	pop	ar5
   13F9 D0 03              2627 	pop	ar3
   13FB D0 02              2628 	pop	ar2
                           2629 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:394: printf("\t\tEvent queue empty.\n") ;
   13FD D0 07              2630 	pop	ar7
   13FF D0 06              2631 	pop	ar6
   1401 D0 05              2632 	pop	ar5
                           2633 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:347: while(sourceHierarchy[exitIndex] == targetHierarchy[entryIndex])
   1403 7C 00              2634 	mov	r4,#0x00
   1405                    2635 00130$:
   1405 C0 05              2636 	push	ar5
   1407 C0 06              2637 	push	ar6
   1409 C0 07              2638 	push	ar7
   140B EB                 2639 	mov	a,r3
   140C 75 F0 03           2640 	mov	b,#0x03
   140F A4                 2641 	mul	ab
   1410 24 D8              2642 	add	a,#_iterateStateMachine_sourceHierarchy_4_13
   1412 F5 82              2643 	mov	dpl,a
   1414 E4                 2644 	clr	a
   1415 34 00              2645 	addc	a,#(_iterateStateMachine_sourceHierarchy_4_13 >> 8)
   1417 F5 83              2646 	mov	dph,a
   1419 E0                 2647 	movx	a,@dptr
   141A F5 45              2648 	mov	_iterateStateMachine_sloc10_1_0,a
   141C A3                 2649 	inc	dptr
   141D E0                 2650 	movx	a,@dptr
   141E F5 46              2651 	mov	(_iterateStateMachine_sloc10_1_0 + 1),a
   1420 A3                 2652 	inc	dptr
   1421 E0                 2653 	movx	a,@dptr
   1422 F5 47              2654 	mov	(_iterateStateMachine_sloc10_1_0 + 2),a
   1424 EA                 2655 	mov	a,r2
   1425 75 F0 03           2656 	mov	b,#0x03
   1428 A4                 2657 	mul	ab
   1429 24 09              2658 	add	a,#_iterateStateMachine_targetHierarchy_4_13
   142B F5 82              2659 	mov	dpl,a
   142D E4                 2660 	clr	a
   142E 34 01              2661 	addc	a,#(_iterateStateMachine_targetHierarchy_4_13 >> 8)
   1430 F5 83              2662 	mov	dph,a
   1432 E0                 2663 	movx	a,@dptr
   1433 F8                 2664 	mov	r0,a
   1434 A3                 2665 	inc	dptr
   1435 E0                 2666 	movx	a,@dptr
   1436 F9                 2667 	mov	r1,a
   1437 A3                 2668 	inc	dptr
   1438 E0                 2669 	movx	a,@dptr
   1439 FD                 2670 	mov	r5,a
   143A E8                 2671 	mov	a,r0
   143B B5 45 0A           2672 	cjne	a,_iterateStateMachine_sloc10_1_0,00224$
   143E E9                 2673 	mov	a,r1
   143F B5 46 06           2674 	cjne	a,(_iterateStateMachine_sloc10_1_0 + 1),00224$
   1442 ED                 2675 	mov	a,r5
   1443 B5 47 02           2676 	cjne	a,(_iterateStateMachine_sloc10_1_0 + 2),00224$
   1446 80 09              2677 	sjmp	00225$
   1448                    2678 00224$:
   1448 D0 07              2679 	pop	ar7
   144A D0 06              2680 	pop	ar6
   144C D0 05              2681 	pop	ar5
   144E 02 14 D1           2682 	ljmp	00193$
   1451                    2683 00225$:
   1451 D0 07              2684 	pop	ar7
   1453 D0 06              2685 	pop	ar6
                           2686 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:349: LCA = sourceHierarchy[exitIndex] ;
   1455 C0 06              2687 	push	ar6
   1457 C0 07              2688 	push	ar7
   1459 90 01 3A           2689 	mov	dptr,#_iterateStateMachine_LCA_4_13
   145C E5 45              2690 	mov	a,_iterateStateMachine_sloc10_1_0
   145E F0                 2691 	movx	@dptr,a
   145F A3                 2692 	inc	dptr
   1460 E5 46              2693 	mov	a,(_iterateStateMachine_sloc10_1_0 + 1)
   1462 F0                 2694 	movx	@dptr,a
   1463 A3                 2695 	inc	dptr
   1464 E5 47              2696 	mov	a,(_iterateStateMachine_sloc10_1_0 + 2)
   1466 F0                 2697 	movx	@dptr,a
                           2698 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:351: entryIndex-- ;
   1467 1A                 2699 	dec	r2
   1468 90 01 3D           2700 	mov	dptr,#_iterateStateMachine_entryIndex_4_13
   146B EA                 2701 	mov	a,r2
   146C F0                 2702 	movx	@dptr,a
                           2703 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:352: exitIndex-- ;
   146D 1B                 2704 	dec	r3
                           2705 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:354: printf("\t\t\t\t\tCurrent LCA candidate: %s\n", LCA->stateName) ;
   146E 90 01 3A           2706 	mov	dptr,#_iterateStateMachine_LCA_4_13
   1471 E0                 2707 	movx	a,@dptr
   1472 F8                 2708 	mov	r0,a
   1473 A3                 2709 	inc	dptr
   1474 E0                 2710 	movx	a,@dptr
   1475 F9                 2711 	mov	r1,a
   1476 A3                 2712 	inc	dptr
   1477 E0                 2713 	movx	a,@dptr
   1478 FD                 2714 	mov	r5,a
   1479 74 06              2715 	mov	a,#0x06
   147B 28                 2716 	add	a,r0
   147C F8                 2717 	mov	r0,a
   147D E4                 2718 	clr	a
   147E 39                 2719 	addc	a,r1
   147F F9                 2720 	mov	r1,a
   1480 88 82              2721 	mov	dpl,r0
   1482 89 83              2722 	mov	dph,r1
   1484 8D F0              2723 	mov	b,r5
   1486 12 3E 7F           2724 	lcall	__gptrget
   1489 F8                 2725 	mov	r0,a
   148A A3                 2726 	inc	dptr
   148B 12 3E 7F           2727 	lcall	__gptrget
   148E F9                 2728 	mov	r1,a
   148F A3                 2729 	inc	dptr
   1490 12 3E 7F           2730 	lcall	__gptrget
   1493 FD                 2731 	mov	r5,a
   1494 C0 02              2732 	push	ar2
   1496 C0 03              2733 	push	ar3
   1498 C0 04              2734 	push	ar4
   149A C0 05              2735 	push	ar5
   149C C0 06              2736 	push	ar6
   149E C0 07              2737 	push	ar7
   14A0 C0 00              2738 	push	ar0
   14A2 C0 01              2739 	push	ar1
   14A4 C0 05              2740 	push	ar5
   14A6 74 1F              2741 	mov	a,#__str_23
   14A8 C0 E0              2742 	push	acc
   14AA 74 41              2743 	mov	a,#(__str_23 >> 8)
   14AC C0 E0              2744 	push	acc
   14AE 74 80              2745 	mov	a,#0x80
   14B0 C0 E0              2746 	push	acc
   14B2 12 36 33           2747 	lcall	_printf
   14B5 E5 81              2748 	mov	a,sp
   14B7 24 FA              2749 	add	a,#0xfa
   14B9 F5 81              2750 	mov	sp,a
   14BB D0 07              2751 	pop	ar7
   14BD D0 06              2752 	pop	ar6
   14BF D0 05              2753 	pop	ar5
   14C1 D0 04              2754 	pop	ar4
   14C3 D0 03              2755 	pop	ar3
   14C5 D0 02              2756 	pop	ar2
                           2757 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:356: LCAindex++ ;
   14C7 0C                 2758 	inc	r4
   14C8 D0 07              2759 	pop	ar7
   14CA D0 06              2760 	pop	ar6
   14CC D0 05              2761 	pop	ar5
   14CE 02 14 05           2762 	ljmp	00130$
   14D1                    2763 00193$:
   14D1 90 01 3D           2764 	mov	dptr,#_iterateStateMachine_entryIndex_4_13
   14D4 EA                 2765 	mov	a,r2
   14D5 F0                 2766 	movx	@dptr,a
                           2767 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:359: printf("\t\t\t\t\tLCA of %s and %s is: %s\n", source->stateName, target->stateName, LCA->stateName) ;
   14D6 C0 05              2768 	push	ar5
   14D8 C0 06              2769 	push	ar6
   14DA C0 07              2770 	push	ar7
   14DC 90 01 3A           2771 	mov	dptr,#_iterateStateMachine_LCA_4_13
   14DF E0                 2772 	movx	a,@dptr
   14E0 FC                 2773 	mov	r4,a
   14E1 A3                 2774 	inc	dptr
   14E2 E0                 2775 	movx	a,@dptr
   14E3 F8                 2776 	mov	r0,a
   14E4 A3                 2777 	inc	dptr
   14E5 E0                 2778 	movx	a,@dptr
   14E6 F9                 2779 	mov	r1,a
   14E7 74 06              2780 	mov	a,#0x06
   14E9 2C                 2781 	add	a,r4
   14EA FC                 2782 	mov	r4,a
   14EB E4                 2783 	clr	a
   14EC 38                 2784 	addc	a,r0
   14ED F8                 2785 	mov	r0,a
   14EE 8C 82              2786 	mov	dpl,r4
   14F0 88 83              2787 	mov	dph,r0
   14F2 89 F0              2788 	mov	b,r1
   14F4 12 3E 7F           2789 	lcall	__gptrget
   14F7 FC                 2790 	mov	r4,a
   14F8 A3                 2791 	inc	dptr
   14F9 12 3E 7F           2792 	lcall	__gptrget
   14FC F8                 2793 	mov	r0,a
   14FD A3                 2794 	inc	dptr
   14FE 12 3E 7F           2795 	lcall	__gptrget
   1501 F9                 2796 	mov	r1,a
   1502 74 06              2797 	mov	a,#0x06
   1504 25 42              2798 	add	a,_iterateStateMachine_sloc9_1_0
   1506 FD                 2799 	mov	r5,a
   1507 E4                 2800 	clr	a
   1508 35 43              2801 	addc	a,(_iterateStateMachine_sloc9_1_0 + 1)
   150A FE                 2802 	mov	r6,a
   150B AF 44              2803 	mov	r7,(_iterateStateMachine_sloc9_1_0 + 2)
   150D 8D 82              2804 	mov	dpl,r5
   150F 8E 83              2805 	mov	dph,r6
   1511 8F F0              2806 	mov	b,r7
   1513 12 3E 7F           2807 	lcall	__gptrget
   1516 F5 45              2808 	mov	_iterateStateMachine_sloc10_1_0,a
   1518 A3                 2809 	inc	dptr
   1519 12 3E 7F           2810 	lcall	__gptrget
   151C F5 46              2811 	mov	(_iterateStateMachine_sloc10_1_0 + 1),a
   151E A3                 2812 	inc	dptr
   151F 12 3E 7F           2813 	lcall	__gptrget
   1522 F5 47              2814 	mov	(_iterateStateMachine_sloc10_1_0 + 2),a
   1524 74 06              2815 	mov	a,#0x06
   1526 25 3B              2816 	add	a,_iterateStateMachine_sloc6_1_0
   1528 FD                 2817 	mov	r5,a
   1529 E4                 2818 	clr	a
   152A 35 3C              2819 	addc	a,(_iterateStateMachine_sloc6_1_0 + 1)
   152C FE                 2820 	mov	r6,a
   152D AF 3D              2821 	mov	r7,(_iterateStateMachine_sloc6_1_0 + 2)
   152F 8D 82              2822 	mov	dpl,r5
   1531 8E 83              2823 	mov	dph,r6
   1533 8F F0              2824 	mov	b,r7
   1535 12 3E 7F           2825 	lcall	__gptrget
   1538 FD                 2826 	mov	r5,a
   1539 A3                 2827 	inc	dptr
   153A 12 3E 7F           2828 	lcall	__gptrget
   153D FE                 2829 	mov	r6,a
   153E A3                 2830 	inc	dptr
   153F 12 3E 7F           2831 	lcall	__gptrget
   1542 FF                 2832 	mov	r7,a
   1543 C0 02              2833 	push	ar2
   1545 C0 03              2834 	push	ar3
   1547 C0 05              2835 	push	ar5
   1549 C0 06              2836 	push	ar6
   154B C0 07              2837 	push	ar7
   154D C0 04              2838 	push	ar4
   154F C0 00              2839 	push	ar0
   1551 C0 01              2840 	push	ar1
   1553 C0 45              2841 	push	_iterateStateMachine_sloc10_1_0
   1555 C0 46              2842 	push	(_iterateStateMachine_sloc10_1_0 + 1)
   1557 C0 47              2843 	push	(_iterateStateMachine_sloc10_1_0 + 2)
   1559 C0 05              2844 	push	ar5
   155B C0 06              2845 	push	ar6
   155D C0 07              2846 	push	ar7
   155F 74 3F              2847 	mov	a,#__str_24
   1561 C0 E0              2848 	push	acc
   1563 74 41              2849 	mov	a,#(__str_24 >> 8)
   1565 C0 E0              2850 	push	acc
   1567 74 80              2851 	mov	a,#0x80
   1569 C0 E0              2852 	push	acc
   156B 12 36 33           2853 	lcall	_printf
   156E E5 81              2854 	mov	a,sp
   1570 24 F4              2855 	add	a,#0xf4
   1572 F5 81              2856 	mov	sp,a
   1574 D0 07              2857 	pop	ar7
   1576 D0 06              2858 	pop	ar6
   1578 D0 05              2859 	pop	ar5
   157A D0 03              2860 	pop	ar3
   157C D0 02              2861 	pop	ar2
                           2862 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:360: printf("\t\t\t\t\tentryIndex = %d, exitIndex = %d\n", entryIndex, exitIndex) ;
   157E 8B 04              2863 	mov	ar4,r3
   1580 7D 00              2864 	mov	r5,#0x00
   1582 7E 00              2865 	mov	r6,#0x00
   1584 C0 03              2866 	push	ar3
   1586 C0 05              2867 	push	ar5
   1588 C0 06              2868 	push	ar6
   158A C0 07              2869 	push	ar7
   158C C0 04              2870 	push	ar4
   158E C0 05              2871 	push	ar5
   1590 C0 02              2872 	push	ar2
   1592 C0 06              2873 	push	ar6
   1594 74 F9              2874 	mov	a,#__str_22
   1596 C0 E0              2875 	push	acc
   1598 74 40              2876 	mov	a,#(__str_22 >> 8)
   159A C0 E0              2877 	push	acc
   159C 74 80              2878 	mov	a,#0x80
   159E C0 E0              2879 	push	acc
   15A0 12 36 33           2880 	lcall	_printf
   15A3 E5 81              2881 	mov	a,sp
   15A5 24 F9              2882 	add	a,#0xf9
   15A7 F5 81              2883 	mov	sp,a
   15A9 D0 07              2884 	pop	ar7
   15AB D0 06              2885 	pop	ar6
   15AD D0 05              2886 	pop	ar5
   15AF D0 03              2887 	pop	ar3
                           2888 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:362: sourceIndex	= exitIndex + 1 ;
   15B1 EB                 2889 	mov	a,r3
   15B2 04                 2890 	inc	a
   15B3 F5 45              2891 	mov	_iterateStateMachine_sloc10_1_0,a
                           2892 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:394: printf("\t\tEvent queue empty.\n") ;
   15B5 D0 07              2893 	pop	ar7
   15B7 D0 06              2894 	pop	ar6
   15B9 D0 05              2895 	pop	ar5
                           2896 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:365: while(exitIndex < sourceIndex)
   15BB AA 45              2897 	mov	r2,_iterateStateMachine_sloc10_1_0
   15BD 7B 00              2898 	mov	r3,#0x00
   15BF                    2899 00133$:
   15BF C3                 2900 	clr	c
   15C0 EB                 2901 	mov	a,r3
   15C1 9A                 2902 	subb	a,r2
   15C2 40 03              2903 	jc	00226$
   15C4 02 16 52           2904 	ljmp	00135$
   15C7                    2905 00226$:
                           2906 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:367: printf("\t\t\t\t") ;
   15C7 C0 05              2907 	push	ar5
   15C9 C0 06              2908 	push	ar6
   15CB C0 07              2909 	push	ar7
   15CD C0 02              2910 	push	ar2
   15CF C0 03              2911 	push	ar3
   15D1 C0 05              2912 	push	ar5
   15D3 C0 06              2913 	push	ar6
   15D5 C0 07              2914 	push	ar7
   15D7 74 4E              2915 	mov	a,#__str_17
   15D9 C0 E0              2916 	push	acc
   15DB 74 40              2917 	mov	a,#(__str_17 >> 8)
   15DD C0 E0              2918 	push	acc
   15DF 74 80              2919 	mov	a,#0x80
   15E1 C0 E0              2920 	push	acc
   15E3 12 36 33           2921 	lcall	_printf
   15E6 15 81              2922 	dec	sp
   15E8 15 81              2923 	dec	sp
   15EA 15 81              2924 	dec	sp
   15EC D0 07              2925 	pop	ar7
   15EE D0 06              2926 	pop	ar6
   15F0 D0 05              2927 	pop	ar5
   15F2 D0 03              2928 	pop	ar3
                           2929 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:369: callStateHandler(sm, sourceHierarchy[exitIndex], &exitEvent) ;
   15F4 90 00 CD           2930 	mov	dptr,#_iterateStateMachine_sm_1_1
   15F7 E0                 2931 	movx	a,@dptr
   15F8 FC                 2932 	mov	r4,a
   15F9 A3                 2933 	inc	dptr
   15FA E0                 2934 	movx	a,@dptr
   15FB F8                 2935 	mov	r0,a
   15FC A3                 2936 	inc	dptr
   15FD E0                 2937 	movx	a,@dptr
   15FE F9                 2938 	mov	r1,a
   15FF EB                 2939 	mov	a,r3
   1600 75 F0 03           2940 	mov	b,#0x03
   1603 A4                 2941 	mul	ab
   1604 24 D8              2942 	add	a,#_iterateStateMachine_sourceHierarchy_4_13
   1606 F5 82              2943 	mov	dpl,a
   1608 E4                 2944 	clr	a
   1609 34 00              2945 	addc	a,#(_iterateStateMachine_sourceHierarchy_4_13 >> 8)
   160B F5 83              2946 	mov	dph,a
   160D E0                 2947 	movx	a,@dptr
   160E FD                 2948 	mov	r5,a
   160F A3                 2949 	inc	dptr
   1610 E0                 2950 	movx	a,@dptr
   1611 FE                 2951 	mov	r6,a
   1612 A3                 2952 	inc	dptr
   1613 E0                 2953 	movx	a,@dptr
   1614 FF                 2954 	mov	r7,a
   1615 90 00 C4           2955 	mov	dptr,#_callStateHandler_PARM_2
   1618 ED                 2956 	mov	a,r5
   1619 F0                 2957 	movx	@dptr,a
   161A A3                 2958 	inc	dptr
   161B EE                 2959 	mov	a,r6
   161C F0                 2960 	movx	@dptr,a
   161D A3                 2961 	inc	dptr
   161E EF                 2962 	mov	a,r7
   161F F0                 2963 	movx	@dptr,a
   1620 90 00 C7           2964 	mov	dptr,#_callStateHandler_PARM_3
   1623 74 D2              2965 	mov	a,#_iterateStateMachine_exitEvent_1_1
   1625 F0                 2966 	movx	@dptr,a
   1626 A3                 2967 	inc	dptr
   1627 74 00              2968 	mov	a,#(_iterateStateMachine_exitEvent_1_1 >> 8)
   1629 F0                 2969 	movx	@dptr,a
   162A A3                 2970 	inc	dptr
   162B E4                 2971 	clr	a
   162C F0                 2972 	movx	@dptr,a
   162D 8C 82              2973 	mov	dpl,r4
   162F 88 83              2974 	mov	dph,r0
   1631 89 F0              2975 	mov	b,r1
   1633 C0 03              2976 	push	ar3
   1635 C0 05              2977 	push	ar5
   1637 C0 06              2978 	push	ar6
   1639 C0 07              2979 	push	ar7
   163B 12 06 D5           2980 	lcall	_callStateHandler
   163E D0 07              2981 	pop	ar7
   1640 D0 06              2982 	pop	ar6
   1642 D0 05              2983 	pop	ar5
   1644 D0 03              2984 	pop	ar3
   1646 D0 02              2985 	pop	ar2
                           2986 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:371: exitIndex++ ;
   1648 0B                 2987 	inc	r3
   1649 D0 07              2988 	pop	ar7
   164B D0 06              2989 	pop	ar6
   164D D0 05              2990 	pop	ar5
   164F 02 15 BF           2991 	ljmp	00133$
   1652                    2992 00135$:
                           2993 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:374: targetIndex = entryIndex + 1 ;
   1652 90 01 3D           2994 	mov	dptr,#_iterateStateMachine_entryIndex_4_13
   1655 E0                 2995 	movx	a,@dptr
   1656 FA                 2996 	mov	r2,a
   1657 0A                 2997 	inc	r2
                           2998 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:376: while(targetIndex--)
   1658                    2999 00136$:
   1658 8A 03              3000 	mov	ar3,r2
   165A 1A                 3001 	dec	r2
   165B EB                 3002 	mov	a,r3
   165C 70 03              3003 	jnz	00227$
   165E 02 16 E7           3004 	ljmp	00138$
   1661                    3005 00227$:
                           3006 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:378: printf("\t\t\t\t") ;
   1661 C0 05              3007 	push	ar5
   1663 C0 06              3008 	push	ar6
   1665 C0 07              3009 	push	ar7
   1667 C0 02              3010 	push	ar2
   1669 C0 05              3011 	push	ar5
   166B C0 06              3012 	push	ar6
   166D C0 07              3013 	push	ar7
   166F 74 4E              3014 	mov	a,#__str_17
   1671 C0 E0              3015 	push	acc
   1673 74 40              3016 	mov	a,#(__str_17 >> 8)
   1675 C0 E0              3017 	push	acc
   1677 74 80              3018 	mov	a,#0x80
   1679 C0 E0              3019 	push	acc
   167B 12 36 33           3020 	lcall	_printf
   167E 15 81              3021 	dec	sp
   1680 15 81              3022 	dec	sp
   1682 15 81              3023 	dec	sp
   1684 D0 07              3024 	pop	ar7
   1686 D0 06              3025 	pop	ar6
   1688 D0 05              3026 	pop	ar5
   168A D0 02              3027 	pop	ar2
                           3028 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:379: callStateHandler(sm, targetHierarchy[targetIndex], &enterEvent) ;
   168C 90 00 CD           3029 	mov	dptr,#_iterateStateMachine_sm_1_1
   168F E0                 3030 	movx	a,@dptr
   1690 FB                 3031 	mov	r3,a
   1691 A3                 3032 	inc	dptr
   1692 E0                 3033 	movx	a,@dptr
   1693 FC                 3034 	mov	r4,a
   1694 A3                 3035 	inc	dptr
   1695 E0                 3036 	movx	a,@dptr
   1696 F8                 3037 	mov	r0,a
   1697 EA                 3038 	mov	a,r2
   1698 75 F0 03           3039 	mov	b,#0x03
   169B A4                 3040 	mul	ab
   169C 24 09              3041 	add	a,#_iterateStateMachine_targetHierarchy_4_13
   169E F5 82              3042 	mov	dpl,a
   16A0 E4                 3043 	clr	a
   16A1 34 01              3044 	addc	a,#(_iterateStateMachine_targetHierarchy_4_13 >> 8)
   16A3 F5 83              3045 	mov	dph,a
   16A5 E0                 3046 	movx	a,@dptr
   16A6 F9                 3047 	mov	r1,a
   16A7 A3                 3048 	inc	dptr
   16A8 E0                 3049 	movx	a,@dptr
   16A9 FD                 3050 	mov	r5,a
   16AA A3                 3051 	inc	dptr
   16AB E0                 3052 	movx	a,@dptr
   16AC FE                 3053 	mov	r6,a
   16AD 90 00 C4           3054 	mov	dptr,#_callStateHandler_PARM_2
   16B0 E9                 3055 	mov	a,r1
   16B1 F0                 3056 	movx	@dptr,a
   16B2 A3                 3057 	inc	dptr
   16B3 ED                 3058 	mov	a,r5
   16B4 F0                 3059 	movx	@dptr,a
   16B5 A3                 3060 	inc	dptr
   16B6 EE                 3061 	mov	a,r6
   16B7 F0                 3062 	movx	@dptr,a
   16B8 90 00 C7           3063 	mov	dptr,#_callStateHandler_PARM_3
   16BB 74 D1              3064 	mov	a,#_iterateStateMachine_enterEvent_1_1
   16BD F0                 3065 	movx	@dptr,a
   16BE A3                 3066 	inc	dptr
   16BF 74 00              3067 	mov	a,#(_iterateStateMachine_enterEvent_1_1 >> 8)
   16C1 F0                 3068 	movx	@dptr,a
   16C2 A3                 3069 	inc	dptr
   16C3 E4                 3070 	clr	a
   16C4 F0                 3071 	movx	@dptr,a
   16C5 8B 82              3072 	mov	dpl,r3
   16C7 8C 83              3073 	mov	dph,r4
   16C9 88 F0              3074 	mov	b,r0
   16CB C0 02              3075 	push	ar2
   16CD C0 05              3076 	push	ar5
   16CF C0 06              3077 	push	ar6
   16D1 C0 07              3078 	push	ar7
   16D3 12 06 D5           3079 	lcall	_callStateHandler
   16D6 D0 07              3080 	pop	ar7
   16D8 D0 06              3081 	pop	ar6
   16DA D0 05              3082 	pop	ar5
   16DC D0 02              3083 	pop	ar2
   16DE D0 07              3084 	pop	ar7
   16E0 D0 06              3085 	pop	ar6
   16E2 D0 05              3086 	pop	ar5
   16E4 02 16 58           3087 	ljmp	00136$
   16E7                    3088 00138$:
                           3089 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:382: sm->currentState = target ;
   16E7 74 06              3090 	mov	a,#0x06
   16E9 25 35              3091 	add	a,_iterateStateMachine_sloc4_1_0
   16EB FA                 3092 	mov	r2,a
   16EC E4                 3093 	clr	a
   16ED 35 36              3094 	addc	a,(_iterateStateMachine_sloc4_1_0 + 1)
   16EF FB                 3095 	mov	r3,a
   16F0 AC 37              3096 	mov	r4,(_iterateStateMachine_sloc4_1_0 + 2)
   16F2 8A 82              3097 	mov	dpl,r2
   16F4 8B 83              3098 	mov	dph,r3
   16F6 8C F0              3099 	mov	b,r4
   16F8 E5 42              3100 	mov	a,_iterateStateMachine_sloc9_1_0
   16FA 12 32 73           3101 	lcall	__gptrput
   16FD A3                 3102 	inc	dptr
   16FE E5 43              3103 	mov	a,(_iterateStateMachine_sloc9_1_0 + 1)
   1700 12 32 73           3104 	lcall	__gptrput
   1703 A3                 3105 	inc	dptr
   1704 E5 44              3106 	mov	a,(_iterateStateMachine_sloc9_1_0 + 2)
   1706 12 32 73           3107 	lcall	__gptrput
   1709                    3108 00152$:
                           3109 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:390: NormalInsert(&sm->eventQueue, &initialTransitionEvent) ;
   1709 74 0C              3110 	mov	a,#0x0C
   170B 25 38              3111 	add	a,_iterateStateMachine_sloc5_1_0
   170D FA                 3112 	mov	r2,a
   170E E4                 3113 	clr	a
   170F 35 39              3114 	addc	a,(_iterateStateMachine_sloc5_1_0 + 1)
   1711 FB                 3115 	mov	r3,a
   1712 AC 3A              3116 	mov	r4,(_iterateStateMachine_sloc5_1_0 + 2)
   1714 90 00 14           3117 	mov	dptr,#_NormalInsert_PARM_2
   1717 74 D0              3118 	mov	a,#_iterateStateMachine_initialTransitionEvent_1_1
   1719 F0                 3119 	movx	@dptr,a
   171A A3                 3120 	inc	dptr
   171B 74 00              3121 	mov	a,#(_iterateStateMachine_initialTransitionEvent_1_1 >> 8)
   171D F0                 3122 	movx	@dptr,a
   171E A3                 3123 	inc	dptr
   171F E4                 3124 	clr	a
   1720 F0                 3125 	movx	@dptr,a
   1721 8A 82              3126 	mov	dpl,r2
   1723 8B 83              3127 	mov	dph,r3
   1725 8C F0              3128 	mov	b,r4
   1727 C0 05              3129 	push	ar5
   1729 C0 06              3130 	push	ar6
   172B C0 07              3131 	push	ar7
   172D 12 02 43           3132 	lcall	_NormalInsert
   1730 D0 07              3133 	pop	ar7
   1732 D0 06              3134 	pop	ar6
   1734 D0 05              3135 	pop	ar5
   1736 02 0A 06           3136 	ljmp	00155$
   1739                    3137 00157$:
                           3138 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:394: printf("\t\tEvent queue empty.\n") ;
   1739 74 5D              3139 	mov	a,#__str_25
   173B C0 E0              3140 	push	acc
   173D 74 41              3141 	mov	a,#(__str_25 >> 8)
   173F C0 E0              3142 	push	acc
   1741 74 80              3143 	mov	a,#0x80
   1743 C0 E0              3144 	push	acc
   1745 12 36 33           3145 	lcall	_printf
   1748 15 81              3146 	dec	sp
   174A 15 81              3147 	dec	sp
   174C 15 81              3148 	dec	sp
   174E 22                 3149 	ret
                           3150 	.area CSEG    (CODE)
                           3151 	.area CONST   (CODE)
   3EC7                    3152 __str_0:
   3EC7 09                 3153 	.db 0x09
   3EC8 09                 3154 	.db 0x09
   3EC9 09                 3155 	.db 0x09
   3ECA 43 61 6C 6C 69 6E  3156 	.ascii "Calling state: %s, event: %s, "
        67 20 73 74 61 74
        65 3A 20 25 73 2C
        20 65 76 65 6E 74
        3A 20 25 73 2C 20
   3EE8 00                 3157 	.db 0x00
   3EE9                    3158 __str_1:
   3EE9 3C 55 53 45 52 5F  3159 	.ascii "<USER_EVENT>"
        45 56 45 4E 54 3E
   3EF5 00                 3160 	.db 0x00
   3EF6                    3161 __str_2:
   3EF6 72 65 73 70 6F 6E  3162 	.ascii "response: %s "
        73 65 3A 20 25 73
        20
   3F03 00                 3163 	.db 0x00
   3F04                    3164 __str_3:
   3F04 74 6F 20 25 73 20  3165 	.ascii "to %s "
   3F0A 00                 3166 	.db 0x00
   3F0B                    3167 __str_4:
   3F0B 0A                 3168 	.db 0x0A
   3F0C 00                 3169 	.db 0x00
   3F0D                    3170 __str_5:
   3F0D 09                 3171 	.db 0x09
   3F0E 69 74 65 72 61 74  3172 	.ascii "iterating %s"
        69 6E 67 20 25 73
   3F1A 0A                 3173 	.db 0x0A
   3F1B 00                 3174 	.db 0x00
   3F1C                    3175 __str_6:
   3F1C 09                 3176 	.db 0x09
   3F1D 09                 3177 	.db 0x09
   3F1E 69 6E 69 74 69 61  3178 	.ascii "initializing..."
        6C 69 7A 69 6E 67
        2E 2E 2E
   3F2D 0A                 3179 	.db 0x0A
   3F2E 00                 3180 	.db 0x00
   3F2F                    3181 __str_7:
   3F2F 09                 3182 	.db 0x09
   3F30 09                 3183 	.db 0x09
   3F31 50 72 6F 63 65 73  3184 	.ascii "Processing event..."
        73 69 6E 67 20 65
        76 65 6E 74 2E 2E
        2E
   3F44 0A                 3185 	.db 0x0A
   3F45 00                 3186 	.db 0x00
   3F46                    3187 __str_8:
   3F46 09                 3188 	.db 0x09
   3F47 09                 3189 	.db 0x09
   3F48 09                 3190 	.db 0x09
   3F49 09                 3191 	.db 0x09
   3F4A 09                 3192 	.db 0x09
   3F4B 09                 3193 	.db 0x09
   3F4C 09                 3194 	.db 0x09
   3F4D 6D 6F 76 69 6E 67  3195 	.ascii "moving to parent: %s"
        20 74 6F 20 70 61
        72 65 6E 74 3A 20
        25 73
   3F61 0A                 3196 	.db 0x0A
   3F62 00                 3197 	.db 0x00
   3F63                    3198 __str_9:
   3F63 3C 72 6F 6F 74 3E  3199 	.ascii "<root>"
   3F69 00                 3200 	.db 0x00
   3F6A                    3201 __str_10:
   3F6A 09                 3202 	.db 0x09
   3F6B 09                 3203 	.db 0x09
   3F6C 09                 3204 	.db 0x09
   3F6D 09                 3205 	.db 0x09
   3F6E 53 65 6C 66 20 74  3206 	.ascii "Self transition."
        72 61 6E 73 69 74
        69 6F 6E 2E
   3F7E 0A                 3207 	.db 0x0A
   3F7F 00                 3208 	.db 0x00
   3F80                    3209 __str_11:
   3F80 09                 3210 	.db 0x09
   3F81 09                 3211 	.db 0x09
   3F82 09                 3212 	.db 0x09
   3F83 09                 3213 	.db 0x09
   3F84 54 72 61 6E 73 69  3214 	.ascii "Transition to direct child."
        74 69 6F 6E 20 74
        6F 20 64 69 72 65
        63 74 20 63 68 69
        6C 64 2E
   3F9F 0A                 3215 	.db 0x0A
   3FA0 00                 3216 	.db 0x00
   3FA1                    3217 __str_12:
   3FA1 09                 3218 	.db 0x09
   3FA2 09                 3219 	.db 0x09
   3FA3 09                 3220 	.db 0x09
   3FA4 09                 3221 	.db 0x09
   3FA5 54 72 61 6E 73 69  3222 	.ascii "Transition to direct peer."
        74 69 6F 6E 20 74
        6F 20 64 69 72 65
        63 74 20 70 65 65
        72 2E
   3FBF 0A                 3223 	.db 0x0A
   3FC0 00                 3224 	.db 0x00
   3FC1                    3225 __str_13:
   3FC1 09                 3226 	.db 0x09
   3FC2 09                 3227 	.db 0x09
   3FC3 09                 3228 	.db 0x09
   3FC4 09                 3229 	.db 0x09
   3FC5 54 72 61 6E 73 69  3230 	.ascii "Transition to direct parent."
        74 69 6F 6E 20 74
        6F 20 64 69 72 65
        63 74 20 70 61 72
        65 6E 74 2E
   3FE1 0A                 3231 	.db 0x0A
   3FE2 00                 3232 	.db 0x00
   3FE3                    3233 __str_14:
   3FE3 09                 3234 	.db 0x09
   3FE4 09                 3235 	.db 0x09
   3FE5 09                 3236 	.db 0x09
   3FE6 09                 3237 	.db 0x09
   3FE7 53 63 61 6E 6E 69  3238 	.ascii "Scanning source hierarchy..."
        6E 67 20 73 6F 75
        72 63 65 20 68 69
        65 72 61 72 63 68
        79 2E 2E 2E
   4003 0A                 3239 	.db 0x0A
   4004 00                 3240 	.db 0x00
   4005                    3241 __str_15:
   4005 09                 3242 	.db 0x09
   4006 09                 3243 	.db 0x09
   4007 09                 3244 	.db 0x09
   4008 09                 3245 	.db 0x09
   4009 09                 3246 	.db 0x09
   400A 73 6F 75 72 63 65  3247 	.ascii "sourceHierarchy[%d] = %s"
        48 69 65 72 61 72
        63 68 79 5B 25 64
        5D 20 3D 20 25 73
   4022 0A                 3248 	.db 0x0A
   4023 00                 3249 	.db 0x00
   4024                    3250 __str_16:
   4024 09                 3251 	.db 0x09
   4025 09                 3252 	.db 0x09
   4026 09                 3253 	.db 0x09
   4027 09                 3254 	.db 0x09
   4028 09                 3255 	.db 0x09
   4029 09                 3256 	.db 0x09
   402A 46 6F 75 6E 64 20  3257 	.ascii "Found target as ancestor of source"
        74 61 72 67 65 74
        20 61 73 20 61 6E
        63 65 73 74 6F 72
        20 6F 66 20 73 6F
        75 72 63 65
   404C 0A                 3258 	.db 0x0A
   404D 00                 3259 	.db 0x00
   404E                    3260 __str_17:
   404E 09                 3261 	.db 0x09
   404F 09                 3262 	.db 0x09
   4050 09                 3263 	.db 0x09
   4051 09                 3264 	.db 0x09
   4052 00                 3265 	.db 0x00
   4053                    3266 __str_18:
   4053 09                 3267 	.db 0x09
   4054 09                 3268 	.db 0x09
   4055 09                 3269 	.db 0x09
   4056 09                 3270 	.db 0x09
   4057 53 63 61 6E 6E 69  3271 	.ascii "Scanning target hierarchy..."
        6E 67 20 74 61 72
        67 65 74 20 68 69
        65 72 61 72 63 68
        79 2E 2E 2E
   4073 0A                 3272 	.db 0x0A
   4074 00                 3273 	.db 0x00
   4075                    3274 __str_19:
   4075 09                 3275 	.db 0x09
   4076 09                 3276 	.db 0x09
   4077 09                 3277 	.db 0x09
   4078 09                 3278 	.db 0x09
   4079 09                 3279 	.db 0x09
   407A 74 61 72 67 65 74  3280 	.ascii "targetHierarchy[%d] = %s"
        48 69 65 72 61 72
        63 68 79 5B 25 64
        5D 20 3D 20 25 73
   4092 0A                 3281 	.db 0x0A
   4093 00                 3282 	.db 0x00
   4094                    3283 __str_20:
   4094 09                 3284 	.db 0x09
   4095 09                 3285 	.db 0x09
   4096 09                 3286 	.db 0x09
   4097 09                 3287 	.db 0x09
   4098 09                 3288 	.db 0x09
   4099 09                 3289 	.db 0x09
   409A 46 6F 75 6E 64 20  3290 	.ascii "Found source as ancestor of target"
        73 6F 75 72 63 65
        20 61 73 20 61 6E
        63 65 73 74 6F 72
        20 6F 66 20 74 61
        72 67 65 74
   40BC 0A                 3291 	.db 0x0A
   40BD 00                 3292 	.db 0x00
   40BE                    3293 __str_21:
   40BE 09                 3294 	.db 0x09
   40BF 09                 3295 	.db 0x09
   40C0 09                 3296 	.db 0x09
   40C1 09                 3297 	.db 0x09
   40C2 53 74 69 6C 6C 20  3298 	.ascii "Still haven't found relationship. Scanning for LCA..."
        68 61 76 65 6E 27
        74 20 66 6F 75 6E
        64 20 72 65 6C 61
        74 69 6F 6E 73 68
        69 70 2E 20 53 63
        61 6E 6E 69 6E 67
        20 66 6F 72 20 4C
        43 41 2E 2E 2E
   40F7 0A                 3299 	.db 0x0A
   40F8 00                 3300 	.db 0x00
   40F9                    3301 __str_22:
   40F9 09                 3302 	.db 0x09
   40FA 09                 3303 	.db 0x09
   40FB 09                 3304 	.db 0x09
   40FC 09                 3305 	.db 0x09
   40FD 09                 3306 	.db 0x09
   40FE 65 6E 74 72 79 49  3307 	.ascii "entryIndex = %d, exitIndex = %d"
        6E 64 65 78 20 3D
        20 25 64 2C 20 65
        78 69 74 49 6E 64
        65 78 20 3D 20 25
        64
   411D 0A                 3308 	.db 0x0A
   411E 00                 3309 	.db 0x00
   411F                    3310 __str_23:
   411F 09                 3311 	.db 0x09
   4120 09                 3312 	.db 0x09
   4121 09                 3313 	.db 0x09
   4122 09                 3314 	.db 0x09
   4123 09                 3315 	.db 0x09
   4124 43 75 72 72 65 6E  3316 	.ascii "Current LCA candidate: %s"
        74 20 4C 43 41 20
        63 61 6E 64 69 64
        61 74 65 3A 20 25
        73
   413D 0A                 3317 	.db 0x0A
   413E 00                 3318 	.db 0x00
   413F                    3319 __str_24:
   413F 09                 3320 	.db 0x09
   4140 09                 3321 	.db 0x09
   4141 09                 3322 	.db 0x09
   4142 09                 3323 	.db 0x09
   4143 09                 3324 	.db 0x09
   4144 4C 43 41 20 6F 66  3325 	.ascii "LCA of %s and %s is: %s"
        20 25 73 20 61 6E
        64 20 25 73 20 69
        73 3A 20 25 73
   415B 0A                 3326 	.db 0x0A
   415C 00                 3327 	.db 0x00
   415D                    3328 __str_25:
   415D 09                 3329 	.db 0x09
   415E 09                 3330 	.db 0x09
   415F 45 76 65 6E 74 20  3331 	.ascii "Event queue empty."
        71 75 65 75 65 20
        65 6D 70 74 79 2E
   4171 0A                 3332 	.db 0x0A
   4172 00                 3333 	.db 0x00
   4173                    3334 __str_26:
   4173 53 55 42 53 54 41  3335 	.ascii "SUBSTATE_GET_INFO"
        54 45 5F 47 45 54
        5F 49 4E 46 4F
   4184 00                 3336 	.db 0x00
   4185                    3337 __str_27:
   4185 53 55 42 53 54 41  3338 	.ascii "SUBSTATE_ENTRY"
        54 45 5F 45 4E 54
        52 59
   4193 00                 3339 	.db 0x00
   4194                    3340 __str_28:
   4194 53 55 42 53 54 41  3341 	.ascii "SUBSTATE_INITIAL_TRANSITION"
        54 45 5F 49 4E 49
        54 49 41 4C 5F 54
        52 41 4E 53 49 54
        49 4F 4E
   41AF 00                 3342 	.db 0x00
   41B0                    3343 __str_29:
   41B0 53 55 42 53 54 41  3344 	.ascii "SUBSTATE_EXIT"
        54 45 5F 45 58 49
        54
   41BD 00                 3345 	.db 0x00
   41BE                    3346 __str_30:
   41BE 49 47 4E 4F 52 45  3347 	.ascii "IGNORED"
        44
   41C5 00                 3348 	.db 0x00
   41C6                    3349 __str_31:
   41C6 48 41 4E 44 4C 45  3350 	.ascii "HANDLED"
        44
   41CD 00                 3351 	.db 0x00
   41CE                    3352 __str_32:
   41CE 54 52 41 4E 53 49  3353 	.ascii "TRANSITION"
        54 49 4F 4E
   41D8 00                 3354 	.db 0x00
                           3355 	.area XINIT   (CODE)
   4457                    3356 __xinit__eventTypes:
   4457 73 41 80           3357 	.byte __str_26,(__str_26 >> 8),#0x80
   445A 85 41 80           3358 	.byte __str_27,(__str_27 >> 8),#0x80
   445D 94 41 80           3359 	.byte __str_28,(__str_28 >> 8),#0x80
   4460 B0 41 80           3360 	.byte __str_29,(__str_29 >> 8),#0x80
   4463                    3361 __xinit__responseTypes:
   4463 BE 41 80           3362 	.byte __str_30,(__str_30 >> 8),#0x80
   4466 C6 41 80           3363 	.byte __str_31,(__str_31 >> 8),#0x80
   4469 CE 41 80           3364 	.byte __str_32,(__str_32 >> 8),#0x80
                           3365 	.area CABS    (ABS,CODE)
