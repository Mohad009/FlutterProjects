import 'package:act14/navbar.dart';
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Navbar(),
      appBar: AppBar(title: Text("sidebar menu"),centerTitle: true,backgroundColor: Colors.blueGrey,),
      
    );
  }
}