// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Sobre mim",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.limeAccent[100],
      ),

      body: SingleChildScrollView(child: 
        Center(child: 

          Column(children: [
            Padding(padding: EdgeInsets.fromLTRB(0, 40, 0, 20),),
            CircleAvatar(
              radius: 120,
              backgroundImage: AssetImage("assets/images/nero.jpg"),
            ),

            Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Arthur de O. Nero",
                style: TextStyle(
                  fontFamily: "MadimiOne-Regular",
                  fontSize: 18,
                ),
              ),
              Padding(padding: EdgeInsets.fromLTRB(0, 0, 0, 40)),
            ],),

            Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 15, 0),
                child: Icon(Icons.local_phone_rounded),
              ),
              
              Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 15, 0),
                child: Icon(Icons.email_rounded),
              ),

              Icon(Icons.message_rounded),
            ],),

            Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.all(20),
                child: SizedBox(width: 450,
                  child: 
                  DecoratedBox(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.blueGrey,
                    ),
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                      child: Text(
                        "Estudante de Desenvolvimento de Sistemas no Colégio Técnico de Limeira (COTIL). Possui facilidade em comunicação e muita afinidade pela área lógica do desenvolvimento de software.", 
                      ),
                    ),
                  ),
                ),
              ),
            ],
            ),
          ],),
        ),
      ),
      backgroundColor: Colors.lightBlue[200],
    );
}
}