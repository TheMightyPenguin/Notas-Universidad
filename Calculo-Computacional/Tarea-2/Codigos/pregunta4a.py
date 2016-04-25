import metodos
from math import cos, sin, pi, exp, tan, isnan, log

def f(x):
	return 2 * (x**3) - (34.0/7) * x*x + (209.0/49) * x - (173.0/343)

def f2(x):
	return x*x - 4*x + 4 - log(x)

if __name__ == '__main__':
	p0, p1 = [2, 4]
	#~ secante = metodos.secante(0.5, 1, f)
	#~ secante = metodos.secante(2, 4, f)
	secante = metodos.secante_tabla(p0, p1, f2)
	secante = metodos.secante(p0, p1, f2)
	print 'Converge a %.7f' % (secante)
