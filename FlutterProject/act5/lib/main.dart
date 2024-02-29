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
      appBar: AppBar(title: Text("Use of background image"), centerTitle: true,backgroundColor: Colors.black,foregroundColor: Colors.white,),
      body: Stack(children: [
        Container(
          padding: const EdgeInsets.all(20),
          decoration: const BoxDecoration(
            image: DecorationImage(image: AssetImage("assets/img2.jpg"),
            fit:BoxFit.fill
            ),
            
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: const Column(
            children: [
              Text('Design with style',
              style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Color.fromARGB(255, 0, 0, 0))),
              SizedBox(height: 30,),
            Text("We are in the process of designing the"
                " mobile application. It is interesting to learn "
                "the new technology",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 12, color: Color.fromARGB(255, 55, 0, 255),fontWeight: FontWeight.bold),
                
            
            ),
            Icon(Icons.add_card_rounded,color: Colors.blue)
            ],
          ),
        )
      ]),
    );
  }
}
