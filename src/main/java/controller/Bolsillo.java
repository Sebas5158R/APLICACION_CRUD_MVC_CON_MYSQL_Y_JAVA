package controller;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bolsilloDigital.Daviplata;
import bolsilloDigital.Nequi;
import model.DaviplataDao;
import model.DaviplataVo;
import model.NequiDao;
import model.NequiVo;

public class Bolsillo extends HttpServlet {
    // Invocando las clases de daviplata
    DaviplataDao daviDao = new DaviplataDao();
    DaviplataVo daviVo = new DaviplataVo();

    // Invocando las clases de nequi
    NequiVo nequiVo = new NequiVo();
    NequiDao nequiDao = new NequiDao();


    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String accion = req.getParameter("accion");
        System.out.println(accion);

        switch (accion) {
            case "login":
            req.getRequestDispatcher("viws/login.jsp").forward(req, resp);
            break;

            case "home":
            req.getRequestDispatcher("home.jsp").forward(req, resp);
            break;

            case "eleccion":
            req.getRequestDispatcher("viws/eleccion.jsp").forward(req, resp);
            break;

            case "nequi":
            req.getRequestDispatcher("viws/servicesNequi.jsp").forward(req, resp);
            break;

            case "daviplata":
            req.getRequestDispatcher("viws/servicesDaviplata.jsp").forward(req, resp);
            break;

            case "recargarNequi":
            req.getRequestDispatcher("viws/recargarNequi.jsp").forward(req, resp);
            break;

            case "recargarDaviplata":
            req.getRequestDispatcher("viws/recargarDaviplata.jsp").forward(req, resp);
            break;

            case "retirarNequi":
            req.getRequestDispatcher("viws/retirarNequi.jsp").forward(req, resp);
            break;

            case "retirarDaviplata":
            req.getRequestDispatcher("viws/retirarDaviplata.jsp").forward(req, resp);
            break;

            case "index":
            req.getRequestDispatcher("index.jsp").forward(req, resp);
            break;
        }
    }


    double total = 0;
    double total2 = 0;
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String accion = req.getParameter("accion");
        System.out.println(accion);

        switch (accion) {
            // Case para iniciar sesión 
            // Usuario y contraseña = Admin
            // case "Ingresar":
            // break;

            // // Caso de Recargar Nequi
            // case "Recargar":
            // Double cantidad = Double.parseDouble(req.getParameter("cantidad"));

            // Nequi nequi1 = new Nequi(cantidad);
            // total = total + cantidad;
            // req.setAttribute("saldo", nequi1.recargar());
            // req.setAttribute("recarga", total);
            // System.out.println("Recargo Nequi con: "+nequi1.recargar());
            // System.out.println("En total el saldo nequi es de: "+total);
            // req.getRequestDispatcher("viws/servicesNequi.jsp").forward(req, resp);
            // break;

            // // Caso de retirar Nequi
            // case "Retirar":
            // Double canRetiro = Double.parseDouble(req.getParameter("retirar"));

            // Nequi nequi2 = new Nequi(canRetiro);
            // total = total - canRetiro;
            // req.setAttribute("retiro", nequi2.retirar());
            // req.setAttribute("recarga", total);
            // System.out.println("Retiro: "+nequi2.retirar());
            // System.out.println("Su saldo quedo con: "+total);
            // req.getRequestDispatcher("viws/servicesNequi.jsp").forward(req, resp);
            // break;

            // // Caso de recargar Daviplata
            // case "Recarga":
            // Double cantDaviplata = Double.parseDouble(req.getParameter("cantidadDavi"));

            // Daviplata Davi1 = new Daviplata(cantDaviplata);
            // total2 = total2 + cantDaviplata;
            // req.setAttribute("saldo", Davi1.recargar());
            // req.setAttribute("recargaDavi", total2);
            // System.out.println("Recargo Daviplata con: "+Davi1.recargar());
            // System.out.println("Saldo total: "+total2);
            // req.getRequestDispatcher("viws/servicesDaviplata.jsp").forward(req, resp);
            // break;

            // // Caso de retirar Daviplata
            // case "Retira":
            // Double cantRetiroDavi = Double.parseDouble(req.getParameter("retirarDavi"));

            // Daviplata Davi2 = new Daviplata(cantRetiroDavi);
            // total2 = total2 - cantRetiroDavi;
            // req.setAttribute("retirado", Davi2.retirar());
            // req.setAttribute("recargaDavi", total2);
            // System.out.println("Retiro: "+Davi2.retirar());
            // System.out.println("Su saldo quedo con: "+total2);
            // req.getRequestDispatcher("viws/servicesDaviplata.jsp").forward(req, resp);
            // break;

            case "Recargar":
            recargaNequi(req, resp);
            break;

            case "Retirar":
            retirarNequi(req, resp);
            break;

            case "Recarga":
            recargarDaviplata(req, resp);
            break;

            case "Retira":
            retirarDaviplata(req, resp);
            break;
        }
    }


    // Método para recargar Nequi
    private void recargaNequi(HttpServletRequest req, HttpServletResponse resp) {
        if(req.getParameter("phone") != null) {
            nequiVo.setCelular(req.getParameter("phone"));
        }

        if(req.getParameter("cantidad") != null) {
           nequiVo.setSaldo(Double.parseDouble(req.getParameter("cantidad")));
           String saldo = req.getParameter("cantidad");
           nequiVo.setSaldo(Double.parseDouble(saldo));
           total = total + Double.parseDouble(saldo);
           req.getSession().setAttribute("saldo", total);
           System.out.println("Con la recarga de Nequi su saldo quedo en "+total);
        }
        try {
            nequiDao.recargar(nequiVo);
            System.out.println("Recarga Nequi exitosa");
            req.getRequestDispatcher("viws/servicesNequi.jsp").forward(req, resp);
        }
        catch (Exception e) {
            System.out.println("Error al recargar Nequi "+e.getMessage().toString());
        }
    }



    // Método para retirar Nequi
    private void retirarNequi(HttpServletRequest req, HttpServletResponse res) {
        if(req.getParameter("phone") != null){
            nequiVo.setCelular(req.getParameter("phone"));
        }

        if(req.getParameter("cantidad") != null) {
            nequiVo.setSaldo(Double.parseDouble(req.getParameter("cantidad")));
            String saldo = req.getParameter("cantidad");
            nequiVo.setSaldo(Double.parseDouble(saldo));
            total = total - Double.parseDouble(saldo);
            req.getSession().setAttribute("saldo", total);
            System.out.println("Con el retiro de Nequi su saldo quedo en "+total);
        }
        try {
            nequiDao.retirar(nequiVo);
            System.out.println("Retiro Nequi exitoso");
            req.getRequestDispatcher("viws/servicesNequi.jsp").forward(req, res);
        }
        catch(Exception e) {
            System.out.println("Problemas al retirar Nequi "+e.getMessage().toString());
        }
    }



    // Recargar Daviplata
    private void recargarDaviplata(HttpServletRequest req, HttpServletResponse resp) {
        if(req.getParameter("cel") != null) {
            daviVo.setCelular(req.getParameter("cel"));
        }

        if(req.getParameter("cantidadDavi") != null) {
            daviVo.setSaldo(Double.parseDouble(req.getParameter("cantidadDavi")));
            String saldoDavi = req.getParameter("cantidadDavi");
            daviVo.setSaldo(Double.parseDouble(saldoDavi));
            total2 = total2 + Double.parseDouble(saldoDavi);
            req.getSession().setAttribute("saldoDavi", total2);
            System.out.println("Con la recarga de Daviplata su saldo quedo en "+total2);
        }
        try {
            daviDao.recargarDaviplata(daviVo);
            System.out.println("Recarga Daviplata exitosa");
            req.getRequestDispatcher("viws/servicesDaviplata.jsp").forward(req, resp);
        }
        catch(Exception e) {
            System.out.println("Error al recargar Daviplata "+e.getMessage().toString());
        }
    }



    // Retirar Daviplata
    private void retirarDaviplata(HttpServletRequest req, HttpServletResponse resp) {
        if(req.getParameter("cel") != null){
            daviVo.setCelular(req.getParameter("cel"));
        }

        if(req.getParameter("cantidadDavi") != null) {
            daviVo.setSaldo(Double.parseDouble(req.getParameter("cantidadDavi")));
            String saldoDavi = req.getParameter("cantidadDavi");
            daviVo.setSaldo(Double.parseDouble(saldoDavi));
            total2 = total2 - Double.parseDouble(saldoDavi);
            req.getSession().setAttribute("saldoDavi", total2);
            System.out.println("Con el retiro Daviplata su saldo quedo en "+total2);
        }

        try {
            daviDao.retirarDaviplata(daviVo);
            System.out.println("Retiro Daviplata exitoso");
            req.getRequestDispatcher("viws/servicesDaviplata.jsp").forward(req, resp);
        }
        catch(Exception e) {
            System.out.println("Problemas al retirar Daviplata "+e.getMessage().toString());
        }
    }
    
}
