trigger AccountAddress on Account (before delete, before insert, before update) {
	for(Accout a:trigger.new)
	{
		if(a.match_Billing_Address__c)
		{
			if(a.Billing_postcode !=null)
			{
				a.Shiping_postalcode=a.Billing_Psotalcode
			}
		}
	}
    
}