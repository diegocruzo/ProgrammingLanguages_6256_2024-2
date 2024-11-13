from mamifero import Mamifero
from cuadrupedo import Cuadrupedo

class Gato(Mamifero, Cuadrupedo):
    
    # Constructor
    def __init__(self, nombre, tiene_pelo, color_ojos):
        Mamifero.__init__(self, nombre, tiene_pelo)
        Cuadrupedo.__init__(self)
        self.__color_ojos = color_ojos
        
    # Sobreescritura de método (polimorfismo)
    def expresarse(self):
        print("Miau! Miau!")
    
    # Getter y Setter
    def get_color_ojos(self):
        return self.__color_ojos
    
    def set_color_ojos(self, color_ojos):
        self.__color_ojos = color_ojos
        
    # Forma como se visualiza la instancia en consola
    def __str__(self):
        return super().__str__() + f", color de ojos: {self.__color_ojos}"