public class Login {

    public Login(ApexPages.StandardController controller) {

    }

 public PageReference Login()
 {
  PageReference pr = new PageReference('https://www.google.co.in/');
        
        return pr;
 }
}