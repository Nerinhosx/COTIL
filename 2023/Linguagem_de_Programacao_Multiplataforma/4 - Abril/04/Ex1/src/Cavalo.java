public class Cavalo extends Animal{

    public Cavalo(String nome, int idade)
    {
        super(nome, idade);
    }

    @Override
    public void emitirSom()
    {
        System.out.println("Relinch");
    }

    @Override
    public void acao()
    {
        System.out.println("Correr");
    }
}
