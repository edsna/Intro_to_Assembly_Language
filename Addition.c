#include <stdio.h>
/*
 *@author: Edson Zandamela
 *@See divmod.s
*/

/*
 *This program computes the sum of two integers
 * A version of this program computing division and mod is available in Assembly language
*/
void main(){
	int a;
	int b;

	printf("Enter the first number: \n");
	scanf("%d", &a);	//Assigns first input to a
	printf("Enter the second number: \n");
	scanf("%d", &b);	//Assigns first input to a

	printf("%d plus %d equals: %d \n", a, b, a + b);
}
