public class CartaoCredito implements TipoPagamento {
    private double valor;

    public CartaoCredito(double valor) {
        this.valor = valor;
    }

    @Override
    public int getDiasFaturamento() {
        return 20;
    }

    @Override
    public double getPorcentagemFinanceiraPaga() {
        return 0.1;
    }
}
