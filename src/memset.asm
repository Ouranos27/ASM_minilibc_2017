BITS 64

SECTION .text
	GLOBAL	memset:

memset:
    XOR rax, rax
    XOR r11, r11

loop:
    CMP r11, rdx
    JE return
    MOV BYTE[rdi], sil
    INC rdi
    INC r11
    JMP loop

return:
    MOV rax, rdi
    RET