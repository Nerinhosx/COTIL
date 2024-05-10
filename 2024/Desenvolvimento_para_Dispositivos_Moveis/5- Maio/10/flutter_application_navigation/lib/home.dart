// ignore_for_file: prefer_const_constructors, unused_import

import 'package:flutter/material.dart';
import 'package:flutter_application_navigation/favoritos.dart';
import 'package:flutter_application_navigation/pessoa.dart';

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  List<String> frasesMotivacionais = ["O amor é lindo", "Ai, Zé da manga", "Isso é legal"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home", style: TextStyle(color: Colors.greenAccent[100]),),
        centerTitle: true,
        backgroundColor: Colors.brown[400],
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => MyPessoa('Ninguém tá puro')));
              //Navigator.pushNamed(context, '/pessoa');
            },
            icon: Icon(Icons.person, color: Colors.tealAccent[100]),
          ),

          IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => MyFavoritos(frasesMotivacionais)));
              //Navigator.pushNamed(context, '/favoritos');
            },
            icon: Icon(Icons.favorite_rounded, color: Colors.redAccent[100],),
          ),
        ],
      ),

      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/pessoa'); //Volta para a página anterior (não volta direto p/ a Home)
              }, 
              child: Text("Pessoa"),
            ),

            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/favoritos'); //Volta para a página anterior (não volta direto p/ a Home)
              }, 
              child: Text("Favoritos"),
            ),
          ],
        ),
      ),
    );
  }
}