public with sharing class DummyApex {
    public static void Increaserevenue() { //List<Account> VarAccountrecords
        //System.debug(VarAccountrecords);
        //List<account> accList=[Select AnnualRevenue from account where AnnualRevenue != null  order by AnnualRevenue desc limit 5];
       // System.debug(accList);
        for(account varrecord : accList){
            varrecord.AnnualRevenue *= 0.9;
         //   System.debug(varrecord.AnnualRevenue);   
        }
    }

    // public static void IncreaserevenueTest() {
    //     List<Account> accList= new List<Account>();
    //     List<Integer> intList= new List<Integer>{20000,500000,30000};
    //     //for (Integer eachAcc : intList) {
    //         for (Integer i = 1; i < intList.size()+1; i++) {
    //         account acc= new account();
    //         acc.annualRevenue=intList[i-1];
    //         acc.Name= 'Account '+ i;
    //         accList.add(acc);
    //     }
    //     insert accList;
    //    // accList.annualRevenue=5000;
    //     AccountDummyApex.Increaserevenue(accList);


//  }
}
