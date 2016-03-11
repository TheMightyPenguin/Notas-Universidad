import numpy as np

def serie_armonica():
	serie, k = np.array([0], dtype='f'), np.float32(1.0)
	while True:
		ant = np.float32(sum(serie))
		np.append(serie, np.float32(1 / k))
		k = k + 1
		if abs(np.float32(sum(serie)) - ant) == 0:
			break
	return np.float32(sum(serie))

print serie_armonica()
