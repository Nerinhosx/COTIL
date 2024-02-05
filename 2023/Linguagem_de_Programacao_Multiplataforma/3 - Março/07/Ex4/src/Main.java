public class Main {
    public static void main(String[] args) {
        Estoque est1 = new Estoque("Impressora", 13, 6);
        Estoque est2 = new Estoque("Monitor", 11, 13);
        Estoque est3 = new Estoque("Mouse", 6, 2);
        est1.baixaEstoque(5);
        est2.reporEstoque(7);
        est3.baixaEstoque(4);
        if(est1.precisaRepor())
            System.out.println("Estoque ("+ est1.getNome() +") precisa ser reposto.");
        if(est2.precisaRepor())
            System.out.println("Estoque ("+ est2.getNome() +") precisa ser reposto.");
        if(est3.precisaRepor())
            System.out.println("Estoque ("+ est3.getNome() +") precisa ser reposto.");
        System.out.println("\n");
        est1.mostra();
        System.out.println("\n");
        est2.mostra();
        System.out.println("\n");
        est3.mostra();
    }
}