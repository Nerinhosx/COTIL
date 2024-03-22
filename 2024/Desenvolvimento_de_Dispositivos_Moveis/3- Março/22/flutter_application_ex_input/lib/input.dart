// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sort_child_properties_last, avoid_print, prefer_interpolation_to_compose_strings

import 'package:flutter/material.dart';

class MyInput extends StatefulWidget {
  const MyInput({super.key});

  @override
  State<MyInput> createState() => _MyInputState();
}

class _MyInputState extends State<MyInput> {

  TextEditingController textCont1 = TextEditingController();
  TextEditingController textCont2 = TextEditingController();

  String txtInpt1 = "";
  String txtInpt2 = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Exemplo entrada de dados"),
        centerTitle: true,
        backgroundColor: Colors.lime[300],
      ),

      body: Center(child: 
        Column(children: [
          Padding(
            padding: EdgeInsets.fromLTRB(15, 20, 15, 20),
            child: 
              Column(children: [
                //Início Campo de Texto 1
                TextField(
                  controller: textCont1,
                  onChanged: (value) {
                    print(value);
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                    filled: true,
                    fillColor: Colors.indigo[200],
                  ),
                ),
                //Fim Campo de Texto 1

                //Início Campo de Texto 2
                TextField(
                  controller: textCont2,
                  onChanged: (value) {
                    print(value);
                  },
                ),
                //Fim Campo de Texto 2
              ], mainAxisAlignment: MainAxisAlignment.spaceBetween,),
          ),

          Padding(
            padding: EdgeInsets.only(bottom: 15),
            child:
              //Início Botão
              ElevatedButton(
                onPressed: () {
                  txtInpt1 = textCont1.text;
                  txtInpt2 = textCont2.text;
                  setState(() {});
                },
                child: Text("OK"),
              ),
              //Fim Botão
          ),

          //Início Área de Texto
          Row(children: [
            Text("Você digitou no 1º campo: "+ txtInpt1),
            Text("Você digitou no 2º campo: "+ txtInpt2),
          ], mainAxisAlignment: MainAxisAlignment.spaceAround,),
          //Fim Área de Texto
        ],)
      ),
    );
  }
}