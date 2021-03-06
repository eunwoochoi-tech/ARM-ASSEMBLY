	AREA		myCode, CODE, READONLY
	ENTRY
	EXPORT __main
		
__main
	LDR			R0, =A
	MOV			R1, #5
	STR			R1, [R0]
	LDR			R2, =D
	MOV			R3, #10
	STR			R3, [R2]
	
STOP
	B			STOP

	AREA		myData, DATA, READWRITE ; Allocate the following SRAM Memory
A	SPACE		4	; create 4 byte space named 'A'
C	SPACE		4
D	SPACE		4
	
	END