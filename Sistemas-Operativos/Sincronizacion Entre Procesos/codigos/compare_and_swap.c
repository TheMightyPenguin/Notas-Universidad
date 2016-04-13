int compare_and_swap(int *value, int expected, int new_value){
	int temp = *value;
	
	if(*value == expected)
		*value = new_value;
	
	return temp;
}
