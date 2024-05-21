; Problem 18 from chapter 4 of The 8051 Microcontroller by Kenneth Ayala

    org 0h                  ; start program at 00h
    ; load test data
    mov B, #81h
    mov A, B
    rl A
    mov B, A 
