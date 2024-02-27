class Car{
  String? make,color;
  int? model;
  double? price;
  Car(this.make,this.model,this.color,this.price){}
  double discount(){
    if(price!<10000) return price!*0.05;
    else return price!*0.08;
  }
  void display(){
    double dis=discount();
    double netPrice=price! - dis;
    print("Car Make: $make");
    print("Car Model: $model");
    print("Car Color: $color");
    print("Car price: $price");
    print("Car Net Price: $netPrice");
  }
}
void main(){
  Car c1=Car("Toyota", 2022, "White", 9500);
  Car c2=Car("Honda", 2023, "Silver", 1050);
  c1.display();
  print("===========================");
  c2.display();
}