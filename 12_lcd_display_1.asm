; 8051 Assembly Program to Display "Hello, World!" on LCD
ORG 0000H
    MOV A, #38H
    ACALL COM
    MOV A, #0EH
    ACALL COM
    MOV A, #01H
    ACALL COM
    ACALL DEL_ROUTINE
    ACALL DEL_ROUTINE
    MOV A, #80H
    ACALL COM
    MOV DPTR, #STR
REV:
    MOV A, #00H
    MOVC A, @A+DPTR
    JZ FINISH
    ACALL L_D
    INC DPTR
    SJMP REV
FINISH:
    SJMP FINISH

; LCD Subroutines
COM:
    ACALL DEL_ROUTINE
    MOV P1, A
    CLR P2.1
    SETB P2.2
    CLR P2.2
    RET

L_D:
    ACALL DEL_ROUTINE
    MOV P1, A
    SETB P2.1
    SETB P2.2
    CLR P2.2
    RET

DEL_ROUTINE:
    MOV R7, #255
DEL_LOOP:
    MOV R6, #10
DEL_INNER:
    NOP
    NOP
    DJNZ R6, DEL_INNER
    DJNZ R7, DEL_LOOP
    RET

STR:
    DB "Hello, World!", 0

END