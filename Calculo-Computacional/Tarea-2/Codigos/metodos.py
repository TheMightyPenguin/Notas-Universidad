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

