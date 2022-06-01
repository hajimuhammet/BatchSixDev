@isTest

public class ListPracticeTest {
    @isTest
    public static void  addPlanetTest(){
      
        test.startTest();
        string returnmessage1 =ListPractice.addPlanet('Jubiter',8,16);
        system.assertEquals('Planet added successfully',returnMessage1 );
         string returnmessage2 =ListPractice.addPlanet('',8,16);
        system.assertEquals('Planet without name can not be added to the list',returnMessage2 );
        test.stopTest();

    }
}