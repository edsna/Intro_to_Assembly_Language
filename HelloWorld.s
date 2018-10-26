
LC0:
	.string "Hello World!\0"
LC1:
	.string "Welome to Assembly.\0"
LC2:
	.string "This line was added in the assembly version of the file HelloWorld.c \0"
LC3:
	.string "This line was also added in the Assembly file.\0"
LC4:
	.string "Also added in the Assembly file.\0"
	.globl	_main

_main:
	pushl	%ebp		#Pushes register %ebp to the top of the stack
	movl	%esp, %ebp	#Points the top of the stack to %esp register so we can call it later
	#What are these two used for "create appropriate space in memory for the registers/strings up top?"
	andl	$-16, %esp	#Assigns register %esp to the result of %esp * 16
	subl	$16, %esp	#Assigns register %esp to the result of %esp - 16
	
	# Prepare arguments for printing
	call	___main
	movl	$LC0, (%esp)	#Put first argument into %esp
	call	_puts		#Prints first argument
	movl	$LC1, (%esp)	#Put second argument into %esp
	call	_puts		#Prints second string/argument
	movl	$LC2, (%esp)	#Put third argument into %esp
	call	_puts		#Prints third string/argument
	movl	$LC3, (%esp)	#Put fourth argument into %esp
	call	_puts		#Prints fourth string/argument
	movl	$LC4, (%esp)	#Put fourth argument into %esp
	call	_puts		#Prints fith string/argument
	leave
	ret

	#What is %esp - I guess it is what points to the top of the stack
	# For every string you add, you need to make sure you have a LCO for it, move it onto the stack then call puts in Maincd 
