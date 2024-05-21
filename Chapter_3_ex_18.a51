; Problem 18 from chapter 3 of The 8051 Microcontroller by Kenneth Ayala

    org 0h                  ; start program at 00h
    ; load test data
    mov R0, #12h
    mov R1, #34h
    ; solution to problem
    mov R2, 00h             ; make copy of both R0 and R1
    mov R3, 01h
    mov R0, #02h            ; use R0 as address register set to R2
    xchd A, @R0             ; nibble of R2 now in A
    mov R0, #03h            ; set address to R3
    xchd A, @R0             ; nibble R2 now in R3, and R3 in A
    mov R0, #02h            ; set address back to R2
    xchd A, @R0             ; nibbles now exchanged
    mov R0, 02h             ; move data back to original registers
    mov R1, 03h             ; R0 = 14h, R1 = 32h
