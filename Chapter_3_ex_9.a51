; Problem 9 from chapter 3 of The 8051 Microcontroller by Kenneth Ayala

    org 0h                  ; start program at 00h
    ; store test data in int RAM 12h through 15h
    mov 12h, #01h
    mov 13h, #02h
    mov 14h, #03h
    mov 15h, #04h
    ; solution to problem 
    mov 20h, 12h
    mov 21h, 13h
    mov 22h, 14h
    mov 23h, 15h
