; Problem 13 from chapter 4 of The 8051 Microcontroller by Kenneth Ayala

    org 0h                  ; start program at 00h
    rrc A                   ; mov LSB of A into C
    cpl C                   ; invert C 
