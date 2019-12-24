public with sharing class Bookingcontroller {
    Public Booking__c Booking {get;set;}
     public Date dat {get;set;}
   
    public Bookingcontroller() {
       Booking = new Booking__c (); 
       
    }


}