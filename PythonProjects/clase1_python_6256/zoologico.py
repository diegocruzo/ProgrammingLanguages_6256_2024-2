from perro import Perro
from gato import Gato

class Zoologico:
    
    # Constructor
    def __init__(self):
        self.animales = [] # Lista vacía propia de Python
    
    def agregar_animal(self, animal):
        if isinstance(animal, (Perro, Gato)):
            self.animales.append(animal)
        else:
            print("Solo se pueden agregar perros o gatos.")
    
    def mostrar_animales(self):
        for animal in self.animales:
            print(animal)
            animal.expresarse() # Verificar el polimorfismo
            
            
            
    