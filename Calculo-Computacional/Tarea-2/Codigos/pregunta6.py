
import metodos
from math import cos, sin, pi, exp, tan, isnan

def f(x):
	return (exp(x / 3.0) * (x - 3.0)) / (3.0 * x*x)
	
def d(x):
	return (exp(x/3.0) * (x*x - 6*x + 18)) / (9.0 * (x**3.0))

if __name__ == '__main__':
	p0 = 2
	value = metodos.newton(p0, f, d)
	print p0, ", Final Value: %.7f" % (value)


