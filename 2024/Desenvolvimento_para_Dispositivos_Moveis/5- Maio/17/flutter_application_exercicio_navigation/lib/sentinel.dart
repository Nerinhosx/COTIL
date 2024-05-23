import 'package:flutter/material.dart';

class MySentinel extends StatefulWidget {
  const MySentinel({super.key});

  @override
  State<MySentinel> createState() => _MySentinelState();
}

class _MySentinelState extends State<MySentinel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sentinel", style: TextStyle(fontFamily: "VavaFont", fontSize: 46)),
        centerTitle: true,
        backgroundColor: Color.fromRGBO(255, 70, 85, 1),
      ),

      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/mapas/Lotus.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(),
      ),
    );
  }
}