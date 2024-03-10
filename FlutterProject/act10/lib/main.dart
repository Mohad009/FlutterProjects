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
  bool allWh = false, sc = false, mt = false, cdp = false;
  double price = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sale of Car Accessories'),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: ListView(children: [
          CheckboxListTile(
              title: const Image(
                image: AssetImage('assets/img.jpg'),
                height: 100,
                width: 100,
              ),
              value: allWh,
              onChanged: (newval) {
                setState(() {
                  allWh = newval!;
                  if (allWh) {
                    price += 200;
                  } else {
                    price -= 200;
                  }
                });
              }),
          const SizedBox(
            height: 10,
          ),
          CheckboxListTile(
              title: const Image(
                image: AssetImage('assets/img2.jpg'),
                height: 100,
                width: 100,
              ),
              value: sc,
              onChanged: (newval) {
                setState(() {
                  sc = newval!;
                    if (sc) {
                    price += 35;
                  } else {
                    price -= 35;
                  }
                });
              }),
          const SizedBox(
            height: 10,
          ),
          CheckboxListTile(
              title: const Image(
                image: AssetImage('assets/img3.jpeg'),
                height: 100,
                width: 100,
              ),
              value: cdp,
              onChanged: (newval) {
                setState(() {
                  cdp = newval!;
                    if (cdp) {
                    price += 250;
                  } else {
                    price -= 250;
                  }
                });
              }),
          const SizedBox(
            height: 10,
          ),
          CheckboxListTile(
              title: const Image(
                image: AssetImage('assets/img4.jpg'),
                height: 100,
                width: 100,
              ),
              value: mt,
              onChanged: (newval) {
                setState(() {
                  mt = newval!;
                    if (mt) {
                    price += 20;
                  } else {
                    price -= 20;
                  }
                });
              }),
          const SizedBox(
            height: 10,
          ),
          Center(
            child: Text(
              'Total Price: $price',
              style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.green),
            ),
          )
        ]),
      ),
    );
  }
}
