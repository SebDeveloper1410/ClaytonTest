public with sharing class SecureAccountManager {
    
    // Method to get account details while enforcing FLS
    public Account getAccountDetails(Id accountId) {
        // Query the account record
        Account acc = [SELECT Id, Name, Phone, Industry FROM Account WHERE Id = :accountId LIMIT 1];

        // Check Field-Level Security for each field
        if (!Schema.sObjectType.Account.fields.Name.isAccessible()) {
            acc.Name = null; // Nullify if the user does not have access
        }
        if (!Schema.sObjectType.Account.fields.Phone.isAccessible()) {
            acc.Phone = null;
        }
        if (!Schema.sObjectType.Account.fields.Industry.isAccessible()) {
            acc.Industry = null;
        }

        return acc;
    }

    // Method to update account name with CRUD and FLS checks
    public void updateAccountName(Id accountId, String newName) {
        // Ensure the user has edit access to the Account object
        if (!Schema.sObjectType.Account.isUpdateable()) {
            throw new CustomException('You do not have permission to update Account records.');
        }

        // Query the account record
        Account acc = [SELECT Id, Name FROM Account WHERE Id = :accountId LIMIT 1];

        // Check if the user has FLS access to the Name field
        if (!Schema.sObjectType.Account.fields.Name.isUpdateable()) {
            throw new CustomException('You do not have permission to update the Name field.');
        }

        // Update the account name
        acc.Name = newName;
        update acc;
    }

    // Custom exception class for handling permission errors
    public class CustomException extends Exception {}
}
