#Edson Zandamela CS275

#This program prompts a user for three integers and prints the maximum of the squares of the 3 integers

.LC3:
	.string	"Enter three integers separated by a space: "   #Prompt
	
.LC4:
	.string	"%d %d %d"      #Scan for integers
	
.LC0:
	.string	"First number is the greatest of all three "    #Outputs possible answer

.LC1:
	.string	"Third number is the greatest of all three "    #Outputs possible answer

.LC2:
	.string	"Second number is the greatest of all three "   #Outputs possible answer


#max_Square function finds the squares
max_Square:     # Define function and size expression >> Google
	subl	$28, %esp               #S it form stack
	movl	32(%esp), %ecx          #Store first int
	movl	36(%esp), %edx          #Store second int
	movl	40(%esp), %eax          #Store third int
	#ecx = first number
	#edx = second number
	#eax = third 
	
	#Perform Calculation
	imull	%ecx, %ecx              #Find square of first int
	imull	%edx, %edx              #Find square of second int
	imull	%eax, %eax              #Find square of third int
	cmpl	%edx, %ecx              #Compare second and first number
	jle	.L2                     #Jump if second number is <= firdt
	cmpl	%eax, %ecx              #Compare third and first number
	jle	.L3                     #Jump if second number is <= third
	movl	$.LC0, (%esp)           #Move answer to stack
	call	puts                    #call it
	jmp	.L6                     #get back
	
	#If first square is greater
.L3:
	movl	$.LC1, (%esp)           #move answ ro staclk
	call	puts                    #call it
	jmp	.L6                     #get answer
        
        #If second number is greater condition
.L2:
	cmpl	%eax, %edx              #compare third and second
	jle	.L5                     #jump if second is <= third
	movl	$.LC2, (%esp)           #move print
	call	puts                    #call it
	jmp	.L6                     #get back 
	
	#Test when third number is bigger
.L5:
	movl	$.LC1, (%esp)           #Move answer
	call	puts                    #call it
.L6:
	addl	$28, %esp               #move it up
	ret                     #Terminate function
	
	.globl	main
main:
        #Always Keep this
	pushl	%ebp            #Pushes %ebp to the top of stack
	movl	%esp, %ebp      #Store esp into ebp
	andl	$-16, %esp      #Store into esp
	subl	$32, %esp       #Store into esp
	
	#Remember
	#ecx = first number
	#edx = second number
	#eax = third 
	
	movl	$.LC3, (%esp)   #Move prompt to top of stack
	call	puts            #call it
	leal	28(%esp), %eax  #alocate it 
	movl	%eax, 12(%esp)  #move it to dif loc in stack
	leal	24(%esp), %eax  #
	movl	%eax, 8(%esp)
	leal	20(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$.LC4, (%esp)
	call	__isoc99_scanf  #can call scanf now
	movl	28(%esp), %eax
	movl	%eax, 8(%esp)
	movl	24(%esp), %eax
	movl	%eax, 4(%esp)
	movl	20(%esp), %eax
	movl	%eax, (%esp)
	call	max_Square      #Call fuction
	leave                   #Completely exit main
	ret                     #Done
