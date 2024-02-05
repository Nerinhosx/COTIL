public class ConversaoDeTemperatura {

    public static double paraF(double c)
    {
        return (c*1.8)+32;
    }

    public static double paraC(double f)
    {
        return (f-32)/1.8;
    }
}
