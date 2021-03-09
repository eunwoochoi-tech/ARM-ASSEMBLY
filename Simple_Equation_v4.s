			
		AREA	eg3, CODE, READONLY
		ENTRY
		EXPORT	__main

__main
		ADR		r4, Vals
		LDR		r1,[r4,#Q]
		LDR		r2,[r4,#R]
		LDR		r3,[r4,#S]
		
		ADD		r0, r1, r2
		ADD		r0, r0, r3
		
		STR		r0, [r4,#P]
		
Stop	B		Stop

			
P		EQU		0
Q		EQU		4
R		EQU		8
S		EQU		12


		AREA	eg3, DATA, READONLY

Vals	SPACE		4
		DCD			2
		DCD			4
		DCD			5
			
		ALIGN
			
		END