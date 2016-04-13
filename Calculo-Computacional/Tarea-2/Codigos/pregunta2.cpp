#include "metodos.hpp"
#include <iostream>
#include <iomanip>
#include <vector>
#include <cmath>
using namespace std;

double f(double x){
	return 0.25 * pow(x, 2) - x * sin(x) - 0.5 * cos(2*x) + 0.5;
}

double d(double x){
	return 0.5 * x - sin(x) - x * cos(x) + sin(2*x);
}

int main(){
	double arr[3]= {M_PI/2, 5*M_PI, 10*M_PI};
	vector<double> estimados(&arr[0], &arr[0]+3);
	double solucion;
	
	cout << std::setprecision(8);
	for(int i=0; i < (int)estimados.size(); i++){
		cout << "Probando con " << estimados[i] << " -- ";
		solucion = newton(estimados[i], f, d);
		cout << "Final value: " << solucion << endl;
	}
	
	return 0;
}

