#include "metodos.hpp"
#include <iostream>
#include <iomanip>
#include <vector>
#include <cmath>
using namespace std;

double f(double x){
	return 1 - (1.5 * exp(-1*(x*x - 2*x + 0.9775))) - exp(-1*(x*x - 8*x + 15.96));
}

double d(double x){
	return exp(2*x - x*x) * ((exp(6*x) * ((2.34256 * x - 9.37023) * pow(10, -7))) + 1.12875 * (x - 1));
}

int main(){
	double arr[9]= {0.80, 0.85, 0.90, 0.95, 1.00, 1.05, 1.10, 1.15, 1.20};
	vector<double> estimados(&arr[0], &arr[0]+9);
	double solucion;
	
	cout << std::setprecision(8);
	for(int i=0; i < (int)estimados.size(); i++){
		cout << "Probando con " << estimados[i] << " -- ";
		solucion = newton(estimados[i], f, d);
		cout << "Final value: " << solucion << endl;
	}
	
	return 0;
}
