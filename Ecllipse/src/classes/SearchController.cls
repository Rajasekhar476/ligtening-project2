public class SearchController
{

    public SearchController(ApexPages.StandardSetController controller) {

    }

private apexpages.standardController controller {get; set; }
private Position__c l;
public List<Position__c> searchResults {get; set; }
public string searchText
{
get
{
if (searchText==null) searchText = '';
return searchText;
}
set;
}

public SearchController(ApexPages.StandardController controller)
{
this.controller = controller;
this.l = (Position__c) controller.getRecord();
search();
}

public PageReference search()
{
if(SearchResults == null)
{
SearchResults = new List<Position__c>();
}
else
{
SearchResults.Clear();
}

String qry = 'Select Id, Name from Position__c where name like \'%'+searchText+'%\' Order By Name';
System.debug('Query:::::'+qry);
SearchResults = Database.query(qry);
System.debug('SearchResults:::::'+SearchResults);
return null;
}
}