public class Circulo implements AreaCalculavel{
    private double r;

    public Circulo(double r) {
        this.r = r;
    }

    public double obterArea()
    {
        return 3.14*r*r;
    }

    @Override
    public double calcularArea() {
        return 0;
    }
}