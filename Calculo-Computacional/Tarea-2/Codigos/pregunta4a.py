import metodos
from math import cos, sin, pi, exp, tan, isnan

def f(x):
	return 2 * (x**3) - (34.0/7) * x*x + (209.0/49) * x - (173.0/343)
	#~ 2*x**3 - (34.0/7.0)*x**2 + (209.0/49.0)*x - (173.0/343.0)

if __name__ == '__main__':
	secante = metodos.secante(0.5, 1, f)
	print 'Converge a %.7f' % (secante)
