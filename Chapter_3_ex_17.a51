; Problem 17 from chapter 3 of The 8051 Microcontroller by Kenneth Ayala

    org 0h                  ; start program at 00h
    ; load test data
    mov DPTR, #1234h
    ; solution to problem
    mov R0, DPL             ; save DPTR in R0 and R1
    mov R1, DPH
    mov DPTR, #0123h        ; set destination address for DPL
    mov A, R0               ; DPL -> 0123h
    movx @DPTR, A
    mov DPTR, #02bch        ; set destination address for DPH
    mov A, R1               ; DPH -> 02bch
    movx @DPTR, A 
