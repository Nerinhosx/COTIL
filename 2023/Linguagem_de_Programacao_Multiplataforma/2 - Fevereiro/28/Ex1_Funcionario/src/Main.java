public class Main {
    public static void main(String[] args) {
        Funcionario f1 = new Funcionario();
        Funcionario f2 = new Funcionario("Carlos", "Enrico", 2500);

        f1.setNome("Marcos");
        f1.setSobrenome("Emiliano");
        f1.setSm(3400);

        System.out.println("O nome do 1º funcionário é: "+ f1.getNome() +". \nO sobrenome do 1º funcionário é: "+ f1.getSobrenome() + ". \nO salário mensal de "+ f1.getNome() +" é: "+ f1.getSm());
        System.out.println("\nO nome do 2º funcionário é: "+ f2.getNome() +". \nO sobrenome do 2º funcionário é: "+ f2.getSobrenome() + ". \nO salário mensal de "+ f2.getNome() +" é: "+ f2.getSm());
        System.out.println("\nO salário anual do 1º funcionário é: "+ f1.getSa());
        System.out.println("\nO salário anual do 2º funcionário é: "+ f2.getSa());
        System.out.println("\nO salário anual (com aumento) do 1º funcionário é: "+ f1.getSma());
        System.out.println("\nO salário anual (com aumento) do 2º funcionário é: "+ f2.getSma());
    }
}