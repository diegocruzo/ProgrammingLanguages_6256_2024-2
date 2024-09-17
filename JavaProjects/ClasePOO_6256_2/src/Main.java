public class Main {
    public static void main(String[] args) {
        // Crear una instancia de persona
        Persona juan = new Persona("Juan Pérez", "CC", 123456789);
        // Realizar acciones con la instancia de persona
        juan.setFechaNacimiento(17,9,1900);
        juan.setSexoBiologico("m");
        System.out.println("Usuario: " + juan.getNombre());
        System.out.println("Saludo: " + juan.expresarse());
        System.out.println("Fecha de nacimiento: " + juan.getFechaNacimiento());
        System.out.println("Sexo biológico: " + juan.getSexoBiologico());
        System.out.println("Tipo de documento: " + juan.getTipoId());
        System.out.println("Número de documento: " + juan.getNumId());

        /*
        Ejercicio (bonificación de 0,2 puntos):
        Modificar la clase persona de tal manera que si escribo una 'm' para el
        sexo biológico, el programa muestre "masculino" y "femenino" para 'f'.
        Hacer que si creo un objeto con tipo de identificación "CC", el programa
        muestre "Cédula de ciudadanía", así mismo para los siguientes casos:
            CC: Cédula de ciudadanía
            TI: Tarjeta de identidad
            NUI: Número único de identificación
            RC: Registro civil de nacimiento
            CE: Cédula de extranjería
            PS: Pasaporte
            O: Otro
         */
    }
}
