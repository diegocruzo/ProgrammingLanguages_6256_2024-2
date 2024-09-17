public class Mamifero {

    // Propiedades
    private String nombre;

    // Constructor
    public Mamifero(String nombre) {
        this.nombre = nombre;
    }
    public Mamifero () {
        this.nombre = "Sin definir";
    }

    // Métodos
    public String expresarse(){
        return "Por definir";
    }

    //Getter y Setter
    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }
}
