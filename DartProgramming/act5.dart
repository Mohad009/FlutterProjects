import 'dart:io';
void main(){
  print("Enter The Employee Name: ");
  String? ename=stdin.readLineSync();
  print("Enter the Employee Grade");
  String? egrade=stdin.readLineSync();
  double netsal=calsal(egrade.toString());
  print("Name: $ename");
  print("Employee Net Salary:"+netsal.toString());

}

double calsal(String g){
  double netSal=0,tax=0;
  if(g=='A') {
    tax=1800*0.1;
    netSal=1800-tax;
  }else if(g=="B"){
    tax=1500*0.1;
    netSal=1500-tax;
  }else if(g=='C'){
    tax=1200*0.1;
    netSal=1200-tax;
  }
  else {
    print("Enter A, B or C");
  }
  return netSal;
}