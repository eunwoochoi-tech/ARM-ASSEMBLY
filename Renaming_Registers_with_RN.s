		AREA	data, DATA,	READWRITE
VAL4	SPACE	4

		AREA	rename, CODE,	READONLY
		ENTRY
		EXPORT	__main
__main
		MOV		r5, #0x1258
		LDR		r1, =VAL4
		STR		r5, [r1]
		;MOV		r1, #0x12345678
		MOV		r2,	#0xABCD
		LDRB	r2, [r1]
		
STOP	b 		STOP
		ALIGN
		END