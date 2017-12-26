trigger prefixAccountNumber on Account (before insert) {
    for(Account a:Trigger.new)
    {
        a.Name='MR'+a.Name;
    }
        
}