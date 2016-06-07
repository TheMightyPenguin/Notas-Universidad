import math

class Vector2:
	def __init__(self, x, y):
		self.x = x
		self.y = y

def pprint_table(table):
	for rows in table:
		for column in rows:
			print '%10f' % column,
		print

def dd_newton(aprox, verbose = False):
	n = len(aprox)
	t = [[0.0 for x in range(n+1)] for x in range(n+1)]
	for x in range(n):
		t[x][0] = float(aprox[x].x)
		t[x][1] = float(aprox[x].y)
	if verbose: pprint_table(t)
	for i in range(1, n):
		for j in range(n-i):
			y, x = i+1, j
			if verbose:
				print 'ij', str(x) + ' ' + str(y), t[x][y], ',numerador:', (t[x+1][y-1] - t[x][y-1]), 'denominador:', (t[x+1][0] - t[x][0]), '|', (t[x+1][y-1] - t[x][y-1]) / (t[x+1][0] - t[x][0])
				print t[x+1][y-1], t[x][y-1]
				print (t[x+i][0], t[x][0])
			t[x][y] = (t[x+1][y-1] - t[x][y-1]) / (t[x+i][0] - t[x][0])
	if verbose: pprint_table(t)
	return [t[0][x] for x in range(1, n)]

if __name__ == '__main__':
	aproximaciones = [Vector2(-5.0, 3.0), Vector2(-4.0, 5.0), Vector2(-2.0, 1.0), Vector2(1.0, -2.0), Vector2(5.0, 1.0)]
	assert dd_newton(aproximaciones) == [3.0, 2.0, -1.3333333333333333, 0.25555555555555554], "dd: Should be equal"

	print 'All tests passed succesfully'
