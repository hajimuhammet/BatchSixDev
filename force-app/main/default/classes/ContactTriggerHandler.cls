public class ContactTriggerHandler {

    public static void SharedContactMethod(List<contact> triggerNew,
                                            List<contact> triggerOld,
                                            Map<id, contact> triggerNewMap,
                                            Map<id, contact> triggerOldMap){
        set<id> accountIDs = new set<id>();
        for (contact c : triggerNew) {
            if (c.AccountId != null) {
                accountIDs.add(c.AccountId);
            }
        }      
        if (!accountIDs.isEmpty() ) {
            List<Account> accList =[select id, name, Number_Of_Contacts__c, (select id from contacts) from account where id in : accountIDs];
            if (!accList.isEmpty()) {
                List<Account> updateAccountList = new List<Account>();
                for (account  eachAcc : accList) {
                    List<Contact> contactsList=eachAcc.Contacts;
                    Account acc=new Account();
                    acc.Id=eachAcc.Id;
                    acc.Number_Of_Contacts__c=contactsList.size();
                    updateAccountList.add(acc);
                }
                if(!updateAccountList.isEmpty()){
                    update updateAccountList;
                }
            }
        }   
    }


    public static void ContactTriggerIsInsert(List<contact> triggerNew,
                                              List<contact> triggerOld,
                                              Map<id, contact> triggerNewMap,
                                              Map<id, contact> triggerOldMap) {
        SharedContactMethod(triggerNew, triggerOld, triggerNewMap, triggerOldMap);   
    }


    public static void ContactTriggerIsUpdate(List<contact> triggerNew,
                                              List<contact> triggerOld,
                                              Map<id, contact> triggerNewMap,
                                              Map<id, contact> triggerOldMap){

        SharedContactMethod(triggerNew, triggerOld, triggerNewMap, triggerOldMap);
    }


    public static void ContactTriggerIsDelete(List<contact> triggerNew,
                                              List<contact> triggerOld,
                                              Map<id, contact> triggerNewMap,
                                              Map<id, contact> triggerOldMap){
        
       SharedContactMethod(triggerNew, triggerOld, triggerNewMap, triggerOldMap);
    }
}
