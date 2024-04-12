// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';

class MyLampada extends StatefulWidget {
  const MyLampada({super.key});

  @override
  State<MyLampada> createState() => My_LampadaState();
}

class My_LampadaState extends State<MyLampada> {

  Image acesa = Image.asset("assets/images/lampAcesa.jpg", width: 500,);
  Image apagada = Image.asset("assets/images/lampApagada.png", width: 500,);
  late Image atual = apagada;

  String stateLamp = "Acenda";

  Text ac = Text("Está acesa!");
  Text ap = Text("Está apagada!");
  late Text at = ap;

  void changeLamp(){
    if(atual == apagada){
      atual = acesa;
      at = ac;
      stateLamp = "Apague";
    }
    else{
      atual = apagada;
      at = ap;
      stateLamp = "Acenda";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Column(children: [
        atual,
        
        at,

        ElevatedButton(
          onPressed: () {
            changeLamp();
            setState(() {});
          },
          child: 
            Text(stateLamp),
        ),
      ],)
      ),
    );
  }
}