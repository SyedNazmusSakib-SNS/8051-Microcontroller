; Problem 25 from chapter 3 of The 8051 Microcontroller by Kenneth Ayala

    org 0h                  ; start program at 00h
    mov DPTR, #0040h        ; set destination address
    mov A, #00h             ; set destination offset
    movc A, @A+DPTR         ; get code byte at 0040h
    mov TCON, A      
