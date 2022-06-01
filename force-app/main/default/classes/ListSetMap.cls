public class ListSetMap {
  /*  21. "ListSetMap" adında bir Class ve içerisinde "practiceOne" adında static bir method oluşturun. Method içerisine elemanları "Ankara, İstanbul, London, Paris, New York, Tokyo, Antalya, London, Paris, New York, Tokyo" olan bir liste oluşturun. Aşağıdaki verilen adımları uygulayarak her adımı system.debug yardımı ile developer consol üzerinden gözlemleyin.
1. Listenin boyutunu kontrol edin.
2. Listenin boş olup olmadığını kontrol edin.
3. Listenin 7. elemanını (size'a göre) kontrol edin.
4. Listeyi oluşturacağınız bir "Set'e" ilgili methodla ekleyin. */
public static void practiceOne(){
    List<String> sehirlerList=new List<String>{'Ankara', 'İstanbul', 'London', 'Paris', 'New York', 'Tokyo', 'Antalya', 'London', 'Paris', 'New York', 'Tokyo'};
    //1.
    System.debug('Listemizde '+sehirlerList.size()+' eleman bulunmaktadir.');
    //2.
    System.debug('Sehirler listemiz bos mu? : '+sehirlerList.isEmpty());
    //3.
    System.debug('Listemizin 7. elemani: ' + sehirlerList[6]);
    //4.
    Set<String> sehirlerSet = new Set<String>();
    sehirlerSet.addAll(sehirlerList);
    System.debug('Sehirler Listemizi Set`imize eklemis bulunuyoruz. '+sehirlerSet);


}

/*22. "ListSetMap" Class'ının içerisine "practiceTwo" adında static bir method oluşturun. Method parametre olarak integer bir liste kabul etsin. Parametre olarak gelen listedeki tek sayıları bir Set'e, çift sayıları ise diğer bir Set'e ekleyen bir kod bloğu tasarlayın ve her adımı developer consol üzerinden gözlemleyin. Parametre olarak göndereceğiniz liste  "54, 45, 35, 89, 64, 98, 54, 45, 35, 89, 64, 98" sayılarını içersin.*/

    public static void practiceTwo(list<integer> intList){
        Set<Integer> oddNumbers = new Set<Integer>();
        Set<Integer> evenNumbers = new Set<Integer>();
        for (integer eachValue : intList) {
            if (math.mod(eachValue,2)==1) {
                oddNumbers.add(eachValue);
            } else {
                evenNumbers.add(eachValue);
            }
        }
        System.debug('Even Number set: '+evenNumbers);
        System.debug('Odd Number set: '+oddNumbers);
    }

}
