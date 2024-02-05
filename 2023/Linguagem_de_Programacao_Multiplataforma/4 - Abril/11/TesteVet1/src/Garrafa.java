public class Garrafa extends Produto{
    private double litros;

    public Garrafa(int codigo, String descricao,double litros) {
        super(codigo, descricao);
        this.litros = litros;
    }

    public double getLitros() {
        return litros;
    }

    public void setLitros(double litros) {
        this.litros = litros;
    }

    public void encher()
    {
        System.out.println("Enchendo garrafa");
    }
    @Override
    public void mostra()
    {
        super.mostra();
        System.out.println(litros);
    }
}
