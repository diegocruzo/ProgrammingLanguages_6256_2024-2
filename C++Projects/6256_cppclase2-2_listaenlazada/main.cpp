#include "LinkedList.h"

int main()
{
    LinkedList lista;
    // Adicionar nodos
    lista.insertLast(22);
    lista.insertLast(10);
    lista.insertLast(2024);
    lista.insertLast(-2);
    
    cout << "Los elementos de la lista son: ";
    lista.show();
    
    return 0;
}