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
  TextEditingController _iniV= TextEditingController();
  TextEditingController _accel= TextEditingController();
  TextEditingController _time= TextEditingController();
  double fvel=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("First Equation"),centerTitle: true,backgroundColor: Colors.amberAccent,),
      body:Container( 
        padding: const EdgeInsets.all(20),
        child:ListView(children: [
        TextFormField(
          controller: _iniV,
          decoration: const InputDecoration(
            labelText: "Initial Velocity",
            prefix: Icon(Icons.telegram),
            border: OutlineInputBorder(),
          ),
        ),
        const SizedBox(height: 20,),
           TextFormField(
          controller: _accel,
          decoration: const InputDecoration(
            labelText: "Acceleration",
            prefix: Icon(Icons.data_array),
            border: OutlineInputBorder(),
          ),
        ),
        const SizedBox(height: 20,),
             TextFormField(
          controller: _time,
          decoration: const InputDecoration(
            labelText: "Time",
            prefix: Icon(Icons.home),
            border: OutlineInputBorder(),
          ),
        ),
        const SizedBox(height: 20,),
        OutlinedButton(
          style: OutlinedButton.styleFrom(backgroundColor: Colors.amber,minimumSize: Size(100,50)),
          onPressed: (){
          setState(() {
            fvel= double.parse(_iniV.text) + (double.parse(_accel.text) * double.parse(_time.text));
          });
        }, 
        child: const Text("Final Velocity",style: TextStyle(fontSize: 20,color: Colors.blue),),),
        const SizedBox(height: 20,),
        Text("Final Velocity: "+fvel.toString())
      ],),)
    );
  }
}