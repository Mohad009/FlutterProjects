class Employee{
  String? ename;
  int? age;
  double? salary;
  Employee(this.ename,this.age,this.salary){}
  double taxcal(){
    return salary!*0.05;
  }
  void display(){
    double tax=taxcal();
    double netSalary=salary!-tax;
    print("Employee name: $ename");
    print("Employee age: $age");
    print("Employee salary: $salary");
    print("Employee tax: $tax");
    print("Employee net Salary: $netSalary");
  } 
}

void main(){
  Employee emp1=new Employee("Ali", 50, 1550);
  Employee emp2=new Employee("Humayoun", 45, 850);
  emp1.display();
  print("===================");
  emp2.display();
}