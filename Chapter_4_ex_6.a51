; Problem 6 from chapter 4 of The 8051 Microcontroller by Kenneth Ayala

    org 0h                  ; start program at 00h
    ; load test data
    mov R6, #34h
    mov R5, #12h
    ; solution to problem
    mov R0, #05h            ; use R0 as address register
    mov A, R6               ; get R6
    swap A                  ; swap R6
    cpl A                   ; complement R6
    xchd A, @R0             ; swap into low R5
