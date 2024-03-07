// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';

class MyCont extends StatefulWidget {
  const MyCont({super.key});

  @override
  State<MyCont> createState() => _MyContState();
}

class _MyContState extends State<MyCont> {
  int cont = 0;

  void addC(){
    cont++;
  }

  void subC(){
    if(cont > 0){
      cont--;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Column(children: [
        Row(children: [
          Padding(padding: EdgeInsets.only(top: 150),
            child: Image.asset("assets/images/cont.png", width: 200,),
          ),
        ], mainAxisAlignment: MainAxisAlignment.center),

        Row(children: [
          Text("Contador usando Stateful Widget", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),)
        ], mainAxisAlignment: MainAxisAlignment.center),

        Padding(padding: EdgeInsets.only(top: 40, bottom: 30),
          child: Row(children: [
            FloatingActionButton(
              onPressed: () {
                subC();
                setState(() {});
              },
              child: Icon(Icons.remove, color: Colors.white,),
              shape: CircleBorder(eccentricity: 0),
              backgroundColor: Colors.blueAccent[700],
            ),

            Padding(padding: EdgeInsets.only(right: 10, left: 10),
              child: Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.blue[200]),
                child: Center(child: Text(cont.toString(), style: TextStyle(fontSize: 26),)),
              ),
            ),

            FloatingActionButton(
              onPressed: () {
                addC();
                setState(() {});
              },
              child: Icon(Icons.add, color: Colors.white),
              shape: CircleBorder(eccentricity: 0),
              backgroundColor: Colors.blueAccent[700],
            ),
          ], mainAxisAlignment: MainAxisAlignment.center)
        ),

        Row(children: [
          Text("Valor do contador:", style: TextStyle(fontSize: 20)),
          Padding(padding: EdgeInsets.only(left: 5),
            child: Text(cont.toString(), style: TextStyle(fontSize: 20)),
          ),
        ], mainAxisAlignment: MainAxisAlignment.center)
      ],),
      ),
    );
  }
}