public with sharing class OpportunityTriggerHandler {

//----------------------------------------------------
    // public static void checkDate(List<Opportunity> TriggerNew,
    //                             List<Opportunity> TriggerOld,
    //                             Map<id, Opportunity> TriggerNewMap,
    //                             Map<id, Opportunity> TriggerOldMap) {

    //     for (opportunity eachOpp : TriggerNew) {
    //         if (eachOpp.CloseDate< triggeroldmap.get(eachOpp.id).CloseDate) {
    //             eachOpp.CloseDate.addError('Close Date can not be update to less that what already provided');
    //         }
    //     }
    // }



    //------------------------------------------------------------
    /*When the StageName of an opportunity is updated, then print the value of description field and opportunity name.*/ 
    // public static void printDescriptionAndName(list<Opportunity> triggerNew, map<id, Opportunity> triggerOldMap){
           
    //     for (opportunity opp : triggerNew) {
    //         if (opp.StageName != triggerOldMap.get(opp.id).StageName) {   
    //             System.debug('value of description field ' + opp.Description + 'opportunity name ' + opp.Name);
    //         } 
    //     }
    // }


//-----------------------------------------------------------------------------------------------


/*2. Make sure user is not able to change the status of an opportunity once opportunity is updated to closed won or closed lost.*/
    // public static void NotAllowClosedWonOrClosedLost(list<Opportunity> triggerNew, list<Opportunity> triggerOld,  map<id, Opportunity> triggerNewMap, map<id, Opportunity> triggerOldMap){
    //     for (opportunity opp : triggerNew) {
    //         if (opp.stageName != triggerOldMap.get(opp.id).StageName){
    //             if(triggerOldMap.get(opp.id).StageName=='Closed Won' || triggerOldMap.get(opp.id).StageName=='Closed Lost') {
    //             opp.addError('user is not able to change the status of an opportunity once opportunity is updated to closed won or closed lost');
    //             }
    //         }
    //     }
    // }


    

    // public static void NotAllowClosedWonOrClosedLost(list<Opportunity> triggerNew, list<Opportunity> triggerOld, map<id, Opportunity> triggerNewMap, map<id, Opportunity> triggerOldMap){
    //     for (opportunity opp : triggerOld) {
    //         if (opp.StageName=='Closed Won' || opp.StageName=='Closed Lost'){
    //             if(opp.stageName != triggerNewMap.get(opp.id).StageName) {
    //                 triggerNewMap.get(opp.id).addError('user is not able to change the status of an opportunity once opportunity is updated to closed won or closed lost');
    //             }
    //         }
    //     }
    // }

//-----------------------------------------------------------------------------------------------------------

//Whenever new Opportunity is created with stageName as closed won or closed lost, then set closeDate as today otherwise set closed date as 15 days from today

        // public static void addCloseWonCloseLost15day(list<Opportunity> triggerNew, list<Opportunity> triggerOld, map<id, Opportunity> triggerNewMap, map<id, Opportunity> triggerOldMap){
        //     for (opportunity eachOpp : triggerNew) {
        //         if (eachOpp.StageName=='Closed won' || eachOpp.StageName=='Closed lost') {
                    
        //         } else {
                    
        //         }
        //     }
        // }
    
   

}
