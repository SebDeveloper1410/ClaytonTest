@isTest
public class TestUnexpectedConsoleLogs {
    
    @isTest
    static void testNoUnexpectedConsoleLogs() {
        // Simulate the execution of a method that should not contain unexpected console logs
        Test.startTest();
        
        // Call the method you want to test
        MyApexClass.myMethod();
        
        Test.stopTest();
        
        // Verify that no unexpected console logs are present
        List<String> logs = Limits.getLogLines();
        for (String log : logs) {
            System.assert(!log.contains('console.log'), 
                'Unexpected console.log found in logs: ' + log);
        }
    }
}
