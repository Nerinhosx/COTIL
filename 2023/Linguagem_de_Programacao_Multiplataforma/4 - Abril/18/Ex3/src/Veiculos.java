public class Veiculos {
    private String modl;
    private double prc;

    public Veiculos(String modl, double prc){
        this.modl=modl;
        this.prc=prc;
    }

    public double getPrc() {
        return prc;
    }

    public void setPrc(double prc) {
        this.prc = prc;
    }

    public void printDados(){
        System.out.println(modl +"\n"+ prc);
    }
}
