#include<stdio.h>

#define WIN 10

void main(){
	int num;
	 printf("Enter a number: ");
	 scanf("%d", &num);

	 if(num <= WIN){
		printf("You WIN!\n");
	 }
	 else{
		printf("You lose...\n");
	 }
}
