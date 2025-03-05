[org 0x7c00]

start:
    mov ah, 0x00  ; Wait for a key press
    int 0x16
    mov ah, 0x0E  ; BIOS teletype mode
    int 0x10      ; Print the character

    jmp start

times 510-($-$$) db 0
dw 0xAA55  ; Boot signature