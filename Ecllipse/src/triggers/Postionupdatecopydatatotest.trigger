trigger Postionupdatecopydatatotest on Position__c (before update) {
    List<Test__c> test=new List<Test__c>();
    for(Position__C p:trigger.new)
    {
        Test__c t=new Test__c();
        t.name=p.Name;
        test.add(t);
    }
    insert test;
  
    
}