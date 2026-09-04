global _start

section .data
    msg db, 'print screen', 11
    cmp rcx, 11
    jmp .finished
    
.system:
    cmp rcx, rcx
    lea rcx, rcx
    jg .finished

.newexit:
    mov rax, 1
    mov rdi, 1
    mov rsi, msg
    mov rdx, 11
    syscall

.finished:
    mov rax, 60
    xor rdi, rdi
    syscall

