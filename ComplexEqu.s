; ( A + 8B + 7C - 27 ) / 4
; Let A = 25, B = 19. c = 99

			AREA	CmpEqu,	CODE, READONLY
			ENTRY
			EXPORT	__main

__main		MOV r0, #25
			MOV r1, #19
			ADD	r0, r0, r1, LSL #3 ; r0 = r0 + (r1 * 8)
			MOV r1, #99
			MOV r2, #7
			MLA r0, r1, r2, r0 ; r0 = (r1 * r2) + r0
			MOV r1, #27
			SUB r0, r0, #27
			MOV r0, r0, ASR #2
			
			
			
Stop		B	Stop
			END