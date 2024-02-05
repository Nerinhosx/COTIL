public class Main {
    public static void main(String[] args) {
        String nome = "carlos";
        try
        {
            System.out.println(nome.toUpperCase());
        }
        catch (NullPointerException e)
        {
            System.out.println("SISTEMA INFORMA: String não pode ser nula.");
        }
        catch (StringIndexOutOfBoundsException e)
        {
            System.out.println("SISTEMA INFORMA: Índice inexistente na string.");
        }
        finally
        {
            System.out.println("Passei no finally.");
        }

        Aluno al1 = new Aluno();
        try {
            al1.setRa(1);
        }
        catch (IllegalArgumentException e)
        {
            System.out.println(e.getMessage());
        }

        try
        {
            al1.setNome(null);
        }
        catch (IllegalArgumentException e)
        {
            System.out.println(e.getMessage());
        }
        System.out.println("\n******************* FIM *******************");
    }
}