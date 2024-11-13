# De la biblioteca de clases "animal" importar la clase "Animal"
from animal import Animal

# Herencia: Mamífero hereda de Animal
class Mamifero(Animal):
    
    # Constructor
    def __init__(self, nombre, tiene_pelo = True):
        super().__init__(nombre) # Crea la instancia con el constructor de la clase Animal
        self.__tiene_pelo = tiene_pelo
    
    def alimentar_cria(self):
        print(f"{self.get_nombre()} está alimentando a su cría.")
    
    # Getter y Setter
    def get_tiene_pelo(self):
        return self.__tiene_pelo
        
    def set_tiene_pelo(self, tiene_pelo):
        self.__tiene_pelo = tiene_pelo
    
    # Forma de mostrarse en pantalla
    def __str__(self):
        pelo = "si" if self.__tiene_pelo else "no"
        return super().__str__() + f", tiene pelo: {pelo}"
        