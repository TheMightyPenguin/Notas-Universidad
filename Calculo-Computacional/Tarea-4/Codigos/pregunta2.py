import methods
from math import sin, sqrt

n = 9 # Ultimo digito de la cedula
f = lambda x: sin(x*x + ((n + 1.0) / (3.0*n + 1.0)) * x)
d = lambda x, h: (f(x + h) - f(x - h)) / (2.0*h)

def five_endpoint(f, x, h):
    return (1.0/(12.0*h)) * (-25.0*f(x) + 48.0*f(x + h) - 36.0*f(x + 2.0*h) + 16.0*f(x + 3.0*h) - 3.0*f(x + 4.0*h))

def five_midpoint(f, x, h):
    return (1.0/(12.0*h)) * (f(x - 2.0*h) - 8.0*f(x - h) + 8.0*f(x + h) - f(x + 2.0*h))

def do_till_precision(t, x, starting = 1, tol = 10**-8):
    global f
    h = starting
    old, value = 0, 1
    i = 0
    while abs(value - old) > tol:
        old, value = value, t(f, x, h)
        print '({}) {:+.8f}'.format(i, value)
        h /= 2.0
        i += 1

if __name__ == '__main__':
    print 'Midpoint formula:'
    do_till_precision(five_midpoint, 0)
    print '-------' * 3
    print 'Endpoint formula:'
    do_till_precision(five_endpoint, 0)
