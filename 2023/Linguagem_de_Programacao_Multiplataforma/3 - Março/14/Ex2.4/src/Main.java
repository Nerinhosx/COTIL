public class Main {
    public static void main(String[] args) {
        SimuladorCaixaBanco s1 = new SimuladorCaixaBanco(1);
        s1.proximoAtendimento();
        System.out.println("\n\n");
        SimuladorCaixaBanco s2 = new SimuladorCaixaBanco(1);
        s2.proximoAtendimento();
    }
}