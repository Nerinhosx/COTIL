import 'package:flutter/material.dart';

class MyInitiator extends StatefulWidget {
  const MyInitiator({super.key});

  @override
  State<MyInitiator> createState() => _MyInitiatorState();
}

class _MyInitiatorState extends State<MyInitiator> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Initiator", style: TextStyle(fontFamily: "VavaFont", fontSize: 46)),
        centerTitle: true,
        backgroundColor: Color.fromRGBO(255, 70, 85, 1),
      ),

      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/mapas/Sunset.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(),
      ),
    );
  }
}