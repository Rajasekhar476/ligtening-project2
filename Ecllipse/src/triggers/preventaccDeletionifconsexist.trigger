trigger preventaccDeletionifconsexist on Account (before delete) {
    for(Account acc:trigger.old)
    {
        List<Contact> con=[SELECT id,Name From Contact Where Accountid=:acc.id];
        {
            if(!con.isEmpty())
            {
                acc.adderror('YOu Cannot Delete these account it contins contacts');
            }
        }
    }

}