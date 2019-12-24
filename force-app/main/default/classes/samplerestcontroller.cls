@RestResource(urlMapping='/showAccounts/*')
global class samplerestcontroller
{
    @HttpGet
    global static List<Account> getAccounts()
    {
        List<Account> lts;
        try
        {
            lts= [select Name,id,Accountsource from Account limit 1000];   
            return lts;
        }
        catch(Exception ex)
        {
            system.debug('Error:'+ex.getMessage());
        }
        return lts;

    }
}