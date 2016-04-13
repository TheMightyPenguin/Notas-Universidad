#include <iostream>
#include <cmath>

double TOL = pow(10, -8);
double MAX_ITERATIONS = 50;

double newton(double x0, double (*funcion)(double), double (*derivada)(double)){
	double x1 = 0;
	int i;
	for(i=1; i < MAX_ITERATIONS; i++){
		double f_x = funcion(x0);
		x1 = x0 - f_x / derivada(x0);
		if(fabs(x1 - x0) < TOL){
			std::cout << "Tardo " << i << " iteraciones. ";
			return x1;
		}
		x0 = x1;
	}
	//~ std::cout << "Tardo " << i << " iteraciones y se perdio. ";
	return x1;
}
