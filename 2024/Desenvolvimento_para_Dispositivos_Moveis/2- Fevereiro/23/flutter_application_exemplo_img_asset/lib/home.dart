// ignore_for_file: sort_child_properties_last, prefer_const_constructors

import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  
  final figBird = SizedBox(child:
            Image.asset('assets/images/bird.jpg'),
            height: 180);
  
  final txtBird = Text(
            "martim-pescador",
            style: TextStyle(
              fontFamily: 'Fredoka',
              fontSize: 20,
              fontWeight: FontWeight.bold
            ),
          );

  Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Pássaros",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blueAccent[700],
      ),

      body: Center(child:
        Column(children: [
          SizedBox(height: 30),
          figBird,
          txtBird,
        ],),
      ),
      backgroundColor: Colors.orangeAccent[100],
    );
  }
}