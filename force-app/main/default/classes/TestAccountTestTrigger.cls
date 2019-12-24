@isTest
private class TestAccountTestTrigger {

     static Testmethod void TestAccountTestTrigger(){
     Account a=new Account();
     a.name='Testing';
     insert a;
     Contact c = new contact();
     c.AccountId=a.id;
     
     c.lastname='test';
    
     insert c;
     update a;
     
    }
 }