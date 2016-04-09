from math import cos, sin, pi

class EquationSolver:
	def __init__(self, function, derivative, tol, max_iterations=100):
		self.function = function
		self.derivative = derivative
		self.tolerance = tol
		self.max_iterations = max_iterations
		
	def newton(self, p0):
		i = 1
		print self.function(p0)
		print self.derivative(p0)
		while i < self.max_iterations:
			p = float(p0) - self.function(p0) / self.derivative(p0)
			if abs(p - p0) <= self.tolerance:
				print "Final value: ", p
				break
			i += 1
			p0 = p

def f(n):
	return float(n) * n

def d(n):
	return float(2) * n

def f1(x):
	return cos((float(x)) - x

def d1(x):
	return -sin(float(x)) - 1

if __name__ == '__main__':
	p0 = pi / float(4)
	solver = EquationSolver(f, d, 0.01)
	solver = EquationSolver(f, d, 0.01)
	solver.newton(0)
