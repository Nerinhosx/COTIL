public class Main {
    public static void main(String[] args) {

        Gerentes g1 = new Gerentes("Clóvis", 4500, "Clóvão", 8424);
        Telefonistas t1 = new Telefonistas("Carlos", 3500, 1539);
        Secretarias s1 = new Secretarias("Márcia", 10500, 4590);

        //System.out.println("Gerentes: \n\n"+ g1.getNome() +"  "+ g1.getSalario() +"  "+ g1.getnUser() +"  "+ g1.getSenha() +"  "+ g1.calculaBonificacao());
        //System.out.println("\nTelefonistas: \n\n"+ t1.getNome() +"  "+ t1.getSalario() +"  "+ t1.getcET() +"  "+ t1.calculaBonificacao());
        //System.out.println("\nSecretárias: \n\n"+ s1.getNome() +"  "+ s1.getSalario() +"  "+ s1.getnRam() +"  "+ s1.calculaBonificacao());
        g1.calcBonificacao();
        t1.calcBonificacao();
        s1.calcBonificacao();

        g1.mostraDados();
        System.out.println("\n");
        t1.mostraDados();
        System.out.println("\n");
        s1.mostraDados();
    }
}