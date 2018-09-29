BITS 64

SECTION	.text
	GLOBAL	read:

read:
	MOV rax, 0
	SYSCALL
	RET
