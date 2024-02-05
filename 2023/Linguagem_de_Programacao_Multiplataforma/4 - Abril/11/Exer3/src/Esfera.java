public class Esfera extends FormaTridimensional{
    private double r;

    public Esfera(double r) {
        this.r = r;
    }

    public double obterArea()
    {
        return 4*3.14*r*r;
    }

    public double obterVolume()
    {
        return 4/3*3.14*r*r*r;
    }
}
