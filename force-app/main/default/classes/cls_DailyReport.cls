public with sharing class cls_DailyReport {
    Public User user {get; set;}
    Public Lead le {get; set;}
    Public Account Acc {get; set;}
    Public Contact Con{get; set;}
    Public List<Opportunity> Opp {get; set;}
    Public Opportunity Oppnew {get; set;}
    Public Integer lcnt {get; set;}
    Public Integer acccnt {get; set;}
    Public Integer clinetCnt {get; set;}
   //list of activty
    Public Integer callcnt {get; set;}
    Public Integer emailcnt {get; set;}
    Public Integer inofficemeetingcnt {get; set;}
    Public Integer outofficemeetingcnt {get; set;}
    Public Integer quotationcnt {get; set;}
    Public Integer oppcnt {get; set;}
    Public Integer pipelinecnt {get; set;}
    //Constructor
    public cls_DailyReport(){
        user = new User();
        le  = new Lead();
        Acc = new Account();
        Con = New Contact();
        Opp = new List<Opportunity>();
        Oppnew = new Opportunity();
        lcnt = 0;
        acccnt=0;
        clinetCnt =0;
        
        callcnt =0;
        emailcnt =0;
        inofficemeetingcnt =0;
        outofficemeetingcnt =0;
        quotationcnt =0;
        oppcnt =0;
        pipelinecnt =0;
        
    }
    
    Public PageReference Submit(){
         Id seluserid = acc.ownerid;
         Date cdate = Oppnew.CloseDate;
         lcnt = [select count() from Lead where ownerid=:seluserid and createddate <=:cdate];
         
         acccnt= [select count() from Account where ownerid=:seluserid and createddate <=:cdate];
         clinetCnt = [select count() from Account where ownerid=:seluserid and createddate <=:cdate];
         callcnt =[SELECT count() FROM Task where ownerid=:seluserid and createddate <=:cdate];
         emailcnt =[SELECT count() FROM Event where ownerid=:seluserid and createddate <=:cdate];
         inofficemeetingcnt =[SELECT count() FROM Event where ownerid=:seluserid and createddate <=:cdate];
         outofficemeetingcnt =[SELECT count() FROM Event where ownerid=:seluserid and createddate <=:cdate];
         quotationcnt =[select count() from Quote where ownerid=:seluserid and createddate <=:cdate];
         oppcnt =[select count() from opportunity where ownerid=:seluserid and createddate <=:cdate];
         pipelinecnt =[select count() from opportunity where ownerid=:seluserid and createddate <=:cdate];
         opp= [SELECT id, Name, Account.Name, ExpectedRevenue,Amount,StageName,Probability From opportunity where ownerid=:seluserid and createddate <=:cdate limit 2000] ;
        return null;
    }
}