import matrix
from math import sin, sqrt, exp, pi

def pprint_matrix(m):
	for v in m:
		for e in v:
			print '{:+.8f}'.format(e),
		print

def eliminacion_gaussiana_simple(a, b):
	f = open('salida.txt', 'w')
	n = len(a)
	for k in range(n-1):
		for i in range(k+1, n):
			mult = a[i][k] / a[k][k]
			for j in range(k+1, n):
				a[i][j] = a[i][j] - mult * a[k][j]
			b[i] = b[i] - mult * b[k]
	x = {n-1:b[n-1]/a[n-1][n-1]}
	print 'x[{}] = {}'.format(n, b[n-1]/a[n-1][n-1])
	for i in range(n-2, -1, -1):
		s = 0
		for j in range(i+1, n):
			s += a[i][j] * x[j]
		x[i] =  (b[i] - s) / a[i][i]
		formatted_output = 'x[{}] = {:.8f}'.format(i+1, x[i])
		print formatted_output

	for i in range(n):
		formatted_output = 'x[{}] = {:.8f}'.format(i+1, x[i])
		f.write(formatted_output + '\n')
	f.close()


if __name__ == '__main__':
	a, b = matrix.build_linear_system(80, 24569609)
	eliminacion_gaussiana_simple(a, b)
