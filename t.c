#include <stdio.h>

int add(int a, int b);

int main(){
	int a = 10;
	int b = 5;

	int sum;
	sum = add(a,b);

	printf("Sum = %d", sum);
}

int add(int a, int b){
	int c;
	c = a + b;
	return c;
}
