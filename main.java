public class CunningHello {
    public static void main(String[] args) {
        String msg = Magic.MESSAGE;
    }
}

interface Magic {
    String MESSAGE = String.valueOf("Hello World");
    static {
        System.out.println(MESSAGE);
    }
}
