public class Car {

    public String carColor='';
    private Integer maxSpeedKMperHour=150;

    public void switchOn(){
        system.debug('starting the car.');
    
    }

    public void model(){
        system.debug('Mercedes.');
    }

    public void renk(){
        system.debug('beyaz');
    }
    
    public void yyl(Integer a){
        if (a==5) {
            System.debug(a+10);    
        }
        else { 
            System.debug('Girilen san 5 e den bolmany ucin ustune 15 gosuldy, jemi:' + a+15);
            
             }      
  
    }



}