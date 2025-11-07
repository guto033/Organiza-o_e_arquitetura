section .data
        pergunta db "como você se chama?", 10
        tamPergunta equ $-pergunta

section .bss
        nome resb 10

section .text
        global _start


_start:
        call imprimirPergunta
        call lerNome
        call exibeNome

        mov rax, 60
        mov rdi, 1
        syscall

imprimirPergunta:
        mov rax, 1
        mov rdi, 1
        mov rsi, pergunta
        mov rdx, tamPergunta
        syscall
        ret

lerNome:
        mov rax, 0
        mov rdi, 0
        mov rsi, nome
        mov rdx, 10
        syscall
        ret

exibeNome:
        mov rax, 1
        mov rdi, 1
        mov rsi, nome
        mov rdx, 10
        syscall
        ret


