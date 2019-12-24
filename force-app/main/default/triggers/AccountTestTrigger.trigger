trigger AccountTestTrigger on Account (before insert,before update) {
    for(Account a:trigger.new){
     system.debug('****'+a);
    
    List<contact> listcon = [select id,salutation,firstname,lastname from contact where Accountid=:a.id];
    
    system.debug('$$$$$$'+listcon);
    
    for(contact c: listcon){
    system.debug('****llistcontact'+c);
    
 
    c.Description=c.salutation+ ' ' +c.firstname+ '' +c.lastname;
    update c;
    system.debug('*****C'+c);
    
    }
  
    
    }

}