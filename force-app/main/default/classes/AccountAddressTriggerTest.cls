@isTest
    public class AccountAddressTriggerTest {
     public TestMethod static void Matchingaddressdelete() {
     	//List<account> acc=new List<Account>();
     	Account acc=new Account();
        
         acc.ShippingPostalCode ='testing';
         acc.BillingPostalCode='testing2';
          acc.Match_Billing_Address__c =true;
         
         
         insert acc;
        // System.assertEquals(acc.ShippingPostalCode, 'BillingPostalCode');
        // update acc;
         
        }
    
        }