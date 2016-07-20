def build_linear_system(size, cedula):
    a = [[set_element(i+1, j+1) for j in range(size)] for i in range(size)]
    b_element = sum(int(c) for c in str(cedula))
    b = [b_element for i in range(size)]
    return a, b

def set_element(i, j):
    if i == j:
        return 2.0 * i
    elif abs(j - i) == 2:
        return 0.5 * i
    elif abs(j - i) == 4:
        return 0.25 * i
    else:
        return 0.0

def pprint_matrix(m):
	for v in m:
		for e in v:
			print '{:.2f}'.format(e),
		print

if __name__ == '__main__':
    a, b = build_linear_system(5, 24569609)
    pprint_matrix(a)
    print b
