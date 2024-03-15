// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sort_child_properties_last

import 'dart:math';

import 'package:flutter/material.dart';

class MyRandom extends StatefulWidget {
  const MyRandom({super.key});

  @override
  State<MyRandom> createState() => _MyRandomState();
}

class _MyRandomState extends State<MyRandom> {
  List <String> fraseRand = ["Abro no fecho", "Você não vai passar!", "Não tive filhos. Não transmiti a nenhuma criatura o legado de nossa miséria.", 
  "Posso não carregar o anel, senhor. Mas carregarei você.", "É bom sonhar, Harry. Mas não faz bem viver sonhando.", "Caraminholas na cabeça, Potter?", "Isso não é uma mina, é um túmulo!"];
  String fraseEx = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Frases do dia", style: TextStyle(fontWeight: FontWeight.bold),),
        centerTitle: true,
        backgroundColor: Colors.yellow[600],
      ),

      body: Center(child: 
        Column(children: [

          Padding(
            padding: EdgeInsets.only(top: 25, bottom: 10),
            child: 
              Row(children: [
                SizedBox(child: Image.asset("images/sunrise.jpg"), width: 400),
              ], mainAxisAlignment: MainAxisAlignment.center,),      
          ),
          
          Padding(
            padding: EdgeInsets.only(bottom: 100),
            child: 
              Row(children: [
                  SizedBox(child:
                    Text(fraseEx, style: TextStyle(fontSize: 35), textAlign: TextAlign.center,),
                    width: 400,
                    height: 200,
                  )
              ], mainAxisAlignment: MainAxisAlignment.center,)  
          ),

          Row(children: [
            ElevatedButton(onPressed: () {
              showPhrase();
              setState(() {});
            }, child: Text("Nova frase"))
          ], mainAxisAlignment: MainAxisAlignment.center,)

        ],)
      ),
      backgroundColor: Colors.yellow[100],
    );
  }

  void showPhrase(){
    fraseEx = fraseRand[Random().nextInt(7)];
  }
}