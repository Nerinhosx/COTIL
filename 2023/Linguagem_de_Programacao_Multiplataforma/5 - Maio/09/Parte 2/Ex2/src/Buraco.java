public class Buraco extends JogoDeCartas{
    private int nmPart;

    @Override
    public void iniciar() {
        System.out.println("Começando o buraquebas.");
    }

    @Override
    public void jogar() {
        System.out.println("Jogando o buraquebas.");
    }

    @Override
    public void finalizar() {
        System.out.println("Terminando o buraquebas.");
    }

    @Override
    public int qtdCartasDistribuidas() {
        return 11;
    }

    @Override
    public int numeroParticipantes() {
        return nmPart;
    }

    public Buraco(int nmPart) {
        this.nmPart = nmPart;
    }
}
