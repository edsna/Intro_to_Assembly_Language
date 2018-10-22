	.file	"add2.c"	#Original source fileName for this Assembly code
.LC0:
	.ascii "Enter your divisor: \0"
LC1:
	.ascii "%d\0"
LC2:
	.ascii "Enter yur dividend: \0"
LC3:
	.ascii	"%d divided by %d equals %d with a remainder of %d\n"	
	
	.globl	main
main:
	pushl	%ebp		#Pushes register %ebp to the top of the stack
	movl	%esp, %ebp	#Means move contents from esp register into ebp register
	andl	$-16, %esp	#Assigns register %esp to the result of %esp * 16
	subl	$32, %esp	#Assigns register %esp to the result of %esp - 32
	
	movl    $0x33, 28(%esp)  #Moves dividend 0x33 to location 28(%esp)
	movl    $0x14, 24(%esp)  #Moves divisor 0x34 to location 24%esp
        movl    28(%esp), %edx   #Moves the value in 28(%esp) to edx  
	movl    %edx, %eax	 #Moves %edx into eax
	sarl    $31, %edx	 #Shifts edx to the right
	idivl   24(%esp)         #compute the quotient of dividend $0x33
		
	movl	%edx, 16(%esp)	 #Assignment
	movl	%eax, 12(%esp)	 #Assignment
	movl	$0x14, 8(%esp)	 #Assignment
	movl	$0x33, 4(%esp)	 #Assignment
	movl	$.LC0, (%esp)	 #
	call	printf	 	 #Calls print function
	
	leave			 #copies EBP to ESP and then restores the old EBP from the stack.
	ret			 #Exit function

