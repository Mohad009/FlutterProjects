// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class Details extends StatelessWidget {
  String un,ps;
   Details({super.key,required this.un,required this.ps});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("User Details"),centerTitle: true,backgroundColor: Colors.orangeAccent,foregroundColor: Colors.white,),
      body:Container(
        padding: EdgeInsets.all(30),
      child:ListView(children: [
        ListTile(
          leading: Icon(Icons.verified_outlined),
          title: Text(un,style: TextStyle(color: Colors.white,fontSize: 20)),  
          tileColor: Colors.cyan,
           iconColor: Colors.white,
        
        ),
        SizedBox(height: 15,),
           ListTile(
            leading: Icon(Icons.password_outlined),
            title: Text(ps,style: TextStyle(color: Colors.white,fontSize: 20),),  
            tileColor: Colors.cyan,
            iconColor: Colors.white,

          
        )
      ]),
      ) 
      
  
    );
  }
}