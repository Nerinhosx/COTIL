// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class MyLogin extends StatefulWidget {
  const MyLogin({super.key});

  @override
  State<MyLogin> createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("LogIn", style: TextStyle(fontSize: 32),),
        centerTitle: true,
      ),

      body: Center(
        child: Column(children: [
          Image.asset("images/lock.png", width: 350),
        ],),
      ),
    );
  }
}