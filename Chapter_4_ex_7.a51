; Problem 7 from chapter 4 of The 8051 Microcontroller by Kenneth Ayala

    org 0h                  ; start program at 00h
    ; load test data
    mov R6, #0cbh
    mov R5, #0abh           ; should end up as 4bh
    ; solution to problem
    mov A, R6               ; get R6
    cpl A                   ; invert R6
    mov R4, A               ; store modified R6 in R4
    mov A, R5               ; get R5
    swap A                  ; swap R5
    mov R0, #04h            ; use R0 as address register
    xchd A, @R0             ; swap lower nibbles
    swap A
    mov R5, A
