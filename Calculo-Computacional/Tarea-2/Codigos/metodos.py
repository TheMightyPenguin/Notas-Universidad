TOL = 10**-8
MAX_ITERATIONS = 100

def newton(p0, function, derivative):
	try:
		for i in xrange(1, MAX_ITERATIONS + 1):
			f_x = function(p0)
			d_x = derivative(p0)
			p = float(p0) - (f_x / d_x)
			if abs(p - p0) < TOL:
				print 'tardo %d iteraciones' % (i)
				return p
			p0 = p
	except:
		return float('nan')
	return float('nan')
	
def secante(x0, x1, f):
	i = 1
	try:
		while i < MAX_ITERATIONS:
			p = x0 - f(x0) / ((f(x1) - f(x0)) / (x1 - x0))
			x0 = x1
			x1 = p
			if abs(x0 - x1) < TOL:
				print 'tardo %d iteraciones' % (i)
				return p
			i += 1
	except:
		return float('nan')
	return float('nan')

# x0 es negativo, x1 es positivo
def regula_falsi(x0, x1, f):
	i = 1
	try:
		while i < MAX_ITERATIONS:
			p = x0 - f(x0) / ((f(x1) - f(x0)) / (x1 - x0))
			f_p = f(p)
			if abs(f_p) < TOL:
				print 'tardo %d iteraciones' % (i)
				return p
			if f_p > 0:
				x1 = p
			else:
				x0 = p
			i += 1
	except:
		return float('nan')
	return float('nan')
	
def regula_falsi_mod(x0, x1, f):
	i = 1
	try:
		while i < MAX_ITERATIONS:
			p = x0 - f(x0) / ((2*f(x0) - f(x1)) / (x0 - x1))
			#~ p = (f(x1) * x0 - 0.5 * f(x0) * x1) / (f(x1) - 0.5 * f(x0))
			f_p = f(p)
			print p, f_p
			if abs(f_p) < TOL:
				print 'tardo %d iteraciones' % (i)
				return p
			if f_p > 0:
				x1 = p
			else:
				x0 = p
			i += 1
	except:
		return float('nan')
	return float('nan')
	
def tabla_newton(p0, function, derivative):
	print "i & x_{i} & f(x_{i}) & f'(x_{i})"
	try:
		for i in xrange(1, MAX_ITERATIONS + 1):
			f_x = function(p0)
			d_x = derivative(p0)
			p = float(p0) - (f_x / d_x)
			if abs(p - p0) < TOL:
				print 'tardo %d iteraciones' % (i)
				return p
			p0 = p
			print '%d & %.7f & %.7f & %.7f' % (i, p0, f_x, d_x)
			#~ print p
	except:
		return float('nan')
	return float('nan')

