trigger Con5Insert on Account (after insert) {
if(Trigger.isAfter)
{
system.debug('****New Account Record is ******'+Trigger.new);
Contact objContact ;
List<Contact> lstcon = new List<Contact>();
for(Integer i=1;i<=5;i++)
{
objContact = new Contact(lastname='AAAAAAAAA'+string.valueof(i),AccountId=Trigger.new[0].Id);
system.debug('valuesoflastname'+objcontact);
lstcon.add(objContact);
}
system.debug('****List Of Contacts *****'+lstcon.size());
insert lstCon;
} }