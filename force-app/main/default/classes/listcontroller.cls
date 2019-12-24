public with sharing class listcontroller {
    
    public list<Account> Listacc {get;set;} 
    public list<user> uid {get;set;}  
   
public listcontroller(){
    //Step1
       Listacc =new list<account>();
       Listacc =[select id,name from account];
       system.debug('outputtest' +Listacc);
    
    // Step2
   
    Listacc =[select id,name from account ];
   system.debug('outputtest' +Listacc );
    uid=[select id,name from user];
    system.debug('useridname' +uid);
    
    //Ste3
    
}

}