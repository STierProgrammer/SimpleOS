[org 0x7c00] 

mov [DISK_NUMBER], dl

xor ax, ax ; Sets to 0
mov es, ax
mov ds, ax
mov bp, 0x8000 ; Base Pointer set to 0x8000 
mov sp, bp ; Stack Pointer also set to 0x8000

mov bx, 0x7e00

mov ah, 2 ; Read disk sectors
mov al, 1 ; Read 1 sector
mov ch, 0 ; Cylinder 0
mov cl, 2 ; Sector 2
mov dh, 0 ; Head 0
mov dl, [DISK_NUMBER] ; Drive number
int 0x13

mov ah, 0x0e
mov al, [0x7e00]
int 0x10
jmp $

DISK_NUMBER: db 0

times 510-($-$$) db 0
dw 0xaa55

times 512 db 'A'