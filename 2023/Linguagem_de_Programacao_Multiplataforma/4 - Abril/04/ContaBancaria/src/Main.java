public class Main {
    public static void main(String[] args) {
        ContaBancaria cb1 = new ContaBancaria("Jedson", 1085, 2400);
        ContaPoupanca cp1 = new ContaPoupanca("Marcos", 8540, 224, 15);
        ContaEspecial ce1 = new ContaEspecial("Nero",6969,10000,200);

        cb1.depositar(1500000);
        cb1.sacar(10000);
        System.out.println("Conta bancária 1: \n"+ cb1.cliente +"\n"+ cb1.numConta +"\n"+ cb1.saldo);

        System.out.println("\n\n");

        System.out.println("Conta poupança 1: \n"+ cp1.cliente +"\n"+ cp1.numConta +"\n"+ cp1.saldo);
        cp1.sacar(225);
        System.out.println(cp1.saldo);
        cp1.depositar(220);
        cp1.calcularNovoSaldo(0.1);
        System.out.println(cp1.saldo);

        System.out.println("\n\n");

        ce1.sacar(10300);
        System.out.println("Conta especial 1: \n"+ ce1.cliente +"\n"+ ce1.numConta +"\n"+ ce1.saldo);
        ce1.depositar(1400);
        System.out.println(ce1.saldo);
    }
}