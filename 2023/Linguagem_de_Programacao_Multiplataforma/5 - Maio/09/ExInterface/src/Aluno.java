public class Aluno implements IAluno{

    @Override
    public double calcMedia(double n1, double n2){
        return ((n1+n2)/2);
    }

    @Override
    public void chorar(){
        System.out.println("Buá buá buá...");
    }
}
