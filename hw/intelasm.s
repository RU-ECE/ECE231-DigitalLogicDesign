    .globl main
main:
    mov $5, %rax
    shl $1, %rax  # rax = rax * 2
    shl $3, %rax  # rax = rax * 8
    mov $2, %rbx
    #ror %rbx, %rax
    ret
f:
    mov  $0, %rax # rax = 0
    mov  $0, %rbx # rax = 0
    mov  $0, %rcx 
    mov  $0, %rdx 
    mov  $0, %rsi 
    mov  $0, %rdi 
    mov  $0, %rbp 
    mov  $0, %r9
    mov  $0, %r10
    mov  $0, %r11
    mov  $0, %r12
    mov  $0, %r13
    mov  $0, %r14
    mov  $0, %r15
    ret