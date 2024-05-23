import 'package:flutter/material.dart';

class MyDuelist extends StatefulWidget {
  const MyDuelist({super.key});

  @override
  State<MyDuelist> createState() => _MyDuelistState();
}

class _MyDuelistState extends State<MyDuelist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Duelist", style: TextStyle(fontFamily: "VavaFont", fontSize: 46)),
        centerTitle: true,
        backgroundColor: Color.fromRGBO(255, 70, 85, 1),
      ),

      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/mapas/Pearl.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(),
      ),
    );
  }
}