public class Main {
    public static void main(String[] args) {
        Item i = new Item();
        i.setCod(203958);
        i.setDesc("Um 'brinquedo' que as pessoas amam.");
        i.setP(200.65);
        i.setQcp(25);
        System.out.println("Item 1: \nCódigo: "+ i.getCod() +"\nDescrição: "+ i.getDesc() +"\nPreço: "+ i.getP() +"\nQuantidade comprada: "+ i.getQcp() +"\n\nTotal a pagar: "+ i.getTotal()) ;
    }
}