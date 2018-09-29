BITS	64

SECTION .text
	GLOBAL	strncmp:

strcmp:
	XOR rax, rax
	XOR r11, r11

loop:
    CMP r11, rdx
    JE  return
    MOV bl, BYTE[rdi]
	CMP bl, BYTE[rsi]
	JNZ return
	CMP BYTE[rsi], 0
	JZ  return
	CMP BYTE[rdi], 0
	JZ  return
	INC rdi
	INC rsi
	INC r11
	JMP loop

return:
    MOV rax, [rsi]
    SUB rax, [rdi]
	RET
