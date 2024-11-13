from zoologico import Zoologico
from perro import Perro 
from gato import Gato


# Función dentro del programa principal
def suma(n1, n2):
    return n1 + n2

# Ejecución del programa principal
perro = Perro("Firulais", False, "Bulldog")
gato = Gato("Michi", True, "Verde")

zoo = Zoologico()
zoo.agregar_animal(perro)
zoo.agregar_animal(gato)

# Mostrar los animales en el zoológico
zoo.mostrar_animales()



'''
a, b, c = 7, 5, 10

print(f"c = {c}",type(c))
print(suma(a,b))
c += 0.5
print(f"c = {c}",type(c))
c =  c, " ahora es una cadena de caracteres"
print(f"c = {c}",type(c))
c = True
print(f"c = {c}",type(c))
'''