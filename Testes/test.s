	.file	"test.c"
LC0:
	.ascii "%d plus %d equals: %d \12\0" 	#places character in string into the object module
	.globl	_main
	.def	_main;	.scl	2;	.type	32;	.endef
_main:
	pushl	%ebp
	movl	%esp, %ebp
	andl	$-16, %esp
	subl	$32, %esp
	call	___main
	movl	$1, 28(%esp)
	movl	$2, 24(%esp)
	movl	28(%esp), %edx
	movl	24(%esp), %eax
	addl	%edx, %eax
	movl	%eax, 12(%esp)
	movl	24(%esp), %eax
	movl	%eax, 8(%esp)
	movl	28(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$LC0, (%esp)
	call	_printf
	nop
	leave
	ret
	.ident	"GCC: (tdm64-1) 5.1.0"
	.def	_printf;	.scl	2;	.type	32;	.endef
