public with sharing class AccountHandler {
    public static Account insertNewAccount(String Name) {
        try {
            Account acct = new Account(Name=Name);
            insert acct;

            return acct;
        } catch (DmlException e) {
            System.debug('A DML exception has occurred: ' + e.getMessage());

            return null;
        }
    }
}
