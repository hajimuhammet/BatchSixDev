public class MyCity1 {

    public void stingMethod() {
        string str1='I am a salesforce Developer';

        //a. 'force' kelimesi bulunup bulunmadığını* kontrol edin,
        Boolean isForceContain=str1.contains('force');
        system.debug('Cumlemizde force kelimesi varmi: '+isForceContain);

        //b. Kaç karakter olduğunu* hesaplayın,
        Integer lenghtOfString= str1.length();
        system.debug('Cumledeki karakter sayisi: '+lenghtOfString);

        //c. Tüm karakterleri büyük harfe* dönüştürün ve bunları System.debug yardımı ile görüntüleyin.
        String str2=str1.toUpperCase();
        system.debug('Cumlenin yeni hali: '+str2);
    }


   /* 7- MyCity class'ına dateMethod adında yeni bir metod oluşturun. Bu Method içerisinde bugünün 
    tarihini* 
    tanımlayıp System.debug yardımı ile yazdırın. 
    * Extra : Aynı method içerisinde ayrı bir
    variable'da şuanki tarih ve saati tanımlayın*
    ve 50 saat sonrasını* System.debug yardımı 
    ile yazdırın.[*bknz:Link]*/
    public void dateMethod(){
        Date todaysDate=date.today();
        system.Debug('Todays date is==>'+todaysDate);
        Datetime todaysDateTime= Datetime.now();
        system.Debug('Todays date and time ==>'+todaysDateTime);
        Datetime todaysDateTimePlus50= todaysDateTime.addHours(50);
        system.Debug('Todays date time + 50 hours==>'+todaysDateTimePlus50);
    }


    /*8- MyCity clasında bulunan cityInformation metodunu
     kullanarak bulunduğunuz ülkenin kuruluş tarihini* 
     ve bulunduğunuz lokasyonun gün doğumu saatini*
     System.debug yardımı ile yazdırın. [*bknz:Link]
    * Extra : İçinde bulunduğumuz tarihten 36 ay öncesini 
    System.debug yardımı ile yazdırın.*/
    public void cityInformation(){
        date ulkeKurulusTarihi=date.newInstance(1991, 09, 27);
        system.debug('Turkmenistanin kurulus tarihi: '+ulkeKurulusTarihi);

        time sunriseTime=time.newInstance(06, 32, 05, 30);
        system.debug('Gun dogumu zamani: '+sunriseTime);
        system.debug('Bu gunun tarihi: '+Date.today()+
        '  ve 36 ay oncesinin tarihi: '+Datetime.now().addMonths(-36));
    }
   
}
