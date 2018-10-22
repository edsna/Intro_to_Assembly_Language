	.file	"Addition.c"
LC0:
	.ascii "Enter the first number: \0"
LC1:
	.ascii "%d\0
LC2:
	.ascii "Enter the second number: \0"
LC3:
	.ascii "%d plus %d equals: %d \12\0"

	.globl	_main
_main:
	pushl	%ebp		#Pushes %ebp to the top of the stack
	movl	%esp, %ebp	#Moves %esp to the top of the stack
	andl	$-16, %esp	#Stores value in $-16 into %esp
	subl	$32, %esp	#Stores value in $-32 into %esp

	# Prepares arguments for printing
	call	___main		#Calls the main
	movl	$LC0, (%esp)	#Moves LC0 to the top of the Stack-ask for first number
	call	_puts		#Calls put for LC0-probably to ask for the 1st number
	leal	28(%esp), %eax	#Assigns the value of 28(%esp)/%esp-28 to the register %eax
	movl	%eax, 4(%esp)	#Moves register %eax into 4(%esp)-somewhere in the stack
	
	movl	$LC1, (%esp)	#Moves LC1 to the top of the stack
	call	_scanf		#Calls scanf
	
	movl	$LC2, (%esp)	#Moves LC2 to the top of the stack
	call	_puts		#call put to print- enter second number
	leal	24(%esp), %eax	#Assigns the value of 24(%esp) to register %eax
	movl	%eax, 4(%esp)	#moves address in register %eax into 4-(%esp)
	
	movl	$LC1, (%esp)	#Calls LC1 to the top of the stack
	call	_scanf		#Calls scanf
	
	movl	28(%esp), %eax	#moves 28(%esp) to the register %eax
	movl	24(%esp), %edx	#moves 24(%esp) to the register %edx
	leal	(%eax,%edx), %ecx	#Stores addition of eax and edx onto ecx performs addition
	movl	%ecx, 12(%esp)		#Assign addition of first and second values to stack
	movl	%edx, 8(%esp)		#Assigns second integer onto the stack
	movl	%eax, 4(%esp)		#Assigns first value onto the stack
	movl	$LC3, (%esp)		#Moves LC3-answer to the stack
	call	_printf			#prints the answer
	leave
	ret
