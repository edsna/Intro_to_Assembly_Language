
LC0:
	.ascii "Sum = %d\0"
	.globl	_main
_main:
	pushl	%ebp
	movl	%esp, %ebp
	andl	$-16, %esp
	subl	$16, %esp
	
	call	___main
	movl	$15, 4(%esp)
	movl	$LC0, (%esp)
	call	_printf
	movl	$0, %eax
	leave
	ret
	.globl	_add
_add:
	movl	8(%esp), %eax
	addl	4(%esp), %eax
	ret
