public class Main {
    public static void main(String[] args) {
        Imovel i = new Imovel(2930, "José CLáudio", 5000);
        System.out.println(i.code +"\n"+ i.edc +"\n"+ i.prc);

        System.out.println("\n\n");

        Novo n = new Novo(9838, "Marcaíno", 400, 35);
        n.valorFinal();
        System.out.println(n.code +"\n"+ n.edc +"\n"+ n.prc);

        System.out.println("\n\n");

        Usado u = new Usado(9839, "Marcaíno", 400, 35);
        u.valorFinal();
        System.out.println(u.code +"\n"+ u.edc +"\n"+ u.prc);
    }
}