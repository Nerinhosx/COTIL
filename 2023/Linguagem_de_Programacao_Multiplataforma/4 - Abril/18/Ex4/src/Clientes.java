public class Clientes extends Loja{
    private String nome;
    private String end;
    private int tel;

    public Clientes(String nome, String end, int tel) {
        this.nome = nome;
        this.end = end;
        this.tel = tel;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getEnd() {
        return end;
    }

    public void setEnd(String end) {
        this.end = end;
    }

    public int getTel() {
        return tel;
    }

    public void setTel(int tel) {
        this.tel = tel;
    }
}
