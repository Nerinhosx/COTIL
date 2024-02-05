public class Estoque {
    private String nome;
    private int qtdAtual;
    private int qtdmin;

    public Estoque()
    {
        nome = "";
        qtdAtual = 0;
        qtdmin = 0;
    }

    public Estoque(String nome, int qtdAtual, int qtdmin)
    {
        this.nome = nome;
        if(qtdAtual>=0)
            this.qtdAtual = qtdAtual;
        else
            this.qtdAtual = 0;
        if(qtdmin>=0)
            this.qtdmin = qtdmin;
        else
            this.qtdmin = 0;
    }

    public String getNome()
    {
        return nome;
    }

    public void setNome(String nome)
    {
        this.nome = nome;
    }

    public int getQtdAtual()
    {
        return qtdAtual;
    }

    public void setQtdAtual(int qtdAtual)
    {
        if(qtdAtual>=0)
            this.qtdAtual = qtdAtual;
        else
            this.qtdAtual = 0;
    }

    public int getQtdmin()
    {
        return qtdmin;
    }

    public void setQtdmin(int qtdmin)
    {
        if(qtdmin>=0)
            this.qtdmin = qtdmin;
        else
            this.qtdmin = 0;
    }

    public void reporEstoque(int qtd)
    {
        qtdAtual+=qtd;
    }

    public void baixaEstoque(int qtd)
    {
        qtdAtual-=qtd;
    }

    public void mostra()
    {
        System.out.println("Produto: "+ nome +"\nQuantidade Atual: "+ qtdAtual +"\nQuantidade Mínima: "+ qtdmin);
    }

    public boolean precisaRepor()
    {
        if(qtdAtual<=qtdmin)
            return true;
        else
            return false;
    }
}
