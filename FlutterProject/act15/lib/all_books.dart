import 'package:act15/update_books.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Allbooks extends StatefulWidget {
  const Allbooks({super.key});

  @override
  State<Allbooks> createState() => _AllbooksState();
}

class _AllbooksState extends State<Allbooks> {
  User? userId = FirebaseAuth.instance.currentUser;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Book details'),
          centerTitle: true,
          backgroundColor: Colors.cyanAccent,
        ),
        body: Container(
          child: StreamBuilder(
              stream: FirebaseFirestore.instance
                  .collection('books')
                  .where('user id', isEqualTo: userId?.uid)
                  .snapshots(),
              builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
                if (snapshot.hasError) {
                  return Text("Something went wrong");
                }
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return Center(
                    child: CupertinoActivityIndicator(),
                  );
                }
                if (snapshot.data!.docs.isEmpty) {
                  return Center(child: Text("No data found"));
                }
                if (snapshot.hasData) {
                  return ListView.builder(
                      itemCount: snapshot.data!.docs.length,
                      itemBuilder: (context, index) {
                        var btitle = snapshot.data!.docs[index]['booktitle'];
                        var author = snapshot.data!.docs[index]['author'];
                        DateTime idate =
                            snapshot.data!.docs[index]['issuedate'].toDate();
                        var docId = snapshot.data!.docs[index].id;

                        return Card(
                          child: ListTile(
                            title: Text(btitle),
                            subtitle: Text("Author: " +
                                author +
                                " Issue Date: " +
                                idate.toString()),
                            trailing: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                GestureDetector(
                                  child: Icon(Icons.edit),
                                  onTap: () {
                                    Navigator.of(context)
                                        .push(MaterialPageRoute(
                                            builder: ((context) => UpdateBook(
                                                  btitle: btitle,
                                                  author: author,
                                                  idate: idate,
                                                  docId: docId,
                                                ))));
                                  },
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                GestureDetector(
                                  child: Icon(Icons.delete),
                                  onTap: () async {
                                    final result = await showDialog<bool>(
                                        context: context,
                                        builder: (context) => AlertDialog(
                                              title: Text("Are you sure?"),
                                              content: Text(
                                                  'This action will permanently delete this data'),
                                              actions: [
                                                TextButton(
                                                    onPressed: () =>
                                                        Navigator.pop(
                                                            context, false),
                                                    child: Text('Cancel')),
                                                TextButton(
                                                    onPressed: () =>
                                                        Navigator.pop(
                                                            context, true),
                                                    child: Text('Delete')),
                                              ],
                                            ));
                                    if (result == true) {
                                      await FirebaseFirestore.instance
                                          .collection('books')
                                          .doc(docId)
                                          .delete();
                                    }
                                  },
                                )
                              ],
                            ),
                          ),
                        );
                      });
                }
                return Container();
              }),
        ));
  }
}
