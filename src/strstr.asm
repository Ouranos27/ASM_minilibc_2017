BITS 64

SECTION .text
	GLOBAL	strstr:

strstr:
    XOR rax, rax
    XOR r11, r11

loop:
    MOV bl, BYTE[rdi]
    CMP bl, BYTE[rsi]
    JE  second_loop
    CMP BYTE[rdi], 0
    JZ  ret_failure
    INC rdi
    JNZ loop

second_loop:
    CMP BYTE[rsi + r11], 0
    JZ  ret_success
    MOV r8b, BYTE[rdi + r11]
    CMP r8b, BYTE[rsi + r11]
    JNE reloop
    JE increase

reloop:
    XOR r11, r11
    INC rdi
    JMP loop

increase:
    INC r11
    JMP second_loop

ret_success:
    MOV rax, rdi
    RET

ret_failure:
    XOR rax, rax
    RET