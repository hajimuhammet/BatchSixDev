public class AccountHandlerInfo {
  public static List<Account> insertNewAccount(List<String> listaccountName){
    List<Account> newAccList = new List<Account>();

      if (!listaccountName.isEmpty()) {
            for (string eachAccNm : listaccountName) {
              Account acc = new Account();
              acc.Name=eachAccNm;
              newAccList.add(acc);
              system.debug(acc);
          }
      } else {
          newAccList=null;
          system.debug('Error, please provide a string list');
      }     
      insert newAccList;
      return newAccList;
  } 

  // When the Annual revenue field value is reduced from the previous value then show the following 
  // message: 'Annual Revenue for an account cannot be reduced'. And do not allow the user to save the record.
  public static void updateAccountAnnualRevenue(List<account> accTriggerNew, List<account> accTriggerOld,Map<id, account> accTriggerNewMap,
                                                Map<id, account> accTriggerOldMap){
    for (Account acc : accTriggerNew) {
      if (acc.AnnualRevenue != accTriggerOldMap.get(acc.id).AnnualRevenue){
        if (acc.AnnualRevenue < accTriggerOldMap.get(acc.id).AnnualRevenue || acc.AnnualRevenue==null) {
          acc.AnnualRevenue.addError('Annual Revenue for an account cannot be reduced');
      }
       
      }
    }   
  }
}


  
  