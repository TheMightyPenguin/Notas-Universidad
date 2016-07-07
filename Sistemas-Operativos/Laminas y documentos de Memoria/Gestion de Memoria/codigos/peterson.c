do{
	flag[i] = true;
	turn = j;
	while(flag[j] && turn == j);
	// seccion critica
	flag[i] = false;
	// codigo restante
}while(true);
