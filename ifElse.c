#include<stdio.h>

void main(){
	int a;
	int b;

	printf("Enter two integers separated by space\n");
	scanf("%d %d ", &a, &b);
	if(a < b){
		printf("a is less than b\n");
		}
	else if(b < a){
			printf("b is less than a\n");
			}
	else{
		printf("The integers you entered are equal\n");
		}	
}
