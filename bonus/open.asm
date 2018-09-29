BITS 64

SECTION	.text
	GLOBAL	read:

read:
	MOV rax, 2
	SYSCALL
	RET
