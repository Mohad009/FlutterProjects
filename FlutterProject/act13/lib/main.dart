import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: Home()));
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController _sName = TextEditingController();
  TextEditingController _sAge = TextEditingController();
  String gender = 'Male';
  bool ck1 = false, ck2 = false, ck3 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Registration Form"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Container(
        padding: EdgeInsets.all(30),
        child: ListView(children: [
          TextFormField(
            controller: _sName,
            decoration: const InputDecoration(
                labelText: "Student Name",
                prefixIcon: Icon(Icons.account_box),
                border: OutlineInputBorder()),
          ),
          const SizedBox(
            height: 20,
          ),
          TextFormField(
            controller: _sAge,
            decoration: const InputDecoration(
                labelText: "Age",
                prefixIcon: Icon(Icons.date_range),
                border: OutlineInputBorder()),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: <Widget>[
              const Text("Gender"),
              Expanded(
                  child: RadioListTile(
                      title: Text("Male"),
                      value: 'Male',
                      groupValue: gender,
                      onChanged: (value) {
                        setState(() {
                          gender = value.toString();
                        });
                      })),
              Expanded(
                  child: RadioListTile(
                      title: Text("Female"),
                      value: 'Female',
                      groupValue: gender,
                      onChanged: (value) {
                        setState(() {
                          gender = value.toString();
                        });
                      }))
            ],
          ),
          SizedBox(
            height: 20,
          ),
          CheckboxListTile(
              title: Text("Painting"),
              value: ck1,
              onChanged: (newval) {
                setState(() {
                  ck1 = newval!;
                });
              }),
          CheckboxListTile(
              title: Text("Playing"),
              value: ck2,
              onChanged: (newval) {
                setState(() {
                  ck2 = newval!;
                });
              }),
          CheckboxListTile(
              title: Text("Gardening"),
              value: ck3,
              onChanged: (newval) {
                setState(() {
                  ck3 = newval!;
                });
              }),
          SizedBox(
            height: 20,
          ),
          FloatingActionButton(onPressed: () {
            setState(() {});
          })
        ]),
      ),
    );
  }
}
