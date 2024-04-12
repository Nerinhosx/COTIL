// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_application_execad/aluno.dart';

class Cadastro extends StatefulWidget {
  const Cadastro({super.key});

  @override
  State<Cadastro> createState() => _CadastroState();
}

class _CadastroState extends State<Cadastro> {

  TextEditingController raCtrl = TextEditingController();
  TextEditingController nomeCtrl = TextEditingController();
  List<Aluno> vetAl = [];
  String combAl = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: 
        Column(children: [
          Padding(padding: EdgeInsets.fromLTRB(75, 25, 75, 15),
            child: TextField(
              controller: raCtrl,
              decoration: InputDecoration(labelText: "Digite o RA:"),
            ),
          ),

          Padding(padding: EdgeInsets.fromLTRB(75, 15, 75, 25),
            child: TextField(
              controller: nomeCtrl,
              decoration: InputDecoration(labelText: "Digite o Nome:"),
            ),
          ),

          ElevatedButton(
            onPressed: () {
              int ra = int.parse(raCtrl.text);
              String nome = nomeCtrl.text;
              Aluno a = new Aluno(ra, nome);
              vetAl.add(a);
              show();
              setState(() {});
            },
            child: Text("Cadastrar"),
          ),

          SizedBox(child: Text(combAl),),
        ],)
      )
    );
  }
  void show(){
    vetAl.forEach((Aluno a) {
      combAl = a.nome + "" + a.ra.toString();
    });
  }
}