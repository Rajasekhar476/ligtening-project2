trigger updatephone on Contact (after insert) {
    List<Account> acc= new List<Account>();
    for(Contact c:Trigger.new)
    {
        Account a=[select id,Phone from Account where id=:c.Account.id];
        a.Phone=c.Phone;
        acc.add(a);            
    }
    update acc;
}