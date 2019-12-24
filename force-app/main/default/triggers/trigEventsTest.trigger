trigger trigEventsTest on contact(before insert,after insert,before update,after update) {
if(Trigger.isInsert)
{
system.debug('***IsINSERT*****');
}
if(Trigger.isUpdate)
{
system.debug('******IsUpdate*****');
}
if(Trigger.isBefore && Trigger.isInsert)
{
system.debug('****IsBefore and IsInsert*****');
}
if(Trigger.isAfter && Trigger.isInsert)
{
system.debug('*******IsAfter and IsInsert*****');
}
if(Trigger.isBefore && Trigger.isUpdate)
{
system.debug('*****Before Update******');
}
}