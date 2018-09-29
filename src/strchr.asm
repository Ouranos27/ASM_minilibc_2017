BITS 64

SECTION .text
	GLOBAL	strchr:

strchr:
    XOR rax, rax

loop:
    MOV bl, BYTE[rdi]
    CMP sil, bl
    JE  return
    CMP bl, 0
    JZ  exit
    INC rdi
    JMP loop

return:
    MOV rax, rdi
    RET

exit:
    XOR rax, rax
    RET