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
            Image.asset("images/vavaLogo.png", width: MediaQuery.of(context).size.height*0.8),
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: MediaQuery.of(context).size.height*0.03),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Row(
                            children: [
                              Image.asset("images/controller.png", width: MediaQuery.of(context).size.height*0.1),
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
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Image.asset("images/duelist.png", width: MediaQuery.of(context).size.height*0.1),
                            ],
                            mainAxisAlignment: MainAxisAlignment.center,
                          ),
                          Row(
                            children: [
                              Text("Duelist", style: TextStyle(color: Colors.cyan[50]),),
                            ],
                            mainAxisAlignment: MainAxisAlignment.center,
                          ),
                        ],
                        mainAxisAlignment: MainAxisAlignment.end,
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Image.asset("images/initiator.png", width: MediaQuery.of(context).size.height*0.1),
                            ],
                            mainAxisAlignment: MainAxisAlignment.center,
                          ),
                          Row(
                            children: [
                              Text("Initiator", style: TextStyle(color: Colors.cyan[50]),),
                            ],
                            mainAxisAlignment: MainAxisAlignment.center,
                          ),
                        ],
                        mainAxisAlignment: MainAxisAlignment.end,
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Image.asset("images/sentinel.png", width: MediaQuery.of(context).size.height*0.1),
                            ],
                            mainAxisAlignment: MainAxisAlignment.center,
                          ),
                          Row(
                            children: [
                              Text("Sentinel", style: TextStyle(color: Colors.cyan[50]),),
                            ],
                            mainAxisAlignment: MainAxisAlignment.center,
                          ),
                        ],
                        mainAxisAlignment: MainAxisAlignment.end,
                      ),
                    ],
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                  ),
                ),
              ],
              mainAxisAlignment: MainAxisAlignment.center,
            ),
          ],
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
        ),
      )
    );
  }
}