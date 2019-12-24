trigger contactbeforedelete on contact(before delete){
    for(contact c:trigger.old){
        if(c.accountId ==null)
        c.addError('Your not Authorized to perform this task');
    
    
    }
}