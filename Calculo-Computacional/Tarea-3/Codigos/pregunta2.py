from interpolate import v2, Spline
from pregunta1 import f, rango, v, d
import interpolate
import math

if __name__ == '__main__':
	for r in [4, 7, 10]:
		print 'Algoritmo para  n =', r
		interpolate.pprint_points(rango(-(d+1), d+1, r))
		spline = Spline(rango(-(d+1), d+1, r))
		spline.show_spline()
		print '---------------'
		print
