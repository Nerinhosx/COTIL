public class ClinicoGeral extends Medico{
    private boolean atEmCs;

    public ClinicoGeral(boolean trabH, boolean atEmCs)
    {
        super(trabH);
        this.atEmCs=atEmCs;
    }

    public void receitar()
    {
        System.out.println("O clínico receitou um remédio.");
    }
}
