import "dart:io";
void main(){
  print("Enter a number from the 1-20");
  int? rnum=int.parse(stdin.readLineSync()!);
  if(rnum<=20 && rnum>=1){
    for(int i=1;i<=10;i++){
      print("$rnum x $i = "+(rnum*i).toString());
    }
  }else{
    print("Invaild Input");
  }
}