; This is a simple project

		AREA SimpleProject, CODE, READONLY
		ENTRY
		EXPORT __main
__main
		MOV 		r5, #0x1234
		MOV 		r3, #0x4321
		ADD 		r6, r5, r3
STOP	B			STOP
		END