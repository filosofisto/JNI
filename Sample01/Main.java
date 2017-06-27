
public class Main {

    static {
        System.loadLibrary("NativeLib");
    }

    public static void main(String[] args) {
        NativeMethods nm = new NativeMethods();

        nm.nativeOne();
        nm.nativeTwo();
    }
}