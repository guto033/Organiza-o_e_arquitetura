<pre>section <font color="#8AE234"><b>.data</b></font>
        msgIgual db <font color="#FCE94F"><b>&quot;os números são iguais&quot;</b></font>, 10
        tamIgual equ $-msgIgual

        msgMaior db <font color="#FCE94F"><b>&quot;o primeiro número informado é maior&quot;</b></font>, 10
        tamMaior equ $-msgMaior<span style="background-color:#4E9A06"> </span>

        msgMenor db <font color="#FCE94F"><b>&quot;o primeiro número informado é menor&quot;</b></font>, 10<span style="background-color:#4E9A06"> </span>
        tamMenor equ $-msgMenor

section <font color="#8AE234"><b>.text</b></font>
        global _start<span style="background-color:#4E9A06"> </span>

<font color="#EF2929"><b>_start:</b></font>
        mov rax, 6
        mov rdx, 3


        cmp rax, rdx
        je .igual
        jl .menor
        jg .maior<span style="background-color:#4E9A06"> </span>

<font color="#EF2929"><b>.menor:</b></font>
        mov rsi, msgMenor
        mov rdx, tamMenor
        jmp .imprimir<span style="background-color:#4E9A06"> </span>

<font color="#EF2929"><b>.igual:</b></font>
        mov rsi, msgIgual
        mov rdx, tamIgual
        jmp .imprimir

<font color="#EF2929"><b>.maior:</b></font>
        mov rsi, msgMaior
        mov rdx, tamMaior
        jmp .imprimir


<font color="#EF2929"><b>.imprimir:</b></font>
        mov rax, 1
        mov rdi, 1
        syscall
        jmp .sair

<font color="#EF2929"><b>.sair:</b></font>
        mov rax, 60
        mov rdi, 1
        syscall



</pre>
