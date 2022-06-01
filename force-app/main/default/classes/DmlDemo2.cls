public class DmlDemo2 {
    public static void dmlMultipleRecordUpdate_right() {
        List<Account> listAcc=[select id, name, Description from account order by CreatedDate limit 150];

        List<Account> updateAccounts=new List<Account>();

        for (account acc : listAcc) {
            acc.name+=' vB';
            acc.description='Update via bulk DML';
            updateAccounts.add(acc);
        }
        if(!updateAccounts.isEmpty()){
            update updateAccounts;
        }

    }
}
