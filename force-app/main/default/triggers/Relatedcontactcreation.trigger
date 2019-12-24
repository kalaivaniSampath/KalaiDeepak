trigger Relatedcontactcreation on Account (after insert) {
    
    List<contact> listcon=new list<contact>();
        
        for(Account a:trigger.new){
            contact con = new contact();
                con.Lastname='testing last name';
                con.email='kalaivanisampath2015@gmail.com';
                con.Accountid=a.id;
                listcon.add(con);
                          
            
}
      if(listcon.size()>0)
          insert listcon;

}