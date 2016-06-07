#include <stdio.h>

int global = 0;

int main() {
	int pid;
	int i;
	int estado;
	
	
	
	printf("Hola desde aqui\n");
	pid = fork();
	printf("Hola desde aqui 2\n");
	
	int pid2 = fork();
	printf("Hola desde aqui 3\n");
	
	switch(pid)
	{
		case -1: // Si pid es -1 quiere decir que ha habido un error
			perror("No se ha podido crear el proceso hijo\n");
			break;
		case 0: // Cuando pid es cero quiere decir que es el proceso hijo
			//for(i=0; i < 10; i++)
				printf("%d Soy el hijo\n", global++);
			break;
		default: // Cuando es distinto de cero es el padre
			//for(i=0; i < 10; i++)
				printf("%d Soy el padre\n", global++);
			// La función wait detiene el proceso padre y se queda esperando hasta
			// que termine el hijo
			wait(estado);
			printf("Mi proceso hijo ya ha terminado.\n");
			break;
	}
 
}
