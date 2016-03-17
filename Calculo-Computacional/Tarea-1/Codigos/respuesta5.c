#include <stdio.h>
#include <math.h>

void serieArmonicaSingle();

int main(){
	serieArmonicaSingle();
}

void serieArmonicaSingle(){
	float serie=0, ant=1;
	float k=1;
	
	do{
		ant = serie;
		serie += 1 / (k++);
		//~ printf("serie: %.10f\n", serie);
	}while(serie - ant != 0);
	
	printf("%f terminos.\n", k);
	printf("Serie = %.24f\n", serie);
}
