// ignore_for_file: sort_child_properties_last, prefer_const_constructors

import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

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
          SizedBox(child:
            Image.asset('assets/images/bird.jpg'),
            height: 180,
          ),
          Text(
            "martim-pescador",
            style: TextStyle(
              fontFamily: 'Fredoka',
              fontSize: 20,
              fontWeight: FontWeight.bold
            ),
          ),    
        ],),
      ),
    );
  }
}