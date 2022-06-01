public with sharing class AssignmentSessionWeek4 {
   /* 1. Prepare a method which returns the sum of all the closed won opportunities Amount present in 
    the org.*/

    public static decimal sumAllClosedWonOpps(){
        List<Opportunity> ClosedWons = [SELECT name, amount FROM Opportunity WHERE StageName='Closed Won' ];
        
        decimal total=0;    
        for (Opportunity eachOpp : ClosedWons) {
            total+=eachOpp.amount;
        }
        system.debug(total);
        return total;
    }

   
    public static list<AggregateResult> aggOppSumAll(){
        List<AggregateResult> ClosedWons2 = [SELECT Sum(amount) FROM Opportunity WHERE StageName='Closed Won' ];
        System.debug(ClosedWons2);
        return ClosedWons2;
    }

    /*2. Prepare a method which will return all the Accounts for which at least a closed Won 
Opportunity is present. Make it dynamic if we want to bring account for other opportunity stageNames. */
    public static List<Account> accsWithClosedWonOpps(string str){
        List<Account> AccWithClosedWon = [SELECT name, id FROM Account WHERE id in(SELECT Accountid FROM Opportunity WHERE StageName=:str)];
        System.debug(AccWithClosedWon);
        return AccWithClosedWon;
    }
/* 3. Prepare a method which will return all the Accounts for which at least a contact is present. */
    public static List<Account> accsWithContact(){
    List<Account> AccWithContactList = [SELECT name FROM Account WHERE id in(SELECT Accountid FROM Contact)];
    System.debug(AccWithContactList);
    return AccWithContactList;
    }

    public static void createContact(id acID){
        
        account acc1 = [select id, name from account where id =: acID];
        contact cont1= new contact();
        cont1.lastName= acc1.Name;
        cont1.AccountId = acc1.id;
   
        insert cont1;
   
        }

        public static void AccTopTenOpp(){
            List<Opportunity> topTenList=[select name, ExpectedRevenue, Description from Opportunity Order by ExpectedRevenue desc limit 10];

            for (opportunity eachOpp : topTenList) {
                System.debug(eachOpp);
                eachOpp.Description ='This is one of the top 10 opportunity. Please work on this properly';
                System.debug(eachOpp.Name+ ' '+ eachOpp.Description);
            }
            update topTenList;
            
        }
}