// Trigger create in the #Apex4Admins Webinar 
// http://bit.ly/RwA7YC
// Let's create a trigger that creates a new Opp for every new Prospect Account
// Dynamically set the Opp amount based on the Account's Industry and Employee count
trigger AutoCreateOpp on Account (after insert) {
    // Every trigger has this loop!
    for (Account a : Trigger.new) {
        // Check if it's a 'Prospect' Account
        if (a.Type == 'Prospect') {
            // Create a new Opp (but don't save yet)
            Opportunity o = new Opportunity();
            o.Name = 'Big Deal';
            o.StageName = 'Prospecting';
            o.CloseDate = Date.today().addDays(30);
            o.AccountId = a.Id;
            
            // Set the Opp amount based on the Industry
            if (a.Industry == 'Technology') {
                o.Amount = 5000000;
            } else if (a.Industry == 'Non-Profit') {
                o.Amount = 1000;
            } else {
                o.Amount = 5000;
            }
            
            // Double the Opp amount if there are many employees!
            Integer extra = 2;
            if (a.NumberOfEmployees > 1000) {
                o.Amount = o.Amount * extra;
            }
            
            // Don't forget to save!
            insert o;
        }
    }
}