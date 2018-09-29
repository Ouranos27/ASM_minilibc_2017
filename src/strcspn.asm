BITS 64

SECTION .text
	GLOBAL	strcspn:

strcspn:
    XOR rax, rax
    XOR r11, r11

loop:
    MOV  bl, BYTE[rdi]
    CMP bl,0
    JZ return
    JMP second_loop

second_loop:
    CMP BYTE[rsi + r11], 0
    JZ  increase
    CMP BYTE[rsi + r11], bl
    JE return
    INC r11
    JMP second_loop

increase:
    INC rdi
    INC rax
    XOR r11, r11
    JMP loop

return:
    RET

