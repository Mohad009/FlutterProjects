import 'dart:ffi';

import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: Home()
  ));
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
   TextEditingController _ftemp=TextEditingController();
   double tempCel=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Use of Text Field"),centerTitle: true, backgroundColor: Colors.blue,),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: ListView(children: [
          TextFormField(
            controller: _ftemp,
            decoration: const InputDecoration(
                                    labelText: 'Temperature in Fahrenheit',
                                    prefix: Icon(Icons.sunny),
                                    border: OutlineInputBorder()
            
            ),
          ),
          const SizedBox(height: 20,),
          OutlinedButton(onPressed: (){
            setState(() {
            tempCel=(double.parse(_ftemp.text)-32) * (5/9);

            });
          }, 
                          child:  Text("Convert".toUpperCase(), style: TextStyle(fontSize: 20,color: Colors.amber),)
                        ),
          const SizedBox(height: 20,),
          Text("Temprature in Celsius: "+tempCel.toStringAsFixed(2), style: TextStyle(fontSize: 20, color: Colors.blue,fontWeight: FontWeight.bold),)  
        ]),
      ),
    );
  }
}