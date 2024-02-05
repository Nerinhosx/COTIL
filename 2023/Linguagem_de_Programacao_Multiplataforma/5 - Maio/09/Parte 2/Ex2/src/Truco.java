public class Truco extends JogoDeCartas{
    private int nmPart;

    @Override
    public void iniciar() {
        System.out.println("Começando o truquebas.");
    }

    @Override
    public void jogar() {
        System.out.println("Jogando truquebas.");
    }

    @Override
    public void finalizar() {
        System.out.println("Cabô o truquebas.");
    }

    @Override
    public int qtdCartasDistribuidas() {
        return 3;
    }

    @Override
    public int numeroParticipantes() {
        return nmPart;
    }

    public Truco(int nmPart) {
        this.nmPart = nmPart;
    }
}
