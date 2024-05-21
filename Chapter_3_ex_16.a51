; Problem 16 from chapter 3 of The 8051 Microcontroller by Kenneth Ayala

    org 0h                  ; start program at 00h
    ; store test data
    mov th0, #12h
    mov tl0, #34h
    ; solution to problem
    xch A, th0              ; store th0 in A
    mov th0, tl0            ; tl0 -> th0
    xch A, tl0              ; swap finished
