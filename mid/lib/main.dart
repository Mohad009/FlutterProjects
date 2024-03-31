import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home:Home()
  ));
}
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String tshirtBrand='Polo';
  TextEditingController _quant =TextEditingController();
  double dis=0,total=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Men T-Shirt"),
        centerTitle: true,
        foregroundColor: Colors.white,
        backgroundColor: Colors.blueGrey,
      ),
      body: Container(
        padding: EdgeInsets.all(40),
        child: Column(children: [
          RadioListTile(
            title: Image(image: AssetImage('assets/bberry.png'),height: 90,width: 90,),
            value: 'Blackberry', groupValue: tshirtBrand, onChanged: (value){
            setState(() {
              tshirtBrand=value.toString();
            });
          }),

            RadioListTile(
            title: Image(image: AssetImage('assets/polo.jpg'),height: 90,width: 90,),
            value: 'Polo', groupValue: tshirtBrand, onChanged: (value){
            setState(() {
              tshirtBrand=value.toString();
            });
          }),
                RadioListTile(
            title: Image(image: AssetImage('assets/raymond.jpg'),height: 90,width: 90,),
            value: 'Raymond', groupValue: tshirtBrand, onChanged: (value){
            setState(() {
              tshirtBrand=value.toString();
            });
          }),

          Row(
            children: [
              Expanded(child: 
              TextFormField(
                controller: _quant,
                decoration: InputDecoration(
                  labelText: 'Quantity',
                  prefixIcon: Icon(Icons.numbers),
                  border: OutlineInputBorder()
                ),
              )
              ),
              SizedBox(width: 15,),
              Expanded(child: FloatingActionButton.extended(
                backgroundColor: Colors.blueGrey,
                foregroundColor: Colors.white,
                icon:Icon(Icons.calculate),
                onPressed:(){
                  setState(() {
                    double qt=double.parse(_quant.text);

                    if(tshirtBrand=="Blackberry" && qt>=25)
                    {dis=0.15*4.5;
                      total=(4.5-dis)*qt;
                      }
                      else if(tshirtBrand=="Polo" && qt>=40){
                        dis=0.2*3.5;
                        total=3.5-dis;
                      }
                       else if(tshirtBrand=="Raymond" && qt>=50){
                        dis=0.3*6;
                        total=6-dis;
                      }
                      else{
                        if(tshirtBrand=="Blackberry"){total=4.5*qt;}
                        else if(tshirtBrand=="Polo"){total=3.5*qt;}
                        else if(tshirtBrand=="Raymond"){total=6*qt;}
                      }
                  });
                }
               ,label: Text("Calculate"),
               
               ))
              
            ],
          ),
          SizedBox(height: 20,),
          Text("Discount: $dis",textAlign: TextAlign.center,style: TextStyle(color: Colors.blueGrey),),
          SizedBox(height: 15,),
          Text("Total amount: $total",textAlign: TextAlign.center,style: TextStyle(color: Colors.blueGrey),),
        ]),
      ),
    );
  }
}
