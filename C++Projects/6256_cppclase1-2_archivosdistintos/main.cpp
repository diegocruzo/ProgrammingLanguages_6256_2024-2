#include "Perro.h"

int main()
{
    Perro max("Max");
    max.setEdad(125);
    cout << max.amamantar() << endl;
    max.expresarse();
    cout << max.recorridoEnMetrosPorSegundo() << endl;
    max.alimentarse("callejero");
    cout << max.getNombre() << " tiene " << max.getEdad() << endl;
    
    return 0;
}