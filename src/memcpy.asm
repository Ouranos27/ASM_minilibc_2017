BITS 64

SECTION .text
	GLOBAL	memcpy:

memcpy:
    XOR rax, rax
    XOR r11, r11

loop:
    CMP r11, rdx
    JE return
    MOV r9b, BYTE[rsi]
    MOV BYTE[rdi], r9b
    INC rdi
    INC rsi
    INC r11
    JMP loop

return:
    MOV rax, rdi
    RET