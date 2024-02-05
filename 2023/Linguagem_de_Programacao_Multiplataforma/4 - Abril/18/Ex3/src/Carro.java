public class Carro extends Veiculos{
    private double km;
    public Carro(String modl, double prc, double km){
        super(modl, prc);
        this.km=km;
    }

    public double getKm() {
        return km;
    }

    public void setKm(double km){
        this.km=km;
    }

    @Override
    public void printDados(){
        super.printDados();
        System.out.println(km);
    }
}
