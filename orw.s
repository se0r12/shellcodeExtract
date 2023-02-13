BITS 64
global _start

section .text
_start:
    mov rax, 2 ; open
    mov rdi, file
    mov rsi, 0
    syscall
    
    mov rdi, rax ; rdi = fd
    mov rsi, buffer
    mov rdx, 0x14
    mov rax, 0
    syscall
    
    mov rax, 1
    mov rdi, 1 ; stdout
    mov rsi, buffer
    mov rdx, 0x14 ; 20 byte書き込み
    syscall

    mov rax, 60
    syscall

section .data
file: db "/tmp/flag.txt"
section .bss
buffer: resb 20 ; 20 byte

