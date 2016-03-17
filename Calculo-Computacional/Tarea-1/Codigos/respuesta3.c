#include <stdio.h>

void singlePrecision(float);
void doublePrecision(double);

int main(){
	//singlePrecision(1);
	doublePrecision(1);
	//singlePrecision(10000);
	//doublePrecision(10000);
}

void singlePrecision(float x){
	float t, epsilon=1;
	int i=1;
	do{
		t = x + (epsilon *= 0.5);
		printf("i=%d t=%.24lf epsilon=%.54lf\n", i, t, epsilon);
		i++;
	}while(t > x);	
}

void doublePrecision(double x){
	double t, epsilon=1;
	int i=1;
	do{
		t = x + (epsilon *= 0.5);
		printf("i=%d t=%.24lf epsilon=%.54lf\n", i, t, epsilon);
		i++;
	}while(t > x);
}

