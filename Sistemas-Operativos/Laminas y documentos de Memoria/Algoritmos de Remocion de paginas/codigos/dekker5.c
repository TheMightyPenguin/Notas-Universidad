int proceso_preferido = 1;
bool p1_quiere_entrar = false;
bool p2_quiere_entrar = false;
iniciar_procesos(); // inicializa y corre ambos procesos

proceso p1:
void main(){
	while(!no_terminado){
		p1_quiere_entrar = true;
		while(p2_quiere_entrar){
			if(proceso_preferido == 2){
				p1_quiere_entrar = false;
				while(proceso_preferido == 2); // busy wait
				p1_quiere_entrar = true;
			}
		}
		// seccion critica
		proceso_preferido = 2;
		p1_quiere_entrar = false; // seccion de entrada
		// codigo restante
	}
} // fin del proceso p1

proceso p2:
void main(){
	while(!no_terminado){
		p2_quiere_entrar = true;
		while(p1_quiere_entrar){
			if(proceso_preferido == 1){
				p2_quiere_entrar = false;
				while(proceso_preferido == 1); // busy wait
				p2_quiere_entrar = true;
			}
		}
		// seccion critica
		proceso_preferido = 1;
		p2_quiere_entrar = false;
		// codigo restante
	}
} // fin del proceso p2
