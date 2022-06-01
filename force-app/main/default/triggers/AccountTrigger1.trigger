trigger AccountTrigger1 on Account (before insert, before update, after insert, after update) {
    // if(trigger.isBefore && trigger.isUpdate){
    //     system.debug('trigger.new before update = ' + trigger.new);
    //     list<account> newAccounts = trigger.new;
    //     for (account acc :  newAccounts) {
    //         system.debug('accout id is = ' + acc.Id + ', account name is ' + acc.Name + ', acc modified date = ' + acc.LastModifiedDate);
    //     }
    // }
    // if (trigger.isAfter && trigger.isUpdate) {
    //     //trigger.new -> record(s) which were responsible for firing the trigger
    //     system.debug('trigger.new after update = ' + trigger.new);
    //     for (account acc :  trigger.new) {
    //         system.debug('accout id is = ' + acc.Id + ', account name is ' + acc.Name + ', acc modified date = ' + acc.LastModifiedDate);
    //     }
    // }

    // if(trigger.isBefore && trigger.isInsert){
    //     system.debug('trigger.new before insert = ' + trigger.new);
    // }
    // if (trigger.isInsert && trigger.isAfter) {
    //     //trigger.new -> record(s) which were responsible for firing the trigger
    //     system.debug('trigger.new after insert = ' + trigger.new);
    // }


    /*
    if (trigger.isInsert && trigger.isAfter) {
        //trigger.new -> record(s) which were responsible for firing the trigger
        system.debug('trigger.new after insert = ' + trigger.new);

        list<account> newAccounts = trigger.new;

        system.debug('total account inserted = ' + newaccounts.size());
        for (account acc : newAccounts) {
            system.debug('accout id is = ' + acc.Id + ', account name is ' + acc.Name);
        }
    }*/


    /*
    system.debug('---------START------------');
    system.debug('trigger.isBefore = ' + trigger.isBefore);
    system.debug('trigger.isAfter = ' + trigger.isAfter);
    system.debug('trigger.isInsert = ' + trigger.isInsert);
    system.debug('trigger.isUpdate = ' + trigger.isUpdate);
    if (Trigger.isInsert && Trigger.isBefore) {
        system.debug('before insert trigger fired');
    }
    if (Trigger.isInsert && Trigger.isAfter) {
        system.debug('after insert trigger fired');
    }
    if (Trigger.isUpdate && Trigger.isBefore) {
        system.debug('before update trigger fired');
    }
    if (Trigger.isUpdate && Trigger.isAfter) {
        system.debug('after update trigger fired');
    }
    system.debug('---------END------------');
    */

//--------------------------------------------------------------------------
    // if(Trigger.isBefore && Trigger.isUpdate){
    //     for (account ac : Trigger.new) {
            
    //         if(ac.AnnualRevenue != Trigger.oldMap.get(ac.id).AnnualRevenue && Trigger.oldMap.get(ac.id).AnnualRevenue!=null ){  
    //             if (ac.AnnualRevenue > Trigger.oldMap.get(ac.id).AnnualRevenue) {
    //                 decimal diff=ac.AnnualRevenue-Trigger.oldMap.get(ac.id).AnnualRevenue;
    //                 ac.Description='Anual Revenue '+diff+' kadar artti.';
    //                 System.debug(ac.Description);
    //             }else{
    //                 decimal diff=Trigger.oldMap.get(ac.id).AnnualRevenue-ac.AnnualRevenue;
    //                 ac.Description='Anual Revenue '+diff+' kadar azaldi.';
    //                 System.debug(ac.Description);
    //             }
    //         }else if(Trigger.oldMap.get(ac.id).AnnualRevenue==null && ac.AnnualRevenue!=null){
    //             decimal diff=ac.AnnualRevenue;
    //             ac.Description='Anual Revenue '+diff+' degeri yeni girildi.';
    //             System.debug(ac.Description);                
    //         }else if(ac.AnnualRevenue == Trigger.oldMap.get(ac.Id).AnnualRevenue){
    //             ac.Description='AnuanRevenue degeri degistirilmedi.';
    //             System.debug(ac.Description);
    //         }
    //      Boolean deger=(ac.AnnualRevenue == Trigger.oldMap.get(ac.id).AnnualRevenue);
    //      System.debug(deger);
    //     }
    // }

//-------------------------------------------------------------------------------
    // if(trigger.isBefore && trigger.isUpdate){
    //     for(account ac : trigger.new){
    //         if(ac.AnnualRevenue != trigger.oldMap.get(ac.id).AnnualRevenue && trigger.oldMap.get(ac.id).AnnualRevenue != null){
    //             if(ac.AnnualRevenue > trigger.oldMap.get(ac.id).AnnualRevenue){
    //                 decimal fark = ac.AnnualRevenue - trigger.oldMap.get(ac.id).AnnualRevenue;
    //                 ac.Description = fark + ' Annual revenue arttı';
    //             } else {
    //                 decimal fark = trigger.oldMap.get(ac.id).AnnualRevenue - ac.AnnualRevenue;
    //                 ac.Description = fark + ' Annual revenue azaldı';
    //             }
    //         } else {
    //             ac.Description = ac.AnnualRevenue + ' yeni eklendi';
    //         }
    //         System.debug(ac.Description);
    //     }
    // }


    

    // if (trigger.isBefore && trigger.isUpdate) {
    //     AccountHandlerInfo.updateAccountAnnualRevenue(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
    // }
    
//------------------------------------------------------------------------------------------------
   
    //     // do not create an create an account with an existing name
    //      //validation rule gibi!!

    //     //Insert durumu icin
    // if (trigger.isBefore){ 
    //     List<account> AccNameList=[Select id, name from account];
    //     if(trigger.isInsert) {                                     
    //         for(account eachOrgAccount : AccNameList){
    //             for (account eachNewAccount : trigger.new) {
    //                 if(eachOrgAccount.name==eachNewAccount.name){
    //                     eachNewAccount.name.addError('this name is already used');
    //                 }
    //             }  
    //         }
    //     } 
    
    //     //Update durumu icin. Cunku Update`i control etmezsek baska isim ile olusturulduktan sonra tekrar onceden var olan isim ile update ettigimizde kabul edecektir. Bu durumda da kabul etmemesi lazim.
    //     if(trigger.isUpdate){                        
    //         for(account eachOrgAccount : AccNameList){
    //             for (account eachNewAccount : trigger.new) {
    //                 if(eachNewAccount.Name != trigger.oldMap.get(eachNewAccount.Id).Name){
    //                     if(eachOrgAccount.name==eachNewAccount.name){
    //                         eachNewAccount.name.addError('this name is already used');
    //                     }
    //                 }
    //             }  
    //         }
    //     }
    // }

//------------------------------------------------------------------------------------------------------------


    //     // do not create an create an account with an existing name
    //     //validation rule gibi!!

    //     //isBefore &&is Insert durumu icin.
    // if(trigger.isBefore){

    //     if(trigger.isInsert){
    //         for(account acc: trigger.new){
    //             List<account> AccNameList=[Select id, name from account where name=:acc.Name];
    //             if(!AccNameList.isEmpty()){
    //                 acc.name.addError('this name is already used');
    //             }
    //         }
    //     }

    //     //isBefore && isUpdate durumu icin. Cunku Update`i control etmezsek baska isim ile olusturulduktan sonra tekrar onceden var olan isim ile update ettigimizde kabul edecektir. Bu durumda da kabul etmemesi lazim.
    //     if(trigger.isUpdate){
    //         for(account acc: trigger.new){
    //             List<account> AccNameList=[Select id, name from account where name=:acc.Name];
    //             if(acc.Name != trigger.oldMap.get(acc.Id).Name){
    //                 if(!AccNameList.isEmpty()){
    //                     acc.name.addError('this name is already used');
    //                 }
    //             } 
    //         }
    //     }
    // }
//---------------------------------------------------------------------------------------------------------------

//------------------------------------------------------------------------------------------------------------


    // do not create an create an account with an existing name
   //validation rule gibi!!

   
//    if(trigger.isBefore){
//         for(account acc: trigger.new){
//         List<account> AccNameList=[Select id, name from account where name=:acc.Name];

//             //isBefore &&is Insert durumu icin:
//             if(trigger.isInsert){
//                 if(!AccNameList.isEmpty()){
//                     acc.name.addError('this name is already used');
//                 }
//             }
    
//             //isBefore && isUpdate durumu icin:
//             //Cunku Update`i control etmezsek baska isim ile olusturulduktan sonra tekrar onceden var olan isim ile update ettigimizde kabul edecektir. Bu durumda da kabul etmemesi lazim.
//             if(trigger.isUpdate){
//                 if(acc.Name != trigger.oldMap.get(acc.Id).Name){    //Insertten farkli eklememiz gereken kod.
//                     if(!AccNameList.isEmpty()){
//                         acc.name.addError('this name is already used');
//                     }
//                 } 
//             }


//         }
//     }
//---------------------------------------------------------------------------------------------------------------

if(trigger.isBefore){
    system.debug('before insert/update trigger called');
    AccountTriggerHandler.updateAccountDescription(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
    system.debug('before insert/update trigger end.');
    
}
if(trigger.isAfter && trigger.isUpdate){
    AccountTriggerHandler.updateVipForAllAcontacts(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
}


    
}