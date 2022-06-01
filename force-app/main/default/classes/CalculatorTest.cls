@isTest
public with sharing class CalculatorTest {
    @isTest
    private static void testMessage() {
        Calculator.welcomeMessage();
        Calculator.printNewMessage('string msg');
        Calculator.printNewMessage2('string msg', date.today());
        
    }

    @isTest
    private static void makaddTesteData(){
        Integer i=10;
        Integer j=15;
        Calculator.add(i, j);
    }

    @isTest
    private static void addTest2() {
        integer calcAdd = Calculator.add(10,15,20);
       //AssertEquals(expected, actual) COMPARISON
        system.assertEquals(45,calcAdd); //(we are checking if it isi doing what it is suppose to do )
     }

     @isTest 
     public static void addTest3(){
         List<Integer> intList= new List<Integer>{16,15,15};
         integer result=Calculator.add3(intList);
         System.assertEquals(46, result);
     }  
}
