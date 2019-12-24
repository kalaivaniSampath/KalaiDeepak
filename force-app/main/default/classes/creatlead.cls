Public class creatlead{
    @AuraEnabled
    public static void leadsave(lead l)
   {
        try{
   			insert l;
   		}
   		catch (Exception ex){
          throw new AuraHandledException('Darn it! Something went wrong: '+ ex.getMessage()); 
        }
   
   }
}