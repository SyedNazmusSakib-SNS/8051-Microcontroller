ORG 0000H 
    MOV A, #38H       
    ACALL COM 
    MOV A, #0EH       
    ACALL COM 
    MOV A, #01H       
    ACALL COM 

; Display first line "SYED"
    MOV A, #80H       
    ACALL COM
    MOV DPTR, #STR1   
    ACALL DISPLAY_STR 

; Display second line "NAZMUS SAKIB"
    MOV A, #0C0H      
    ACALL COM
    MOV DPTR, #STR2   
    ACALL DISPLAY_STR 

FINISH: SJMP FINISH 

; Subroutine to display a string
DISPLAY_STR:
    REV: MOV A, #00H 
        MOVC A, @A+DPTR 
        JZ RETURN    
        ACALL L_D    
        INC DPTR 
        SJMP REV
    RETURN: RET 

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

; Define the strings
STR1: DB 'SYED', 0
STR2: DB 'NAZMUS SAKIB', 0
END