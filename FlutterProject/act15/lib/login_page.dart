import 'package:act15/homepage.dart';
import 'package:act15/register_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _user = TextEditingController();
  TextEditingController _pass = TextEditingController();

  Future SignIn() async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: _user.text.trim(), password: _pass.text.trim());
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => HomePage()));
  }

  @override
  void dispose() {
    _user.dispose();
    _pass.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      padding: EdgeInsets.all(40),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "Welcome",
            style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 20,
          ),
          TextFormField(
            controller: _user,
            decoration: const InputDecoration(
                labelText: "User Name",
                prefixIcon: Icon(Icons.email),
                border: OutlineInputBorder()),
          ),
          const SizedBox(
            height: 20,
          ),
          TextFormField(
            controller: _pass,
            decoration: const InputDecoration(
                labelText: "Password",
                prefixIcon: Icon(Icons.password),
                border: OutlineInputBorder()),
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue, foregroundColor: Colors.white),
              onPressed: () {
                SignIn();
              },
              child: Text("Sign In".toUpperCase())),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Not Register? ",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => RegisterPage()));
                },
                child: const Text('Register',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.blue)),
              )
            ],
          )
        ],
      ),
    ));
  }
}
