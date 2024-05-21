; Problem 8 from chapter 3 of The 8051 Microcontroller by Kenneth Ayala

    org 0h                  ; start program at 00h
    mov DPTR, #0123h        ; set address for first fetch from ext RAM
    movx A, @DPTR           ; fetch first data byte
    mov tl0, A              ; save data in lower byte of timer 0
    mov DPTR, #0234h        ; set address for second fetch
    movx A, @DPTR           ; fetch second data byte
    mov th0, A              ; save data in higher byte of timer 0
