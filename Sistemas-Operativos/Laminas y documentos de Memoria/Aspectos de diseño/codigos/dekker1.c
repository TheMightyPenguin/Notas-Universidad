int numero_de_proceso = 1;
iniciar_procesos(); // inicializa y corre ambos procesos

proceso p1:
void main(){
	while(!no_terminado){
		while(numero_de_proceso == 2); // seccion de entrada de la exclusion mutua
		// seccion critica
		numero_de_proceso = 2; // seccion de salida de la exclusion mutua
		// codigo restante
	}
} // fin del proceso p1

proceso p2:
void main(){
	while(!no_terminado){
		while(numero_de_proceso == 1); // seccion de entrada de la exclusion mutua
		// seccion critica
		numero_de_proceso = 1; // seccion de salida de la exclusion mutua
		// codigo restante
	}
} // fin del proceso p2
