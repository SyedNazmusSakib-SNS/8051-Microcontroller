; Problem 14 from chapter 3 of The 8051 Microcontroller by Kenneth Ayala

    org 0h                  ; start program at 00h
    ; store test data
    mov R5, #42h
    ; solution to problem
    mov DPTR, #032fh        ; set external RAM address
    mov A, R5               ; set up R5 for transfer
    movx @DPTR, A           ; store R5 in external RAM
    
