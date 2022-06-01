public class SoqlDemo {
    public static void accountSOQL_1(){
        List<Account> listAcount=[select ID, Name from Account Where name Like '%A%'];
        System.debug('account list= '+listAcount);
        System.debug('# of account '+listAcount.size());

        Account latestAccount = [select name, website from account order by createdDate desc limit 1];
        System.debug(latestAccount);
    }

    public static void AccountSOQL_2(){
        //List<Account> listAcount=[select ID, Name from Account Where name Like '%A%'];
       // System.debug('account list= '+listAcount);
        //System.debug('# of account '+listAcount.size());

        Account latestAccount = [select Id, name, Phone, AccountNumber from account order by createdDate desc limit 1];
        System.debug('Latest account created is '+latestAccount);

        String accName=latestAccount.Name;
        String accPhone=latestAccount.Phone;
        System.debug('acc name is '+accName);
        System.debug('acc phone is '+accPhone);
        System.debug('acc account number is '+latestAccount.AccountNumber);
    }

    public static void accountSOQL_3(){
        //List<Account> listAcount=[select ID, Name from Account Where name Like '%A%'];
       // System.debug('account list= '+listAcount);
        //System.debug('# of account '+listAcount.size());

        List<account> listAccount = [select Id, name, Phone, AccountNumber, ShippingCity from account order by createdDate desc];
        System.debug('All accounts: '+listAccount);

        for (account eachAccount : listAccount) {
            id accId=eachAccount.id;
            String accName=eachAccount.Name;
            String accPhone=eachAccount.Phone;
            System.debug('acc name is '+accName);
            System.debug('acc phone is '+accPhone);
            System.debug('Shipping City is '+eachAccount.ShippingCity);
            System.debug('acc account number is '+eachAccount.AccountNumber);  
        }
    }


    public static void soqlDemo_Filter(){
       String accNameFilter='Salesforce';
       List<Account> listAcc=[select id, name from account where name=:accNameFilter];
       System.debug(listAcc);     
    }
}
