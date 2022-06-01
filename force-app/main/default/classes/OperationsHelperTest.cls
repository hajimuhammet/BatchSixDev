@isTest
public with sharing class OperationsHelperTest {
    @isTest
    public static void largestOutOfTwoNumbersTest() {
        System.Test.startTest();
        Decimal returnValue1= OperationsHelper.largestOutOfTwoNumbers(4, 6);
        Decimal returnValue2= OperationsHelper.largestOutOfTwoNumbers(6, 4);
        System.Test.stopTest();
        system.assertEquals(6, returnValue1);
        system.assertEquals(6, returnValue2);
        
    }

    @isTest
    public static void smallestOutOfThreeNumbersTest() {
        System.Test.startTest();
        Decimal returnValue1= OperationsHelper.smallestOutOfThreeNumbers(4, 6, 8);
        Decimal returnValue2= OperationsHelper.smallestOutOfThreeNumbers(6, 4, 8);
        Decimal returnValue3= OperationsHelper.smallestOutOfThreeNumbers(6, 8, 4);
        System.Test.stopTest();
        system.assertEquals(4, returnValue1);
        system.assertEquals(4, returnValue2);
        system.assertEquals(4, returnValue3);
     }

     @isTest 
     public static void sumofPositiveIntegersTest(){
     OperationsHelper obj1 = new OperationsHelper();
 
     system.test.startTest();
     Integer Result1 = obj1.sumofPositiveIntegers(-1);
     Integer Result2 = obj1.sumofPositiveIntegers(2);
     
     system.test.stopTest();
     system.AssertEquals(null, Result1);
     system.AssertEquals(3, Result2);
     }

     @isTest
     public static void sumofPositiveIntegersTest1 (){
        system.test.startTest();
        integer result=OperationsHelper.sumofPositiveIntegers(2, 4);
        system.test.stopTest();
        system.assertEquals(9, result );
     }
     @isTest
     public static void sumofListValuesTest (){
        List<Decimal> DecimalList1 = new List<Decimal>{2.3, 5.6, 6.7};
        List<Decimal> DecimalList2 = new List<Decimal>();

        system.test.startTest();
        Decimal result1=OperationsHelper.sumofListValues(DecimalList1);
        Decimal result2=OperationsHelper.sumofListValues(DecimalList2);
        system.test.stopTest();

        system.assertEquals(14.6, result1 );
        system.assertEquals(1, result2 );
     }

     @isTest
     public static void averageOfListValuesTest (){
        List<Decimal> DecimalList1 = new List<Decimal>{3.5, 5.5, 6.5, 8.5};
        List<Decimal> DecimalList2 = new List<Decimal>();

        system.test.startTest();
        Decimal result1=OperationsHelper.averageOfListValues(DecimalList1);
        Decimal result2=OperationsHelper.averageOfListValues(DecimalList2);
        system.test.stopTest();

        system.assertEquals(6, result1 );
        system.assertEquals(null, result2 );
     }

     @isTest
     public static void highestOfListValuesTest (){
         OperationsHelper obj = new OperationsHelper();
        List<Decimal> DecimalList1 = new List<Decimal>{3.5, 5.5, 6.5, 8.5};
        List<Decimal> DecimalList2 = new List<Decimal>();

        system.test.startTest();
        Decimal result1=obj.highestOfListValues(DecimalList1);
        Decimal result2=obj.highestOfListValues(DecimalList2);
        system.test.stopTest();

        system.assertEquals(8.5, result1 );
        system.assertEquals(null, result2 );
     }

     @isTest
     public static void lowestOfListValuesTest (){
        OperationsHelper obj = new OperationsHelper();
        List<Decimal> DecimalList1 = new List<Decimal>{3.5, 5.5, 6.5, 8.5};
        List<Decimal> DecimalList2 = new List<Decimal>();

        system.test.startTest();
        Decimal result1=obj.lowestOfListValues(DecimalList1);
        Decimal result2=obj.lowestOfListValues(DecimalList2);
        system.test.stopTest();

        system.assertEquals(3.5, result1 );
        system.assertEquals(null, result2 );
     }

     @isTest
     public static void reverseOrderPrintTest (){
        OperationsHelper obj = new OperationsHelper();
        List<Object> DecimalList1 = new List<Object>{3.5, 5.5, 6.5, 8.5};
        List<Object> DecimalList2 = new List<Object>();

        system.test.startTest();
        obj.reverseOrderPrint(new List<Decimal>{3.5, 5.5, 6.5, 8.5});
        obj.reverseOrderPrint(DecimalList2);
        system.test.stopTest();

     }
}
