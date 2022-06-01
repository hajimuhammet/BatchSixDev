public class EmployeesInfo {
  /*  1. Create one class called EmployeeInfo, which contains the method called showInfo. This method should accept one integer which will be called empNumber and will show the name of the Employee. This class will hold the values of employee in one map called employeeMap. 

From anonymous, first we will set the info of each employee and than we will pass the number of employee while calling the showInfo method.

== Example ==
-----------------------
Input: 001
Output: Jimmy Thakkar

Input: 002
Output: James Leo*/

    public static map<integer, String> employeeMap=new map<integer, string>();
    public String showInfo(integer empNumber){
        String empName=''; 
    
        if (employeeMap.containsKey(empNumber)) {
            empName=employeeMap.get(empNumber);
        } else {
            empName=' Boyle bir key numara yoktur';
        }
    
    return empName;
    }
}
