public class Musica {
    private int cod;
    private String nome;
    private double dur;
    private String alb;
    private String art;

    public Musica(int cod, String nome, double dur, String alb, String art) {
        this.cod = cod;
        this.nome = nome;
        this.dur = dur;
        this.alb = alb;
        this.art = art;
    }

    public int getCod() {
        return cod;
    }

    public void setCod(int cod) {
        this.cod = cod;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public double getDur() {
        return dur;
    }

    public void setDur(double dur) {
        this.dur = dur;
    }

    public String getAlb() {
        return alb;
    }

    public void setAlb(String alb) {
        this.alb = alb;
    }

    public String getArt() {
        return art;
    }

    public void setArt(String art) {
        this.art = art;
    }

    public void mostra(){
        System.out.println(cod +"\n"+ nome +"\n"+ dur +"\n"+ alb +"\n"+ art);
    }
}
