public class Reverse {

    static {
        System.loadLibrary("Reverse");
    }

    public static native String reverse(String text);

    public static void main(String[] args) {
        String s = reverse("to be or not to be");
        System.out.println(s);
    }
}