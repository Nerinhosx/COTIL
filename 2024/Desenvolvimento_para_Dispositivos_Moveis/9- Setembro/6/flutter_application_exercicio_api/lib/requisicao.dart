// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class MyRequisicao extends StatefulWidget {
  const MyRequisicao({super.key});

  @override
  State<MyRequisicao> createState() => _MyRequisicaoState();
}

class _MyRequisicaoState extends State<MyRequisicao> {
  TextEditingController idCtrl = TextEditingController();
  String apiData = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Star Wars",
          style: TextStyle(fontFamily: 'Star Wars', fontSize: 30, color: Color.fromRGBO(236, 231, 32, 1)),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),

      body: Center(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 20, right: MediaQuery.of(context).size.width*0.4, left: MediaQuery.of(context).size.width*0.4),
              child: TextField(
                controller: idCtrl,
                style: TextStyle(
                  color: Color.fromRGBO(171, 235, 255, 1),
                ),
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                ),
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Color.fromRGBO(0, 28, 70, 1),
    );
  }
}