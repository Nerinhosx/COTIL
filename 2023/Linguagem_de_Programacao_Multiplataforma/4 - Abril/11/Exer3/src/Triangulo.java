public class Triangulo extends FormaBidimensional{
    private double b;
    private double h;

    public Triangulo(double b, double h) {
        this.b = b;
        this.h = h;
    }

    public double obterArea()
    {
        return b*h*0.5;
    }
}
