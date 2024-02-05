public abstract class Building implements CarbonFootprint{
    private int nPes;
    private boolean usoER;
    private int nLamp;
    private boolean usoAC;

    public Building(int nPes, boolean usoER, int nLamp, boolean usoAC) {
        this.nPes = nPes;
        this.usoER = usoER;
        this.nLamp = nLamp;
        this.usoAC = usoAC;
    }

    public int getnPes() {
        return nPes;
    }

    public void setnPes(int nPes) {
        this.nPes = nPes;
    }

    public boolean isUsoER() {
        return usoER;
    }

    public void setUsoER(boolean usoER) {
        this.usoER = usoER;
    }

    public int getnLamp() {
        return nLamp;
    }

    public void setnLamp(int nLamp) {
        this.nLamp = nLamp;
    }

    public boolean isUsoAC() {
        return usoAC;
    }

    public void setUsoAC(boolean usoAC) {
        this.usoAC = usoAC;
    }

    @Override
    public double getCarbonFootprint() {
        return 300;
    }
}
