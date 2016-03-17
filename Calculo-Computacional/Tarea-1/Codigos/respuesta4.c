#include <stdio.h>

float productoEscalarAscendenteF(float[], float[]);
float productoEscalarDescendenteF(float[], float[]);

double productoEscalarAscendenteD(double[], double[]);
double productoEscalarDescendenteD(double[], double[]);

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
	printf("----\n");
	printf("Ascendiente Precision Doble    = %.34lf\n", productoEscalarAscendenteD(a_double, b_double));
	printf("Descendiente Precision Doble   = %.34lf\n", productoEscalarDescendenteD(a_double, b_double));
}

// funciones float
float productoEscalarAscendenteF(float a[], float b[]){
	int i;
	float producto=0;
	for(i=0; i < 5; i++){
		//~ printf("%.30f x %.30f\n", a[i], b[i]);
		producto += a[i] * b[i];
	}
	return producto;
}

float productoEscalarDescendenteF(float a[], float b[]){
	int i;
	float producto=0;
	for(i=4; i >= 0; i--){
		//~ printf("%.30f x %.30f\n", a[i], b[i]);
		producto += a[i] * b[i];
	}
	return producto;
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
