.global _start
_start:
	MOV R0, #5
	MOV R1, #1
	
LOOP:
	MUL R1, R1, R0
	SUB R0, R0, #1
	CMP R0, #1
	BNE LOOP
