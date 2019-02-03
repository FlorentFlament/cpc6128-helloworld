    INCLUDE "target/cpc/def/cpcfirm.def"    

    PUBLIC _main

._main
    ld hl, text

.print_loop
    ld a, (hl)
    or a ; fast cp 0
    jr z, end_loop

    call firmware
    defw txt_output
    inc hl
    jr print_loop

.end_loop
    ret

.text
    DEFM "Hello Asm !!",$0d,$0a,$00
