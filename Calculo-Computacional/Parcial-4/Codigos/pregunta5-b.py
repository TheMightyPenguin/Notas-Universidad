import matrix
from math import sin, sqrt, exp, pi

def pprint_matrix(m):
	for v in m:
		for e in v:
			print '{:+.8f}'.format(e),
		print

def eliminacion_gaussiana_simple(a, b):
	n = len(a)
	for k in range(n-1):
		for i in range(k+1, n):
			mult = a[i][k] / a[k][k]
			# print mult, i, k
			print '----------------------'
			for j in range(k+1, n):
				print '---'
				print 'a[{}][{}] = {:.8f} - {:.8f} * {:.8f}'.format(i, j, a[i][j], mult, a[k][j])
				a[i][j] = a[i][j] - mult * a[k][j]
				print 'a[{}][{}] = {:.8f}'.format(i, j, a[i][j])
			b[i] = b[i] - mult * b[k]
	pprint_matrix(a)
	print b
	print '----------------------'
	x = {n-1:b[n-1]/a[n-1][n-1]}
	print 'x[{}] = {}'.format(n-1, b[n-1]/a[n-1][n-1])
	for i in range(n-2, -1, -1):
		s = 0
		for j in range(i+1, n):
			s += a[i][j] * x[j]
		print 'x[{}] = {}'.format(i, (b[i] - s) / a[i][i])
		x[i] =  (b[i] - s) / a[i][i]
	print x


if __name__ == '__main__':
	a = [
		[1.19, 2.11, -100.0, 1.0],
		[14.2, -0.122, 12.2, -1.0],
		[0.0, 100.0, -99.9, 1.0],
		[15.3, 0.110, -13.1, -1.0]
	]

	# a = [
	# [456.45, -22.45, 1.2, 3.4],
	# [-5, 3.8, 9, 7.2],
	# [-100.4, 0, 23.4, 2.2],
	# [54.2, 4, 3, 2]
	# ]

	b = [
		1.0/(1.0+9.0),
		1.0/(1.0+0.0),
		1.0/(1.0+6.0),
		1.0/(1.0+9.0)
	]
	# b = [10.5, 2, 132.33, 67.56]

	eliminacion_gaussiana_simple(a, b)
	# a, b = matrix.build_linear_system(20, 24569609)
	# eliminacion_gaussiana_simple(a, b)
