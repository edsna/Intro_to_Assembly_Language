LC0:
	.ascii "Hello World!\0"
LC1:
	.ascii "Welome to Assembly.\0"
LC2:
	.ascii "Testing Sentence.\0"
	.globl	_main
_main:
	pushl	%ebp
	movl	%esp, %ebp
	andl	$-16, %esp
	subl	$16, %esp
	call	___main
	movl	$LC0, (%esp)
	call	_puts
	movl	$LC1, (%esp)
	call	_puts
	movl	$LC2, (%esp)
	call	_puts
	leave
	ret
