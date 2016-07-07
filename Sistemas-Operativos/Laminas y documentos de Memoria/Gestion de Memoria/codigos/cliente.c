do{
	wait(mutex);
	if(sillas_libres == 0){
		signal(mutex);
		break;
	}
	sillas_libres--;
	signal(mutex);
	wait(sillon);
	wait(mutex);
	sillas_libres++;
	signal(mutex);
	signal(barbero);
	/* cortarse el pelo */
	wait(finalizo_corte);
	signal(sillon);
}while(true);
