public class Quadrado implements AreaCalculavel{
    private double l;

    public Quadrado(double l) {
        if (l <= 0)
        {
            throw new IllegalArgumentException("Valor inválido, o valor esperado é maior que 0 (zero).");
        }
        else
        {
            this.l = l;
        }
    }

    public double obterArea()
    {
        return l*l;
    }

    @Override
    public double calcularArea() {
        return 0;
    }
}
