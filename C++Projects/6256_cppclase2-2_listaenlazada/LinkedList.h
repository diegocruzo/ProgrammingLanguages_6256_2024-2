#include "Node.h"

class LinkedList {
    
    private:
        Node *first; // Dirección de memoria del primer elemento de la lista
        Node *last; // Dirección de memoria del último elemento de la lista
        int size; // Tamaño, cantidad de elementos de la lista
        bool isEmpty(); // Función para verificar si la lista está vacía
        
    public:
        // Constructor
        LinkedList();
        
        // Operaciones básicas
        void insertLast(int); // Insertar un elemento al final de la lista
        void show(); // Mostrar la lista
        
        // Getter y Setter
        Node *getFirst() const;
        void setFirst(Node *first);
        
        Node *getLast() const;
        void setLast(Node *last);
        
        int getSize() const;
        void setSize(int size);
};










