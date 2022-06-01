public class SoqlDML_test {
    public static list<Opportunity> AccConAndOppOperations(id accountID, Integer n) {
/*Write a logic to create and return n number of opportunities for a particular AccountId. 
        AccountId and n will be passed as parameters in the method. 
        Populate opportunity fields as follows:
        Close date as 3 years from today 
        Stage name as Prospecting 
        Opportunity amount as Account’s annual revenue divided by n 
        and Opportunity name same as Account name 
        For Ex: if n=2, Then two new opportunities If n=0, Print the message as “Please tell us how many 
        opportunities needs to be created”*/
        account acc=[select id, name, AnnualRevenue from Account where id=: accountID];
        list<Opportunity> ListOpp= new list<Opportunity>();
        if (n>0) {
            if (acc.AnnualRevenue==null) { 
                acc.AnnualRevenue=0;
            } 
            for (Integer i = 0; i < n; i++) {
                opportunity opp= new Opportunity();
                opp.AccountId=acc.id;
                opp.CloseDate=System.today().addYears(3);
                opp.StageName='Prospecting';
                opp.Amount=acc.AnnualRevenue/n;
                opp.Name=acc.Name+' '+i;
                ListOpp.add(opp);  
            }
        } else {
            System.debug('Please tell us how many opportunities needs to be created');
            
        }
        insert ListOpp;
        return ListOpp;
    }
}
