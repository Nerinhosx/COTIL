public class SaldoInsuficienteException extends RuntimeException {
    private double x;

    public String getMessage()
    {
        return ("Saldo insuficiente para efetuar a operação. O valor informado é superior ao saldo: "+ x);
    }

    public SaldoInsuficienteException(double x)
    {
        this.x=x;
    }
}
