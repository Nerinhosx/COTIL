// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';

class MyVava extends StatefulWidget {
  const MyVava({super.key});

  @override
  State<MyVava> createState() => _MyVavaState();
}

class _MyVavaState extends State<MyVava> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Valorinfo", style: TextStyle(fontFamily: "VavaFont", fontSize: 46)),
        centerTitle: true,
        backgroundColor: Color.fromRGBO(255, 70, 85, 1),
      ),

      
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/vavaFundo.png"),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          children: [
            Image.asset("images/vavaLogo.png"),
            Padding(
              padding: EdgeInsets.only(bottom: MediaQuery.of(context).size.height*0.04),
              child: Column(
                children: [
                  Row(
                    children: [
                      Column(
                        children: [
                          Row(
                            children: [
                              Image.asset("images/controller.png", width: 100),
                            ],
                            mainAxisAlignment: MainAxisAlignment.center,
                          ),
                          Row(
                            children: [
                              Text("Controller", style: TextStyle(color: Colors.cyan[50]),),
                            ],
                            mainAxisAlignment: MainAxisAlignment.center,
                          ),
                        ],
                        mainAxisAlignment: MainAxisAlignment.center,
                      ),
                      Image.asset("images/duelist.png", width: 100),
                      Image.asset("images/initiator.png", width: 100),
                      Image.asset("images/sentinel.png", width: 100),
                    ],
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                  ),
                  Row(
                    children: [
                      Text("Duelist"),
                      Text("Initiator"),
                      Text("Sentinel"),
                    ],
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                  ),
                ],
              ),
            ),
          ],
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
        ),
      )
    );
  }
}