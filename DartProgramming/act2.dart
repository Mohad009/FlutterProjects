void main(){
  String str1="University of Technology and Applied Sciences";
  String str2="""
  University 
  of Technology 
  and 
  Applied 
  Sciences
  """;
  String str3="10",str4="5";
  int sum;
  sum=int.parse(str3)+int.parse(str4);
  print(str1);
  print(str2);
  print("Sum : $sum");
}