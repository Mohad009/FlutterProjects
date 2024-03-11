import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: Home()));
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Practice"),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
      ),
      body: Column(
        children: [
           Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                 height: 200,
                width: 200,
                   child:Image(
                image: AssetImage("assets/img1.jpg"),
              ),
              )
           
            ],
          ),
          SizedBox(height: 15,),
          Row(
          mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 200,
                width: 200,
                
                child: Image(image: AssetImage("assets/img2.jpg")),
              ),
              Container(
                height: 200,
                width: 200,
                
                child: Image(image: AssetImage("assets/img3.jpg")),
              )
            ],
          ),
          SizedBox(height: 15,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 200,
                width: 200,
                  child:Image(
                image: AssetImage("assets/img1.jpg"),)  
              )
          
            ],
          )
        ],
      ),
    );
  }
}
