; Problem 5 from chapter 4 of The 8051 Microcontroller by Kenneth Ayala

    org 0h                  ; start program at 00h
    ; load test data
    mov 2ah, #0aah
    ; solution to problem
    mov R0, #2ah            ; use P0 as address register
    clr A                   ; clear A
    xchd A, @R0             ; get lower nibble at 2ah
    cpl A                   ; invert nibble
    xchd A, @R0             ; move nibble back
