import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home:MySTF()
  ));
}
class MySTF extends StatelessWidget {
  const MySTF({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Use of Stateful Widget and ListView'),
        centerTitle: true,
        backgroundColor: Colors.indigo[300],
      ),
      body: const UseSTF()
    );
  }
}

class UseSTF extends StatefulWidget {
  const UseSTF({super.key});

  @override
  State<UseSTF> createState() => _UseSTFState();
}

class _UseSTFState extends State<UseSTF> {
  bool fv=false;
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          title: Text("Do You Like?"),
          trailing: IconButton(icon: fv? const Icon(Icons.favorite): const Icon(Icons.favorite_border,),
           onPressed:(){
            setState(() {
              fv=!fv;
            });
           },),
        )
      ],
    );
  }
}
