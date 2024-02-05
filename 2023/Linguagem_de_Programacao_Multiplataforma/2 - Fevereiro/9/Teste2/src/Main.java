import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        String nome;
        int idade;
        Scanner tc=new Scanner(System.in);
        System.out.print("Informe seu nome: ");
        nome=tc.nextLine();
        System.out.print("Informe sua idade: ");
        idade=tc.nextInt();
        System.out.print("Seu nome é: "+nome+"\nSua idade é: "+idade);
    }
}