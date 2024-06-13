package model;

public class DaviplataVo {
    private int idDaviplata;
    private double saldo;
    private String celular;
    private String nombreUsuario;

    public DaviplataVo() {

    }

    public DaviplataVo(int idDaviplata, double saldo, String celular, String nombreUsuario) {
        this.idDaviplata = idDaviplata;
        this.saldo = saldo;
        this.celular = celular;
        this.nombreUsuario = nombreUsuario;
    }

    public int getIdDaviplata() {
        return idDaviplata;
    }

    public void setIdDaviplata(int idDaviplata) {
        this.idDaviplata = idDaviplata;
    }

    public double getSaldo() {
        return saldo;
    }

    public void setSaldo(double saldo) {
        this.saldo = saldo;
    }

    public String getCelular() {
        return celular;
    }

    public void setCelular(String celular) {
        this.celular = celular;
    }

    public String getNombreUsuario() {
        return nombreUsuario;
    }

    public void setNombreUsuario(String nombreUsuario) {
        this.nombreUsuario = nombreUsuario;
    }

    

    
}
