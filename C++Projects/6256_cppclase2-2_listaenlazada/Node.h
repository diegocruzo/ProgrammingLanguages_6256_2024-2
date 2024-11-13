#include <iostream>
using namespace std;

class Node {
    
    private:
        int data; // Dato o información que contiene el nodo
        Node *next; // Puntero, contiene la dirección de memoria del otro nodo con el que enlazará
        
    public:
        // Constructor
        Node(int data = 0);
        
        // Getter y Setter
        // Información en el nodo
        int getData() const;
        void setData(int data);
        
        // Dirección de memoria del nodo siguiente
        Node *getNext() const;
        void setNext(Node *next);
};