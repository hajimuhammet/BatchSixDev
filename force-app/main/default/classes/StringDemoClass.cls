public with sharing class StringDemoClass {

     //return type of below method is void.

    public void wwww() {
        String cumle = 'learning string methods in apex language.';

         //1. length
        //length is string's class method. Which returns INTEGER.

        Integer lenghtOfStr = cumle.length();
        System.debug('lenght of string: ' + lenghtOfStr);

        String aaa = cumle.toUpperCase();
        System.debug('in caps = ' + aaa);
        System.debug('orginal string = ' + cumle);

          //2 upper case
          string cumleDescriptionInCaps = cumle.toUpperCase();
          system.debug('in caps = ' + cumleDescriptionInCaps);
          system.debug('original string = ' + cumle);
  
          //3. contains
          boolean containsApex = cumle.contains('apex');
          system.debug('has apex???? ' + containsApex);
          boolean containsApex3 = cumle.contains('Apex');
          system.debug('has Apex???? ' + containsApex3);
          //3.a check salesforce
          boolean containsSalesforce = cumle.contains('salesforce');
          system.debug('has salesforce???? ' + containsSalesforce);
  
          //3.b check APEX
          boolean containsAPEX2 = cumle.containsIgnoreCase('APEX');
          system.debug('has APEX? ' + containsAPEX2);
  
          //3.b check APEX
          cumle.containsIgnoreCase('APEX'); //this is valid.
  
          //4. 
          string apexx = 'apex';
          string ap = 'APEX';
          //equals check if two strings are same or not.
          //if same returns true.
          //string1.equals(string2)
          boolean apexCheck = apexx.equals(ap);
          system.debug('apex check ' + apexCheck);
    }
}
