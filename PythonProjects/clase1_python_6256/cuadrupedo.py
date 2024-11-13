class Cuadrupedo:
    
    # Constructor
    def __init__(self, cantidad_patas=4):
        self.__cantidad_patas = cantidad_patas
    
    def caminar(self):
        print("El cuadrúpedo está caminando.")
        
    # Getter y Setter
    def get_cantidad_patas(self):
        return self.__cantidad_patas
        
    def set_cantidad_patas(self, cantidad_patas):
        self.__cantidad_patas = cantidad_patas
    
    # Forma como se muestra la información de la instancia
    def __str__(self):
        return f"Número de patas: {self.__cantidad_patas}"