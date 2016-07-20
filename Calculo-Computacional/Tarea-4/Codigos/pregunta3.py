import methods
from math import sin, sqrt

n = 9 # Ultimo digito de la cedula
f = lambda x: sin(x*x + ((n + 1.0) / (3.0*n + 1.0)) * x)
d = lambda x, h: (f(x + h) - f(x - h)) / (2.0*h)

def richardson_extrapolation(x, f):
	h = 1.0
	M = 4
	M += 1
	D = [[0.0 for k in xrange(M)] for n in xrange(M)]
	for n in xrange(M):
		D[n][0] = d(x, h/(2.0**n))
	for k in xrange(1, M):
		for n in xrange(k, M):
			D[n][k] = D[n][k-1] + (D[n][k-1] - D[n-1][k-1]) / (4.0**k - 1.0)
	methods.pprint_matrix(D)

if __name__ == '__main__':
	richardson_extrapolation(0.0, f)
