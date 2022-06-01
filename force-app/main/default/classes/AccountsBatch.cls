// public class AccountsBatch implements Database.Batchable<SObject>{
//     public Database.QueryLocator start(database.BatchableContext bc) {
//         Database.QueryLocator q1 = Database.getQueryLocator([select id, description from account]);
//         return q1;
//     }
//     public void execute(Database.BatchableContext bc, List<Account> scope){
//         for (account acc : scope) {
//             acc.Description+='...update via BATCH apex!';
//         }
//         update scope;
//     }

//     public void finish(Database.BatchableContext bc){
//         System.debug('done with updating ALL HTE ACCOUNTS');
//     }
// }

public class AccontsBatch implements Database.Batchable<SObject>, Database.stateful{
    public integer count=0;

    public database.QueryLocator start(Database.BatchableContext bc){
        Database.QueryLocator q1= Database.getQueryLocator(select id, description, Activ__c from account);
    }
}