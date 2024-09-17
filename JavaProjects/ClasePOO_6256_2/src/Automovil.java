// Abstracción (capacidad de crear una clase con propiedades y métodos)
public class Automovil {

    // Encapsulamiento (con los parámetros private y static se modificarán
    // las propiedades con métodos propios de la clase)
    // Propiedades
    private static String marca, color;
    protected static String modelo;
    private static short cilindraje;

    // Métodos
    // Constructor
    public Automovil(String marca, String modelo, String color) {
        this.marca = marca;
        this.modelo = modelo;
        this.color = color;
        this.cilindraje = 0;
    }
    // Polimorfismo (hacer que un mismo método ejecute tareas diferentes), se lleva
    // a cabo mediante una sobrecarga de métodos
    public Automovil(String modelo, String color) {
        this.marca = "Ferrari";
        this.modelo = modelo;
        this.color = color;
        this.cilindraje = 0;
    }

    public Automovil(){
        this.marca = "Sin definir";
        this.modelo = "Sin definir";
        this.color = "Sin definir";
        this.cilindraje = 0;
    }

    public Automovil(short cilindraje) {
        this.marca = "Sin definir";
        this.modelo = "Sin definir";
        this.color = "Sin definir";
        this.cilindraje = cilindraje;
    }

    // Getter y Setter
    public static String getMarca() {
        return marca;
    }

    public static void setMarca(String marca) {
        Automovil.marca = marca;
    }

    public static String getColor() {
        return color;
    }

    public static void setColor(String color) {
        Automovil.color = color;
    }

    public static short getCilindraje() {
        return cilindraje;
    }

    public static void setCilindraje(short cilindraje) {
        Automovil.cilindraje = cilindraje;
    }

    public static String getModelo() {
        return modelo;
    }

    public static void setModelo(String modelo) {
        Automovil.modelo = modelo;
    }
}
