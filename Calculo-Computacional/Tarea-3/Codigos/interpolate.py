import math
from collections import namedtuple

vectorize = lambda **kw: namedtuple('vectorize', kw)(**kw)
v2 = lambda x, y: { 'x': x, 'y': y }

class pf(float):
	def __repr__(self):
		return '{:+.8f}'.format(self)

def pprint_points(points):
	for point in points:
		print '%12.7f | %10.7f' % (point['x'], point['y'])
	return points

def pprint_table(table):
	for rows in table:
		for column in rows:
			print '%16.10f' % column,
		print

def dd_newton(aprox, verbose = False):
	n = len(aprox)
	t = [[0.0 for x in range(n+1)] for x in range(n)]
	for x in range(n):
		t[x][0] = float(aprox[x]['x'])
		t[x][1] = float(aprox[x]['y'])
	for i in range(1, n):
		for j in range(n-i):
			y, x = i+1, j
			t[x][y] = (t[x+1][y-1] - t[x][y-1]) / (t[x+i][0] - t[x][0])
	if verbose:
		print
		pprint_table(t)
		print
	return [t[0][x] for x in range(1, n+1)]

def print_algorithm_dd(coeficientes, x):
	i = 0
	for c in coeficientes:
		print '{:+.8f}'.format(c),
		for k in range(i):
			print '* (x', '{:+.8f}'.format(-x[k]), ')',
		i += 1

class Spline():
	def __init__(self, puntos, var='x', name='S'):
		self.x = [p['x'] for p in puntos]
		self.y = [p['y'] for p in puntos]
		self.n = len(puntos)
		self.A = self.y
		self.var = var
		self.name = name
		self.calcular()

	def debug(self):
		print
		print 'h:', map(pf, self.h)
		print 'c:', map(pf, self.c)
		print 'D:', map(pf, self.D)
		print 'B:', map(pf, self.B)
		print 'A:', map(pf, self.A)

	def show_spline(self):
		for i in range(self.n-1):
			# print map(pf, [self.A[i], self.B[i], self.c[i], self.D[i]])
			print '{}_{}({}) '.format(self.name, i, self.var),
			# print '\\text{}Para x entre{} {:.12f} \\text{} y {} {:.8f}'.format('{', '}', self.x[i], '{', '}', self.x[i+1]), '\\\\'
			print 'Para x entre {:.12f} y {:.8f}'.format(self.x[i], self.x[i+1])
			print '{}_{}({}) = {:.8f}{:+.8f}({}{:+.8f}){:+.8f}({}{:+.8f})^2{:+.8f}({}{:+.8f})^3'.format(self.name, i, self.var, self.A[i], self.B[i], self.var, -self.x[i], self.c[i], self.var, -self.x[i], self.D[i], self.var, -self.x[i])

	def calcular(self):
		self.h = [self.x[i+1] - self.x[i] for i in range(0,self.n-1)]
		alpha = [((3/self.h[i]) * (self.A[i+1] - self.A[i])) - ((3/self.h[i-1]) * (self.A[i] - self.A[i-1])) for i in range(1,self.n-1)]
		l, u, z = [1.0], [0.0], [0.0]
		for i in range(1, self.n-1):
			l.append( (2 * (self.x[i+1] - self.x[i-1])) - (self.h[i-1] * u[i-1]) )
			u.append(self.h[i] / l[i])
			z.append( (alpha[i-1] - (self.h[i-1] * z[i-1])) / l[i] )
		l.append(1)
		z.append(0)
		self.c = [0 for i in range(self.n)]
		self.B, self.D = [], []
		for i in range(self.n-2, -1, -1):
			self.c[i] = z[i] - u[i] * self.c[i+1]
			self.B = [ ((self.A[i+1] - self.A[i]) / self.h[i]) - (self.h[i] * (self.c[i+1] + 2*self.c[i]) / 3)] + self.B
			self.D = [ ((self.c[i+1] - self.c[i]) / (3 * self.h[i])) ] + self.D


if __name__ == '__main__':
	aproximaciones = [v2(-5.0, 3.0), v2(-4.0, 5.0), v2(-2.0, 1.0), v2(1.0, -2.0), v2(5.0, 1.0)]
	assert dd_newton(aproximaciones) == [3.0, 2.0, -1.3333333333333333, 0.25555555555555554,  -0.024999999999999998], "dd: Should be equal"

	print 'All tests passed succesfully'
