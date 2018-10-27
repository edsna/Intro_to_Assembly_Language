LC0:
	.ascii "Enter a number: \0"
LC1:
	.ascii "%d\0"
LC2:
	.ascii "You WIN!\0"
LC3:
	.ascii "You lose...\0"
	.globl	_main
_main:
	pushl	%ebp
	movl	%esp, %ebp
	andl	$-16, %esp
	subl	$32, %esp
	call	___main
	movl	$LC0, (%esp)
	call	_printf
	leal	28(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$LC1, (%esp)
	call	_scanf
	cmpl	$10, 28(%esp)
	jg	L2
	movl	$LC2, (%esp)
	call	_puts
	jmp	L1
L2:
	movl	$LC3, (%esp)
	call	_puts
L1:
	leave
	ret
	
