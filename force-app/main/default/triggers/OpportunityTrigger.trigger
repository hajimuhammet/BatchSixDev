trigger OpportunityTrigger on Opportunity (before insert, before update, after insert, after update) {
   //28. Bir Opportunity update edildiğinde description bölümünü aşağıda görülen şekilde düzenleyen bir trigger tasarlayınız.
    // if(trigger.isBefore && trigger.isUpdate){
    //     for(opportunity opp :trigger.new){
    //         opportunity oldopp=trigger.oldmap.get(opp.Id);
    //         if(opp.amount!=oldopp.amount && opp.stageName!=oldopp.stageName){
    //             opp.Description='amount and stage have updated  : new amount is= '+ opp.amount  +'  old amount is= '+ oldopp.amount  + ' new stage is= '+ opp.stageName +' old stage is= '+ oldopp.stageName;
    //         }
    //         else if(opp.stageName!=oldopp.stageName){
    //         opp.Description='stage has updated  new stage is= '+ opp.stageName +' old stage is= '+ oldopp.stageName;
    //         }
    //         else if(opp.amount!=oldopp.amount){
    //         opp.Description='amount has updated: new amount is= '+ opp.amount  +'  old amount is='+ oldopp.amount;
    //         }
    //         else if (opp.amount==oldopp.amount && opp.stageName==oldopp.stageName){
    //         opp.Description='amount and stage have not updated';
    //         }
    //     }
    // }



    /*Assignment Question for Today:
Validation - Close date can not be updated less than what is already present on the Opportunity record.
For example : An opportunity with close date as 5th August 2022 is there and If user tries to update the close date to 4th August 2022 or less than that then user should get an error as follows - 'Close Date can not be update to less that what already provided'. (edited)*/

        // if (trigger.isBefore && trigger.isUpdate) {
        //    OpportunityTriggerHandler.checkDate(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
           
        // }

//---------------------------------------------------------------
            // if (trigger.isBefore && trigger.isUpdate) {
            //     OpportunityTriggerHandler.printDescriptionAndName(trigger.New, trigger.OldMap);
            // }

//------------------------------------------------------------

// if (trigger.isBefore && trigger.isUpdate) {
//     OpportunityTriggerHandler.NotAllowClosedWonOrClosedLost(trigger.New, trigger.Old, trigger.NewMap, trigger.OldMap);
// }

//-----------------------------------------------------------

    // if(trigger.isBefore && trigger.isInsert){
    //     OpportunityTriggerHandler.addCloseWonCloseLost15day(trigger.New, trigger.Old, trigger.NewMap, trigger.OldMap);
    // }

//---------------------------------------------------------------------------------
   


}
