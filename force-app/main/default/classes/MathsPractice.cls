public class MathsPractice {
   /* 19. "MathPractice" Class'ının içerisine "practiceSeven" isimli bir method oluşturun. Bu method boy ve kilo değerlerini iki adet decimal parametre olarak kabul etsin, vücut kitle indeksini debug ekranına yazdırsın ve aşağıda belirtilen sonuçları return etsin. Sonuç sıfır veya sıfırdan küçük yada otuz veya otuzdan büyük ise hata mesajı versin. [İpucu: VKI = Kilo(kg)   / (boy(m)  * boy(m)  return type : string]
* Extra : a. VKI 'ni hesaplarken boyun karesini ilgili math metodu ile alınız.
              b. İşlem sonucunu virgülden sonra bir basamak olacak şekilde düzenleyiniz. [bknz: Link]
0 ila 18,4 → Zayıf
18.5 ila 24.9 → Normal
25 ila 29.9 arası → Kilolu
Örnek:
	1. Parametre: 1.80 — 2. Parametre: 50
	Debug Ekranı: 15.4
			      Zayıf
				
	1. Parametre: 1.70 — 2. Parametre: 70
	Debug Ekranı: 24.2
			      Normal

	1. Parametre: 1.79 — 2. Parametre: 95
	Debug Ekranı: 29.6
			      Kilolu

	1. Parametre: 1.80 — 2. Parametre: 200
	Debug Ekranı: 61.7
			      Lütfen girmiş olduğunuz boy ve kilo değerlerini kontrol ediniz! */
    public string practiceSeven (Decimal boy, Decimal kilo){
        string msg;
        Decimal vki=kilo/boy.pow(2);
                vki=vki.setScale(1);
        if (vki<=0 || vki>=30) {
            system.debug('Lütfen girmiş olduğunuz boy ve kilo değerlerini kontrol ediniz!');
        } else if(vki>0 && vki<=18.4){
            msg='Zayif';
           System.debug('Vki: '+vki);
           System.debug(msg); 
        } else if (vki>18.4 && vki<=24.9){
            msg='Normal';
           System.debug('Vki: '+vki);
           System.debug(msg);
        } else if(vki>24.9 && vki<30){
            msg='Kilolu';
            System.debug('Vki: '+vki);
            System.debug(msg);
        }
return msg;
    }


   /* 20. "MathPractice" Class'ının içerisine "practiceEight" isimli bir method oluşturun. Bu method iki integer parametere kabul etsin ve iki parametre arasındaki sayıların toplamını return etsin. [İpucu: Toplama işlemine parametre değerleri dahil edilmeli ve parametrelerin eşitlik durumunda iki parametre toplanmalıdır.]
	Örnek:
	1. Parametre: 10 — 2. Parametre: 20
	Debug Ekranı	: 165

	1. Parametre: 20 — 2. Parametre: 10
	Debug Ekranı	:165

	1. Parametre: 50 — 2. Parametre: 50
	Debug Ekranı	: 100    */


public Integer practiceEight(Integer num1, Integer num2){
    Integer sumAll=0;

    if (num1<num2) {
        for (Integer i = num1; i <=num2; i++){
            sumAll+=i;   
        }     
    } else if(num2<num1){
        for (Integer i = num2; i <=num1; i++){
            sumAll+=i;   
        }
    } else {
        sumAll=num1+num2;
    }
    return sumAll;
}




}
