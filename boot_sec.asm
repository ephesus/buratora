mov ah, 0x0e

mov al, 'B'
int 0x10
mov al, 'U'
int 0x10
mov al, 'R'
int 0x10
mov al, 'A'
int 0x10
mov al, 'T'
int 0x10
mov al, 'O'
int 0x10
mov al, 'R'
int 0x10
mov al, 'A'
int 0x10

loop: 
jmp  loop   ; same as jmp $

times  510-($-$$) db 0 ;jmp loop takes 2 bytes, fill 510-(current address (which is 2)) zeros (508)

dw 0xaa55                ; Last  two  bytes are magic number to indicate bootable
