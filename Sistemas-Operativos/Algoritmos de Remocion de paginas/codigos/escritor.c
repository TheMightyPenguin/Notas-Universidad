do{
	wait(turn);
	wait(rw_mutex);
	  . . .
	/* Se realiza la escritura */
	  . . .
	signal(turn);
	signal(rw_mutex);
}while(true);
