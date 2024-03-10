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
  TextEditingController _sale = TextEditingController();
  String ctype = "";
  double disc = 0, netAmt = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sale Discount"),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),
      body: Container(
          padding: const EdgeInsets.all(20),
          child: ListView(
            children: [
              TextFormField(
                controller: _sale,
                decoration: const InputDecoration(
                    labelText: "Sale Amount",
                    prefixIcon: Icon(Icons.money),
                    border: OutlineInputBorder()),
              ),
              const SizedBox(
                height: 20,
              ),
              RadioListTile(
                  title: const Text('Permanent Customer'),
                  value: "pc",
                  groupValue: ctype,
                  onChanged: (value) {
                    setState(() {
                      ctype = value.toString();
               
                    });
                  }),
              const SizedBox(
                height: 10,
              ),
              RadioListTile(
                  title: const Text('Temporary Customer'),
                  value: "tc",
                  groupValue: ctype,
                  onChanged: (value) {
                    setState(() {
                      ctype = value.toString();
                      
                    });
                  }),
              const SizedBox(
                height: 10,
              ),
              OutlinedButton(
                onPressed:(){setState(() {
                if(ctype=='pc'){
                         disc = double.parse(_sale.text) * 0.15;
                      netAmt = double.parse(_sale.text) - disc;
                }
                else if(ctype=='tc'){
                  disc = double.parse(_sale.text) * 0.08;
                      netAmt = double.parse(_sale.text) - disc;
                }
              }
              );},
               child: Text('Calculate'.toUpperCase()))
               ,const SizedBox(
                height: 10,
              ),
              Text(
                "Discount: $disc",
                style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.blueGrey),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "Net Amount: $netAmt",
                style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.blueGrey),
              )
            ],
          )),
    );
  }
}
