section .data

section .bss
        buffer resb 2

section .text
        global _start

_start:
        mov rax, 3
        mov rdx, 2

        add rax, rdx
        mov al, '0'
        mov [buffer], al
        mov byte [buffer +1], 10

        mov rax, 1
        mov rdi, 1
        mov rsi, buffer
        mov rdx, 2
        syscall

        mov rax, 60
        mov rdi, 1
        mov rsi, buffer











