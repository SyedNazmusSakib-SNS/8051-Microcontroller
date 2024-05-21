; Problem 15 from chapter 3 of The 8051 Microcontroller by Kenneth Ayala

    org 0h                  ; start program at 00h
    mov DPTR, #0300h        ; set for fetch address in ROM
    mov A, #00h             ; set fetch offset to zero
    movc A, @A+DPTR         ; store ROM 0300h in A
    movx @DPTR, A           ; store A in ext RAM 0300h
    
