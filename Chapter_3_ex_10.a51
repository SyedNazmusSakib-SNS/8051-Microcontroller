; Problem 10 from chapter 3 of The 8051 Microcontroller by Kenneth Ayala

    org 0h                  ; start program at 00h
    mov SP, #07h            ; set stack pointer to 07h
    push SP                 ; 08h will be at 08h, because SP will be incremented first, then pushed
    
