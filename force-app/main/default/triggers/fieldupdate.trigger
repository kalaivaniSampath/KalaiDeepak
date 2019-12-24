trigger fieldupdate on Account (before insert,before update) {
 for(Account acc:trigger.new){
  if(acc.AccountNumber==null){
   acc.AccountNumber='test';
  }
 
 }

}