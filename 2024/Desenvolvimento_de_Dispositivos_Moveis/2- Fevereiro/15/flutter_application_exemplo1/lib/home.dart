// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Home",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.amberAccent.shade400,
      ),
      backgroundColor: Colors.amberAccent.shade100,
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 150,
              child: Image.network('https://upload.wikimedia.org/wikipedia/commons/7/70/Apis_mellifera_-_Brassica_napus_-_Valingu.jpg'),
            ),
            Text(
              "Apis mellifera",
              style: TextStyle(
                fontStyle: FontStyle.italic
              ),
            ),

            SizedBox(
              height: 150,
              width: 200,
              child: Image.network('https://upload.wikimedia.org/wikipedia/commons/0/0e/Abelha-jatai.jpg')
            ),
            Text(
              "Tetragonisca angustula",
              style: TextStyle(
                fontStyle: FontStyle.italic,
              ),
            ),

            SizedBox(
              height: 150,
              width: 200,
              child: Image.network('https://lh4.googleusercontent.com/-cC4xAvG_o5I/TWr2NiDHNcI/AAAAAAAAAIU/-hg-YF13tG4/s1600/Nova+Imagem.png'),
            ),
            Text(
              "Melipona quadrifasciata anthidioides",
              style: TextStyle(
                fontStyle: FontStyle.italic,
              ),
            ),
          ]
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.amber,
        height: 80,
        child: Text(
          "Essa é a página principal do app",
          style: TextStyle(
            color: Colors.black87,
            fontSize: 30,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
