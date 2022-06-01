trigger ContactTrigger on Contact (before insert, before update, after insert, after update) {
  
     // Trigger.New, Trigger.Old, Trigger.NewMap and Trigger.OldMap 

    // if (trigger.isBefore && trigger.isInsert) {  
    //     system.debug('======= BEFORE INSERT=========');
    //     system.debug('Before insert trigger callled trigger.new:  '+trigger.new);
    //     system.debug('Before insert trigger callled trigger.old:  '+trigger.old);
    //     system.debug('Before insert trigger callled Trigger.newMap:  '+Trigger.newMap);
    //     system.debug('Before insert trigger callled trigger.oldMap:  '+trigger.oldMap);
    // }

    // if (trigger.isBefore && trigger.isUpdate) {
    //     system.debug('======= BEFORE UPDATE=========');
    //     system.debug('Before update trigger callled trigger.new:  '+trigger.new);
    //     system.debug('Before update trigger callled trigger.old:  '+trigger.old);
    //     system.debug('Before update trigger callled Trigger.newMap:  '+Trigger.newMap);
    //     system.debug('Before update trigger callled Trigger.oldMap:  '+Trigger.oldMap);
    // }

    // if (trigger.isAfter && trigger.isInsert) {
    //     system.debug('======= AFTER INSERT=========');  
    //     system.debug('After insert trigger callled trigger.new:  '+trigger.new);
    //     system.debug('After insert trigger callled trigger.old:  '+trigger.old);
    //     system.debug('After insert trigger callled Trigger.newMap:  '+Trigger.newMap);
    //     system.debug('After insert trigger callled Trigger.oldMap:  '+Trigger.oldMap);  
    // }

    // if (trigger.isAfter && trigger.isUpdate) {
    //     system.debug('======= AFTER UPDATE=========');  
    //     system.debug('After update trigger callled trigger.new:  '+trigger.new);
    //     system.debug('After update trigger callled trigger.old:  '+trigger.old);
    //     system.debug('After update trigger callled Trigger.newMap:  '+Trigger.newMap);
    //     system.debug('After update trigger callled Trigger.oldMap:  '+Trigger.oldMap);  
        
    // }

    // if(trigger.isBefore && trigger.isUpdate){
    //     for (contact cn : trigger.new) {
    //         if(cn.LastName != trigger.oldMap.get(cn.id).LastName){
    //             cn.Description='LASTNAME Updated';
    //         }else {
    //             cn.Description='';
    //         }    
    //     }
        
    // }

    // 27. Bir Contact insert edildiğinde First Name yazılmamışsa 'Bu record'da First Name yazılmadı.. Name sadece Last Name = [lastName] den oluşuyor.' mesajını system debug ile konsolda yazdıran bir trigger tasarlayınız.

    // if (trigger.isBefore && trigger.isInsert){
    //     for (Contact eachCon : trigger.new) {
    //         if (eachCon.firstName == null) {
    //         system.debug ('Bu record\'da First  Name yazilmadi.. Name sadece Last Name = '+eachCon.lastName+' den oluşuyor');  
    //         }  
    //     }
    // }


//     Assignment Question for Today:
// From the Contact Trigger print the following message whenever the lastName of an Contact is changed.
// Message : Last Name  is changed - [OldLastName] is changed to [NewLastName].
// For example: If a contact with lastName as 'Smith' changed to 'Andrew' then the below message should print:
// Last Name is changed - Smith is changed to Andrew.
// Please note, Above message should print only when the LastName is changed for contact record (edited) 

    
    // if (trigger.isBefore && trigger.isUpdate) {
    //     for (Contact con: trigger.new) {
    //         Contact OldCon = trigger.oldMap.get(con.Id);
    //         if (con.LastName !=OldCon.LastName) {
    //             System.debug('Last Name  is changed '+ OldCon.lastName +  ' to ' + con.LastName);
    //         }
    //     } 
    // }

//---------------------------------------------------------------------------------

    // set<id> accountIDs = new set<id>();
    // if(trigger.isAfter){
    //     if (trigger.isInsert || trigger.isUndelete) {
    //        for (contact c : trigger.new) {
    //            if (c.AccountId != null) {
    //                accountIDs.add(c.AccountId);
    //            }
    //        } 
    //     }

    //     if (trigger.isUpdate) {
    //         for (contact c : trigger.new) {
    //             if (c.AccountId != trigger.oldMap.get(c.ID).AccountId) {
    //                 accountIDs.add(c.AccountId);
    //                 accountIDs.add(trigger.oldMap.get(c.ID).AccountId);
    //             }
    //         }
    //     }

    //     if (trigger.isDelete) {
    //         for (contact c : trigger.old) {
    //             if (c.AccountId != null) {
    //                 accountIDs.add(c.AccountId);
    //             }
    //         }    
    //     }

        
    // }
    // if (!accountIDs.isEmpty() ) {
    //         List<Account> accList =[select id, name, Number_Of_Contacts__c, (select id from contacts) from account where id in : accountIDs];

    //         if (!accList.isEmpty()) {
    //             List<Account> updateAccountList = new List<Account>();
    //             for (account  eachAcc : accList) {
    //                 List<Contact> contactsList=eachAcc.Contacts;

    //                 Account acc=new Account();
    //                 acc.Id=eachAcc.Id;
    //                 acc.Number_Of_Contacts__c=contactsList.size();
    //                 updateAccountList.add(acc);
    //             }
    //             if(!updateAccountList.isEmpty()){
    //                 update updateAccountList;
    //             }
    //         }
    // }

//--------------------------------------------------------------------------------

    
    // if(trigger.isAfter){
    //     if (trigger.isInsert || trigger.isUndelete) {
    //        ContactTriggerHandler.ContactTriggerIsInsert(trigger.new, trigger.old, trigger.newMap, trigger.oldMap);
    //     }

    //     if (trigger.isUpdate) {
    //         ContactTriggerHandler.ContactTriggerIsUpdate(trigger.new, trigger.old, trigger.newMap, trigger.oldMap);
    //     }

    //     if (trigger.isDelete) {
    //        ContactTriggerHandler.ContactTriggerIsDelete(trigger.new, trigger.old, trigger.newMap, trigger.oldMap);     
    //     }   
    // }

    //------------------------------------------------------------------------------------

        // list<contact> orgEmail=[select id, email from contact];
        // set<string> setOrgEmail= new set<string>();

        // for (contact EachOrgEmail : orgEmail) {
        //     setOrgEmail.Add(EachOrgEmail.Email);
        // }

        
        // for(contact con: trigger.new){        
        //     if(setOrgEmail.contains(con.Email)){
        //         con.addError(' We have before like ' + con.Email + ' email adress.');
        //     } 
        // }



//--------------------------------------------------------------------------------------------------------------
        
        
    // if(trigger.isBefore) {
    //     if (trigger.isInsert) {
    //         for(contact con: trigger.new){ 
    //             list<contact> orgEmail=[select id, email from contact where email=:con.Email];       
    //             if(!orgEmail.isEmpty()){
    //                 con.addError(' We have before like ' + con.Email + ' email adress.');
    //             } 
    //         }  
    //     }
        
    //     if (trigger.isUpdate) {
    //         for(contact con: trigger.new){ 
    //             list<contact> orgEmail=[select id, email from contact where email=:con.Email]; 
    //             if(con.email != trigger.OldMap.get(con.id).Email){        
    //                 if(!orgEmail.isEmpty()){
    //                     con.addError(' We have like ' + con.Email + ' email adress before.');
    //                 } 
    //             }
    //         }   
    //     }  
    // }   

    // if(trigger.isBefore) {
    //     for(contact con: trigger.new){ 
    //         list<contact> orgEmail=[select id, email from contact where email != null and email=:con.Email];

    //         if (trigger.isInsert) {   
    //             if(!orgEmail.isEmpty()){
    //                 con.addError(' We have like ' + con.Email + ' email adress before.');
    //             } 
    //         }  
        
    //         if (trigger.isUpdate) {
    //             if(con.email != trigger.OldMap.get(con.id).Email){        
    //                 if(!orgEmail.isEmpty()){
    //                     con.addError(' We have like ' + con.Email + ' email adress before.');
    //                 } 
    //             }
    //         }   
    //     }  
    // }

//---------------------------------------------------------------------------------------------------------------
}