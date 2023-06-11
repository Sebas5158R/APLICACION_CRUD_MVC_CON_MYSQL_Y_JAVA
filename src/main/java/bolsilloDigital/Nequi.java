package bolsilloDigital;

public class Nequi extends Bolsillo{
    double saldo = 0;
    double recarga = 0;
    double retirar = 0;

    public double getSaldo() {
        return saldo;
    }

    public void setSaldo(double saldo) {
        this.saldo = saldo;
    }

    public Nequi(){

    }

    public Nequi (double saldo) {
        this.saldo = saldo;
    }

    @Override
    public double consultarSaldo() {
        return saldo;
    }

    @Override
    public double recargar() {
        saldo =+ saldo;
        double total = saldo + recarga;
        return total;
    }

    @Override
    public double retirar() {
        saldo =+ saldo;
        double totalRetirado = saldo - retirar;
        return totalRetirado;
    }
    
}

