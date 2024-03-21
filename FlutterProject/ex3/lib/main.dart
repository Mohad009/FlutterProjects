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
  List visitors=['Adult','Child','Infant'];
  String selectedval='Adult';
  double total=0;
  TextEditingController _noV=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Online Booking system"),centerTitle: true,backgroundColor: Colors.blue,foregroundColor: Colors.white,),
      body: ListView(
        padding: const EdgeInsets.all(30),
        children: [
          DropdownButton(
            isExpanded: true,
            value: selectedval,
            items: visitors.map((e) {
            return DropdownMenuItem(
            value: e,
            child: Text(e));
          }).toList()
          , onChanged: (val){
            setState(() {
              selectedval=val.toString();
            });
          }),
          const SizedBox(height: 20,),
          TextFormField(
            controller: _noV,
            decoration: const InputDecoration(
              labelText: "No. of Visitors",
              prefixIcon: Icon(Icons.numbers),
              border: OutlineInputBorder()
            ),
          ),
          const SizedBox(height: 20,),
          OutlinedButton(onPressed: (){
            setState(() {
              if(selectedval=='Adult'){total=(int.parse(_noV.text))*3.5;}
              else if(selectedval=='Child'){total=(int.parse(_noV.text))*2;}
              else if(selectedval=='Infant'){total=(int.parse(_noV.text))*0.8;}
            });
          }, 
          child: Text("Calculate",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold,),)),
          const SizedBox(height: 20,),
          Text("Total Amount: $total",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold,))
        ],
      ),
    );
  }
}