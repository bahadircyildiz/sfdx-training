public with sharing class ContactSearch {
    public static Contact[] searchForContacts(String lastName, String mailingPostalCode) {
        try {
            Contact[] contacts = [SELECT Account.Id, Account.Name FROM Contact WHERE (LastName=:lastName AND MailingPostalCode=:mailingPostalCode)];
            return contacts;
        } catch (DmlException e) {
            System.debug('An error has occured ' + e.getMessage());
            return null;
        }
    }
}
