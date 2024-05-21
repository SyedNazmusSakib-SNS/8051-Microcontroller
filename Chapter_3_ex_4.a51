; Problem 4 from chapter 3 of The 8051 Microcontroller by Kenneth Ayala

    org 0h                  ; start program at 00h
    mov R0, SP              ; save SP in R0
    mov SP, PSW             ; move PSW to SP
    mov PSW, R0             ; move SP to PSW
