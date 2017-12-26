trigger AmountRequired on Opportunity (before insert) {
    for(Opportunity o:Trigger.new)
    {
        if(o.Amount == null)
        //show error message
        o.adderror('please specify amount beacuse mandatory');
    }

}