do{
	/*Produce elemento */
	wait(empty);
	wait(mutex);
	/* Inserta elemento en el buffer*/
	signal(mutex);
	signal(full);
}while(true);
