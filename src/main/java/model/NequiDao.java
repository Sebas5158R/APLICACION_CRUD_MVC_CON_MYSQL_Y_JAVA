package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class NequiDao {
    // Atributos necesarios
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    String sql = null;
    int filas;

    // Para registrar Nequi
    public int registrarNequi(NequiVo nequi) throws SQLException {
        sql = "insert into nequi (Celularfk, NombreUsuario, CantidadSaldo) values (?, ?, 0)";
        try {
            con = Conexion.conectar();
            ps = con.prepareStatement(sql);
            ps.setString(1, nequi.getCelular());
            ps.setString(2, nequi.getNombreUsuario());
            System.out.println(ps);
            ps.executeUpdate();
            ps.close();
            System.out.println("Se registro Nequi");
        }
        catch (Exception e){
            System.out.println("Problemas al registrarse con nequi "+e.getMessage().toString());
        }
        finally {
            con.close();
        }
        return filas;
    }


    // Conexión para recargar Nequi
    public int recargar(NequiVo nequi ) throws SQLException {
        sql = "update nequi set CantidadSaldo = CantidadSaldo + ? where Celularfk = ?";

        try {
            con = Conexion.conectar();
            ps = con.prepareStatement(sql);
            ps.setDouble(1, nequi.getSaldo());
            ps.setString(2, nequi.getCelular());
            System.out.println(ps);
            ps.executeUpdate();
            ps.close();
            System.out.println("La recarga de nequi se realizo con éxito");
        }
        catch (Exception e) {
            System.out.println("Problemas al recargar Nequi "+e.getMessage().toString());
        }
        finally {
            con.close();
        }
        return filas;
    }


    // Conexión para retirar Nequi  
    public int retirar(NequiVo nequi) throws SQLException {
        sql = "update nequi set CantidadSaldo = CantidadSaldo - ? where Celular = ?";

        try {
            con = Conexion.conectar();
            ps = con.prepareStatement(sql);
            ps.setDouble(1, nequi.getSaldo());
            ps.setString(2, nequi.getCelular());
            System.out.println(ps);
            ps.executeUpdate();
            ps.close();
            System.out.println("Se retiro en Nequi con éxito");
        }
        catch (Exception e) {
            System.out.println("Problemas al retirar de Nequi "+e.getMessage().toString());
        }
        finally {
            con.close();
        }
        return filas;
    }
    
}
