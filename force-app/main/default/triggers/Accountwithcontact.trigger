trigger Accountwithcontact on Account(before delete) {
 profile p = [select id, name from profile where id =: UserInfo.getProfileId()];
 system.debug('testing' + p);

 if (p.name != 'System Administrator') {
  for (Account a: [SELECT Id FROM Account
    WHERE Id IN(SELECT AccountId FROM contact) AND
    Id IN: Trigger.old
   ]) {
   Trigger.oldMap.get(a.Id).addError(
    'Cannot delete account with related contact.');
  }
 }

}