		AREA	myData, DATA, READWRITE
NUM1	SPACE	4
table1	DCB		0xFE,	0xF9,	0x12,	0x34
table2	DCD		0xFEF91234

		AREA	indexing, CODE, READONLY
		ENTRY
		EXPORT __main
			
__main
		MOV		r3, #0x0A00
		LDR		r4, =table1
		LDR		r5, =table2

STOP
		B		STOP
		END