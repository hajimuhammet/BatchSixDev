public class AccountManager {
    public static void updateDescriptionField(){
        
        AccountHandlerInfo.insertNewAccount(list2);
        List<Account> createdDateList =[select id, name, Description, CreatedDate from Account order by CreatedDate desc limit :list2.size()];
         
        for (Account eachAcc : createdDateList) {
            eachAcc.Description = eachAcc.Name+' '+ eachAcc.CreatedDate;
            system.debug(eachAcc.Description);
        }
       update createdDateList;
        
    }
}