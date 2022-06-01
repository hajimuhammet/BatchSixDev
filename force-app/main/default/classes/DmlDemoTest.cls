@isTest
public class DmlDemoTest {
    @isTest
    private static void DmlDemoTest() {
        DmlDemo.dmlInsertDemo_stndObj();

        List<Account> listAcc=[select id, name from account];
        System.assertEquals(1, listAcc.size());
        System.assertEquals('SoftInnovas', listAcc[0].Name);
    }

    @isTest 
    private static void DmlUpdateDemo2(){
        Account acc=new Account();
        acc.Name='SoftInnovas Inc.';
        insert acc;

        DmlDemo.dmlUpdateDemo_2();
        List<Contact> listContact=[select id, lastname from contact];
        system.assertEquals(1, listContact.size());
        system.assertEquals('Biden', listContact[0].LastName);
    }
}
