//8051 PROGRAM FOR ARITHMETIC OPERATIONS
ORG 0000H
	MOV A, #55H
	ADD A, #33H
	MOV R0, A
	CLR A
	CLR C
	MOV A, #05H
	SUBB A, #02H
	MOV R1, A
	CLR A
	
	MOV A, #45H
	MOV B, #34H
	MUL AB
	MOV R4, A
	MOV R5, B
	CLR A

	CLR C
	MOV A, #95H
	MOV B, #5H
	DIV AB
	MOV R2, A
	MOV R3, B
	END