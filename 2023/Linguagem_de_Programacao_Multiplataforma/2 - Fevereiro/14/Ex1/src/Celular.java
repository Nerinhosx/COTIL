public class Celular {
    private String marca;
    private String modl;
    private int memp;
    private int memr;
    private double prc;
    private boolean on;

    public void setMarca(String marca)
    {
        this.marca = marca;
    }

    public String getMarca()
    {
        return marca;
    }

    public void setModelo(String modl)
    {
        this.modl = modl;
    }

    public String getModelo()
    {
        return modl;
    }

    public void setMemoriaPrincipal(int memp)
    {
        this.memp = memp;
    }

    public int getMemoriaPrincipal()
    {
        return memp;
    }

    public void setRAM(int memr)
    {
        this.memr = memr;
    }

    public int getRAM()
    {
        return memr;
    }

    public void setPreco(double prc)
    {
        this.prc = prc;
    }

    public double getPreco()
    {
        return prc;
    }

    public void estaOn(){
        if(on)
        {
            System.out.println("Está ligado!");
        }
        else
        {
            System.out.println("Está desligado!");
        }
    }
}