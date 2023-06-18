package model;

public class DaviplataVo {
    private int idDaviplata;
    private double saldo;
    private String celular;

    public DaviplataVo() {

    }

    public DaviplataVo(int idDaviplata, double saldo, String celular) {
        this.idDaviplata = idDaviplata;
        this.saldo = saldo;
        this.celular = celular;
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

    
}
