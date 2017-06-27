public class Compute {

    static native double compute(int i, long n);

    static {
        System.loadLibrary("ComputeJNI");
    }

    public static void main(String[] args) {
        double answer = compute(45, 67L);

        System.out.println("Answer: " + answer);
    }
}