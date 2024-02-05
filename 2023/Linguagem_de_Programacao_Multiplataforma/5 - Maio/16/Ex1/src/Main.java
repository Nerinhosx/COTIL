public class Main {
    public static void main(String[] args) {
        Object o = null;
        try {
            o.toString();
        }
        catch (NullPointerException e)
        {
            System.out.println("O objeto não pode ser nulo, altere-o.");
        }
        finally {
            System.out.println("Só para testar");
        }
    }
}