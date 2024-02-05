public class Car implements CarbonFootprint{
    private String comb;
    private float cilind;

    public Car(String comb, float cilind) {
        this.comb = comb;
        this.cilind = cilind;
    }

    public String getComb() {
        return comb;
    }

    public void setComb(String comb) {
        this.comb = comb;
    }

    public float getCilind() {
        return cilind;
    }

    public void setCilind(float cilind) {
        this.cilind = cilind;
    }

    @Override
    public double getCarbonFootprint() {
        return 10;
    }
}
