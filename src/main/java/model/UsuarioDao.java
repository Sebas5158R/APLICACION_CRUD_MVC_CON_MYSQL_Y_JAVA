package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class UsuarioDao {
    //Atributos necesarios
    Connection con; //Objeto de conexión
    PreparedStatement ps; //Objeto para sentencias separadas
    ResultSet rs; //Objeto para almacenar consultas
    String sql = null; //Variable para guardar sentencias
    int filas; //Cantidad de filas que devuelve una sentencia
    

    //Conexión para registrar usuarios
    public int registrar(UsuarioVo usuario) throws SQLException {
        sql = "INSERT INTO usuario (NombreUsuario, ApellidoUsuario, TipoDocumento, NumeroDocumento, Celular, Contraseña) values (?, ?, ?, ?, ?, ?)";

        try {
            con = Conexion.conectar(); //Invocar el método de la clase conexión para conectar
            ps = con.prepareStatement(sql); //Preparar sentencia
            ps.setString(1, usuario.getNombreUsuario());
            ps.setString(2, usuario.getApellidoUsuario());
            ps.setString(3, usuario.getTipoDocumento());
            ps.setString(4, usuario.getNumeroDocumento());
            ps.setString(5, usuario.getCelular());
            ps.setString(6, usuario.getContraseña());
            System.out.println(ps);
            ps.executeUpdate(); //Ejecutar sentencia
            ps.close(); //Cerrar sentencia
            System.out.println("Se registro el usuario correctamente");
        }
        catch (Exception e) {
            System.out.println("Error al registrar usuario "+e.getMessage().toString());
        }
        finally {
            con.close();
        }
        return filas;
    }

    
    // Conexión para validar el inicio de sesión con la base de datos
    public int validarLogin(UsuarioVo usuario) throws SQLException {
        int r = 0;
        sql = "Select * from usuario where TipoDocumento=? and NumeroDocumento=? and Contraseña=?";
        try {
            con = Conexion.conectar();
            ps = con.prepareStatement(sql);
            ps.setString(1, usuario.getTipoDocumento());
            ps.setString(2, usuario.getNumeroDocumento());
            ps.setString(3, usuario.getContraseña());
            System.out.println(ps);
            rs = ps.executeQuery();
            while(rs.next()) {
                r = r + 1;
                usuario.setTipoDocumento(rs.getString("TipoDocumento"));
                usuario.setNumeroDocumento(rs.getString("NumeroDocumento"));
                usuario.setContraseña(rs.getString("Contraseña"));
            }
            if (r==1) {
                return 1;
            } else {
                return 0;
            }
        }
        catch (Exception e) {
            return 0;
        }
    }


    //Conexión para consultar usuarios
    public List<UsuarioVo> listar() throws SQLException {
        List<UsuarioVo> usuario = new ArrayList<>();
        sql = "select * from usuario";
        try {
            con = Conexion.conectar();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery(sql);

            while (rs.next()){
                UsuarioVo user = new UsuarioVo();
                //Escribir en el setter cada valor encontrado
                user.setIdUsuario(rs.getInt("IdUsuario"));
                user.setNombreUsuario(rs.getString("NombreUsuario"));
                user.setApellidoUsuario(rs.getString("ApellidoUsuario"));
                user.setTipoDocumento(rs.getString("TipoDocumento"));
                user.setNumeroDocumento(rs.getString("NumeroDocumento"));
                user.setCelular(rs.getString("Celular"));
                user.setContraseña(rs.getString("Contraseña"));
                usuario.add(user);
            }
            ps.close();
            System.out.println("Consulta exitosa");
        }
        catch (Exception e) {
            System.out.println("La consulta no se puede mostrar porque: "+e.getMessage().toString());
        }
        finally {
            con.close();
        }
        return usuario;
    }


    // editar por id
    public List<UsuarioVo> listarUsuarios(int id) throws SQLException {
        List <UsuarioVo> usuario = new ArrayList<>();
        sql = "select * from usuario where IdUsuario = ?";

        try {
            con = Conexion.conectar();
            ps = con.prepareStatement(sql);
            ps.setInt(1, id);
            rs = ps.executeQuery();

            while(rs.next()) {
                UsuarioVo userVo = new UsuarioVo();
                userVo.setIdUsuario(rs.getInt("IdUsuario"));
                userVo.setNombreUsuario(rs.getString("NombreUsuario"));
                userVo.setApellidoUsuario(rs.getString("ApellidoUsuario"));
                userVo.setTipoDocumento(rs.getString("TipoDocumento"));
                userVo.setNumeroDocumento(rs.getString("NumeroDocumento"));
                userVo.setCelular(rs.getString("Celular"));
                userVo.setContraseña(rs.getString("Contraseña"));
                usuario.add(userVo);
            }
            ps.close();
        }
        finally {
            con.close();
        }
        return usuario;
    }


    // borrar por id
    public List<UsuarioVo> borrarUsuarios(int id) throws SQLException {
        List <UsuarioVo> usuario = new ArrayList<>();
        sql = "select * from usuario where IdUsuario = ?";

        try {
            con = Conexion.conectar();
            ps = con.prepareStatement(sql);
            ps.setInt(1, id);
            rs = ps.executeQuery();

            while(rs.next()) {
                UsuarioVo userVo = new UsuarioVo();
                userVo.setIdUsuario(rs.getInt("IdUsuario"));
                userVo.setNombreUsuario(rs.getString("NombreUsuario"));
                userVo.setApellidoUsuario(rs.getString("ApellidoUsuario"));
                userVo.setTipoDocumento(rs.getString("TipoDocumento"));
                userVo.setNumeroDocumento(rs.getString("NumeroDocumento"));
                userVo.setCelular(rs.getString("Celular"));
                userVo.setContraseña(rs.getString("Contraseña"));
                usuario.add(userVo);
            }
            ps.close();
        }
        finally {
            con.close();
        }
        return usuario;
    }


    // Conexión para editar información del usuario
    public int editarUsuario(UsuarioVo usuario) throws SQLException {
        sql = "update usuario set NombreUsuario =?, ApellidoUsuario =?, TipoDocumento=?, NumeroDocumento=?, Celular=?, Contraseña=? where IdUsuario=?";
        try {
            con = Conexion.conectar();
            ps = con.prepareStatement(sql);
            ps.setString(1, usuario.getNombreUsuario());
            ps.setString(2, usuario.getApellidoUsuario());
            ps.setString(3, usuario.getTipoDocumento());
            ps.setString(4, usuario.getNumeroDocumento());
            ps.setString(5, usuario.getCelular());
            ps.setString(6, usuario.getContraseña());
            ps.setInt(7, usuario.getIdUsuario());
            System.out.println(ps);
            ps.executeUpdate();
            ps.close();
            System.out.println("Los datos se actualizaron con éxito");
        }
        catch (Exception e) {
            System.out.println("Error al actualizar los datos");
        }
        finally {
            con.close();
        }
        return filas;
    }


    // Conexión para eliminar la cuenta del usuario
    public int eliminarUsuario (UsuarioVo usuario) throws SQLException {
        sql = "delete from usuario where IdUsuario =?";
        try {
            con = Conexion.conectar();
            ps = con.prepareStatement(sql);
            ps.setInt(1, usuario.getIdUsuario());
            System.out.println(ps);
            ps.executeUpdate();
            ps.close();
            System.out.println("La cuenta ha sido eliminada satisfactoriamente");
        }
        catch (Exception e) {
            System.out.println("Hubo un error al eliminar la cuenta "+e.getMessage().toString());
        }
        finally {
            con.close();
        }
        return filas;
    }

}
