; P = Q + R + S
; let Q=2, R=4, S=5

Q		EQU		2
R		EQU		4
S		EQU		5
	
		AREA myCode,CODE,READONLY
		ENTRY
		EXPORT __main
__main
		MOV	r1, #Q
		MOV r2, #R
		MOV r3, #S
		
		ADD	r0, r1, r2
		ADD r0, r0, r3
		
Stop	B Stop

		END