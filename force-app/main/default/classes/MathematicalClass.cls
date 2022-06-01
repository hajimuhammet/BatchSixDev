
  /*  1. Create an apex class called MathematicalClass to have 4 methods (addition, subtraction, multiplication, division) for mathematical operations. All of those methods will be accepting two integer numbers as parameters and will return the result. That returned result needs to be printed from the apex script. */
  public class MathematicalClass {

    public integer addition(integer a, integer b) {
        return a+b;
    }

    public integer substraction(integer a, integer b) {
        return a-b;
    }

    public integer multiplication(integer a, integer b) {
        return a*b;
    }
    
    public decimal division(integer a, integer b) {
        decimal x = a;
        Decimal c = x/b;
        return c;
    }
}
