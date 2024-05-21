; Problem 19 from chapter 3 of The 8051 Microcontroller by Kenneth Ayala

    org 0h                  ; start program at 00h
    ; store test data
    mov R3, #42h
    ; solution to problem
    mov R1, #00h            ; use R1 as address register set to R0
    mov A, R3               ; R3 -> A
    mov @R1, A              ; R3 now in R0
