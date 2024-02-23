// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Sejam bem-vindos(as)!",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.blue[700],
        centerTitle: true,
      ),

      body: Center(child:
        Column(children: [
          SizedBox(height: 30,),
          Image.network("https://cdn.pixabay.com/photo/2015/05/25/14/53/book-783394_1280.png"),
          
          Text(
            "Bem-vindo(a) à maior biblioteca de SP. Esperamos que desfrute das maravilhas que aqui se encontram.",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),

          SizedBox(height: 15),
          Row(children: [
            SizedBox(width: 15),
            Icon(Icons.check_circle_outline_outlined, color: Colors.green[700]),
            Text(
              "Literatura nacional.",
              style: TextStyle(fontSize: 18),
            ),
          ],),
          
          SizedBox(height: 15),
          Row(children: [
            SizedBox(width: 15),
            Icon(Icons.check_circle_outline_outlined, color: Colors.green[700]),
            Text(
              "Clássicos da literatura.",
              style: TextStyle(fontSize: 18),
            ),
          ],),

          SizedBox(height: 15),
          Row(children: [
            SizedBox(width: 15),
            Icon(Icons.check_circle_outline_outlined, color: Colors.green[700]),
            Text(
              "Contemporâneos",
              style: TextStyle(fontSize: 18),
              textAlign: TextAlign.center,
            ),
          ],),
        ],),
      ),
      backgroundColor: const Color.fromARGB(255, 231, 201, 103),
      bottomNavigationBar: BottomAppBar(
        color: Colors.amber[600],
      ),
    );
  }
}