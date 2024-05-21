; Problem 13 from chapter 3 of The 8051 Microcontroller by Kenneth Ayala

    org 0h                  ; start program at 00h
    mov DPTR, #007dh        ; set fetch address to 007dh
    movx A, @DPTR           ; fetch data byte
    mov SP, A               ; store date byte in SP
