def pprint_matrix(m):
	for sub in m:
		for e in sub:
			print '{:.8f}'.format(e),
		print
