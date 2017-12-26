trigger Deletecontactwithaccountname on Account (before insert) {
    List<string> mystr=new List<string>();
    for(Account a:trigger.new){
        mystr.add(a.name);
    }
            
    List<contact> con=[select id,name from contact where name in:mystr];
    delete con;
     
    }