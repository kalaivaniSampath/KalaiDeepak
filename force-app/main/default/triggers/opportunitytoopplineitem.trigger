trigger opportunitytoopplineitem on Opportunity (before insert,before update,after insert,after update) {
  map<id,opportunity> allopportunity=new map<id,opportunity>();
 //if (Trigger.isBefore && Trigger.isUpdate){
       system.debug('newmap'+trigger.newmap);
        system.debug('oldmap'+trigger.oldmap);
    
  //  }

          

 }