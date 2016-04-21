import metodos
from math import cos, sin, pi, exp

def f(x):
	return 0.25 * (x**2) - x * sin(x) + 0.5 * -cos(2*x) + 0.5

def d(x):
	return  x * (0.5 - cos(x)) - sin(x) + sin(2*x)

if __name__ == '__main__':
	estimados = [pi/2, 5*pi, 10*pi]
	for p0 in estimados:
		print '-------------------------------------'
		value, iteraciones = metodos.newton(p0, f, d)
		print "Valor Final: %.7f, en %d iteraciones" % (value, iteraciones)
