public with sharing class LoginClass {

        public PageReference NewCandidate() {
        PageReference pr = new PageReference('https://c.ap1.visual.force.com/apex/Signup'); 
        return pr;
    }


    public PageReference doForget() {
        PageReference pr = new PageReference('https://c.ap1.visual.force.com/apex/ForgotPassword');
        return pr;
    }


    public PageReference Cancel() {
        return null;
    }


    public PageReference Signin() {
        try{
        List<Candidate__c> bt = [Select Username__c,Password__c from Candidate__c];
        }
        Catch(Exception e){
        
        }
        PageReference pr = new PageReference('https://c.ap2.visual.force.com/apex/PostionsListpage');
        
        return pr;
    }
    
    public String Pwd { get; set; }

    public String Username { get; set; }

    public PageReference Login() {
        Candidate__C l = new Candidate__c();
        l.username__C = Username;
        l.Password__c = Pwd;
        Insert l;
        return null;
    }


}