BITS 64

SECTION	.text
	GLOBAL	read:

read:
	MOV rax, 1
	SYSCALL
	RET
