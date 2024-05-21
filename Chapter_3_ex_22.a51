; Problem 22 from chapter 3 of The 8051 Microcontroller by Kenneth Ayala

    org 0h                  ; start program at 00h
    mov DPTR, #0100h        ; set destination address
    mov A, #00h             ; set destination offset
    movc A, @A+DPTR         ; get code byte
    mov 20h, A              ; save code byte
    mov DPTR, #0101h        ; repeat for second byte in 0101h
    mov A, #00h
    movc A, @A+DPTR
    mov 21h, A
    mov DPTR, #0102h        ; repeat for third byte in 0102h
    mov A, #00h
    movc A, @A+DPTR
    mov 22h, A
