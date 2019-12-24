public class Con_Opt_Invoke_Class{
 @future(callout=true)
  public static void Con_Opt_Invoke_Ins_Mtd(Id d)
  {
    Opportunity optrec=[select name, description, account.name from Opportunity where id=:d];
    Con_OpPartnerCLS_3.Soap obj1  = new Con_OpPartnerCLS_3.Soap();
    Con_OpPartnerCLS_3.LoginResult lr = obj1.login('salesforce@practice2016.com','Feb@2018');
    Con_OpportunitiesCLS.Pub_Opportunitycls  obj = new Con_OpportunitiesCLS.Pub_Opportunitycls();
    obj.sessionHeader = new Con_OpportunitiesCLS.sessionHeader_element();
    obj.sessionHeader.sessionid = lr.sessionId;
    obj.pub_inseroptmtd(optrec.name, optrec.description,optrec.Account.Name);
  }
}