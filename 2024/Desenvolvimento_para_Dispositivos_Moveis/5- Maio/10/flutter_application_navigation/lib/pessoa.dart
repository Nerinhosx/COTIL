// ignore_for_file: prefer_const_constructors, must_be_immutable

import 'package:flutter/material.dart';

class MyPessoa extends StatefulWidget {
  String frase = "";

  MyPessoa(this.frase, {super.key});

  @override
  State<MyPessoa> createState() => _MyPessoaState();
}

class _MyPessoaState extends State<MyPessoa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pessoa", style: TextStyle(color: Colors.greenAccent[100]),),
        centerTitle: true,
        backgroundColor: Colors.brown[400],
        actions: [
          IconButton(
            onPressed: () {
              //Navigator.push(context, MaterialPageRoute(builder: (context) => MyPessoa()));
              Navigator.pushNamed(context, '/pessoa');
            },
            icon: Icon(Icons.person, color: Colors.tealAccent[100]),
          ),

          IconButton(
            onPressed: () {
              //Navigator.push(context, MaterialPageRoute(builder: (context) => MyFavoritos()));
              Navigator.pushNamed(context, '/favoritos');
            },
            icon: Icon(Icons.favorite_rounded, color: Colors.redAccent[100],),
          ),
        ],
      ),

      body: Center(
        child: Column(
          children: [
            Text(widget.frase),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context); //Volta para a página anterior (não volta direto p/ a Home)
              }, 
              child: Text("Voltar"),
            ),
          ],
        ),
      ),
    );
  }
}