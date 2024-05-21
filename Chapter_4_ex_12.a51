; Problem 12 from chapter 4 of The 8051 Microcontroller by Kenneth Ayala

    org 0h                  ; start program at 00h
    ; load test data
    mov A, #36h
    ; solution to problem
    mov R0, #3ch            ; set R0 up as address register
    push A                  ; save A
    xchd A, @R0             ; exchange lower nibbles
    mov A, 3ch              ; get and swap 3ch
    swap A
    mov 3ch, A
    pop A                   ; get A back
    xchd A, @R0
