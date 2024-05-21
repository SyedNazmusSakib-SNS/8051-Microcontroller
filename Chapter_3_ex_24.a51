; Problem 24 from chapter 3 of The 8051 Microcontroller by Kenneth Ayala

    org 0h                  ; start program at 00h
    ; load test data
    mov B, #42h
    ; solution to problem
    push B                  ; push B to stack
    pop TMOD                ; pop to TMOD 
