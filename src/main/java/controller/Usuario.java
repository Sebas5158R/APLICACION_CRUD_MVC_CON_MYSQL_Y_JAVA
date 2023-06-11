package controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.UsuarioDao;
import model.UsuarioVo;

public class Usuario extends HttpServlet{
    //Invocación de las clases Dao y Vo
    UsuarioVo userVo = new UsuarioVo();
    UsuarioDao userDao = new UsuarioDao();

    // Método DoGet para enviar a las vistas
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("Entró al DoGet");
        String a=req.getParameter("accion");

        switch (a) {
            case "abrirForm":
                abrirForm(req, resp);
                break;
            
            case "listar":
                listar(req, resp);
                break;

            case "cancelar":
                req.getRequestDispatcher("home.jsp").forward(req, resp);
                break;

            case "editar":
                editar(req, resp);
                break;

            case "borrar":
                req.getRequestDispatcher("viws/EliminarCuentaUsuario.jsp").forward(req, resp);
                break;
        }
    }

    //Método DoPost para las funciones de los formularios
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("Entró al DoPost");
        String a=req.getParameter("accion");

        switch (a) {
            case "add":
                add(req, resp);
                break;

            case "editUser":
                editUser(req, resp);
                break;

            case "delete":
                delete(req, resp);
                break;

            case "Ingresar":
                try {
                    ingresar(req, resp);
                } catch (SQLException e) {
                    System.out.println("No se pudo ingresar al sistema "+e.getMessage().toString());
                }
                break;
        }
    }

    //Método para enviar a la vista el formulario de registro
    private void abrirForm(HttpServletRequest req, HttpServletResponse resp) {
        try {
            req.getRequestDispatcher("viws/usuarioAdd.jsp").forward(req, resp);
            System.out.println("El formulario ha sido abierto");
        } catch (Exception e) {
            System.out.println("El formulario NO ha sido abierto "+e.getMessage().toString());
        }
    }

    

    //Método para agregar a los usuarios
    private void add(HttpServletRequest req, HttpServletResponse resp) {
        if (req.getParameter("nombre") != null) {
            userVo.setNombreUsuario(req.getParameter("nombre"));
        }
        if (req.getParameter("apellido") != null) {
            userVo.setApellidoUsuario(req.getParameter("apellido"));
        }
        if (req.getParameter("tipoDoc") != null) {
            userVo.setTipoDocumento(req.getParameter("tipoDoc"));
        }
        if (req.getParameter("numDoc") != null) {
            userVo.setNumeroDocumento(req.getParameter("numDoc"));
        }
        if (req.getParameter("phone") != null) {
            userVo.setCelular(req.getParameter("phone"));
        }
        if (req.getParameter("password") != null) {
            userVo.setContraseña(req.getParameter("password"));
        }
        try {
            userDao.registrar(userVo);
            System.out.println("Registro insertado correctamente");
            listar(req, resp);
        } catch (Exception e) {
            System.out.println("Error en la inserción del registro "+e.getMessage().toString());
        }
    }


    //Método para listar a todos los usuarios de la base de datos
    private void listar(HttpServletRequest req, HttpServletResponse resp) {
        try {
            List usuario=userDao.listar();
            req.setAttribute("usuario", usuario);
            req.getRequestDispatcher("viws/usuarios.jsp").forward(req, resp);
            System.out.println("Datos listados correctamente");
        } catch (Exception e) {
            System.out.println("Hubo problemas al listar los datos "+e.getMessage().toString());
        }
    }


    //Método para enviar a editar información de un usuario
    private void editar(HttpServletRequest req, HttpServletResponse resp) {
        try {
            req.getRequestDispatcher("viws/usuarioEdit.jsp").forward(req, resp);
        }
        catch (Exception e) {
            System.out.println("No se puede editar al usuario porque "+e.getMessage().toString());
        }
    }


    //Método para editar la información de un usuario
    private void editUser(HttpServletRequest req, HttpServletResponse resp) {
        if (req.getParameter("tipoDoc") != null) {
            userVo.setTipoDocumento(req.getParameter("tipoDoc"));
        }
   
        if (req.getParameter("phone") != null) {
            userVo.setCelular(req.getParameter("phone"));
        } else {
            userVo.getCelular();
        }

        if (req.getParameter("password") != null) {
            userVo.setContraseña(req.getParameter("password"));
        } else {
            userVo.getContraseña();
        }
        // Confirmar
        if (req.getParameter("numDoc") != null) {
            userVo.setNumeroDocumento(req.getParameter("numDoc"));
        }
        if (req.getParameter("nombre") != null) {
            userVo.setNombreUsuario(req.getParameter("nombre"));
        }
        try {
            userDao.editarUsuario(userVo);
            System.out.println("Se actualizaron los datos correctamente");
            listar(req, resp);
        }
        catch (Exception e) {
            System.out.println("Error en la actualización de los datos "+e.getMessage().toString());
        }
    }


    //Método para eliminar a algún usuario.
    private void delete (HttpServletRequest req, HttpServletResponse resp) {
        if (req.getParameter("numDoc") != null) {
            userVo.setNumeroDocumento(req.getParameter("numDoc"));
        }
        try {
            userDao.eliminarUsuario(userVo);
            System.out.println("La cuenta se elimino");
            req.getRequestDispatcher("index.jsp").forward(req, resp);
        }
        catch (Exception e) {
            System.out.println("Error al tratar de borrar la cuenta "+e.getMessage().toString());
        }
    }


    // Método para ingresar al sistema
    int r = 0;
    private void ingresar (HttpServletRequest req, HttpServletResponse resp) throws SQLException, ServletException, IOException {
        String accion = req.getParameter("accion");
        if (accion.equals("Ingresar")) {
            String tipoDoc = req.getParameter("tipoDoc");
            String numDoc = req.getParameter("numDoc");
            String password = req.getParameter("password");
            userVo.setTipoDocumento(tipoDoc);
            userVo.setNumeroDocumento(numDoc);
            userVo.setContraseña(password);
            r = userDao.validarLogin(userVo);
            if (r == 1) {
                req.getSession().setAttribute("tipoDoc", tipoDoc);
                req.getSession().setAttribute("numDoc", numDoc);
                req.getSession().setAttribute("password", password);
                System.out.println("Ingresaste al sistema");
                req.getRequestDispatcher("home.jsp").forward(req, resp);
            } else {
                System.out.println("No se pudo ingresar al sistema");
                req.getRequestDispatcher("viws/loginError.jsp").forward(req, resp);
            }
        }
    }
    
}
