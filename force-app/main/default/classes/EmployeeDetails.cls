
/*2. Create an apex class called EmployeeDetails to have a method called showDetails which will accept the personal details of an employee (name, email, phone) as parameters and than it should show the details from that method itself.*/
public  class EmployeeDetails {
    public void EmployeeInfo(string name, string email, string phone) {
        system.debug('Employee Informations: '+name+', '+ email + ', '+ phone);
    }
}
