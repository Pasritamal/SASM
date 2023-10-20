section .data
    a db 2
    b db 5
    c db 0

section .text
    global _start

_start:
    mov al, [a]
    add al, [b]
    mov [c], al

    ; Exit the program
    mov eax, 1
    xor ebx, ebx
    int 0x80
