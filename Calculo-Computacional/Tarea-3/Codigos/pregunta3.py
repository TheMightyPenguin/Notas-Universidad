import metodos

from math import cos, sin, pi, exp, tan, isnan

def f(x):
	return x - tan(x)

def d(x):
	return -(tan(x) * tan(x))

def no_encontrada(val, sol):
	for e in sol:
		if abs(val - e) < metodos.TOL:
			return False
	return True

def obtener_valores():
	soluciones, i = [], pi/2 - 0.05
	while len(soluciones) != 10:
		newton, iteraciones = metodos.newton(i, f, d)
		if not isnan(newton) and no_encontrada(newton, soluciones) and newton > 0.1:
			print "Solucion (%d) en x = %.2f, valor %.7f, en %d iteraciones" % (len(soluciones) + 1, i, newton, i+1)
			print '-------------------------------------'
			soluciones.append(newton)
		i += pi

if __name__ == '__main__':
	obtener_valores()
