@isTest
public class AccountwithcontactTest {

 public TestMethod static void accountdeleteTest() {
  profile p = [select id, name from profile where Name =: system.label.Profile_Name limit 1];
  system.debug('profileid' + p);
  user u = [select id, name from user where ProfileId =: p.id limit 1];
  system.debug('User Id' + u);
  system.runAs(u) {
   Account acct = new Account(Name = 'Test Account');
   insert acct;
   Contact conts = new Contact();
   conts.FirstName = 'Testing First Name';
   conts.LastName = 'Testing Last Name';
   conts.email = 'testig@test.com';
   conts.accountId = acct.id;
   insert conts;

   Test.startTest();
   //Database.DeleteResult result = Database.delete(acct, false);
   delete acct;
   Test.stopTest();

  }
 }

}