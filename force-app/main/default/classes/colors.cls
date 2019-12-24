/****************************************
 * Class Name : colors
 * Created By : Suresh
 * Purpose    : To display the list of colors.
 * Created Date : 9th August 2019
 * Last Modified Date : 9th August 2019
  *******************************************/
public class colors {
    /** Variable Declaration ****/
    public List<String> colors {get; set;}
    public Integer c {get; set;}
    
    /**************
     * Method Name : Constructor
     * Parameter   : None
     * Description : While loding the class constructor will execute first.
     ****************/
    public colors(){
            colors = new List<String>();  // iniated the list. 
            colors.add('Green');   // added Green color to the List of Color. 
            colors.add('Blue');    // added Blue color to the List of Color. 
            colors.add('Red');     // added Red color to the List of Color. 
            system.debug('*****'+colors);
    }
    /**************
     * Method Name : Add Method
     * Parameter   : Two Integer Parameters
     * Return 	   : None
     * Description : Adding the two integers. 
     ****************/
    public void add(integer a , integer b){
        c = a + b;  //adding the two integers
        system.debug('***Add'+c); // printing the c integer. 
    }
}