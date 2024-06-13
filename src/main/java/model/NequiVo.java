package model;

public class NequiVo {
    private int idNequi;
    private double saldo;
    private String celular;
    private String nombreUsuario;

    public NequiVo() {

    }

    public NequiVo(int idNequi, double saldo, String celular, String nombreUsuario) {
        this.idNequi = idNequi;
        this.saldo = saldo;
        this.celular = celular;
        this.nombreUsuario = nombreUsuario;
    }

    public int getIdNequi() {
        return idNequi;
    }

    public void setIdNequi(int idNequi) {
        this.idNequi = idNequi;
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
