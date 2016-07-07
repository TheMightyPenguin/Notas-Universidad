do{
	/* Pensar */
	wait(sirviente);
	wait(palillos[i]);
	wait(palillos[(i + 1) % 5]);
	/* Comer */
	signal(palillos[i]);
	signal(palillos[(i + 1) % 5]);
	signal(sirviente);
}while(true);
