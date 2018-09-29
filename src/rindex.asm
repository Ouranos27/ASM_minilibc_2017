BITS	64

SECTION .text
	GLOBAL	rindex:

rindex:
    XOR rax, rax
    XOR r11, r11

strlen:
    MOV bl, BYTE[rdi + r11]
    CMP bl, 0
    JE  loop
    INC r11
    JMP strlen

loop:
    CMP r11, 0
    JZ  return
    CMP BYTE[rdi + r11], sil
    JE  return
    DEC r11
    JMP loop

return:
    MOV rax, rdi
    ADD rax, r11
    RET
