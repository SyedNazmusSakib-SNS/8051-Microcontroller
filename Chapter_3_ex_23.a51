; Problem 23 from chapter 3 of The 8051 Microcontroller by Kenneth Ayala

    org 0h                  ; start program at 00h
    mov A, #0ffh            ; make port 2 input
    mov P2, A
    mov A, P2               ; get input from port 2
    mov P2, A               ; write back to latch
