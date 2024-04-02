// ignore_for_file: must_be_immutable
import 'package:flutter/material.dart';

class Details extends StatelessWidget {
  String sn, age, gend,ck1,ck2,ck3;
  Details({super.key,required this.sn,required this.age,required this.gend,required this.ck1,required this.ck2,required this.ck3});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Form Details"),centerTitle: true,backgroundColor: Colors.blue,),
      body: ListView(
        children: [
          ListTile(
            title: Text(sn),
            leading: Icon(Icons.abc),
          ),
                  ListTile(
            title: Text(age),
            leading: Icon(Icons.abc),
          ),
                  ListTile(
            title: Text(gend),
            leading: Icon(Icons.abc),
          ),
                     ListTile(
            title: Text(ck1+","+ck2+","+ck3),
            leading: Icon(Icons.abc),
          ),
          
        ],
      ),
    );
  }
}
