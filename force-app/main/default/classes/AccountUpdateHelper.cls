public with sharing class AccountUpdateHelper {
    @InvocableMethod
    public static void UpdateWebsite(List<id> AccId) {
        List<Account> ListAcc=[select id, name from account where id in :AccId];
        for (account eachAcc : ListAcc) {
            eachAcc.Website='www.softinnovas.com';
        }
        update ListAcc;
    }
}
