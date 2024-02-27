import 'dart:io';
void main(){
  String? cname;
  int? spd;

  print("Enter a name");
  cname=stdin.readLineSync();
  print("Enter the car speed");
  spd=int.parse(stdin.readLineSync()!);
  print(cname);
  if(spd>120){
    print("Very high speed");
  }else if(spd>80){
    print("High speed");
  }else if(spd>0){
    print("Slow speed");
  }else{
    print("Stationary");
  }
}