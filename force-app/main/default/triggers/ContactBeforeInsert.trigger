trigger ContactBeforeInsert  on Contact (before insert) {
    for(contact c :trigger.old){
        c.Description='successfully in salesforce';
        system.debug('contact inserted'+c);


    }



}