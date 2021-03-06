		AREA	myCode, CODE, READONLY
		ENTRY
		EXPORT	__main
__main
		BL		Fill
		BL		Copy
		B		Stop
Fill	
		LDR 	r1, =RAM1_ADDR
		MOV		r0, #0xA
		LDR		r2, =0xDEADBEEF
		
Loop1
		STR		r2,[r1]
		ADD		r1,r1,#0x4
		SUBS	r0, r0, #0x1
		BNE		Loop1	; if last result of operation is not 0, goto Loop1
		BX		lr		; return to LR register(only register)		


Copy
		LDR		r1, =RAM1_ADDR
		LDR		r2, =RAM2_ADDR
		MOV		r0, #0xA
		
Loop2
		LDR		r3,[r1]
		STR		r3,[r2]
		ADD		r1, r1, #0x4
		ADD		r2, r2, #0x4
		SUBS	r0, r0, #0x1
		BNE		Loop2
		BX		lr
		

Stop	B		Stop

RAM1_ADDR		EQU		0x20000000
RAM2_ADDR		EQU		0x20000100
	
	ALIGN
	END