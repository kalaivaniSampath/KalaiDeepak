trigger insertcontact1 on Account(after insert)
{
    contact con=new contact();
    con.LastName=trigger.new[0].name;
    con.AccountId=trigger.new[0].ID;
    insert con;



}