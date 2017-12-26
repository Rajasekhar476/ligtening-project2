trigger HelloMyWorld on Book__c (before insert) {
    Book__C[] books=Trigger.new;
     HelloMyWorld.applyDiscount(books);
}