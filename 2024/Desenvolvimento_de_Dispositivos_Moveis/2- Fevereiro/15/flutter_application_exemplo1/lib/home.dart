// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Home",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.amberAccent.shade400,
      ),
      backgroundColor: Colors.amberAccent.shade100,
      bottomNavigationBar: BottomAppBar(
        color: Colors.amber,
        height: 80,
        child: Text(
          "Sejam bem-vindos!",
          style: TextStyle(
            color: Colors.black87,
            fontSize: 30,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
