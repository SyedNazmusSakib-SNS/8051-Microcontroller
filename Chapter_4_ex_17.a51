; Problem 17 from chapter 4 of The 8051 Microcontroller by Kenneth Ayala

    org 0h                  ; start program at 00h
    mov A, DPL              ; get lower byte
    rrc A                   ; rotate lower byte left
    push A                  ; save lower byte
    mov A, DPH              ; get higher byte
    rrc A                   ; rotate higher byte left
    mov DPH, A              ; save higher byte
    pop A                   ; get lower byte back
    mov 0e7h, C             ; get bit 0 to bit 15
    mov DPL, A              ; rotate done
