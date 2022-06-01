public class PrimitiveDataTypeDemo {
    public void printBasicDataType() {
String batchName='Falcons 6';
Integer totalCanditates=120;
Boolean isAdminComplete=true;

Decimal decValue = 27.01;
system.debug('Decimal: ' + decValue);
Long longValue=215646548l;
system.debug('long: ' + longValue);

system.debug('batch name is ' + batchName);
system.debug('total # of canditates: ' + totalCanditates);
system.debug('Admin completed? ' + isAdminComplete);
Object obj = 'This is a string';
Object obj2=10;
system.debug('object 1 : ' + obj);
system.debug('object 2 : ' + obj2);

Id id1='0018c00002FJNCvAAT';
system.debug('ID : ' + id1);
    }
}