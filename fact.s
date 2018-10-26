#Edson Zandamela

#This program prompts a user for a number and prints it's factorial or itself if its not >0

	.file	"add2.c" #should I keep this
.LC0:
	.string	"Enter the value of n \n"       #Prompts for n
.LC1:
	.string	"%d"                         #scans for int n
.LC2:
	.string	"Factorial of %d is %d\n"     #scans for int n
	
	.globl	main
main:
        #Always Keep this
	pushl	%ebp            #Pushes %ebp to the top of stack
	movl	%esp, %ebp      #Store esp into ebp
	andl	$-16, %esp      #Store into esp
	subl	$32, %esp       #Store into esp
	
	#Prompts Begin here
	movl	$.LC0, (%esp)   #Moves prompt to top of the stack
	call	puts            #Calls prompt
	leal	28(%esp), %eax  #stores value of n/prompt, 8(%esp) into %eax - top pf stack
	movl	%eax, 4(%esp)   #Move it to some other location in the stack 4(%esp) so i d
	movl	$.LC1, (%esp)   #Move scanner to top of stack
	call	__isoc99_scanf  #Calls the Scanner for prompt
	movl	28(%esp), %ecx  #Store n into register ecx
	movl	%ecx, %eax      #Move register to the top of the stack
	movl	$1, %edx        #Set result =1		
.L3:                            #has to perform the factorial
	imull	%eax, %edx      #compute result *=
	subl	$1, %eax        #subtract 1 from that product
	testl	%eax, %eax      #find product of its antecendent
	jg	.L3             #jump to L3 if not less than 0/%eax
	movl	%edx, 12(%esp)  #Store subtraction in edx
	movl	%ecx, 8(%esp)   #Store it elsewhere in the stack
	movl	$.LC2, 4(%esp)  #Call print to stack top
	movl	$1, (%esp)      #used this before print last lab
	call	__printf_chk    #print answer
	movl	28(%esp), %eax
	leave
   
