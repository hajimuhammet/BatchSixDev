public class CryptoInfo {
  /*  2. Create one class called CryptoInfo, which contains the method called showPrice. This method should accept one string which will be called as coinName and will show the price based on the given input. This class will hold the values of crypto in one map called CryptoMap. 

From anonymous, first we will set the price of each crypto and than we will pass the name of crypto coin while calling the showPrice method.

== Example ==
-----------------------
Input: BTC
Output: $35,000      
Input: ETH
Output: $2,500*/
    public static Map<String,Double> cryptoMap=new Map<String, Double>();
    public static String errorMsg='';

    public static string showPrice(String coinName){
        
        double price=0;
        string returnPriceToFormat1='';
                
        if (cryptoMap.containsKey(coinName)) {
            price=cryptoMap.get(coinName);
        } else {
            price=0;
            errorMsg='There is not like ' +coinName+ ' cryptocurrency! Price: ';
        }
        returnPriceToFormat1=price.format();
        return returnPriceToFormat1;
    }
}
