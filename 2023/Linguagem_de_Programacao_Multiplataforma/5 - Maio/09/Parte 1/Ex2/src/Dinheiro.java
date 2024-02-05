public class Dinheiro implements TipoPagamento{
    private double valor;

    public Dinheiro(double valor) {
        this.valor = valor;
    }

    @Override
    public int getDiasFaturamento() {
        return 0;
    }

    @Override
    public double getPorcentagemFinanceiraPaga() {
        return 0;
    }
}
