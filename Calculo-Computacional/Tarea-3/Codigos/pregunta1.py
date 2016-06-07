from metodos import Vector2 as v2
import interpolate
import math

d = 9 # terminal de cedula
f = lambda x: 1 / (1 + (5*x / (d + 1.0))**2)

if __name__ == '__main__':
	aproximaciones = [v2(-5.0, 0.0384615), v2(-3.0, 0.1), v2(-1.0, 0.5), v2(1.0, 0.5),
				      v2(3.0, 0.1), v2(5.0, 0.0384615)]

	print interpolate.dd_newton(aproximaciones)
