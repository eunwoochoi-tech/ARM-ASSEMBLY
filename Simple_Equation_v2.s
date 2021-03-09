; P = Q + R + S
; let Q=2, R=4, S=5

		AREA	myData, DATA, READONLY
P	SPACE	4 ;Reserve 4 bytes of memory
Q	DCD		2 ;Create Variable Q with initial value 2, Q = 0x00000002
R	DCD		4 ;Create Variable Q with initial value 2, Q = 0x00000002
S	DCD		5 ;Create Variable Q with initial value 2, Q = 0x00000002


		AREA	myCode, CODE, READONLY
		ENTRY
		EXPORT __main
__main
		LDR	r1, Q
		LDR r2, R
		LDR r3, S
		
		ADD r0, r1, r2
		ADD r0, r0, r3
		
Stop	B Stop
		ALIGN
		END