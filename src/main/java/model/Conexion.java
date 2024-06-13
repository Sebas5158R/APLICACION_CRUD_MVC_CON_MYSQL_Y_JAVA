package model;

import java.sql.Connection;
import java.sql.DriverManager;

public class Conexion {
    //Variables para hacer la conexión
    private static final String bbdd = "jdbc:mysql://localhost:3306/bolsillo";
    private static final String usuario = "root";
    private static final String clave = "200530";
    private static Connection conexion;

    //Decalarar método para la conexión
    public static Connection conectar() {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            conexion = DriverManager.getConnection(bbdd, usuario, clave);
            System.out.println("Conexión exitosa");
        }
        catch (Exception e) {
            System.out.println("Error de conexión a la base de datos "+e.getMessage().toString());
        }
        return conexion;
    }
    public static void main(String[] args) {
        Conexion.conectar();
    }
}

