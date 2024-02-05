public class Moto extends Veiculos{
    private int ano;
    public Moto(String modl, double prc, int ano){
        super(modl, prc);
        this.ano=ano;
    }

    public void setAno(int ano){
        this.ano=ano;
    }

    @Override
    public void printDados(){
        super.printDados();
        System.out.println(ano);
    }

    public int getAno() {
        return ano;
    }
}
