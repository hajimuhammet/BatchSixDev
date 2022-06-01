Set<String> uniqueNameSet = new Set<String>{'Tom', 'Jerry'};   
integer sizeOfSet = uniqueNameSet.size();
system.debug('Size of the set-->'+ sizeOfSet);

uniqueNameSet.add('Havvanur');
uniqueNameSet.add('Buddy');
uniqueNameSet.add('Marcel');
system.debug('updated list'+ uniqueNameSet);

uniqueNameSet.contains('Havvanur'); 
system.debug(uniqueNameSet.contains('Havvanur'));
uniqueNameSet.isEmpty();
system.debug(uniqueNameSet.isEmpty());

uniqueNameSet.clear();
system.debug('Deleted list'+ uniqueNameSet);

boolean isEmpty =uniqueNameSet.isEmpty();
system.debug('is Empty?'+ isEmpty);

/*
1. Create a Map named zipCodeToCityMap which should contain the Zipcode to City Name 
mapping. Like below:  
a. 100101 => New Delhi  
b. 101234 => Mumbai  
c. 569023 => New York City  
2. Add multiple mappings of your choice in the zipCodeToCityMap Map.  
3. Check if the above map contains mapping for 204101.  
4. Print all the Zip Codes present in the zipCodeToCityMap.  
5. Print all the city names present in the zipCodeToCityMap.  
6. Print the number of mappings present in the zipCodeToCityMap.  
7. Create a set as uniqueZipCodeSet and populate it with all the Zip codes from zipCodeToCityMap. 
8. Create a List as cityNameList and populate it with all the city names from zipCodeToCityMap.  
9. Check if the zipCodeToCityMap is Empty.  
10.  List down the differences between list and Map 
 */
//1.
 Map<String,String> zipCodeToCityMap = new Map<String,String>();
 //2.
 zipCodeToCityMap.put('100101', 'New Deli');
 zipCodeToCityMap.put('101234', 'Mumbai');
 zipCodeToCityMap.put('569023', 'New York City');
//3.
Boolean isContains=zipCodeToCityMap.containsKey('204101');
system.debug(isContains);
//4.
Set<String> zipSet=zipCodeToCityMap.keySet();
system.debug(zipSet);
//5.
List<String> cityList=zipCodeToCityMap.values();
system.debug(cityList);
//6.
Integer size1 = zipCodeToCityMap.size();
system.debug(size1);
//7.
Set<String> unqZCset=new Set<String>();
unqZCset.addAll(zipSet);
system.debug(unqZCset);
//8.
List<String> ctyNM=new List<String>();
ctyNM.addAll(cityList);
system.debug(ctyNM);
//9.
zipCodeToCityMap.isEmpty();
system.debug(zipCodeToCityMap.isEmpty());
//10.


 
  
 
 
 
 