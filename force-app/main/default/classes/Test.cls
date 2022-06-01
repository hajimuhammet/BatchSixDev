public class Test {
public String firstName='ahmet';
public static String lastName;

public static void SoqlDemo3(){
    List<aggregateResult> annualsum=[select sum(AnnualRevenue) from Account where annualrevenue!=null];
    System.debug(annualsum);
}

}
