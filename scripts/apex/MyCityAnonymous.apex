MyCity1 obj1=new MyCity1();
//obj1.stingMethod();
//obj1.dateMethod();
//obj1.cityInformation();

/* 9- Anonim pencerede (anonymous.apex) doğum
tarihinizi bir variable olarak tanımlayın. Daha 
sonra gün, ay ve yılı Date metodlarını* kullanarak
üç ayrı integer variable'a tanımlayıp, 
toplatın. [*bknz:Link] */

/*date birthday=date.newInstance(2022, 04, 10);
Integer year=birthday.year();
Integer month=birthday.month();
Integer day=birthday.day();
system.debug('My birthday date: '+birthday);
Integer sum=year+month+day;
system.debug(day+'+'+month+'+'+year+'='+sum);*/

/*10- Nobel ödüllü ilk kadın bilim insanı 
    olan Marie Curie'nin doğum tarihi 7 Kasım 1867’dir. 
    Anonim pencerede;
    a. Marie Curie'nin doğum tarihi ile günümüz arasında kaç yıl* olduğunu hesaplayınız.
    b. Marie Curie'nin doğum tarihinin artık yıl* olup olmadığını kontrol ediniz. [*Bknz:Link]*/

    date mariebirth=date.newInstance(1867, 11, 07);
    system.debug('Bu gunun tarihi: '+date.today()+'---  Marie Curie\'nin dogum tarihi: '+mariebirth);

    Integer withday=mariebirth.daysBetween(date.today());
    Integer years=withday/365;
    system.debug('Farkin gun dikkate alinarak hesaplanmasi: '+years);

    Integer withmonth=mariebirth.monthsBetween(date.today());
    Integer years1=withmonth/12;
    system.debug('Farkin ay dikkate alinarak hesaplanmasi: '+years1);
    
    Integer withyear=date.today().year()-mariebirth.year();
    system.debug('Farkin yil dikkate alinarak hesaplanmasi: '+withyear);

    system.debug('Marie\'nin dogum tarihi artik yil mi? : '+date.isLeapYear(mariebirth.year()));
   