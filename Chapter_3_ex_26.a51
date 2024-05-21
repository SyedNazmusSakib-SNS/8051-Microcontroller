; Problem 26 from chapter 3 of The 8051 Microcontroller by Kenneth Ayala
;
; NOTE: This is specific to the chip you use; I took the numbers
;       from the original Intel MCS-51, but you'll get the idea

    org 0h                  ; start program at 00h
    ; load test data
    mov A, #42h
    ; solution to problem
    ; version with push and pop
    push A                  ; takes 24 cycles
    ; other code
    pop A                   ; takes 24 cycles

    ; version with xch
    xch A, R0               ; takes 12 cycles
    ; other code
    xch A, R0               ; takes 12 cycles

; the first version takes 48 cycles, the second only 24 cycles and
; is therefore faster
