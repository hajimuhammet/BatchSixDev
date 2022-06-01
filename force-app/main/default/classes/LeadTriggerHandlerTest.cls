@isTest
public with sharing class LeadTriggerHandlerTest {
    @isTest
    public static void updateDefaultLeadDetailsTest() {
        List<Lead> listLead= new list<lead>();
        
        for (Integer i = 0;  i < 200; i++){
            if (i<100) {
                lead l1=new Lead();
                l1.LastName='Group14';
                l1.Company='Serap';
                l1.LeadSource='Web';
                listLead.add(l1);
            }else{
                lead l2=new Lead();
                l2.LastName='Group14';
                l2.Company='Serap';
                l2.LeadSource='Other';
                listLead.add(l2);
            }
        }
        insert listLead;
        system.Test.startTest();
        LeadTriggerHandler.updateDefaultLeadDetails(listLead);
        system.test.stopTest();
        
    }
}
