#include <stdio.h>
#include <math.h>

float exponencialAdelante(float);
float exponencialAtras(float);
float fact(float);

int main(){
	float x=10;
	exponencialAdelante(x);
	printf("--------------\n");
	exponencialAtras(x);
	
}

float exponencialAdelante(float x){
	float e=0;
	float factorial=0, potencia=0, ant=1;
	float i=0;
	
	while(e != ant){
		factorial = factorial == 0 ? 1 : factorial * i;
		potencia = i == 0 ? 1 : potencia * x;
		//~ printf("Potencia %f = %f\n", i, potencia);
		//~ printf("Factorial %f = %f\n", i, factorial);
		//~ printf("e = %f.20\n", e);
		//~ printf("-------------\n");
		ant = e;
		e += potencia / factorial;
		i++;
	}
	
	//~ printf("Potencia %f = %f\n", i-1, potencia);
	//~ printf("Factorial %f = %f\n", i-1, factorial);
	
	printf("---------\n");
	printf("e = %.20f\n", e);
	
	return factorial;
}

float exponencialAtras(float x){
	float e=0;
	float factorial=0, potencia=0;
	float n=32;
	
	while(n >= 0){
		factorial = fact(n);
		potencia = pow(x, n);
		//~ printf("Potencia %f = %.20f\n", n, potencia);
		//~ printf("Factorial %f = %.20f\n", n, factorial);
		//~ printf("e = %f.20\n", e);
		//~ printf("-------------\n");
		e += potencia / factorial;
		n--;
	}
	
	//~ printf("Potencia %f = %f\n", n, potencia);
	//~ printf("Factorial %f = %f\n", n, factorial);
	
	printf("---------\n");
	printf("e = %.20f\n", e);
	
	return factorial;
}

float fact(float n){
	int i;
	float f=1;
	for(i=1; i <= n; i++){
		f *= i;
	}
	return f;
}
