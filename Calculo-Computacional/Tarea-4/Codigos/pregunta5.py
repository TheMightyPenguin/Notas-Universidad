import methods
from math import sin, sqrt, exp, pi

n = 9.0 # Ultimo digito de la cedula
f = lambda x: exp(3.0*x) * sin((n + 1.0) * x)
N = 200 # Iteraciones maximas

def romberg2(a, b, f):
	h = b - a
	R = [[(h / 2.0) * (f(a) + f(b)) for x in xrange(1)] for e in xrange(2)]
	print R[0][0]
	tol = 1E-11
	i = 1
	while i <= N:
		R[0].append(0)
		R[1].append(0)
		s = sum(f(a+(k-0.5)*h) for k in xrange(1, int(2**(i-1)) + 1))
		R[1][0] = 0.5 * (R[0][0] + h * s)
		for j in xrange(2, i+2):
			R[1][j-1] = R[1][j-2] + (R[1][j-2] - R[0][j-2]) / (4.0**(j-1) - 1.0)
		h /= 2.0
		for j in xrange(i+1):
			print '{:.11f},'.format(R[1][j]),
			R[0][j] = R[1][j]
		print
		if abs(R[0][i-2] - R[1][i-1]) < tol:
			break
		i+=1


if __name__ == '__main__':
	romberg2(0.0, pi/4.0, f)
