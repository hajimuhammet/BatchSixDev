//PART A – SOQL – Basic Select Queries
// A.1.  1. Fetch Account Id, Contact First Name, Contact Last Name and Email Address for all the contacts present in your org.
List<contact> contactInf=[select AccountId, FirstName, LastName, email from contact];
system.debug(contactInf);

// A.2. 2. Fetch all the accounts which have no Phone number populated and order them based on the Account Name in the ascending order.
List<account> accName=[select Name from account where phone=null order by name];
system.debug(accName);

// A.3. 3. Find all contacts which have no account attached to them.
List<contact> contactName=[select name from contact where accountid=null];
system.debug(contactName);
//A.4. 4. Find out the count of all opportunities present in the Org.
integer oppcount=[select count() from opportunity];
system.debug(oppcount); 

//PART B → Maps – Iteration
/*1. Store the currency exchange rate values in a Map named ‘currISOCodeAndExchangeRateMap’ 
for any 5 currency ISO codes. Like below: 
a. AUD => 0.73 
b. CAD => 0.78 
c. EUR => 1.13 
d. NZD => 0.68 
e. INR => 0.013 
2. Fetch the currency conversion rate for any one currency ISO code and print it. 
3. Check if the above Map have conversion rate for SAD ISO code. 
4. Collect all the curreny ISO codes from currISOCodeAndExchangeRateMap for which the 
conversion rate is >= 1 in one variable and other iso codes in other variable. Expected Output: 
EUR – In one variable AUD, CAD, NZD, and INR – In another variable.*/

//B.1.
Map<String, Decimal> currISOCodeAndExchangeRateMap=new Map<String, Decimal>(); // {'AUD':0.73, 'CAD':0.78};
currISOCodeAndExchangeRateMap.put('AUD', 0.73);
currISOCodeAndExchangeRateMap.put('CAD', 0.78);
currISOCodeAndExchangeRateMap.put('EUR', 1.13);
currISOCodeAndExchangeRateMap.put('NZD', 0.68);
currISOCodeAndExchangeRateMap.put('INR', 0.013);
system.debug(currISOCodeAndExchangeRateMap);

//B.2. 2. Fetch the currency conversion rate for any one currency ISO code and print it.
system.debug(currISOCodeAndExchangeRateMap.get('EUR'));
//B.3. 3. Check if the above Map have conversion rate for SAD ISO code.
system.debug(currISOCodeAndExchangeRateMap.containsKey('SAD'));

//B.4. 4. Collect all the curreny ISO codes from currISOCodeAndExchangeRateMap for which the conversion rate is >= 1 in one variable and other iso codes in other variable. Expected Output: EUR – In one variable AUD, CAD, NZD, and INR – In another variable.
set<String> Greathet1 =new Set<String>();
set<String> Smaller1 =new Set<String>();
for(String eachKey: currISOCodeAndExchangeRateMap.keySet()){   
    if(currISOCodeAndExchangeRateMap.get(eachKey)>=1){
        Greathet1.add(eachKey);
    } else {
         Smaller1.add(eachKey);
    }
}
system.debug('Greathet 1: '+ Greathet1 + '   Smaller 1: '+Smaller1);


//PART C → SOQL – Medium
//C.1. Fetch all the opportunities which have stage as Closed Won and Amount more than or equal to 35000.
List<Opportunity> oppInf=[select StageName, amount from Opportunity where StageName='Closed Won' and amount>=35000];
System.debug('   Opportunity Info Close Won and amount >=35000:  '+oppInf);

//C. 2. Fetch all the contacts and their related Account Name, order them by the contact’s last name in descending order.
List<Contact> contInf=[select Name, Account.name from Contact Order by lastname];
System.debug('   Fetch all the contacts and their related Account Name:  '+contInf);

//C.3. Fetch all the Accounts along with their related Opportunities with StageName other than Closed Lost.
List<Account> oppOutClosedLost=[select Name from Account where Opportunities__r.StageName!='Closed Lost'];
System.debug('   Fetch all the Accounts along with their related Opportunities with StageName other than Closed Lost:  '+oppOutClosedLost);

/* Print the Annual revenue and name of all the accounts of type 'Customer - Direct' and print the Opportunity Name and Amount for the related 'Closed Won' opportunities. Each opportunity record should be printed in different line.
   */
List<Account> accList=  [select  name, annualRevenue ,(select name , amount from Opportunities where stageName='Closed Won') From Account where type='Customer - Direct'];
 system.debug('  My record is= '+accList);
for(account eachAcc: accList){

    string accName=eachAcc.name;//her bir liste icine gir 1 name i getir
    decimal accAnnualRevenue=eachAcc.annualRevenue;
    system.debug('  Account Name: '+accName +'==>    Account AnnualRevenue: ' + accAnnualRevenue);
    //string ...............=eachAcc.oppoirtunities//yapamiyorum cunki   //list bu
    for(opportunity eachOpp: eachAcc.opportunities){//her bir liste icinde birsuru opp var. onlari tek tek getirt ve yaz.
    system.debug('  Opportunity name: '+eachOpp.name);
    system.debug('  Opportunity amount: '+eachOpp.amount);
    system.debug('  B----------B');
    }    
    system.debug('  A---------------------------A');
}

