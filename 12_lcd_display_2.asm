ORG 0000H 
    MOV A, #38H 
    ACALL COM 
    MOV A, #0EH 
    ACALL COM 
    MOV A, #80H 
    ACALL COM 
    MOV A, #01H 
    ACALL COM 
    MOV DPTR ,#STR

REV: 
    MOV A, #00H 
    MOVC A, @A+DPTR 
    JZ FINISH 
    ACALL L_D 
    INC DPTR 
    SJMP REV 

FINISH: 
    SJMP FINISH 

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
    MOV R0, #0FFH 
    L1: MOV R1, #0FFH 
    L2: DJNZ R1, L2 
    DJNZ R0, L1 
    RET 
STR: DB'NAZMUS SAKIB', 0

END