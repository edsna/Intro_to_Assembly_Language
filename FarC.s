
LC0:
	.string "Enter the temperature in degrees Farenheit: \0"
LC1:
	.string "%d"
LC2:
	.string "%d degrees Farenheit is equivalent to %d degrees celcius \0"

	.globl	_main
_main:
	pushl	%ebp		#Pushes register %ebp to the top of the stack
	movl	%esp, %ebp	#Points the top of the stack to %esp register so we can call it later
	andl	$-16, %esp	#Assigns register %esp to the result of %esp * 16
	subl	$16, %esp	#Assigns register %esp to the result of %esp - 16
	
	# Prepare arguments for printing
	call	___main
	movl	$LC0, (%esp)	#Put first argument into %esp
	call	_puts		#Prints string in LC0
	leal	28(%esp), %eax	#%eax = value of %esp + 28
	movl	%eax, 4(%esp)	#move %eax to topOfStack +4
	movl	$LC1, (%esp)	#move scanf argument to top of stack
	call	_scanf		#Calls scanf

	#Storing input value from scanf
	movl	28(%esp), %edx	#Stores the input
	movl	%edx,%ecx	#Moves input toseparate register for effective printout

	#performing the conversion
	subl	$32, %edx		#%eax = %eax-$32
	imul	$2, %edx		#(5.0/9.0)*%eax

	#Move answer to correct place
	movl	%ecx, 4(%esp)		#Move input to top of stack
	movl	%edx, 8(%esp)		#Move answer to top of stack
	
	movl	$LC2, (%esp)		#Move Answer string to top of stack
	call	_printf			#prints the answer
	leave
	ret

	#What is %esp - I guess it is what points to the top of the stack
	# For every string you add, you need to make sure you have a LCO for it, move it onto the stack then call puts in Maincd 
