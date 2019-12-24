/***********************
Class Name  		 :Collection
Created By  		 :kalaivani
Purpose      		 :To print list and set, map value
Created Date 		 :14th Aug 2019
Last Modified date	 :14th Aug 2019
*******************************/

public class Collection {

    public void PrintList() //Methode Name
    {
     List<integer> li = new List<integer>();
    	li.add(1);
    	li.add(1);
    	li.add(3);
    	li.add(4);
    	li.add(5);
        system.debug('**List output value**'+li);
        
        for(integer val:li)
            system.debug('count value list'+val);
    }
    
     public void PrintSet() //Methode Name
    {
     Set<integer> se = new Set<integer>();
    	se.add(1);
    	se.add(1);
    	se.add(3);
    	se.add(3);
    	se.add(5);
        system.debug('**List output value**'+se);
        
        for(integer val:se)
            system.debug('count value list'+val);
    }
    
    public void PrintMap()
    {
        Map<Integer, String> ma = new Map<Integer, String>();
    	ma.put(1,'Jan');
    	ma.put(2,'Feb');
    	ma.put(3,'March');
        ma.put(4,'April');
        
       system.debug('**map output**'+ma);
        
       set<integer> kset =ma.Keyset();
        system.debug('keyset'+kset);
        
        for(integer key:kset)
        {
             system.debug('key '+key);
             system.debug('value '+ma.get(key));
                        
        }
        List<string> vallist = ma.values();
        for(string val:vallist)
        {
            System.debug('---------------------Value: '+val);
        }
        
    	
    }
}