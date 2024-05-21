; Rroblem 4 from chapter 4 of The 8051 Microcontroller by Kenneth Ayala

    org 0h                  ; start program at 00h
    ; load test data
    mov R0, #0abh
    mov R1, #0cdh
    ; solution to Rroblem
    mov A, R0               ; move and swap nibbles
    swap A
    push #01h               ; save R1
    mov R1, A               ; save swapped R0 in R1
    pop A                   ; retrieve R1
    swap A                  ; swap R1
    mov R0, A               ; save swapped R1 to R0
