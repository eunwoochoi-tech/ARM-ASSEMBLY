		AREA	myCode, CODE, READONLY
		ENTRY
		EXPORT __main
__main
		MOV	r0, #0x11
		LSL r1, r0, #0x01
		LSL r2, r1, #0x01
		
Stop	B	Stop
		END