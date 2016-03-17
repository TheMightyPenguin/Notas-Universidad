#include <stdio.h>
#include <math.h>

float exponencialAdelante(float);
float exponencialAtras(float);
float fact(float);
double exponencialAdelanteD(double);
double exponencialAtrasD(double);
double factD(double);

int main(){
	float x=10;
	printf("Precision Simple:\n");
	printf("\tHacia adelante = %.54f\n", exponencialAdelante(x));
	printf("\tHacia atras    = %.54f\n", exponencialAtras(x));
	printf("-----------------------------------------------------\n");
	printf("Precision Doble:\n");
	printf("\tHacia adelante = %.54lf\n", exponencialAdelanteD(x));
	printf("\tHacia atras    = %.54lf\n", exponencialAtrasD(x));
	
	
}

// Funciones float
float exponencialAdelante(float x){
	float e=0, factorial=0, potencia=0, ant=1, i=0;
	
	while(e != ant){
		factorial = factorial == 0 ? 1 : factorial * i;
		potencia = (i++) == 0 ? 1 : potencia * x;
		ant = e;
		e += potencia / factorial;
	}

	return e;
}

float exponencialAtras(float x){
	float e=0, factorial=0, potencia=0, n=33;
	
	while(n >= 0){
		factorial = fact(n);
		potencia = pow(x, (n--));
		e += potencia / factorial;
	}
	
	return e;
}

float fact(float n){
	int i;
	float f=1; 
	for(i=1; i <= n; i++){
		f *= i;
	}
	return f;
}


// Funciones double
double exponencialAdelanteD(double x){
	double e=0, factorial=0, potencia=0, ant=1, i=0;
	
	while(e != ant){
		factorial = (factorial == 0 ? 1 : factorial * i);
		potencia = ((i++) == 0 ? 1 : potencia * x);
		ant = e;
		e += potencia / factorial;
	}
	
	return e;
}

double exponencialAtrasD(double x){
	double e=0, factorial=0, potencia=0, n=33;
	
	while(n >= 0){
		factorial = fact(n);
		potencia = pow(x, (n--));
		e += potencia / factorial;
	}
	
	return e;
}

double factD(double n){
	int i;
	double f=1;
	for(i=1; i <= n; i++){
		f *= i;
	}
	return f;
}
