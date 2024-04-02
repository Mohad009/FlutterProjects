import 'package:flutter/material.dart';
import 'details.dart';

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
  String gender = '', ck1 = '', ck2 = '', ck3 = '';
  bool pain = false, play = false, gard = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Registration Form"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Container(
        padding: const EdgeInsets.all(30),
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
                      title: const Text("Male"),
                      value: 'Male',
                      groupValue: gender,
                      onChanged: (value) {
                        setState(() {
                          gender = value.toString();
                        });
                      })),
              Expanded(
                  child: RadioListTile(
                      title: const Text("Female"),
                      value: 'Female',
                      groupValue: gender,
                      onChanged: (value) {
                        setState(() {
                          gender = value.toString();
                        });
                      }))
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          CheckboxListTile(
              title: const Text("Painting"),
              value: pain,
              onChanged: (newval) {
                setState(() {
                  pain = newval!;
                   if (pain) {
                    ck1 = 'Painting';
                  } else {
                    ck1 = '';
                  }
                });
              }),
          CheckboxListTile(
              title: const Text("Playing"),
              value: play,
              onChanged: (newval) {
                setState(() {
                  play = newval!;
                  if (play) {
                    ck2 = 'Playing';
                  } else {
                    ck2 = '';
                  }
                });
              }),
          CheckboxListTile(
              title: const Text("Gardening"),
              value: gard,
              onChanged: (newval) {
                setState(() {
                  gard = newval!;
                   if (gard) {
                    ck3 = 'Gardening';
                  } else {
                    ck3 = '';
                  }
                });
              }),
          const SizedBox(
            height: 20,
          ),
          FloatingActionButton(
              backgroundColor: Colors.blue,
              foregroundColor: Colors.white,
              child: const Text(
                "Submit Form",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onPressed: () {
                setState(() {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Details(
                      sn: _sName.text,
                      age: _sAge.text,
                      gend: gender,
                      ck1: ck1,
                      ck2: ck2,
                      ck3: ck3,
                    );
                  }));
                });
              })
        ]),
      ),
    );
  }
}
