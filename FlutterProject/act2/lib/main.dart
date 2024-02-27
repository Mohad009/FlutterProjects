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
        title: const Text("Use of Image"),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),
      body:Container(padding: const EdgeInsets.fromLTRB(80,20, 50,20),
      child: const Image(
        image: AssetImage('assets/img1.jpg'), height: 300,width: 300,),
        )
    );
  }
}
