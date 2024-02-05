public class Ponto3D extends Ponto2D{
    private double z;

    public Ponto3D(double x, double y, double z)
    {
        super(x,y);
        this.z = z;
    }

    public double getZ() {
        return z;
    }

    public void setZ(double z) {
        this.z = z;
    }

    public String toString(){
        return (super.toString() + "\nZ: "+ z);
    }
}
