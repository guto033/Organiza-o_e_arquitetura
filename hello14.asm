section .data
	  newline db 10			
	  SYS_WRITE equ 1
	  SYS_EXIT equ 60
	  STD_OUT equ 1

section .bss
	  buffer resb 1			

section .text
	  global _start

_start:
	  mov rcx, 3
    mov rdx, 2
	  sub rcx, rdx			

	  mov rax, rcx
	  add rax, '0'
	  mov [buffer], al		

  
	  mov rax, SYS_WRITE
	  mov rdi, STD_OUT
	  mov rsi, buffer
	  mov rdx, 1
	  syscall

	
	  mov rax, SYS_WRITE
	  mov rdi, STD_OUT
	  mov rsi, newline
	  mov rdx, 1
	  syscall


	  mov rax, SYS_EXIT
	  mov rdi, 1
	  syscall
