public class Ferrari implements ICarro, IItemLoja{
    @Override
    public void abrirPorta() {
        System.out.println("Ferrari abrindo a porta.");
    }

    @Override
    public void acelerar() {
        System.out.println("Ferrari acelerando: 0 a 100 em 3 segundos.");
    }

    @Override
    public void parar() {
        System.out.println("Ferrari parando.");
    }

    @Override
    public double getValor() {
        return 520000;
    }
}
