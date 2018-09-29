BITS	64

SECTION .text
	GLOBAL	strcmp:

strcmp:
	XOR rax, rax

loop:
    MOV bl, BYTE[rdi]
	CMP bl, BYTE[rsi]
	JNZ return
	CMP BYTE[rsi], 0
	JZ  return
	CMP BYTE[rdi], 0
	JZ  return
	INC rdi
	INC rsi
	JMP loop

return:
    SUB bl, BYTE[rsi]
    MOVSX rax, bl
	RET
