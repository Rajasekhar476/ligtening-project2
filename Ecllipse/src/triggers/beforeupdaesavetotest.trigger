trigger beforeupdaesavetotest on Job_Appllication__c (before update) {
    List<test> ts=new List<test>();
    for(Job_Appllication__c jap:trigger.new)
    {
        
    }

}