public with sharing class DataTypeController {

    public string firstname{get;set;}
    public integer lint{get;set;}
    Public Boolean availability{get;set;}
    public ID leadid{get;set;}
    public long l{get;set;}
    public date d{get;set;}
    public Datetime dt{get;set;}
    public Decimal deci{get;set;}
    public Blob blo{get;set;}
    public Double doub {get;set;}
    
   public DataTypeController(){
       firstname='kalaivani';
       lint=35;
       availability=true;
       leadid='00Q7F000008kxDv';
       l=2147483648L;
       d=system.today();
       dt=system.now();
       deci=35.353543534534;
       doub=34.234234234;
       
      
   } 
   String myString = 'StringToBlob';
Blob myBlob = Blob.valueof(myString);
Integer size = myBlob.size();
}