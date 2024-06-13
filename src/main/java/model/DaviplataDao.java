package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class DaviplataDao {
    // Atributos necesarios
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    String sql = null;
    int filas;

    // Para registrar
    public int registrarDaviplata(DaviplataVo daviplata) throws SQLException {
        sql = "insert into daviplata (CantidadSaldo, NombreUsuario, Celular) values (0, ?, ?)";

        try {
            con = Conexion.conectar();
            ps = con.prepareStatement(sql);
            ps.setString(1, daviplata.getNombreUsuario());
            ps.setString(2, daviplata.getCelular());
            System.out.println(ps);
            ps.executeUpdate();
            ps.close();
            System.out.println("Se registro Daviplata");
        }
        catch (Exception e) {
            System.out.println("Problemas al registrarse con Daviplata");
        }
        finally {
            con.close();
        }
        return filas;
    }


    // Conexión para recargar
    public int recargarDaviplata(DaviplataVo daviplata) throws SQLException {
        sql = "update daviplata set CantidadSaldo = CantidadSaldo + ? where Celular = ?";

        try {
            con = Conexion.conectar();
            ps = con.prepareStatement(sql);
            ps.setDouble(1, daviplata.getSaldo());
            ps.setString(2, daviplata.getCelular());
            System.out.println(ps);
            ps.executeUpdate();
            ps.close();
            System.out.println("La recarga de daviplata se realizo con éxito");
        }
        catch(Exception e) {
            System.out.println("problemas al recargar Daviplata "+e.getMessage().toString());
        }
        finally {
            con.close();
        }
        return filas;
    }


    
    // Conexión para recargar Daviplata
    public int retirarDaviplata(DaviplataVo daviplata) throws SQLException {
        sql = "update daviplata set CantidadSaldo = CantidadSaldo - ? where Celular = ?";

        try {
            con = Conexion.conectar();
            ps = con.prepareStatement(sql);
            ps.setDouble(1, daviplata.getSaldo());
            ps.setString(2, daviplata.getCelular());
            System.out.println(ps);
            ps.executeUpdate();
            ps.close();
            System.out.println("Se retiro de Daviplata con éxito");
        }
        catch(Exception e) {
            System.out.println("Problemas al retirar de Daviplata "+e.getMessage().toString());
        }
        finally {
            con.close();
        }
        return filas;
    }
    
}
