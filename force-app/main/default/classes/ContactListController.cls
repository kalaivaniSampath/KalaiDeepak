public class ContactListController{
  
  public list<contact> contacts {get;set;}
  public string contactId{get;set;}
  public ContactListController(){
  
  contacts=[select id,FirstName,LastName from contact limit 1];
   System.debug('**** ' + contacts);
  }
  public PageReference  gotoContactDetailPage()
    {
    return new PageReference('/apex/ContactDetailPage?id=' + contactId);

    }


}