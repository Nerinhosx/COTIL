public class Futebol extends JogoComBola{
    private String eqp1;
    private String eqp2;

    @Override
    public void iniciar() {
        System.out.println("Começando o futebas.");
    }

    @Override
    public void jogar() {
        System.out.println("Jogando futebas.");
    }

    @Override
    public void finalizar() {
        System.out.println("Cabô o futebas.");
    }

    @Override
    public void setNomeEquipes(String eqp1, String eqp2)
    {
        this.eqp1 = eqp1;
        this.eqp2 = eqp2;
    }

    public Futebol(String eqp1, String eqp2) {
        this.eqp1 = eqp1;
        this.eqp2 = eqp2;
    }
}
