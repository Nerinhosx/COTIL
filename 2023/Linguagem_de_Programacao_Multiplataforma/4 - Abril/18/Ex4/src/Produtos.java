public class Produtos extends Loja{
    private int cod;
    private String desc;
    private double prc;
    private String uni;

    public Produtos(int cod, String desc, double prc, String uni) {
        this.cod = cod;
        this.desc = desc;
        this.prc = prc;
        this.uni = uni;
    }

    public int getCod() {
        return cod;
    }

    public void setCod(int cod) {
        this.cod = cod;
    }

    public String getDesc() {
        return desc;
    }

    public void setDesc(String desc) {
        this.desc = desc;
    }

    public double getPrc() {
        return prc;
    }

    public void setPrc(double prc) {
        this.prc = prc;
    }

    public String getUni() {
        return uni;
    }

    public void setUni(String uni) {
        this.uni = uni;
    }

    public void mostra(){
        System.out.println(cod +"\n"+ desc +"\n"+ prc +"\n"+ uni);
    }
}
