public class Cubo extends FormaTridimensional{
    private double l;

    public Cubo(double l) {
        this.l = l;
    }

    public double obterArea()
    {
        return 6*l*l;
    }

    public double obterVolume()
    {
        return l*l*l;
    }
}
