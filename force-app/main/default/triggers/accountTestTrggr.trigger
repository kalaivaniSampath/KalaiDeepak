trigger accountTestTrggr on Account (after insert, after update) {
   //This queries all Contacts related to the incoming Account records in a single SOQL query
   //This is also an example of how to use child relationships in SOQL
   
   List<Account> accountsWithContacts = [select id, name, (select id, salutation, description,
   firstname, lastname, email from Contacts)
   from Account where Id IN :Trigger.newMap.keySet()];
 
 
   List<Contact> contactsToUpdate = new List<Contact>();
 
   for(Account a: accountsWithContacts){
      // Use the child relationships dot syntax to access the related Contacts
      for(Contact c: a.Contacts){
 
         c.Description=c.salutation + ' ' + c.firstName + ' ' + c.lastname;
 
         contactsToUpdate.add(c);
 
      }
   }
 
   //Now outside the FOR Loop, perform a single Update DML statement.
   update contactsToUpdate;
}