from mamifero import Mamifero
from cuadrupedo import Cuadrupedo

# Crear la clase Perro utilizando herencia múltiple
class Perro(Mamifero, Cuadrupedo):
    
    # Constructor
    def __init__(self, nombre, tiene_pelo, raza):
        
        Mamifero.__init__(self, nombre, tiene_pelo)
        Cuadrupedo.__init__(self)
        self.__raza = raza
    
    # Sobreescritura de un método (polimorfismo)
    def expresarse(self):
        print("Guau! Guau!")
    
    # Getter y Setter
    def get_raza(self):
        return self.__raza
    
    def set_raza(self, raza):
        self.__raza = raza

    # Forma para mostrar la instancia de la clase en consola
    def __str__(self):
        return super().__str__() + f", raza: {self.__raza}"