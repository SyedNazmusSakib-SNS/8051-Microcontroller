; Problem 11 from chapter 3 of The 8051 Microcontroller by Kenneth Ayala

    org 0h                  ; start program at 00h
    mov B, #42h             ; move test data to B
    mov DPTR, #02cfh        ; set external address for operations
    movx A, @DPTR           ; fetch external data
    xch A, B                ; swap A and B
    movx @DPTR, A           ; move B to external RAM
