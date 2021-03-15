COUNT		RN	r1
PTR			RN	r2
MIN			RN	r3
NEXT		RN	r4

			AREA	myData, DATA, READONLY
DATAS		DCD	5, 4, 2, 6, 8, 9, -5, -7, 20
	
			AREA	myCode, CODE, READONLY
			ENTRY
			EXPORT	__main
	
__main		MOV		r1,	#0x09
			LDR		PTR,	=DATAS
			LDR		MIN,	=0x9999
			
Loop		LDR		NEXT,	[PTR]
			CMP		MIN,	NEXT
			MOVGT	MIN,	NEXT
			ADD		PTR,	#0x04
			SUBS	COUNT,	#0x01
			BNE		Loop
Stop		B		Stop
			END