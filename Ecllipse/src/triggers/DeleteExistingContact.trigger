trigger DeleteExistingContact on Account (before insert) {
    List<string> mynames=new List<string>();
    for(Account a:Trigger.new)
    {
        mynames.add(a.Name);
    }
    List<Contact> mycon=new List<Contact>();
    

}