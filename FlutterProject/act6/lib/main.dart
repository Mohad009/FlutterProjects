import 'package:flutter/material.dart';

void main() {
  runApp( const MaterialApp(
    home:Home()
  ));
}


class Home extends StatefulWidget {
  const Home({super.key});
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String str="Use of Floating action button";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:const Text('Floating Buttons'),centerTitle: true,backgroundColor: Colors.redAccent,),
      body:  Center(child:  Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(str,
          style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.red),),
          SizedBox(height: 20,),

          FloatingActionButton(
            backgroundColor: Colors.red,
            foregroundColor: Colors.white,
            child: Icon(Icons.add),
          onPressed: (){setState(() {
            str="You Clicked Add button";
          });},),

          SizedBox(height: 20,),
          FloatingActionButton.small(
            backgroundColor: Colors.red,
            foregroundColor: Colors.white,  
          child: Icon(Icons.zoom_in_rounded),
          onPressed: (){setState(() {
            str="You Clicked zoom button";
          });},),
           SizedBox(height: 20,),
           FloatingActionButton.extended(
            backgroundColor: Colors.red,
            foregroundColor: Colors.white,

            onPressed: (){setState(() {
              str="You Clicked favorite button";
            });
            },
            icon: Icon(Icons.favorite_border),
            label: Text("Favorite"),
            )

        ],
      )),
    );
  }
}