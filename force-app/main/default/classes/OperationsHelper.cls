public  class OperationsHelper {
    public static Decimal sum;

     //Assignment 2 Question 4.1 
     public static decimal largestOutOfTwoNumbers(decimal a, decimal b){
        if(a > b){
            return a;
        }
        return b;
    }
    //Assignment 2 Question 4.2
    public  static decimal smallestOutOfThreeNumbers(decimal a, decimal b, decimal c){
        if(a < b && a < c){
            return a;
        }
        else if(b < a && b< c){
            return b;
        }
        return c;
    }
    //Assignment 2 Question 4.3
    public  Integer sumofPositiveIntegers(Integer n){
        Integer sum;
        if(n<0){
            sum = null;
            system.debug('We are not calculating the sum for negative numbers');
        } else {
            sum = 0;
            for(Integer i = 1; i <= n; i++){
                sum = sum + i;
            }
        }
        return sum;
    }

    public static Integer sumofPositiveIntegers(Integer n1, Integer n2){
        Integer sum=n1;
        for(Integer i = n1+1; i <= n2; i++){
            sum = sum + i;
        }
        return sum;
    }



    //Assignment Week 3 Solution part 2.1.a
    public static decimal sumofListValues(List<Decimal> values){
        Decimal sum;
        if(values.size() > 0 ){
            sum = 0;
            for(Decimal val : values){
                sum = sum + val;
            }
        } else {sum=1;
            system.debug('Please provide values to do the operation');
            
        }
        return sum;        
    }
    //Assignment Week 3 Solution part 2.1.b
    public static decimal averageOfListValues(List<Decimal> values){
        decimal average;
        if(values.size()>0){
            decimal sum = sumofListValues(values);
            average = sum/values.size();
            system.debug('values.size() '+values.size());
        } else {
            system.debug('Please provide values to do the operation');
        }
        return average;
    }


    //Assignment Week 3 Solution part 2.1.c
    public decimal highestOfListValues(List<Decimal> values){
        decimal highestElement;
        if(values.size()>0){
            highestElement = values[0];
            for(Decimal val : values){
                if(val > highestElement){
                    highestElement = val;
                }
            }
        } else {
            system.debug('Please provide values to do the operation');
        }
        return highestElement;
    }

    //Assignment Week 3 Solution part 2.1.d
    public decimal lowestOfListValues(List<Decimal> values){
        decimal lowestElement;
        if(values.size()>0){
            lowestElement = values[0];
            for(Decimal val : values){
                if(val < lowestElement){
                    lowestElement = val;
                }
            }
        } else {
            system.debug('Please provide values to do the operation');
        }
        return lowestElement;
    }


    //Assignment Week 3 Solution part 2.2
    public void reverseOrderPrint(List<Object> values){
        if(values.size() > 0){
            for(integer i=values.size()-1; i>=0; i--){
                System.debug(values[i]);
            }
        }
        else {
            system.debug('Please provide values to do the operation');
        }
    }
    
//     public static decimal sum(List<Double> listSum){
//         Decimal sum;
//         if (listSum.size()>0) {
//             sum=0;
//             for (decimal eachValue : listSum) {
//                 sum+=eachValue;
//             }System.debug('Sum Value: '+sum);
//         } else {
//             System.debug(sum+'-->Please provide values to do the operation');
//         }
//         return sum;
//     }  
    

//     public static decimal average(List<Double> listAvg){
//         Decimal avg;
//         decimal sum=0;
//         if (listAvg.size()>0) {
//            avg=sum(listAvg)/listAvg.size();
//             System.debug('Average Value: '+avg);
//         }
//          else {
//             System.debug(avg+'-->Please provide values to do the operation');
//         }
//         return avg;
//     } 






//     public static decimal highest(List<Double> listHigh){
//       Decimal high;
            
//      /* if (listHigh.size()>0) {
//         listHigh.sort();
//         System.debug(listHigh);
//         high=listHigh[listHigh.size()-1];
//         System.debug('Highest Value: '+high);
//      }*/

//      if(listHigh.size()>0){
//          high=listHigh[0];     
//        for (double eachValue : listHigh) {
//            if (eachValue>high) {
//               high=eachValue; 
//            } 
//        } 
//        System.debug('Highest Value: '+high);
//         }
          
//       else {
         
//          System.debug(high+'-->Please provide values to do the operation');

//      }
//         return high;
//     } 

//     public static decimal lowest(List<Double> listLow){
//       decimal low;

//       if(listLow.size()>0){
//          low=listLow[0];     
//        for (double eachValue : listLow) {
//            if (eachValue<low) {
//               low=eachValue; 
//            } 
//        } 
//        System.debug('Highest Value: '+low);
//         }
          
//       else {
         
//          System.debug(low+'-->Please provide values to do the operation');

//      }
//         return low;  
//     } 

// public static list<Object> reverse(List<Object> listRev){

//     list<Object> newReversedList=new List<Object>();

//     if (listRev.size()>0) {
        
//         for(Integer i=listRev.size()-1; i>=0; i--){
//             newReversedList.add(listRev[i]); 
//         }
//         System.debug('New Reversed LIst: '+newReversedList);
//     } else {
//         System.debug(newReversedList+'-->Please provide values to do the operation');
//     }

//     return newReversedList;
// }


}
