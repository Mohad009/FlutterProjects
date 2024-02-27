import 'dart:io';
void main(){
  double? income;
  double tax=0;
  print("Enter the anual income");
  income=double.parse(stdin.readLineSync()!);
  tax=taxcal(income);
  print("The annnual income is: $income");
  print ("Income tax: $tax");

}
double taxcal(double income){
  double inctax=0;
  if(income >100000){
    inctax=income*0.05;
  }else if(income <=100000 && income>=50000){
    inctax=income*0.035;
  }else if(income < 50000){
    inctax=0;
  }
  return inctax;
}