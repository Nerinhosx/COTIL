// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MyPePaTe extends StatefulWidget {
  const MyPePaTe({super.key});

  @override
  State<MyPePaTe> createState() => _MyPePaTeState();
}

class _MyPePaTeState extends State<MyPePaTe> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pedra, Papel, Tesoura"),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),

      body: Center(child: 
        Column()
      ),
    );
  }
}