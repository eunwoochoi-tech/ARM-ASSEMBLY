			AREA	myCode, CODE, READONLY
			ENTRY
			EXPORT	__main
			
__main		LDR	r0, =SIGN_DATA
			MOV	r3, #0x09
			MOV	r2, #0x00
			
L			LDRSB	r1, [r0]
			ADD		r2, r2, r1
			ADD		r0, r0, #0x01
			SUBS	r3, r3, #0x01
			BNE		L
			
Stop		B		Stop

SIGN_DATA	DCB	5, 4, -9, 20, 50, -40, -60, 88, -50
			END