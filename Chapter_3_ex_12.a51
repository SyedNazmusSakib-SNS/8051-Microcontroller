; Problem 12 from chapter 3 of The 8051 Microcontroller by Kenneth Ayala

    org 0h                  ; start program at 00h
    ; save test data in registers
    mov R0, #01h
    mov R1, #02h
    mov R2, #03h
    mov R3, #04h
    ; solution to problem
    push 00h                ; save R0 through R3
    push 01h
    push 02h
    push 03h
    pop 00h                 ; R3 -> R0
    pop 03h                 ; R2 -> R3
    pop 02h                 ; R1 -> R2
    pop 01h                 ; R0 -> R1
