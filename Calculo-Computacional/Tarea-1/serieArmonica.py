import numpy as np

def serie_armonica():
	serie, k = np.float32(0.0), np.float32(1.0)
	while True:
		ant = np.float32(serie)
		serie += np.float32(1 / k)
		k = k + 1
		#~ print "ant, serie =", ant, ",", serie
		#~ print "ant, serie =", type(ant), type(serie)
		if abs(serie - ant) == 0:
			break
	return serie

print serie_armonica()
