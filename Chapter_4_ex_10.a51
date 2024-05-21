; Problem 10 from chapter 4 of The 8051 Microcontroller by Kenneth Ayala

    org 0h                  ; start program at 00h
    ; load test data
    mov A, #0abh
    ; solution to problem
    mov R0, A               ; save A
    xrl 00h, #0ffh          ; invert R0
    xrl A, R0               ; A now 0ffh
