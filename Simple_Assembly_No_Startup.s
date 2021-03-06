Stack		EQU		0x00000100 ; Define Stack size of 256 byte
	
				AREA	STACK, NOINIT, READWRITE, ALIGN=3
		
StackMem		SPACE 	Stack
	
	
				AREA	RESET, DATA, READONLY
				EXPORT __Vectors
					
__Vectors
				DCD		StackMem +Stack
				DCD		Reset_Handler
				ALIGN
	
	
				AREA	SimpleProject, CODE, READONLY, ALIGN=2
				ENTRY
				EXPORT	Reset_Handler
					
Reset_Handler
				MOV R2, #0x1234
				MOV R3, #0x3213
				ADD R4, R2, R3

STOP
				B STOP
				
				END