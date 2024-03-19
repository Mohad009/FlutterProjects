

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
  TextEditingController _gold= TextEditingController();
  TextEditingController _silver= TextEditingController();
  TextEditingController _yearlySavings= TextEditingController();
  TextEditingController _loan= TextEditingController();
  TextEditingController _housex= TextEditingController();
  double total=0,zakat=0,goldGram=0,silverGram=0;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
      Stack(children: [
        Image(image: AssetImage("assets/img2.jpg")),

        Container(padding: EdgeInsets.all(20),
      child: ListView(
        children: [
          Text("Zakat the Annual Duty",textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),),

        TextFormField(
          controller: _gold,
          decoration: InputDecoration(
            labelText: "Gold in grams",
           
            prefixIcon: Icon(Icons.ten_mp,),
            border: OutlineInputBorder(),
            labelStyle: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold)
          ),
        ),
SizedBox(height: 20,),
                TextFormField(
          controller: _silver,
          decoration: InputDecoration(
            labelText: "silver in grams",
            prefixIcon: Icon(Icons.ten_mp,),
            border: OutlineInputBorder(),
          labelStyle: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold)
          ),
        ),
SizedBox(height: 20,),
                TextFormField(
          controller: _yearlySavings,
          decoration: InputDecoration(
            labelText: "Yearly Savings in Omani riyals",
            prefixIcon: Icon(Icons.money,),
            border: OutlineInputBorder(),
            labelStyle: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold)
          ),
        ),
SizedBox(height: 20,),
                TextFormField(
          controller: _loan,
          decoration: InputDecoration(
            labelText: "Loan to pay",
            prefixIcon: Icon(Icons.money,),
            border: OutlineInputBorder(),
            labelStyle: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold)
          ),
        ),
SizedBox(height: 20,),
                TextFormField(
          controller: _housex,
          decoration: InputDecoration(
            labelText: "HouseHold expenses",
            prefixIcon: Icon(Icons.money,),
            border: OutlineInputBorder(),
            labelStyle: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold)
          ),
        ),
SizedBox(height: 20,),
OutlinedButton(
  style: OutlinedButton.styleFrom(backgroundColor: Colors.white,foregroundColor: Colors.black),
  onPressed:(){
  setState(() {
    goldGram=(double.parse(_gold.text)*24.5);
    silverGram=(double.parse(_silver.text)*0.280);
    total=(goldGram+silverGram+double.parse(_yearlySavings.text))-double.parse(_loan.text+_housex.text);
    zakat=0.025*total;
  });
} , child: Text("Calculate Zakat")),
SizedBox(height: 20,),
Text("Total Saving: $total",
textAlign: TextAlign.center,
style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),
),
SizedBox(height: 20,),
Text("Zakat to pay: $zakat",
textAlign: TextAlign.center,
style:TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold)
),
        ],
      ),
      ),
      ],)
      
    );
  }
}
