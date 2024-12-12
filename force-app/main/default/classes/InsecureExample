public class InsecureExample {
    // This class does not enforce sharing rules
    // and allows access to all records without any checks.

    public List<Account> getAllAccounts() {
        // This query retrieves all account records without any sharing restrictions
        return [SELECT Id, Name FROM Account];
    }

    public void updateAccountName(Id accountId, String newName) {
        // This method updates the name of an account without checking if the user has permission
        Account acc = [SELECT Id, Name FROM Account WHERE Id = :accountId LIMIT 1];
        acc.Name = newName;
        update acc;
    }
}
