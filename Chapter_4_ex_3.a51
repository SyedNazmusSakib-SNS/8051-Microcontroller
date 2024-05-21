; Problem 3 from chapter 4 of The 8051 Microcontroller by Kenneth Ayala

    org 0h                  ; start program at 00h
    mov A, P0               ; get P0 latch
    cpl A                   ; invert A
    mov P1, A               ; mov A to P1 latch 
