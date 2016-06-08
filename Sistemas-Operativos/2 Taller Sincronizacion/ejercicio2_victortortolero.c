/*
    Taller 2 Sistemas Operativos
    Victor Tortolero, CI: 24.569.609
*/

#include <semaphore.h>
#include <pthread.h>
#include <stdio.h>
#include <stdlib.h>

// constantes
#define JUGADORES 5

// procesos
void *jugador(void*);
void *arquero(void*);
void *arbitro(void*);

// variables globales
sem_t puede_patear; 		// para indicar si el jugador puede patear
sem_t puede_atajar; 		// para indicar que el arquero puede atajar
sem_t en_posicion;  		// para indicar que el arquero esta en posicion
sem_t listo;        		// indica que el jugador esta listo para patear
sem_t intento_arquero; 		// para indicar cuando el arquero termina de atajar la pelota
sem_t turno[JUGADORES];     // para indicar de que jugador es el turno actual


int main(){
	pthread_t arq, arb, tid[JUGADORES];
	int i, num[JUGADORES];

	sem_init(&puede_patear, 0, 0);
	sem_init(&puede_atajar, 0, 0);
	sem_init(&en_posicion, 0, 0);
	sem_init(&listo, 0, 0);
	sem_init(&intento_arquero, 0, 0);

	sem_init(&turno[0], 0, 1);
	for(i = 1; i < JUGADORES; i++)
		sem_init(&turno[i], 0, 0);

	if(pthread_create(&arb, NULL, arbitro, NULL) || pthread_create(&arq, NULL, arquero, NULL)){
		perror("Error al crear los hilos\n");
		exit(-1);
	}

	for(i = 0; i < JUGADORES; i++){
		num[i] = i;
		if(pthread_create(&tid[i], NULL, jugador, &num[i])){
			perror("Error al crear los hilos\n");
			exit(-1);
		}
	}

	for(i = 0; i < JUGADORES; i++){
		if(pthread_join(tid[i], NULL)){
			perror("Error al unir el los hilos\n");
			exit(-1);
		}
	}

	if(pthread_join(arb, NULL) || pthread_join(arq, NULL)){
		perror("Error al unir el los hilos\n");
		exit(-1);
	}



	return 0;
}

void *jugador(void *id){
	int numero_jugador = *((int*) id);
	while(1){
		sem_wait(&turno[numero_jugador]); // protocolo de entrada

            printf("Jugador %d: Estoy listo!\n", numero_jugador + 1);
			sem_post(&listo);
			sem_wait(&puede_patear);
			printf("Jugador %d: Pateo la pelota\n", numero_jugador + 1);
			sem_post(&puede_atajar);
			sem_wait(&intento_arquero);

		sem_post(&turno[(numero_jugador + 1) % JUGADORES]); // protocolo de liberacion
	}
}

void *arquero(void *id){
	while(1){
		sem_post(&en_posicion);
        printf("Arquero: Estoy listo!\n");
		sem_wait(&puede_atajar);
		printf("Arquero: Intento atajar la pelota\n");
		printf("%s\n", ((rand() % 2) > 0.5 ? "Gooooooooool!!!!" : "El arquero atajo la pelota :("));
		printf("-- -- -- -- -- --\n");
		sem_post(&intento_arquero);
	}
}

void *arbitro(void *id){
	while(1){
		sem_wait(&en_posicion);
		sem_wait(&listo);
		printf("Arbitro: pueedes proceder a patear la pelota\n");
		sem_post(&puede_patear);
	}
}
