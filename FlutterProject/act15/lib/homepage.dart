import 'package:act15/all_books.dart';
import 'package:act15/insert_data.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        centerTitle: true,
        backgroundColor: Colors.blue[900],
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => InsertData()));
            },
            child: const Image(
              image: AssetImage("assets/add.jpg"),
              height: 100,
              width: 80,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Allbooks()));
            },
            child: const Image(
              image: AssetImage("assets/search.jpg"),
              height: 100,
              width: 80,
            ),
          ),
        ],
      )),
    );
  }
}
