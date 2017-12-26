trigger contactupdate on Account(before update,after delete)
          {
          if(trigger.isbefore && Trigger.isupdate)
          {
           map<Id,Account> mymap=Trigger.newmap;
           list<contact> con=new list<contact>();
           list<contact> cons=[select id,phone,accountid from contact where accountid   in:mymap.Keyset()];
            for(Contact c:cons){
           c.phone=mymap.get(c.accountid).phone;
           con.add(c);
           }
           update con;
           }
          if(trigger.isafter && trigger.isdelete)
           {
          map<Id,Account> deleteacc=Trigger.oldmap;
         list<contact> mycontact=[select id,name from contact where Accountid in:deleteacc.keyset()];
         delete mycontact;
         }
         }