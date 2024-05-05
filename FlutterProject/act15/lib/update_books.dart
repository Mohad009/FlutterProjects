import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class UpdateBook extends StatefulWidget {
  String btitle, author, docId;
  DateTime idate;
  UpdateBook(
      {super.key,
      required this.btitle,
      required this.author,
      required this.idate,
      required this.docId});

  @override
  State<UpdateBook> createState() => _UpdateBookState();
}

class _UpdateBookState extends State<UpdateBook> {
  TextEditingController _bt = TextEditingController();
  TextEditingController _ath = TextEditingController();
  TextEditingController _issdate = TextEditingController();

  Future UpdateRecord() async {
    await FirebaseFirestore.instance
        .collection('books')
        .doc(widget.docId)
        .update({
          'booktitle': _bt.text.trim(),
          'author': _ath.text.toString(),
          'issuedate': DateTime.parse(_issdate.text)
        })
        .then(
          (value) => ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text("Record Update"))),
        )
        .catchError((error) => ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text('Record is not updated'))));
  }

  @override
  void dispose() {
    _bt.dispose();
    _ath.dispose();
    _issdate.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Update book details'),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),
      body: Container(
        padding: EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              controller: _bt..text = widget.btitle,
              decoration: const InputDecoration(
                  labelText: 'Book Title',
                  prefixIcon: Icon(Icons.book),
                  border: OutlineInputBorder()),
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              controller: _ath..text = widget.author,
              decoration: const InputDecoration(
                  labelText: 'Author',
                  prefixIcon: Icon(Icons.book),
                  border: OutlineInputBorder()),
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              controller: _issdate..text = widget.idate.toString(),
              decoration: const InputDecoration(
                  labelText: 'Issue Date',
                  prefixIcon: Icon(Icons.book),
                  border: OutlineInputBorder()),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    minimumSize: Size(100, 50), backgroundColor: Colors.cyan,foregroundColor: Colors.white),
                onPressed: () {
                  UpdateRecord();
                },
                child: Text(
                  'Update'.toUpperCase(),
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ))
          ],
        ),
      ),
    );
  }
}
