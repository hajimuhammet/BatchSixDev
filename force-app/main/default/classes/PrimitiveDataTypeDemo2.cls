public class PrimitiveDataTypeDemo2 {

    public void printNewDate(){
        system.debug('create new Date instance');
        Date newDate = Date.newInstance(1995, 2, 17);
        Date newDate2 = Date.newInstance(2021, 10, 7);
        Date newDateToday= Date.today();
        system.debug('newDate  '+ newDate);
        system.debug('newDate2  '+newDate2);
        system.debug('Todays date  '+newDateToday);
    }

    public void printNewTime(){
        Time myTime=Time.newInstance(18, 20, 2, 30);
        Time meTime=Time.newInstance(15, 15, 2, 20);

        system.debug('    myTime:  '+ myTime);
        system.debug('    meTime:  '+ meTime);
    }

    public void printNewDateTime(){
        date newDate=date.today();

        time newTime=time.newInstance(9, 8, 0, 0);
        time tryTime=time.newInstance(23, 23, 23, 23);

        //1. create new datetime from DATE and TIME
        Datetime dt1=Datetime.newInstanceGMT(date.today(), tryTime);
        system.debug('Date Time is:  '+dt1);

        //2. create datetime using YEAR, MONTH, DAY. => Time will be midnight(00000).
        Datetime dt2=Datetime.newInstance(2025, 1, 9);
        system.debug('Date Time 2:  '+dt2);

        //3. create datetime using  YEAR, MONTH, DAY, HOUR, MINUTE, SECOND.
        Datetime dt3=Datetime.newInstanceGMT(2021, 10, 9, 10, 10, 10);
        system.debug('Date Time 3:  '+dt3);

        //4.Current datetime???
        Datetime currentDT=Datetime.now();
        System.debug('Current Date Time:  '+currentDT);

    }

}
