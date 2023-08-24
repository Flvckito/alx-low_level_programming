section .data
    hello db "Hello, Holberton", 0
format db "%s", 10, 0   ; "%s" format specifier for string, 10 is ASCII for newline

section .text
    global main

extern printf

main:
    ; Call printf
    mov rdi, format
    mov rsi, hello
    xor rax, rax  ; Clear RAX register to indicate no floating point arguments
    call printf

    ; Exit the program
    mov rax, 60   ; syscall number for exit
    xor rdi, rdi  ; exit status 0
    syscall
