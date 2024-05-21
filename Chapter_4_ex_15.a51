; Problem 15 from chapter 4 of The 8051 Microcontroller by Kenneth Ayala

    org 0h                  ; start program at 00h
    mov A, R1               ; get higher byte
    rrc A                   ; bit 0 of R1 is now in C
    mov R1, A               ; move shifted R1 back
    mov A, R0               ; get lower byte
    rrc A                   ; bit 0 of R1 is now bit 7 of R0
    mov R0, A               ; move shifted lower byte back
    mov A, R1               ; move higher byte back in A
    mov 0e7h, C             ; move bit 0 of R0 into bit 7 of R1
    mov R1, A
