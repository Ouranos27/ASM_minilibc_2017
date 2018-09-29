BITS	64

SECTION .text
	GLOBAL	memmove:

memmove:
    XOR rax, rax
    XOR r11, r11

handler:
    CMP rdi, rsi
    JGE cpy_jge
    MOV r11, rdx
    JMP cpy_jl

cpy_jge:
    CMP r12, rdx
    JZ  return
    MOV sil, BYTE[rsi]
    CMP sil, 0
    JZ  return
    MOV BYTE[rdi], sil
    INC rdi
    INC rsi
    JMP cpy_jge

cpy_jl:
    CMP r11, 0
    jz  return
    DEC r11
    MOV bl, BYTE[rsi + r11]
    MOV BYTE[rdi + r11], bl
    JMP cpy_jl

return:
    MOV rax, rdi
    RET