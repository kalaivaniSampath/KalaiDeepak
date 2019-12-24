public with sharing class samplecontroller{

        public account acc{get;set;}
        public List<lead> le{ get; set; }
      
        public List<contact> con{ get; set; }        
        public List<opportunity> opp{ get; set; }
        

     public samplecontroller(ApexPages.StandardController controller) {
     opp= new List<opportunity>();
     opp= [SELECT id, Name, ExpectedRevenue,Amount,StageName,Probability From opportunity limit 5] ;
     
     
     
     
     
     
     
    
    

    }
  
    
    
      
        

    
    
}