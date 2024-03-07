// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';

class MyConnection extends StatefulWidget {
  const MyConnection({super.key});

  @override
  State<MyConnection> createState() => _MyConnectionState();
}

class _MyConnectionState extends State<MyConnection> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter BLE", style: TextStyle(color: Colors.white)),
        backgroundColor: Color.fromARGB(255, 4, 76, 230),
      ),

      body: Center(child: Column(children: [
        Row(children: [
          Padding(padding: EdgeInsets.only(top: 20, bottom: 20),
            child: Text("Conexões disponíveis", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          ),
        ], mainAxisAlignment: MainAxisAlignment.center),

        Row(
        children: [
          Column(children: [
            Row(children: [Text("GoPro 1855")],),
          ],),

          Column(children: [
            ElevatedButton(
              onPressed: () {},
              child: Text("Connect"),
            ),
          ],)
        ], mainAxisAlignment: MainAxisAlignment.spaceBetween),
      ],)
      ),
    );
  }
}