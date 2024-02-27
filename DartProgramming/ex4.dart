import "dart:io";
void main(){
    print("Enter Your name");
  String? sname=stdin.readLineSync();
  print("Enter your marks");
  double marks=0,total=0;
  for(int i=1;i<=5;i++){
    print("Enter Marks for Course $i");
    marks=double.parse(stdin.readLineSync()!);
    total=total+marks;
  }
  print("Student Name: $sname");
  print("Total Marks: $total");
  print("Average Marks: "+(total/5).toString());

}