public class LowQualityExample {

    // This method is supposed to calculate the total of a list of numbers
    public static Integer calculateTotal(List<Integer> numbers) {
        Integer total = 0;
        
        // Inefficient loop structure
        for (Integer i = 0; i < numbers.size(); i++) {
            total += numbers.get(i); // Using get() in a loop can be inefficient
        }
        
        // Unnecessary conditional check
        if (total < 0) {
            return 0; // Returning 0 for negative totals, not ideal for all situations
        } else {
            return total; // Returning total even if it's 0
        }
    }

    // This method is meant to return a greeting, but it's hardcoded
    public static String getGreeting() {
        String greeting = 'Hello, World!'; // No personalization or flexibility
        return greeting;
    }

    // Method that does nothing useful
    public static void doNothing() {
        // This method intentionally left blank
    }

    // Inefficient way to check if a number is even
    public static Boolean isEven(Integer number) {
        if (number % 2 == 0) {
            return true; // Correct check
        } else {
            return false; // Correct check, but could be simplified
        }
    }
}
