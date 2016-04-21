import metodos
from math import cos, sin, pi, exp, isnan
	
def f(x):
	return 1.0 - (1.5 * exp(-1*(x*x - 2*x + 0.9775))) - exp(-1*(x*x - 8*x + 15.96))

def d(x):
	return exp(2.0*x - x*x) * ((exp(6*x) * ((2.34256 * x - 9.37023) * (10**-7))) + 1.12875*(x - 1))

if __name__ == '__main__':
	estimados = [0.80, 0.85, 0.90, 0.95, 1.00, 1.05, 1.10, 1.15, 1.20]
	for p0 in estimados:
		print '-------------------------------------'
		value, iteraciones = metodos.newton(p0, f, d)
		try:
			print "Valor Final: %.7f, en %d iteraciones" % (value, iteraciones)
		except:
			print "Valor Final: %.7f" % (value)
