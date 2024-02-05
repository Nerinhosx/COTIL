public class Artistas {
    private int cod;
    private String nome;
    private String nac;

    public Artistas(int cod, String nome, String nac) {
        this.cod = cod;
        this.nome = nome;
        this.nac = nac;
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

    public String getNac() {
        return nac;
    }

    public void setNac(String nac) {
        this.nac = nac;
    }

    public void mostra(){
        System.out.println(cod +"\n"+ nome +"\n"+ nac);
    }
}
