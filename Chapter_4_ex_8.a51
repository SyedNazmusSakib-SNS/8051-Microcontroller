; Problem 8 from chapter 4 of The 8051 Microcontroller by Kenneth Ayala

    org 0h                  ; start program at 00h
    ; load test data
    mov R6, #0cbh
    ; solution to problem
    mov 20h, R6             ; move R6 to bit address area
    mov C, 06h              ; move bit 6 to carry flag
    mov 0b3h, C             ; move carry to bit 3 of P3
