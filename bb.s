	.file	"bb.c"
	.def	___main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
LC0:
	.ascii "Hello World!\0"
LC1:
	.ascii "Welome to Assembly.\0"
LC2:
	.ascii "Testing Sentence.\0"
	.text
	.globl	_main
	.def	_main;	.scl	2;	.type	32;	.endef
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
	.ident	"GCC: (tdm64-1) 5.1.0"
	.def	_puts;	.scl	2;	.type	32;	.endef
