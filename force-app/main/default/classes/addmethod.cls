public with sharing class addmethod {

   Public integer firstnumber {get;set;}
   Public integer secondnumber{get;set;}
   Public integer result {get;set;}
   public addmethod(){
   
   }

 public pagereference add(){
        result= firstnumber + secondnumber;
        return null;
    }
  

    
}