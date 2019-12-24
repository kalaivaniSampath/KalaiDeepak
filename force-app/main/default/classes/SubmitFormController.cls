public class SubmitFormController
{
    public string username{get;set;}
    public string password{get;set;}
    public void submitForm()
    {
      System.debug('## User name: '+username);  
      System.debug('## Password: '+password);  
    }
}