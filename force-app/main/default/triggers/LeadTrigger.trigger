trigger LeadTrigger on Lead (before insert) {
    for(Lead obj : trigger.new)
    {
        if(obj.firstname=='test')
        {
        obj.firstname.adderror('first name cannt be test');
        }
    }

}