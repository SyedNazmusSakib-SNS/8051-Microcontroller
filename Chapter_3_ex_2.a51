; Problem 2 from chapter 3 of The 8051 Microcontroller by Kenneth Ayala

    org 0h                  ; start program at 00h
    ; move test data to RAM
    mov 0f1h, #42h 
    ; solution to problem
    mov R0, 0f1h            ; move data from RAM F1h to R0
    mov R3, 0f1h            ; move data from RAM F1h to R3
