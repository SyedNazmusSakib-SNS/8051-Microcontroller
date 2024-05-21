; Problem 20 from chapter 3 of The 8051 Microcontroller by Kenneth Ayala

    org 0h                  ; start program at 00h
    ; load test data
    mov 20h, #42h
    mov 08h, #01h           ; content of 20h will end up in R1
    ; solution to problem
    mov R0, 08h             ; use R0 as address register
    mov @R0, 20h            ; content of 20h now in R1
