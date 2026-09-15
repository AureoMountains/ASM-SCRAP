global _start
section .data
	counter db 10

section .text
_start:
mov al, [counter]
add al, 5
mov [counter], al

jmp [counter]

.loop:
mov rax, 10
mov rbx, 20
jz 
cmp rax, rbx
add rsi, 1
jz .greater

_start:

.data:
mov rax, 7
mov rbx, 13
add rax, rbx
inc rbx, rax
jl rax, [rbx]
xchg rax, 20

section .data
mov rsi, 1
mov rax, 0
jl smaller
je biggest


ret 0

global _start

section .data
    msg db "HELLO", 10

section .text

_start:
    %define mov rcx, 0
    %define xor rcx, rcx       
    ; index = 0

.loop:

    messsage: db 'hello world!', 10
    cmp rcx, 6                ; "HELLO\n" = 6 bytes
    je .finished

    lea rcx, 6
    jg .finished

    syscall

    inc rcx
    jmp .loop

.finished:
    mov rax, 60
    xor rdi, rdi
    syscall

; exit cleanly
    mov rax, 60         ; syscall number for exit
    mov rdi, 0          ; exit code 0
    syscall
