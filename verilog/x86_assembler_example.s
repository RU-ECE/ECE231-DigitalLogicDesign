	.globl main
main:
	mov	$13, %rax   # on ARM: mov  x0, 13
	mov	$24, %rbx   # on ARM: mov  x1, 24
	mov	$11, %rcx
	mov	$2, %rdx
	mov	$1, %rsi
	mov	$1, %rsi

	and	%rax, %rbx  #  rbx = rbx AND rax
	or	%rax, %rbx  #  rbx = rbx OR rax
	xor	%rdx, %rdx  #  rdx = 0
	ret


	
	

	
