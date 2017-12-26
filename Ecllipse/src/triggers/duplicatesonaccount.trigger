trigger duplicatesonaccount on Account (before insert) {
    for(Account a:Trigger.new)
        {
         List<account> acc=[Select id,Name From account Where Name=:a.Name];
            if(acc.size()>0)
            {
                a.name.addError('ACCOUNT NAME ALREADY EXISTED');
            }
        }

}