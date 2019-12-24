public with sharing class campaincontroller {
 
    public campaincontroller(ApexPages.StandardController controller) {
    campmem =new CampaignMember();
    Mylead=new lead();
    is=new user();

    }
    public CampaignMember campmem{get;set;}
    public lead mylead{get;set;}
    
       
    public user is {get;set;}
   user username;
    
    public user getusername(){
        is=[select Name from user where id=:'0057F000001WQGz'];
        return is;
        }
 

}