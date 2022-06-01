public class SoqlDemo2 {
    public static void childToParent_Soql1() {
        //quering contact records.
        list<contact> listCnt=[select id, name, account.name from contact where account.industry='Energy'];

        for (contact eachContact : listCnt) {
            string accName = eachContact.Account.Name;
            System.debug('contact name is '+ eachContact.Name+' its acc is '+accName);
        }
    }

    public static void sampleSoql4(){
        List<Account> accountWithOpplist=[select name, annualrevenue, (select name, amount from opportunities where stagename='Closed Won') from account where type='Customer - Direct'];
        //list<account>
            //--> list<opportunities>
        for (account eachAcc : accountWithOpplist) {
            System.debug('acc name is' + eachAcc.Name + ', annual revenue is ' + eachAcc.AnnualRevenue);
            List<Opportunity> eachAccOpps=eachAcc.Opportunities;
            for (opportunity opp: eachAccOpps ) {
                System.debug(' opp name ' + opp.name + ', opp amount ' + opp.Amount); //YES
            }
            system.debug('-----------------'); 
        }
            
    }
}
