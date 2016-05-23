do{
	wait(full);
	wait(mutex);
	/* Obtiene elemento del buffer */
	signal(mutex);
	signal(empty);
	/* Consume elemento */
}while(true);
