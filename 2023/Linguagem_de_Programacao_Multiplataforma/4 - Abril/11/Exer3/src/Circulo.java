public class Circulo extends FormaBidimensional{
    private double r;

    public Circulo(double r) {
        this.r = r;
    }

    public double obterArea()
    {
        return 3.14*r*r;
    }
}
