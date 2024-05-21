; Problem 21 from chapter 3 of The 8051 Microcontroller by Kenneth Ayala

    org 0h                  ; start program at 00h
    ; load test data
    mov A, #42h
    ; solution to problem
    mov R0, A               ; use R0 as address register
    mov @R0, A
