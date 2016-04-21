import metodos
from math import cos, sin, pi, exp, tan, isnan, e

def f(x):
	return (exp(x / 3.0) * (x - 3.0)) / (3.0 * x*x)
	
def d(x):
	return (exp(x/3.0) * (x*x - 6*x + 18)) / (9.0 * (x**3.0))

def c(t):
	return (e/3.0) * t * exp(-t/3.0)
	
def c2(t):
	return (4.0/3.0) * t * exp(1 - t/3.0) - 1

def d_c2(t):
	return (4.0/3.0) * exp(1 - t/3.0) * (1 - t/3.0)

if __name__ == '__main__':
	p0 = 6
	value, iteraciones = metodos.newton(p0, c2, d_c2)
	print "Valor final: %.7f, en %d iteraciones" % (value, iteraciones)
