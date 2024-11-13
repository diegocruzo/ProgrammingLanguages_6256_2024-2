#include <iostream>
using namespace std;

int variable = 5;

void cambiarValor1(int y){
    y = variable;
    cout << "Valor de \"x\" dentro de la función: " << y << endl;
}

void cambiarValor2(int &y){
    y = variable;
    cout << "Valor de \"x\" dentro de la función: " << y << endl;
}

// Programa principal
int main()
{
    int x = 12;
    int *px = &x;
    
    cout << "Asignación por valor: " << endl;
    cout << "Valor de \"x\" antes de pasar por la función: " << x << endl;
    cambiarValor1(x);
    cout << "Valor de \"x\" después de pasar por la función: " << x << endl;
    
    cout << "\nAsignación por referencia: " << endl;
    cout << "Valor de \"x\" antes de pasar por la función: " << x << endl;
    cambiarValor2(x);
    cout << "Valor de \"x\" después de pasar por la función: " << x << endl;
    
    cout << "\nUbicación en memoria de la variable \"x\": " << px << endl;
    return 0;
}