mov ah, 0x0E ; BIOS teletype mode
mov al, 65 ; ASCII code for 'A'
int 0x10

loop: 
    inc al
    cmp al, 91
    je exit
    int 0x10
    jmp loop 

exit:
    jmp $

jmp $

times 510-($-$$) db 0
db 0x55, 0xAA ; Boot signature