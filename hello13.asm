section .data
        newline db 10
        SYS_WRITE equ 1
        SYS_EXIT equ 60
        STD_OUT equ 1

section .bss
        buffer resb 2

section .text
        global _start

_start:
        mov rax, 3
        mov rdx, 5
        mul rdx


        mov rbx, 10
        mov rdx, 0
        div rbx

        add rax,'0'
        add rdx, '0'

        mov [buffer], al
        mov [buffer+1], dl


        mov rax, SYS_WRITE
        mov rdi, STD_OUT
        mov rsi, buffer
        mov rdx, 2
        syscall


        mov rax, SYS_WRITE
        mov rdi, STD_OUT
        mov rsi, newline
        mov rdx, 1
        syscall


        mov rax, SYS_EXIT
        mov rdi, 1
        syscall




