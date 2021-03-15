
		AREA	myCode, CODE, READONLY
		ENTRY
		EXPORT	__main
__main
		LDR		r1, =1000000000
		LDR		r2, =2000000000
		LDR		r3, =3000000000
		LDR		r4, =4000000000
		LDR		r5, =4100000000
		
		MOV		r8, #0
		MOV		r9, #0
		
		ADDS	r8, r8, r1 ; R8 = R8 + R1
		ADC		r9, r9, #0 ; r9 = r9 + 0 + carry_bit
		
		ADDS	r8, r8, r2 ; R8 = R8 + R2
		ADC		r9, r9, #0 ; r9 = r9 + 0 + carry_bit
		
		ADDS	r8, r8, r3 ; R8 = R8 + R3
		ADC		r9, r9, #0 ; r9 = r9 + 0 + carry_bit
		
		ADDS	r8, r8, r4 ; R8 = R8 + R4
		ADC		r9, r9, #0 ; r9 = r9 + 0 + carry_bit
		
		ADDS	r8, r8, r5 ; R8 = R8 + R5
		ADC		r9, r9, #0 ; r9 = r9 + 0 + carry_bit
		
Stop	B	Stop
		END