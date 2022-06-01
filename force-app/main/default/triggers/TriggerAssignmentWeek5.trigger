trigger TriggerAssignmentWeek5 on Case (before insert, before Update, after update, after Insert) {

        // System.debug('We are in the triggers');

        // if (trigger.isBefore) {
        //     System.debug('We are in the before triggers'); 
        //     if (trigger.isInsert) {
        //         System.debug('We are in the before-Insert triggers'); 
        //     }
        //     if (trigger.isUpdate) {
        //         System.debug('We are in the before-Update triggers');
        //     }
        // }

        // if (trigger.isAfter) {
        //     System.debug('We are in the after triggers');
        //     if (trigger.isInsert) {
        //         System.debug('We are in the after-Insert triggers'); 
        //         for (case eachCase : trigger.new) {
        //             System.debug('Case#'+eachCase.CaseNumber+' was created with id '+eachCase.Id+' on '+eachCase.CreatedDate);
        //         }
        //     }

        //     if (trigger.isUpdate) {
        //         System.debug('We are in the after-Update triggers');
        //         for (case eachCase : trigger.new) {
        //             System.debug('Case#'+eachCase.CaseNumber+' was updated with id '+eachCase.Id+' on '+eachCase.CreatedDate);
        //         }
        //     }
        // }

        
            if(trigger.isbefore && trigger.isUpdate){
                for(case eachcase: trigger.new){                 //key
                    if(eachcase.origin != trigger.oldmap.get(eachcase.id).origin){  //id value 
                        system.debug('case origin is changed for  ' +eachcase.caseNumber);
                    }
                }
            }

}