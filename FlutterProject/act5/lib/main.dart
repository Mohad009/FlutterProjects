import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: Home()
  ));
}
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Column and Row")
      ,centerTitle: true,
      backgroundColor: Colors.cyanAccent,),
      body: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
        Row(
           mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
          Expanded(
            flex: 1,
            child: Image(image:AssetImage("assets/img2.jpg"),),
                ),
          Expanded(
            flex: 1,
            child:Icon(Icons.ad_units_rounded,size: 50,),
                )      
        ],),

        Row(
           mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
          Expanded(
            flex: 1,
            child: Center(child: Text("Image")),
                ),
          Expanded(
            flex: 1,
            child:  Center(child: Text("Icon")),
                )
                   
        ],)
      ]),
    );
  }
}


