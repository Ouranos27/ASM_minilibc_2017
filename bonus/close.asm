BITS 64

SECTION	.text
	GLOBAL	read:

read:
	MOV rax, 3
	SYSCALL
	RET
