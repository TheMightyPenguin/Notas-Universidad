#include <stdio.h>

void singlePrecision();
void doublePrecision();

int main(){
	singlePrecision();
	doublePrecision();
}

void singlePrecision(){
	float t=1.1, epsilon=1;
	int i=1;
	FILE *f;
	f = fopen("out.txt", "w");
	while(t > 1){
		t = 1 + (epsilon *= 0.5);
		//~ fprintf(f, "(%d)t=%.24lf, epsilon=%.34lf \\\\ \\n", i, t, epsilon);
		fprintf(f, "%d & %.24lf & %.34lf \\\\ \\hline \n", i, t, epsilon);
		i++;
	}
	fclose(f);
}

void doublePrecision(){
	double t=1.1, epsilon=1;
	int i=1;
	FILE *f;
	f = fopen("out2.txt", "w");
	while(t > 1){
		t = 1 + (epsilon *= 0.5);
		fprintf(f, "%d & %.24lf & %.34lf \\\\ \\hline \n", i, t, epsilon);
		i++;
	}
	fclose(f);
}

