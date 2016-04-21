import math
TOL = 10**-8
MAX_ITERATIONS = 100

def newton(p0, function, derivative):
	try:
		for i in xrange(0, MAX_ITERATIONS):
			f_x = function(p0)
			d_x = derivative(p0)
			p = float(p0) - (f_x / d_x)
			if abs(p - p0) < TOL:
				#~ print 'tardo %d iteraciones' % (i+1)
				return p, i+1
			p0 = p
	except:
		return float('nan'), None
	return float('nan'), None
	
def secante(x0, x1, f):
	try:
		for i in xrange(0, MAX_ITERATIONS):
			p = x0 - f(x0) / ((f(x1) - f(x0)) / (x1 - x0))
			x0 = x1
			x1 = p
			if abs(x0 - x1) < TOL:
				print 'tardo %d iteraciones' % (i+1)
				return p
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
			#~ p = x0 - f(x0) / ((2*f(x0) - f(x1)) / (x0 - x1))
			p = (f(x1) * x0 - 0.5 * f(x0) * x1) / (f(x1) - 0.5 * f(x0))
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
	
def tabla_newton(p0, function, derivative):
	print "\\begin{figure}[H]"
	print "\\centering"
	print "\t\\caption{Punto inicial: %.2f}" % (p0)
	print "\t\\begin{tabular}{|c|c|c|c|} \\hline"
	print "\t$i$ & $x_{i}$ & $f(x_{i})$ & $f'(x_{i})$ \\\\ \\hline"
	try:
		for i in xrange(0, MAX_ITERATIONS):
			f_x = function(p0)
			d_x = derivative(p0)
			p = float(p0) - (f_x / d_x)
			print "\t$%d$ & $%.7f$ & $%.7f$ & $%.7f$ \\\\ \\hline" % (i, p0, f_x, d_x)
			if abs(p - p0) < TOL:
				break
			p0 = p
			#~ print p
	except:
		pass
	print "\t\\end{tabular}"
	print "\\end{figure}"


def secante_tabla(x0, x1, f):
	print "\\begin{center}"
	print "\t\\captionof{figure}{Punto inicial: %.2f}" % (x0)
	print "\t\\begin{longtable}{|c|c|c|c|c|c|c|} \\hline"
	print "\t$i$ & $x_{i-1}$ & $x_{i}$ & $x_{i+1}$ & $f(x_{i-1})$ & $f(x_{i})$ & $f(x_{i+1})$ \\\\ \\hline"
	try:
		for i in xrange(0, MAX_ITERATIONS):
			p = x0 - f(x0) / ((f(x1) - f(x0)) / (x1 - x0))
			print "\t$%d$ & $%.7f$ & $%.7f$ & $%.7f$ & $%.7f$ & $%.7f$ & $%.7f$ \\\\ \\hline" % (i, x0, x1, p, f(x0), f(x1), f(p))
			x0 = x1
			x1 = p
			if abs(x0 - x1) < TOL:
				break
	except:
		pass
	print "\t\\end{longtable}"
	print "\\end{center}"

def regula_falsi_tabla(x0, x1, f):
	print "\\begin{center}"
	print "\t\\captionof{figure}{Punto inicial: %.2f}" % (x0)
	print "\t\\begin{longtable}{|c|c|c|c|c|c|c|} \\hline"
	print "\t$i$ & $x_{i-1}$ & $x_{i}$ & $x_{i+1}$ & $f(x_{i-1})$ & $f(x_{i})$ & $f(x_{i+1})$ \\\\ \\hline"
	i = 0
	try:
		while i < MAX_ITERATIONS:
			p = x0 - f(x0) / ((f(x1) - f(x0)) / (x1 - x0))
			f_p = f(p)
			print "\t$%d$ & $%.7f$ & $%.7f$ & $%.7f$ & $%.7f$ & $%.7f$ & $%.7f$ \\\\ \\hline" % (i, x0, x1, p, f(x0), f(x1), f_p)
			if abs(f_p) < TOL:
				break
			if f_p > 0:
				x1 = p
			else:
				x0 = p
			i += 1
	except:
		pass
	print "\t\\end{longtable}"
	print "\\end{center}"
	
def regula_falsi_mod_tabla(x0, x1, f):
	print "\\begin{center}"
	print "\t\\captionof{figure}{Punto inicial: %.2f}" % (x0)
	print "\t\\begin{longtable}{|c|c|c|c|c|c|c|} \\hline"
	print "\t$i$ & $x_{i-1}$ & $x_{i}$ & $x_{i+1}$ & $f(x_{i-1})$ & $f(x_{i})$ & $f(x_{i+1})$ \\\\ \\hline"
	i = 0
	try:
		while i < MAX_ITERATIONS:
			#~ p = x0 - f(x0) / ((2*f(x0) - f(x1)) / (x0 - x1))
			p = (f(x1) * x0 - 0.5 * f(x0) * x1) / (f(x1) - 0.5 * f(x0))
			f_p = f(p)
			print "\t$%d$ & $%.7f$ & $%.7f$ & $%.7f$ & $%.7f$ & $%.7f$ & $%.7f$ \\\\ \\hline" % (i, x0, x1, p, f(x0), f(x1), f_p)
			if abs(f_p) < TOL:
				break
			if f_p > 0:
				x1 = p
			else:
				x0 = p
			i += 1
	except:
		pass
	print "\t\\end{longtable}"
	print "\\end{center}"
