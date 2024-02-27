import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home:Scaffold(
    appBar: AppBar(title: Text("Hello, world"),
                  backgroundColor: Colors.teal[200],
                  centerTitle: true,
    ),
    body: Center(
      child: Text("Applying background colors",
      style:TextStyle(
        fontSize: 20,
        color: Colors.teal[700],
        letterSpacing: 2.0,
        fontWeight: FontWeight.bold,
      )),),
    floatingActionButton: FloatingActionButton(onPressed: (){},
    child: Text("Click"),
    backgroundColor: Colors.teal[200],),
    )
  ));
}


