loop: 
jmp  loop   ; same as jmp $

times  510-($-$$) db 0 ;jmp loop takes 2 bytes, fill 510-(current address (which is 2)) zeros (508)

dw 0xaa55                ; Last  two  bytes are magic number to indicate bootable
