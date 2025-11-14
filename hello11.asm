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
        mov rax, 57             

        mov rcx, rax            
        mov rbx, 10             
        mov rdx, 0              
        div rbx                

        
        add al, '0'             
        mov [buffer], al

        
        add dl, '0'            
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




