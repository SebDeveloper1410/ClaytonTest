public class BadPracticeExample {

    // Hardcoded values
    public static void updateAccountStatus() {
        List<Account> accountsToUpdate = [SELECT Id, Status__c FROM Account WHERE Status__c = 'Old Status'];

        for (Account acc : accountsToUpdate) {
            // Not using bulk-safe operations
            acc.Status__c = 'New Status';
            update acc; // DML statement inside a loop - this can cause governor limits issues
        }
    }

    // Method with poor exception handling
    public static void processAccounts() {
        try {
            updateAccountStatus();
        } catch (Exception e) {
            System.debug('Error occurred: ' + e.getMessage()); // Not logging properly or managing errors
        }
    }

    // Poor naming convention
    public void a() {
        // Method name 'a' is not descriptive
        List<Account> accs = [SELECT Id FROM Account LIMIT 10];
        for (Account acc : accs) {
            // Do nothing, just a placeholder for bad practice
        }
    }
}
