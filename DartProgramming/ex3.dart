import "dart:io";
void main(){
  print("Enter Your name");
  String? cname=stdin.readLineSync();
  print("Enter your marks");
  double? marks=double.parse(stdin.readLineSync()!);
  print("Student Name: $cname");
  if(marks<=100 && marks >=85){
    print("Grade: A");
  }else if(marks<=84 && marks>=70){
    print("Grade: B");
  }else if(marks<=69 && marks>=55){
    print("Grade: C");
  }else if(marks<=54){
    print("Grade: D");
  }
}