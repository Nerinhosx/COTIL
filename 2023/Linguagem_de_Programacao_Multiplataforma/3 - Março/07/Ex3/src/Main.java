public class Main {
    public static void main(String[] args) {
        Pessoa p1 = new Pessoa(14, 3, 1879);
        p1.setNome("Albert Einstein");
        Pessoa p2 = new Pessoa(4, 1, 1643, "Isaac Newton");
        p1.setIdadeEDataAtual(7, 3, 2023);
        System.out.println(p1.getNome() +" nasceu em "+ p1.getDia() +"/"+ p1.getMes() +"/"+ p1.getAno() +" e possuiria "+ p1.getIdade() +" anos de idade.");
        p2.setIdadeEDataAtual(7, 3, 2023);
        System.out.println(p2.getNome() +" nasceu em "+ p2.getDia() +"/"+ p2.getMes() +"/"+ p2.getAno() +" e possuiria "+ p2.getIdade() +" anos de idade.");
    }
}