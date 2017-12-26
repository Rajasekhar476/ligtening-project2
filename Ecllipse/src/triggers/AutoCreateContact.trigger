trigger AutoCreateContact on Account (After insert) 
{   
   
    for(Account a:Trigger.new)
        {
        contact con=new contact();
        con.LastName=a.Name;
        con.phone=a.phone;
        con.Accountid=a.id;
            insert con;
        }
         
    
}