from metodos import newton
from math import cos, sin, pi, exp, isnan
	
def f(x):
	return x**(x + 1) - (x + 1)**x

def d(x):
	return 

if __name__ == '__main__':
	estimados = [0.80, 0.85, 0.90, 0.95, 1.00, 1.05, 1.10, 1.15, 1.20]
	for p0 in estimados:
		print '-------------------------------------'
		value, iteraciones = metodos.newton(p0, f, d)
		try:
			print "Valor Final: %.7f, en %d iteraciones" % (value, iteraciones)
		except:
			print "Valor Final: %.7f" % (value)
