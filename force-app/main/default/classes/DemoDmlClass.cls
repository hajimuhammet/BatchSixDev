public class DemoDmlClass {
    
    public DemoDmlClass() {
        System.debug('Welcome to the world of SOQL. Please enter the key character to search.');
    }

    public static void dmlInsert(string keychar){
        String likevar='%'+keychar+'%';
        List<Account> listAcc=[select id, Name from Account where Account.name like: likevar ];
        if(listAcc.size()>0){
            List<Contact> listCon=new List<Contact>();
            for (account objAccount : listAcc) {
                Contact objContact= new contact();
                objContact.LastName=objAccount.Name;
                objContact.AccountId=objAccount.Id;
                listCon.add(objContact);
                System.debug('Created.');
            }
            if (listCon.size()>0) {
                insert listCon;
            }
        } else {
            System.debug('Boyle bir eslesme yok.');
        }
    }
}
