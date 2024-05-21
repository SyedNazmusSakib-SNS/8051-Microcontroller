; Problem 7 from chapter 3 of The 8051 Microcontroller by Kenneth Ayala

    org 0h                  ; start program at 00h
    ; move test data to DPTR
    mov DPTR, #1234h    
    ; solution to problem
    mov R0, DPL             ; move lower byte of DPTR to R0
    mov R1, DPH             ; move higher byte of DPTR to R1
