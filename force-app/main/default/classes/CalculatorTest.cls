@isTest
public class CalculatorTest {
    @isTest
    static void testAdd() {
        Decimal result = Calculator.add(5, 3);
        System.assertEquals(8, result, 'The addition result should be 8');
    }

    @isTest
    static void testSubtract() {
        Decimal result = Calculator.subtract(5, 3);
        System.assertEquals(2, result, 'The subtraction result should be 2');
    }

    @isTest
    static void testMultiply() {
        Decimal result = Calculator.multiply(5, 3);
        System.assertEquals(15, result, 'The multiplication result should be 15');
    }

    @isTest
    static void testDivide() {
        Decimal result = Calculator.divide(6, 3);
        System.assertEquals(2, result, 'The division result should be 2');
    }

    @isTest
    static void testDivideByZero() {
        // Expecting a DivideByZeroException when trying to divide by zero
        Boolean exceptionThrown = false;
        try {
            Calculator.divide(5, 0);
        } catch (Calculator.DivideByZeroException e) {
            exceptionThrown = true;
        }
        System.assert(exceptionThrown, 'Expected DivideByZeroException was not thrown');
    }
}
