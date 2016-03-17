#include <stdio.h>

void singlePrecision(float);
void doublePrecision(double);

int main(){
	singlePrecision(1);
	doublePrecision(1);
	singlePrecision(10000);
	doublePrecision(10000);
}

void singlePrecision(float x){
	float t = 2 * x, epsilon=1;
	int i=1;
	while(t > x){
		t = x + (epsilon *= 0.5);
		printf("i=%d t=%.24f epsilon=%.34f\n", i, t, epsilon);
		i++;
	}
}

void doublePrecision(double x){
	double t=2 * x, epsilon=1;
	int i=1;
	do(t > x){
		t = x + (epsilon *= 0.5);
		printf("i=%d t=%.24lf epsilon=%.34lf\n", i, t, epsilon);
		i++;
	}
}

