bool p1_quiere_entrar = false;
bool p2_quiere_entrar = false;
iniciar_procesos(); // inicializa y corre ambos procesos

proceso p1:
void main(){
	while(!no_terminado){
		p1_quiere_entrar = true; // seccion de entrada de la exclusion mutua
		while(p2_quiere_entrar); // seccion de entrada
		// seccion critica
		p1_quiere_entrar = false; // seccion de salida de la exclusion mutua
		// codigo restante
	}
} // fin del proceso p1

proceso p2:
void main(){
	while(!no_terminado){
		p2_quiere_entrar = true; // seccion de entrada de la exclusion mutua
		while(p1_quiere_entrar); // seccion de entrada
		// seccion critica
		p2_quiere_entrar = false; // seccion de salida de la exclusion mutua
		// codigo restante
	}
} // fin del proceso p2

