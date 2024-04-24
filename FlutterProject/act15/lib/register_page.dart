import 'package:act15/login_page.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  TextEditingController _fn = TextEditingController();
  TextEditingController _ln = TextEditingController();
  TextEditingController _age = TextEditingController();
  TextEditingController _email = TextEditingController();
  TextEditingController _pass = TextEditingController();
  TextEditingController _passConf = TextEditingController();

  Future signUp() async {
    //create user
    if (_pass.text == _passConf.text) {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: _email.text.trim(), password: _pass.text.trim());

      //add user details
      adduserDetails(_fn.text.trim(), _ln.text.trim(), _email.text.trim(),
          _age.text.trim());
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => LoginPage()));
    }
  }

  Future adduserDetails(String fn, String ln, String email, String age) async {
    await FirebaseFirestore.instance
        .collection('users')
        .add({
          'first name': fn,
          'last name': ln,
          'email': email,
          'age': age,
        })
        .then((value) => ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text("Resgistration completed"))))
        .catchError((error) => ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text('Registratin incompleted'))));
  }

  @override
  void dispose() {
    _email.dispose();
    _pass.dispose();
    _passConf.dispose();
    _fn.dispose();
    _ln.dispose();
    _age.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(40),
        child: Column(children: [
          const Text(
            "Register!",
            style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 20,
          ),
          TextFormField(
            controller: _fn,
            decoration: const InputDecoration(
              labelText: "First Name",
              prefixIcon: Icon(Icons.account_box_rounded),
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          TextFormField(
            controller: _ln,
            decoration: const InputDecoration(
              labelText: "Last Name",
              prefixIcon: Icon(Icons.account_box_rounded),
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          TextFormField(
            controller: _age,
            decoration: const InputDecoration(
              labelText: "Age",
              prefixIcon: Icon(Icons.account_box_rounded),
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          TextFormField(
            controller: _email,
            decoration: const InputDecoration(
              labelText: "Email",
              prefixIcon: Icon(Icons.account_box_rounded),
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          TextFormField(
            controller: _pass,
            obscureText: true,
            decoration: const InputDecoration(
              labelText: "Password",
              prefixIcon: Icon(Icons.password),
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          TextFormField(
            controller: _passConf,
            obscureText: true,
            decoration: const InputDecoration(
              labelText: "Confirm Password",
              prefixIcon: Icon(Icons.account_box_rounded),
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                minimumSize: Size(100, 50), backgroundColor: Colors.cyan),
            onPressed: () {
              signUp();
            },
            child: Text("Sign Up".toUpperCase(),
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,color: Colors.white)),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Already Registed! ",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => LoginPage()));
                },
                child: Text(
                  'Login',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.blue[900]),
                ),
              )
            ],
          )
        ]),
      ),
    );
  }
}
