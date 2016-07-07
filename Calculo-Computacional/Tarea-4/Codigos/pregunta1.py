from methods import v2
import methods
from math import sin

f = lambda x: sin(x*x + ((n + 1) / (3*n + 1)) * x)

if __name__ == '__main__':
	print f(0)
