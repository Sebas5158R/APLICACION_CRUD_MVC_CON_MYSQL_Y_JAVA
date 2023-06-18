package model;

public class NequiVo {
    private int idNequi;
    private double saldo;
    private String celular;

    public NequiVo() {

    }

    public NequiVo(int idNequi, double saldo, String celular) {
        this.idNequi = idNequi;
        this.saldo = saldo;
        this.celular = celular;
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

    
}
