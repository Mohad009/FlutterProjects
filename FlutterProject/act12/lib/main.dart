import 'package:flutter/material.dart';
import 'details.dart';

void main() {
  runApp(const MaterialApp(
    home: Home()
  ));
}
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController _user=TextEditingController();
  TextEditingController _passwd=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login Screen"),
      backgroundColor: Colors.orangeAccent,
      centerTitle: true,
      foregroundColor: Colors.white,),
      body: Container(
        padding: EdgeInsets.all(30),
        child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         children: [
          TextFormField(
            controller: _user,
            decoration: InputDecoration(
              labelText: "User Name",
              prefixIcon: Icon(Icons.verified_user),
              border: OutlineInputBorder()
            ),
          ),
          SizedBox(height: 20,),
                    TextFormField(
            controller: _passwd,
            obscureText: true,
            decoration: InputDecoration(
              labelText: "Password",
              prefixIcon: Icon(Icons.password),
              border: OutlineInputBorder(),
              
            ),
          ),
          SizedBox(height: 20,),
          ElevatedButton(
            style:ElevatedButton.styleFrom(backgroundColor: Colors.orangeAccent),
            onPressed: (){
              Navigator.push(context,
              MaterialPageRoute(builder: (context){
                return Details(un:_user.text,ps:_passwd.text);
              })
              );
            },
           child:Text("Submit Form".toUpperCase(),style: TextStyle(color: Colors.white,),),
            
          )
         ], 
        ),
      ),
    );
  }
}