/***************************
 *Class Name        : Arryexample
 *Created By        : Kalaivani
 *Purpose           : To display the list of product
 *Created Date 		: 12 August 2019
 *Last Modified Date: 12th August 2019*****/

public class Arryexample {
   
		/** Variable Declaration ****/
    String [] arryproductlist=new list<string>();    
        
     public Arryexample(){
        addproduct();
    }
    public void addproduct(){
            arryproductlist = new List<String>();  // iniated the list. 
            arryproductlist.add('computer');   // added computer product to the 
            arryproductlist.add('Mouse');    // 
            arryproductlist.add('RAM');     // 
        	arryproductlist.add('CPU');
      
       for(integer i=0; i<arryproductlist.size(); i++)
            system.debug('Values In Array: '+arryproductlist[i]);
    }
    
}