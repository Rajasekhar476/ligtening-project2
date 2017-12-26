public with sharing class LoginPage {
    public Candidate__c can;
    public LoginPage(ApexPages.StandardController controller) 
    {
    this.can = (Candidate__c)controller.getRecord();
      }
      public pageReference customsave()
      {
      insert can;
      pageReference pr=new pageReference('https://ap2.salesforce.com/06628000007z6O1');
      return pr;
      }
}