do{
	wait(turn);
	signal(turn);
	wait(mutex);
	read_count++;
	if(read_count == 1) wait(rw_mutex);
	signal(mutex);
	  . . .
	/* Se realiza la lectura */
	  . . .
	wait(mutex);
	read_count--;
	if(read_count == 0) signal(rw_mutex);
	signal(mutex);
}while(true);
