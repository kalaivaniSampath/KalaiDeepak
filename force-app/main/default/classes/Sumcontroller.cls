public with sharing class Sumcontroller {

   


    public String getCalculateSum() {
        return null;
    }

    public integer a{get;set;}   
    public integer b{get;set;}
    public integer sum {get;set;}
    public integer out{get;set;}


        public Sumcontroller() {
        a=0;
        b=0;
        sum=0;        
        }
        
        public void calculateSum(){
        
        sum= a+ b;
       }
        public PageReference Reset() {
         a=0;
        b=0;
        sum=0;
        return null;
    }

}