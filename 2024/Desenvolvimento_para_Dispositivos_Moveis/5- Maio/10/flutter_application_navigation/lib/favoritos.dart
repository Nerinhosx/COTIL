// ignore_for_file: prefer_const_constructors, must_be_immutable, prefer_interpolation_to_compose_strings

import 'package:flutter/material.dart';

class MyFavoritos extends StatefulWidget {
  List<String> l = [];

  MyFavoritos(this.l, {super.key});

  @override
  State<MyFavoritos> createState() => _MyFavoritosState();
}

class _MyFavoritosState extends State<MyFavoritos> {
  String lista = "";

  @override
  Widget build(BuildContext context) {
    mostrar();
    return Scaffold(
      appBar: AppBar(
        title: Text("Favoritos", style: TextStyle(color: Colors.greenAccent[100]),),
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
            Text(lista),
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

  void mostrar(){
    for(int i=0; i<widget.l.length; i++){
      lista += ' ' + widget.l[i];
    }
  }
}