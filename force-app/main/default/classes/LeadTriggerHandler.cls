public with sharing class LeadTriggerHandler {
    public static void updateDefaultLeadDetails(list<Lead> newList) {
        for (Lead ld : newList) {
            if (ld.LeadSource=='Web') {
                ld.Rating='Cold';
            } else {
                ld.Rating='Hot';
            }
        }
    }


    // public static void updateDefaultLeadDetailsTest() {
    //     List<Lead> listLead= new list<lead>();

    //     lead l1=new Lead();
    //     l1.LastName='Group14';
    //     l1.Company='Serap';
    //     l1.LeadSource='Web';
    //     listLead.add(l1);
            
    //     insert listLead;
    
    // }
}