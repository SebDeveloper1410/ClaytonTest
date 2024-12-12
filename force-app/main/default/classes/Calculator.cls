public class Calculator {
    // Method to add two numbers
    public static Decimal add(Decimal a, Decimal b) {
        return a + b;
    }

    // Method to subtract two numbers
    public static Decimal subtract(Decimal a, Decimal b) {
        return a - b;
    }

    // Method to multiply two numbers
    public static Decimal multiply(Decimal a, Decimal b) {
        return a * b;
    }

    // Method to divide two numbers
    public static Decimal divide(Decimal a, Decimal b) {
        if (b == 0) {
            throw new DivideByZeroException('Cannot divide by zero.');
        }
        return a / b;
    }

    // Custom exception for division by zero
    public class DivideByZeroException extends Exception {}
}
