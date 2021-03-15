COUNT	RN	r0
MAX		RN	r1
PTR		RN	r2
NEXT	RN	r3

		AREA	myData, DATA, READONLY
LIST	DCD	51, 84, 65, 72, 999
	
		AREA	myCode, CODE, READONLY
		ENTRY
		EXPORT __main

__main	MOV 	COUNT, #0x05
		MOV		MAX, #0x00
		LDR		PTR, =LIST
		
AGAIN	LDR		NEXT, [PTR]
		CMP		MAX, NEXT
		BHS		CTNU
		MOV		MAX, NEXT
		
		
CTNU	ADD		PTR, PTR, #0x04
		SUBS	COUNT, COUNT, #0x01
		BNE		AGAIN
	
Stop	B		Stop