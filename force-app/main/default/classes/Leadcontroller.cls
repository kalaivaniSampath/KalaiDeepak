public with sharing class Leadcontroller {

    public Leadcontroller() {

    }

    Public String curuserprofileName {get; set;}
    Public Id currentuserid {get; set;}
    public Leadcontroller(ApexPages.StandardController controller) {
            Id curuserid = Userinfo.getuserid();
            currentuserid = curuserid;
            system.debug('&&&&'+curuserid);
            
            //List<User> user = new List<user>();
            //user =[Select id,Name,Profile.Name from User where Id=:curuserid limit 1];
            //String Pname = user[0].Profile.Name;
            //system.debug('***threelineProfileName:'+Pname);
            
            
            curuserprofileName = [Select id,Name,Profile.Name from User where Id=:curuserid limit 1].Profile.Name;
            system.debug('***onelinwProfileName:'+curuserprofileName);
            
    }

}