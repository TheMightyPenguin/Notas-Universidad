bool p1_quiere_entrar = false;
bool p2_quiere_entrar = false;
iniciar_procesos(); // inicializa y corre ambos procesos

proceso p1:
void main(){
	while(!no_terminado){
		p1_quiere_entrar = true; // seccion de entrada de la exclusion mutua
		while(p2_quiere_entrar){ // seccion de entrada
			p1_quiere_entrar = false; // seccion de entrada
			// esperar por una cantidad de tiempo pequeña aleatoria
			p1_quiere_entrar = true;
		}
		// seccion critica
		p1_quiere_entrar = false; // seccion de entrada
		// codigo restante
	}
} // fin del proceso p1

proceso p2:
void main(){
	while(!no_terminado){
		p2_quiere_entrar = true; // seccion de entrada de la exclusion mutua
		while(p1_quiere_entrar){ // seccion de entrada
			p2_quiere_entrar = false; // seccion de entrada
			// esperar por una cantidad de tiempo pequeña aleatoria
			p2_quiere_entrar = true;
		}
		// seccion critica
		p2_quiere_entrar = false; // seccion de entrada
		// codigo restante
	}
} // fin del proceso p2
