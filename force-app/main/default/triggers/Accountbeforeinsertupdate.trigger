trigger Accountbeforeinsertupdate on account(before insert, before update)
{
for (Account a:trigger.new){
    if(trigger.isinsert){
      a.description='before insert successfully';    
    }
    if(trigger.isupdate){
    
     a.description='before update successfully';
    }

 
}
}