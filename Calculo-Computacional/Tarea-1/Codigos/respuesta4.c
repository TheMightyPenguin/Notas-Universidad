#include <stdio.h>

float productoEscalarAscendenteF(float[], float[]);
float productoEscalarDescendenteF(float[], float[]);
float mayorAMenorF(float[], float[]);
float menorAMayorF(float[], float[]);

double productoEscalarAscendenteD(double[], double[]);
double productoEscalarDescendenteD(double[], double[]);
double mayorAMenorD(double[], double[]);
double menorAMayorD(double[], double[]);

int main(){
	float a_float[] = {2.718281828, -3.141592654, 1.414213562, 
				       0.5772156649, 0.3010299957};
	
	float b_float[] = {1485.2497, 878366.9879, -22.37492,
				       4773714.647, 0.000185049};
				       
	double a_double[] = {2.718281828, -3.141592654, 1.414213562, 
				         0.5772156649, 0.3010299957};
	
	double b_double[] = {1485.2497, 878366.9879, -22.37492,
				         4773714.647, 0.000185049};
	
	printf("Ascendiente Precision Simple   = %.34f\n", productoEscalarAscendenteF(a_float, b_float));
	printf("Descendiente Precision Simple  = %.34f\n", productoEscalarDescendenteF(a_float, b_float));
	printf("Mayor a menor  = %.34f\n", mayorAMenorF(a_float, b_float));
	printf("Menor a mayor  = %.34f\n", menorAMayorF(a_float, b_float));
	printf("----\n");
	printf("Ascendiente Precision Doble    = %.54lf\n", productoEscalarAscendenteD(a_double, b_double));
	printf("Descendiente Precision Doble   = %.54lf\n", productoEscalarDescendenteD(a_double, b_double));
	printf("Mayor a menor  = %.34f\n", mayorAMenorD(a_double, b_double));
	printf("Menor a mayor  = %.34f\n", menorAMayorD(a_double, b_double));
}

// funciones float
float productoEscalarAscendenteF(float a[], float b[]){
	int i;
	float producto=0;
	for(i=0; i < 5; i++){
		producto += a[i] * b[i];
	}
	return producto;
}

float productoEscalarDescendenteF(float a[], float b[]){
	int i;
	float producto=0;
	for(i=4; i >= 0; i--){		
		producto += a[i] * b[i];
	}
	return producto;
}

float mayorAMenorF(float a[], float b[]){
	float res[5];
	int i;
	for(i=0; i < 5; i++){
		res[i] = a[i] * b[i];
	}
	return ((res[0] + res[3]) + (res[4] + res[2])) + res[1];
}

float menorAMayorF(float a[], float b[]){
	float res[5];
	int i;
	for(i=0; i < 5; i++){
		res[i] = a[i] * b[i];
	}
	return ((res[1] + res[2]) + (res[4] + res[0])) + res[3];
}

// funciones double
double productoEscalarAscendenteD(double a[], double b[]){
	int i;
	double producto=0;
	for(i=0; i < 5; i++){
		producto += a[i] * b[i];
	}
	return producto;
}

double productoEscalarDescendenteD(double a[], double b[]){
	int i;
	double producto=0;
	for(i=4; i >= 0; i--){
		producto += a[i] * b[i];
	}
	return producto;
}

double mayorAMenorD(double a[], double b[]){
	double res[5];
	int i;
	for(i=0; i < 5; i++){
		res[i] = a[i] * b[i];
	}
	return ((res[0] + res[3]) + (res[4] + res[2])) + res[1];
}

double menorAMayorD(double a[], double b[]){
	double res[5];
	int i;
	for(i=0; i < 5; i++){
		res[i] = a[i] * b[i];
	}
	return ((res[1] + res[2]) + (res[4] + res[0])) + res[3];
}