; Problem 11 from chapter 4 of The 8051 Microcontroller by Kenneth Ayala

    org 0h                  ; start program at 00h
    ; load test data
    mov A, #0b6h
    ; solution to problem
    swap A                  ; get high nibble to low
    push A                  ; save A
    mov R0, #05h            ; set R0 up as address registers
    xchd A, @R0             ; exchange lower nibbles
    mov A, R5               ; swap nibbles in R5
    swap A
    mov R5, A
    pop A                   ; get A back
    xchd A, @R0
