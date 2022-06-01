
SoqlDemo2.childToParent_Soql1();
SoqlDemo2.sampleSoql4();

List<Account> listAcc=[select id, name, (select CloseDate from Opportunities where CloseDate > Today) from account];
System.debug(listAcc);

for (account eachAcc: listAcc){
    Id accId= eachAcc.get(id);
    string accName= eachAcc.get(name);
    List<Opportunity> listOpp=listAcc.get(arg0)
    for(opportunity eachOpp: )
}

List<Account> listAcc=[select id, name, Opportuniti.CloseDate from account where Opportunities.CloseDate>Today];
System.debug(listAcc);