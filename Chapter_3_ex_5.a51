; Problem 5 from chapter 3 of The 8051 Microcontroller by Kenneth Ayala

    org 0h                  ; start program at 00h
    ; move test data to int RAM 27h
    mov 27h, #42h
    ; solution to problem 
    mov A, 27h              ; save data from internal RAM at 27h
    mov R0, #27h            ; set external destination address
    movx @R0, A             ; move to external RAM 27h
