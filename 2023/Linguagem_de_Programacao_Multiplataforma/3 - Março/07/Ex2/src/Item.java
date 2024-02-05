public class Item {
    private int cod;
    private String desc;
    private int qcp;
    private double p;
    private double tot;

    public Item()
    {
        cod=0;
        desc="";
        qcp=0;
        p=0;
    }

    public int getCod()
    {
        return cod;
    }

    public void setCod(int cod)
    {
        this.cod = cod;
    }

    public String getDesc()
    {
        return desc;
    }

    public void setDesc(String desc)
    {
        this.desc = desc;
    }

    public int getQcp()
    {
        return qcp;
    }

    public void setQcp(int qcp)
    {
        if(qcp>0)
            this.qcp = qcp;
        else
            this.qcp = 0;
    }

    public double getP()
    {
        return p;
    }

    public void setP(double p)
    {
        if(p>0)
            this.p = p;
        else
            this.p = 0;
    }

    public double getTotal()
    {
        tot=p*qcp;
        return tot;
    }
}
