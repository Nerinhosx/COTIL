public class Quadrado extends FormaBidimensional{
    private double l;

    public Quadrado(double l) {
        this.l = l;
    }

    public double obterArea()
    {
        return l*l;
    }
}
