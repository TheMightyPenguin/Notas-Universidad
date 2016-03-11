#include <stdio.h>
#include <math.h>

float serieArmonicaSingle();
double serieArmonicaDouble();

int main(){
	serieArmonicaSingle();
	printf("--------------\n");
	//~ serieArmonicaDouble();
}

float serieArmonicaSingle(){
	float serie=0, ant=1;
	float k=1;
	
	while(serie - ant != 0){
		ant = serie;
		serie += 1 / (k++);
		//~ printf("serie: %.10f\n", serie);
	}
	
	printf("%f terminos.\n", k);
	printf("Serie = %.10f\n", serie);
	
	return serie;
}

double serieArmonicaDouble(){
	double serie=0, ant=1;
	double k=1;
	
	while(serie - ant != 0){
		ant = serie;
		serie += 1 / (k++);
		//~ printf("serie: %.10f\n", serie);
	}
	
	printf("%lf terminos.\n", k);
	printf("Serie = %.10lf\n", serie);
	
	return serie;
}
