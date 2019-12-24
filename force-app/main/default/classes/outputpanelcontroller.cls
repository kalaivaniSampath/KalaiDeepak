public with sharing class outputpanelcontroller {
    Public Boolean flag {get;set;}
    public string sample;

    public outputpanelcontroller(){
    flag=true;
    }
    public pageReference show(){
    flag=true;
    return null;
    }
    public pageReference Hide(){
    flag=false;
    return null;
    }

}