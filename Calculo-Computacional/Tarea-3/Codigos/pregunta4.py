from interpolate import v2, Spline
from pregunta1 import f, d
import interpolate
import math

x = [1.123, 0.8,   0.4,   0.28,  0.4,  0.7,   0.817, 0.6,  0.28,  0.075, 0.2,   0.4,   0.8,   1.06, 1,    0.53, 0.8,  1.2,   1.6,   1.84]
y = [0.163, 0.075, 0.238, 0.497, 0.87, 1.047, 0.95,  0.63, 0.497, 0.7,   0.998, 1.165, 1.294, 1.2,  0.77, 0.23, 0.36, 0.746, 1.132, 1.289]

# esta funcion retorna una lista de pares ordenados que corresponden a los
# pares de la forma (t, x(t)), variando t entre [0, 1]
def armar_f_t(p):
	c = []
	a, step = 0, 1 / float(len(p) - 1)
	for i in p:
		c.append(v2(a, i))
		a += step
	return c

if __name__ == '__main__':
	x_t = armar_f_t(x)
	y_t = armar_f_t(y)
	
	spline = Spline(x_t, 't')
	spline.show_spline()
	print
	spline = Spline(y_t, 't', 'P')
	spline.show_spline()
	print
