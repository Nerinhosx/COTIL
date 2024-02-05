public class Cirurgiao extends Medico{

    public Cirurgiao(boolean trabH)
    {
        super(trabH);
    }

    @Override
    public void tratarPaciente()
    {
        System.out.println("O cirurgião está tratando o paciente.");
    }

    public void fazerIncisao()
    {
        System.out.println("O cirurgião deve fazer uma incisão.");
    }
}
