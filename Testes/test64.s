
LC0:
	.ascii "%d plus %d equals: %d \12\0"
	.globl	_main
_main:
	pushl	%ebp
	movl	%esp, %ebp
	andl	$-16, %esp
	subl	$16, %esp
	call	___main
	movl	$3, 12(%esp)
	movl	$2, 8(%esp)
	movl	$1, 4(%esp)
	movl	$LC0, (%esp)
	call	_printf
	leave
	ret
