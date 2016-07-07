boolean test_and_set(boolean *target){
	boolean rv = *target;
	*target = true;
	return rv;
}
