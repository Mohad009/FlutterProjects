import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class InsertData extends StatefulWidget {
  const InsertData({super.key});

  @override
  State<InsertData> createState() => _InsertDataState();
}

class _InsertDataState extends State<InsertData> {
  User? userId=FirebaseAuth.instance.currentUser!;
  TextEditingController _bkTitle=TextEditingController();
  TextEditingController _author=TextEditingController();

  Future addbook()async{
    await FirebaseFirestore.instance.collection('books').add({
      'booktitle':_bkTitle.text.trim(),
      'author':_author.text.trim(),
      'issuedate':DateTime.now(),
      'user id':userId?.uid,
    }).then((value) => ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text("Record Added"))
    )).catchError((error)=>ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text("Record is not added"))
    ));
  }

  @override
  void dispose(){
    _bkTitle.dispose();
    _author.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Add book"),centerTitle: true,backgroundColor: Colors.cyan,),
      body: Container(
        padding: const EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          TextFormField(
            controller: _bkTitle,
            decoration: const InputDecoration(
              labelText: "Book Title",
              prefixIcon: Icon(Icons.book),
              border: OutlineInputBorder()
            ),),
            const SizedBox(height: 20,),
                      TextFormField(
            controller: _author,
            decoration: const InputDecoration(
              labelText: "Author",
              prefixIcon: Icon(Icons.person),
              border: OutlineInputBorder()
            ),),
            const SizedBox(height: 20,),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.cyan[900],foregroundColor: Colors.white),
              onPressed: (){
                addbook();
              }, child: Text("Add book".toUpperCase()))
        ]),
      ),
    );
  }
}