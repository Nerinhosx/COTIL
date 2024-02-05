public class Main {
    public static void main(String[] args) {
        Animal a1 = new Cachorro("Carlos", 8);
        Animal a2 = new Cavalo("Enrico", 22);
        Animal a3 = new Preguica("Jedson", 16);
        a1.emitirSom();
        a2.emitirSom();
        a3.emitirSom();

        if(a1 instanceof Cachorro)
            System.out.println("a1 é instanciável.");
        else
            System.out.println("a1 não é instanciável.");

        if(a1 instanceof Animal)
            System.out.println("a1 é instanciável.");
        else
            System.out.println("a1 não é instanciável.");
        System.out.println("----------------------");

        if(a2 instanceof Cavalo)
            System.out.println("a2 é instanciável.");
        else
            System.out.println("a2 não é instanciável.");

        if(a2 instanceof java.lang.Object)
            System.out.println("a2 é instanciável.");
        else
            System.out.println("a2 não é instanciável.");
        System.out.println("----------------------");

        if(a3 instanceof Preguica)
            System.out.println("a3 é instanciável.");
        else
            System.out.println("a3 não é instanciável.");

        if(a3 instanceof java.lang.Object)
            System.out.println("a3 é instanciável.");
        else
            System.out.println("a3 não é instanciável.");
    }
}