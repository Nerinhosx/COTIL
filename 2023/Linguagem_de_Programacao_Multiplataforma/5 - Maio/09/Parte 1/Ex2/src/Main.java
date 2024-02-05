public class Main {
    public static void main(String[] args) {
        CartaoCredito c1 = new CartaoCredito(1000);
        CartaoCredito c2 = new CartaoCredito(2000);
        Dinheiro d1 = new Dinheiro(16);
        Dinheiro d2 = new Dinheiro(30);
        Cheque ch1 = new Cheque(2500);
        Cheque ch2 = new Cheque(4000);

        System.out.println("Cartão de Crédito 1: ");
        System.out.println("Dias de Faturamento: " + c1.getDiasFaturamento());
        System.out.println("Porcentagem Financeira Paga: "+ c1.getPorcentagemFinanceiraPaga());
        System.out.println("------------------------------------------------");
        System.out.println("Dinheiro 1: ");
        System.out.println("Dias de Faturamento: " + d1.getDiasFaturamento());
        System.out.println("Porcentagem Financeira Paga: "+ d1.getPorcentagemFinanceiraPaga());
        System.out.println("------------------------------------------------");
        System.out.println("Cheque 1: ");
        System.out.println("Dias de Faturamento: " + ch1.getDiasFaturamento());
        System.out.println("Porcentagem Financeira Paga: "+ ch1.getPorcentagemFinanceiraPaga());
    }
}