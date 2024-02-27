void main(){
  int a=5,b=30,c=10;
  check(a, b, c);
}
void check(int a, b,c){
  int min=0;
  if(a<b && a<c){
    min=a;
  }else if(b<a && b<c){
    min=b;
  }else{
    min=c;
  }
  print("The minimum value is: "+min.toString());
}
