INCLUDE "hardware.inc"


SECTION "Header", ROM0[$100]
; Execution starts here - we have 4 bytes before header

EntryPoint:
    di          ; Disable interrupts
    jp Start    ; Jump elsewhere

; 0s will be changed by gbfix
REPT $150-$104
    db 0
ENDR


SECTION "Game code", ROM0

Start:

.lockup
    jr .lockup  ; Infinite loop halts CPU


SECTION "Tiles", ROM0
; This is where I'll load the tile data


