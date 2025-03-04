[org 0x7C00]
mov ah, 0x0E
mov bx, var_name

print:
    mov al, [bx] ; Dereference the pointer
    cmp al, 0 ; Check if it's the null terminator
    je end 
    int 0x10
    inc bx ; Move to the next character
    jmp print

end:
    jmp $

jmp $

var_name: db "Hello, World!", 0

times 510-($-$$) db 0
db 0x55, 0xAA ; Boot signature