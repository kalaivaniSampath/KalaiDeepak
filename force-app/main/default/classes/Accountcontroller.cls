public with sharing class Accountcontroller {

    Public List<account> showlist=new list<account>([select Id,Name, Type from Account where type='Prospect']);
  
    Public List<account> getshowList(){
    Return showList;
    }

     
    }