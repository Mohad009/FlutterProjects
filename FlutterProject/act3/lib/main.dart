import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home:Home()
  ));
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Use of Columns"),
      centerTitle: true,
      backgroundColor: Colors.cyan,),
    body: Column(children: <Widget>[
      Container(
        padding: const EdgeInsets.all(20),
        margin: EdgeInsets.zero,
        height: 300,
        width: 500,
        child:const  Image(
          image: AssetImage("assets/img2.jpg"),)
          ,),
          Container(
            child:  Icon(Icons.bus_alert_sharp,
            color: Colors.blue[400],
            size: 50,),
          ),
          Container(
            padding: const EdgeInsets.all(20),
            child:const Text("Welcome to Fluuter Programming",
            style: TextStyle(color: Colors.blue,fontSize: 20,fontWeight: FontWeight.bold),),
          )
    ]),);
  }
}

