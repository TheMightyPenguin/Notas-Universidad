bool dentro_de_p1 = false;
bool dentro_de_p2 = false;
iniciar_procesos(); // inicializa y corre ambos procesos

proceso p1:
void main(){
	while(!no_terminado){
		while(dentro_de_p2); // seccion de entrada de la exclusion mutua
		dentro_de_p1 = true; // seccion de entrada
		// seccion critica
		dentro_de_p2 = false; // seccion de salida de la exclusion mutua
		// codigo restante
	}
} // fin del proceso p1

proceso p2:
void main(){
	while(!no_terminado){
		while(dentro_de_p1); // seccion de entrada de la exclusion mutua
		dentro_de_p2 = true; // seccion de entrada
		// seccion critica
		dentro_de_p1 = false; // seccion de salida de la exclusion mutua
		// codigo restante
	}
} // fin del proceso p2

