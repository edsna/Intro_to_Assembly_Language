"#Intro_to_Assembly_Language" 

Important compile and run instructions
gcc –m32 –O0 –S fileName.c >> is used to convert the instructions on fileName.c file into a 32 bit fileName.s assembly file 

gcc –m32 –O1 –s fileName.c >> is used to convert the instructions on fileName.c file into a 64 bit fileName.s assembly file

NOTE that comments are not converted from C to assembly 

gcc –m32 –o fileName fileName.s >> Links fileName to its old fileName in case it have been edited

objump –d fileName >> runs the machine code using command line

All fileName.c files were added for the purpose of testing 