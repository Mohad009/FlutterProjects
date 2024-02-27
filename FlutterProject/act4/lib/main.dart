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
      appBar: AppBar(
        title: const Text("Use of Expanded Widget"),
        centerTitle: true,
        backgroundColor: Colors.indigo,
      ),
   body:  Row(children: <Widget> [
    Expanded(
      flex:4,
      child: Image(image: AssetImage("assets/img3.jpg"),),
    ),
    SizedBox(width: 10,),
    Expanded(
    flex: 3,
    child: Container( 
      padding:EdgeInsets.all(20),
      child: Text("1"),
      color: Colors.green,)
    ),
    SizedBox(width: 10,),
    Expanded(
    flex: 3,
    child: Container( 
      padding:EdgeInsets.all(20),
      color: Colors.yellow,
      child: Text("2"),
      )
    ),
    SizedBox(width: 10,),
    Expanded(
    flex: 4,
    child: Container( 
      padding:EdgeInsets.all(20),
      color: Colors.blue,
      child: Text("3"),
      )
    )
   ],)
    );
  }
}
