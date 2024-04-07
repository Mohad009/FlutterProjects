import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: Home()
  ));
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String selecetedState='Salalah';
  String selectedValue='Multan';
  bool meal=false,prfSeat=false;
  double price=0;
  List states=['Salalah','Muscat'];
  List lst=['Karachi','Multan'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Online Booking"),centerTitle: true,backgroundColor: Colors.green,),
      body: ListView(
        padding: EdgeInsets.all(30),
        children: [
          DropdownButton(
            isExpanded: true,
            value: selecetedState,
            items: states.map((e) {
            return DropdownMenuItem(
            value: e,
            child: Text(e));
          }).toList()
          , onChanged: (val){
            setState(() {
              selecetedState=val.toString();
            });
          }),
          SizedBox(height: 20,),
           DropdownButton(
            isExpanded: true,
            value: selectedValue,
            items: lst.map((e) {
            return DropdownMenuItem(
            value: e,
            child: Text(e));
          }).toList()
          , onChanged: (val){
            setState(() {
              selectedValue=val.toString();
            });
          }),
          SizedBox(height: 20,),
          CheckboxListTile(
            title: Text("Meal"),value:meal , onChanged: (newval){
            setState(() {
              meal=newval!;
            });
          }),
          SizedBox(height: 20,),
           CheckboxListTile(
            title: const Text("Preferred Seat"),value:prfSeat , onChanged: (newval){
            setState(() {
              prfSeat=newval!;
            });
          }),
          SizedBox(height: 20,),
          ElevatedButton(
            style:ElevatedButton.styleFrom(foregroundColor: Colors.blue,backgroundColor: Colors.white),
            onPressed: (){
             setState(() {
                if(selecetedState=='Muscat' && selectedValue=='Karachi'){
                 price=110;
                 if(meal){
                  price+=10;
                 }if(prfSeat){
                  price+=15;
                 }
                 }
                 else if(selecetedState=='Muscat' && selectedValue=='Multan'){
                  price=145;
                 if(meal){
                  price+=15;
                 }if(prfSeat){
                  price+=20;
                 }
                 }
                   else if(selecetedState=='Salalah' && selectedValue=='Karachi'){
                  price=120;
                 if(meal){
                  price+=10;
                 }if(prfSeat){
                  price+=20;
                 }
                 }
                   else if(selecetedState=='Salalah' && selectedValue=='Multan'){
                  price=170;
                 if(meal){
                  price+=20;
                 }if(prfSeat){
                  price+=25;
                 }
                 }
             });
            },
             child: Text("Calculate")),

            SizedBox(height: 20,),
            Text("Total Amount: $price")
        ],
      ),
    );
  }
}