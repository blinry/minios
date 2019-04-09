    [org 0x7c00] ; tell the assembler that our offset is bootsector code
_start:

    mov bx, _start
forever:
    cmp bx, _end
    jge the_end

    mov dx, [bx]
    call print_hex

    call print_space

    add bx, 2

    jmp forever

the_end:
    jmp $

    %include "print.asm"
    %include "print_hex.asm"

    ; padding and magic number
    times 510-($-$$) db 0
    dw 0xaa55
_end:
