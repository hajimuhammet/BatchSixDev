@isTest
public with sharing class DummyApexTest {
    @isTest
    public static void IncreaserevenueTest() {

        // List<account> accList=[Select id, AnnualRevenue from account where AnnualRevenue != null  order by AnnualRevenue desc limit 5];
        // DummyApex.Increaserevenue(accList);

        List<Account> accList= new List<Account>();
        List<Decimal> intList= new List<Decimal>{20000,500000,30000};
        for (Decimal eachAcc : intList) {
            account acc= new account();
            acc.annualRevenue=eachAcc;
            accList.add(acc);
        }
        DummyApex.Increaserevenue();


    }
}
