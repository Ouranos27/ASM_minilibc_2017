BITS 64

SECTION	 .text
	GLOBAL	 strlen:

strlen:
	XOR	rax, rax

loop:
	CMP BYTE[rdi], 0
	JZ return
	INC rax
	INC rdi
	JMP loop

return:
	RET
