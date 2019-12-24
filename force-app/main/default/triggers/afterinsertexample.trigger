trigger afterinsertexample on Account (after insert) {
   
    List<Account> accList = new List<Account>();
    
    system.debug('accountlist'+accList);
    
    for(Account acc: Trigger.New){
     Account newAcc = new Account();
     
     system.debug('allaccount'+newAcc );
     
     newAcc.Id = acc.Id; 
     system.debug('idneacc'+newAcc);
     system.debug('accid'+acc);
     
    newAcc.Name = acc.Name + 'Test'; 
    system.debug('newaccname'+acc);
      system.debug('accname'+newAcc);
    
    accList.add(newAcc);
    system.debug('finalnewacc'+newAcc);
}
 
update accList;
system.debug('after update triggeroutput'+accList);
}