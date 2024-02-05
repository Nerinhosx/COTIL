public class ValorInvalidoExcepcion extends RuntimeException {
    private double x;

    public String getMessage()
    {
        return ("Valor inválido informado: "+ x);
    }

    public ValorInvalidoExcepcion(double x)
    {
        this.x=x;
    }
}
