trigger HelloWorld on Lead (before update) {
    for(lead l:trigger.new)
    {
        l.FirstName='Hello';
        l.LastName='world';
    
    }
}