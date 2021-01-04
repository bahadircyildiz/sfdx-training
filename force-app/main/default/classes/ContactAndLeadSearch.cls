public with sharing class ContactAndLeadSearch {
    public static List<List<SObject>> searchContactsAndLeads(String keyword){
        List<List<SObject>> result = [FIND :keyword IN NAME FIELDS RETURNING Contact,Lead];

        return result;
    }
}
