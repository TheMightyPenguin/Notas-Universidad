from interpolate import v2
import interpolate
import math

d = 9 # terminal de cedula
f = lambda x: 1 / (1 + (5*x / (d + 1.0))**2)
v = lambda x: v2(x, f(x))

def rango(minimum, maximum, nodos):
	c = []
	x, offset = minimum, (maximum-minimum)/(float(nodos))
	for i in range(nodos+1):
		c.append(v(x))
		x += offset
	return c

if __name__ == '__main__':
	casos = []

	# l = interpolate.pprint_points( rango(-(d+1), d+1, 4) )
	# print len(l), '\n'
	# l = interpolate.pprint_points( rango(-(d+1), d+1, 7) )
	# print len(l), '\n'
	# l = interpolate.pprint_points( rango(-(d+1), d+1, 10) )
	# print len(l), '\n'

	for r in [4, 7, 10]:
		rg = rango(-(d+1), d+1, r)
		print 'Algoritmo para  n =', r
		print 'Coeficientes:', map(interpolate.pf ,interpolate.dd_newton(rg))
		print 'Polinomio:',
		interpolate.print_algorithm_dd(interpolate.dd_newton(rg), [p['x'] for p in rg])
		print
		print '------------------------------------------'
		print
