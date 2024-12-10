@isTest(seeAllData=true)
public class FailingClassTest {
    
    @isTest
    static void testFailMethod() {
        // Arrange
        FailingClass failingInstance = new FailingClass();
        
        // Act & Assert
        try {
            failingInstance.failMethod();
            // If no exception is thrown, the test fails
            System.assert(false, 'Expected CustomException was not thrown.');
        } catch (FailingClass.CustomException e) {
            // Test passes as the expected exception was caught
            System.assertEquals('This is a forced failure for testing purposes.', e.getMessage());
        }
    }
}
