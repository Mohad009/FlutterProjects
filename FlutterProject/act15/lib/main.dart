import 'package:act15/login_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: const FirebaseOptions(
          apiKey: 'AIzaSyA0SFZyCmYpOEFHKfB_xrCjU68rpf5fwzE',
          appId: '1:869233426454:android:1bb37fa9389edfee8a3537',
          messagingSenderId: '869233426454',
          projectId: 'act15-88252'));
  runApp(MaterialApp(
    home: AspectRatio(
      aspectRatio: 9/16,
      child: Home(),
    ),
    ));
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LoginPage(),
    );
  }
}
