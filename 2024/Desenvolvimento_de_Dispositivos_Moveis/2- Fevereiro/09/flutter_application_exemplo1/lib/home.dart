// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MyHome extends StatelessWidget {
  const MyHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home",
          style: TextStyle(color: Colors.amberAccent, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.brown,
      ),
    );
  }
}