// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sort_child_properties_last, prefer_interpolation_to_compose_strings

import 'package:flutter/material.dart';

class MyViagem extends StatefulWidget {
  const MyViagem({super.key});

  @override
  State<MyViagem> createState() => _MyViagemState();
}

class _MyViagemState extends State<MyViagem> {
  String escolha = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: 
        Column(children: [
          Padding(
            padding: EdgeInsets.only(top: 20, bottom: 20), 
            child: 
            Row(children: [
              SizedBox(width: 400,
              child: GestureDetector(
                child: Image.asset("images/forest.jpg", width: 400),
                ),    
              ),
            ], mainAxisAlignment: MainAxisAlignment.center,)
          ),

          Padding(padding: EdgeInsets.only(bottom: 40), 
          child: 
            Row(children: [
              SizedBox(width: 400,
                child: GestureDetector(
                  child: Image.asset("images/mountains.jpg", width: 400,),
                  onTap: () {
                    escolha = "às montanhas";
                  },
                ),
              )
            ], mainAxisAlignment: MainAxisAlignment.center,),
          ),

          Row(children: [
            Text("A minha próxima viagem será" + escolha),
          ], mainAxisAlignment: MainAxisAlignment.center,)
        ],)
      ),
    );
  }
}