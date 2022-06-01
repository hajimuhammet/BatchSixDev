date dob=date.newInstance(1985, 04, 10);
Date todaysdate=date.today();
Integer indays=dob.daysBetween(todaysdate);
system.debug(indays);

Integer inmonth=dob.monthsBetween(todaysdate);
system.debug(inmonth);

Integer inyears=inmonth/12;
system.debug(inyears);


date dateOfSubscription=date.newInstance(2022, 01, 01);
date dateOfEndSubscription=dateOfSubscription.addDays(365);
Integer remainDays=todaysdate.daysBetween(dateOfEndSubscription);
system.debug(remainDays);
