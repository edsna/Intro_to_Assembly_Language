"#Intro_to_Assembly_Language" 

Important compile and run instructions
gcc –m32 –O0 –s fileName.c >> is used to convert the instructions on fileName.c file into a level zero fileName.s assembly file 

gcc –m32 –O1 –S fileName.c >> is used to convert the instructions on fileName.c file into a level one fileName.s assembly file

NOTE that comments are not converted from C to assembly 

gcc –m32 –o fileName fileName.s >> Links fileName to its old fileName in case it have been edited
Note that through the COmmand Prompt in Wondows you compile the code as explained above but run it the same way you run a .c file after compilation

objdump –d fileName >> runs the machine code using command line

gcc –m32 –o fileName fileName.s >> Compiles .s files which can then be run independently

All fileName.c files were added for the purpose of testing 

You can chose to ignre all the .exe files in the folder, they're generated when I compile the files -I'm using windows.

