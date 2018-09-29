BITS	64

SECTION .text
	GLOBAL	strcasecmp:

strcasecmp:
    XOR rax, rax

loop:
    MOV al, BYTE[rdi]
    MOV bl, BYTE[rsi]
    CMP al, 'A'
    JL  second_arg_to_lowercase
    CMP al, 'Z'
    JG  second_arg_to_lowercase
    ADD al, 32

second_arg_to_lowercase:
    CMP bl, 'A'
    JL cmp
    CMP bl, 'Z'
    JG  cmp
    ADD bl, 32

cmp:
    CMP BYTE[rdi], 0
    JZ  exit
    CMP BYTE[rsi], 0
    JZ  exit
    SUB bl, al
    CMP bl, 0
    JZ  increase
    JNZ exit

increase:
    INC rdi
    INC rsi
    JMP loop

exit:
    MOVSX rax, bl
    RET

