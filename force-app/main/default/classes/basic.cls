public with sharing class basic {
   
         Account acc=new Account();
    {
        acc.Name='insert1';
        acc.phone='98742349';
        insert acc;
        ID accid=acc.id;
        system.debug('***'+ accid);
    }

    
            List<Account> accounts;

        public List<Account> getAccounts() {
                if(accounts == null) accounts = [SELECT Name FROM Account LIMIT 10];
                return accounts;
        }

}