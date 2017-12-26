trigger CountFemaleContacts on Contact 
(after insert, after update, after delete) {

  // Create a list of contacts in the trigger
  List<Contact> contactsInTrigger;
  if (Trigger.isDelete) {
    contactsInTrigger = Trigger.old;
  } else {
    contactsInTrigger = Trigger.new;
  }

  // Iterate across all contacts in the trigger
  for (Contact c : contactsInTrigger) {

    // Query all accounts and their female contacts
    List<Account> accounts = 
        [SELECT Id, Name, Number_of_Females__c, 
          (SELECT Id FROM Contacts WHERE Sex__c = 'Female') 
          FROM Account];

    // Count all female contacts, then update
    for (Account a : accounts) {
      List<Contact> femaleContacts = a.Contacts;
      if (femaleContacts != null) {
        a.Number_of_Females__c = femaleContacts.size();
      }
      update a;
    }

  }

}