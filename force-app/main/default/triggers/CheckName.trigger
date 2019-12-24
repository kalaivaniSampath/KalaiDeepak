trigger CheckName on Account (before insert) {

    List<Account> a1=[select id,name from account where Account.name=:trigger.new[0].name];
    if(a1.size()>0)
    {
       trigger.new[0].name.adderror('Account name Alread exist');    
    }

}