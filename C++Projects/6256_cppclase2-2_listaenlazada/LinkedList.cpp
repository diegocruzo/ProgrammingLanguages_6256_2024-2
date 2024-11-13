#include "LinkedList.h"

// Constructor
LinkedList::LinkedList() {
    this->first = nullptr;
    this->last = nullptr;
    this->size = 0;
}

// Operación para verificar si la lista está vacía
bool LinkedList::isEmpty(){
    return first == nullptr;
}

void LinkedList::insertLast(int data){
    // Crear una instancia de la clase Nodo
    Node *newNode = new Node(data);
    
    // Verificar si la lista está vacía
    if(isEmpty()) {
        // Operación para insertar un nodo en una lista vacía
        setFirst(newNode);
        setLast(newNode);
    }
    else {
        last->setNext(newNode);
        setLast(newNode);
    }
    
    size++;
}

// Función para mostrar la lista
void LinkedList::show() {
    
    // Validar si la lista está vacía
    if(isEmpty()){
        cout << "La lista está vacía\n";
        return; // Esta opción me saca de la Función
    }
    else{
        // Recorrer la lista
        Node *aux = getFirst();
        while(aux != nullptr){
            cout << aux->getData() << " ";
            aux = aux->getNext();
        }
        cout << endl;
    }
}

// Getter y Setter
Node *LinkedList::getFirst() const {
    return first;
}
void LinkedList::setFirst(Node *first){
    LinkedList::first = first;
}

Node *LinkedList::getLast() const {
    return last;
}
void LinkedList::setLast(Node *last){
    LinkedList::last = last;
}

int LinkedList::getSize() const {
    return size;
}
void LinkedList::setSize(int size){
    LinkedList::size = size;
}












