#include <stdio.h>

void singlePrecision();
void doublePrecision();

int main(){
	//~ singlePrecision();
	doublePrecision();
}

void singlePrecision(){
	float t=1.1, epsilon=1;
	int i=1;
	while(t > 1){
		t = 1 + (epsilon *= 0.5);
		printf("(%d)t=%.24lf, epsilon=%.24lf\n", i++, t, epsilon);
	}
}

void doublePrecision(){
	double t=1.1, epsilon=1;
	int i=1;
	while(t > 1){
		t = 1 + (epsilon *= 0.5);
		printf("(%d)t=%.24lf, epsilon=%.24lf\n", i++, t, epsilon);
	}
}

