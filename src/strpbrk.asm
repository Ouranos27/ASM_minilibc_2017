BITS	64

SECTION .text
	GLOBAL	strpbrk:

strpbrk:
    XOR rax, rax
    XOR r11, r11

loop:
    CMP BYTE[rdi], 0
    jz exit
    JMP second_loop

second_loop:
    MOV bl, BYTE[rsi + r11]
    CMP bl, BYTE[rdi]
    JZ  return
    CMP bl, 0
    JZ  reloop
    INC r11
    JMP second_loop

reloop:
    XOR r11, r11
    INC rdi
    JMP loop

exit:
    XOR rax, rax
    RET

return:
    MOV rax, rdi
    RET