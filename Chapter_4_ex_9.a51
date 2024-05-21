; Problem 9 from chapter 4 of The 8051 Microcontroller by Kenneth Ayala

    org 0h                  ; start program at 00h
    ; load test data
    mov 30h, #10h
    ; solution to problem
    push 30h                ; mov 30h into bit addressable area
    pop 2fh
    mov C, 7ch              ; get bit 4 of 30h
    mov 0e2h, C             ; move into bit 2 of A
