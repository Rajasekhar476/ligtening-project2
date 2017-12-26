trigger DELEXISTCONTACTSBEFOREINS on Contact (before insert) {
    List<string> mystring= new List<string>();
    for(Contact a:Trigger.new)
    {
      mystring.add(a.Name); 
    }
	List<Contact> mycon=[select id,Name from contact where name in :mystring];
    delete mycon;
}