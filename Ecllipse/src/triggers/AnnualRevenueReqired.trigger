trigger AnnualRevenueReqired on Account (before insert) {
    for(Account a:trigger.new)
    {
        if(a.AnnualRevenue!=null)
        {
            //Show Error Message
            a.AnnualRevenue.adderror('Annual Revenue is mandatory');
        }
    }

}