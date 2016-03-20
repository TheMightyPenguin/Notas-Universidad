#include <stdio.h>

void singlePrecision(float);
void doublePrecision(double);

int main(){
	singlePrecision(1);
	doublePrecision(1);
}

void singlePrecision(float x){
	float t, epsilon=1;
	int i=1;
	FILE *f;
	f = fopen("out.txt", "w");
	do{
		t = x + (epsilon *= 0.5);
		fprintf(f, "%d & %.24f & %.34f \\\\ \\hline \n", i, t, epsilon);
		i++;
	}while(t > x);	
	fclose(f);
}

void doublePrecision(double x){
	double t, epsilon=1;
	int i=1;
	FILE *f;
	f = fopen("out2.txt", "w");
	do{
		t = x + (epsilon *= 0.5);
		fprintf(f, "%d & %.24lf & %.54lf \\\\ \\hline \n", i, t, epsilon);
		i++;
	}while(t > x);
	fclose(f);
}

