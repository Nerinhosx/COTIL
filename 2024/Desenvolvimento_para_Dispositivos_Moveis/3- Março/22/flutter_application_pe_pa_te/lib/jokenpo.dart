// ignore_for_file: prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables, prefer_interpolation_to_compose_strings, unnecessary_brace_in_string_interps

import 'package:flutter/material.dart';
import 'dart:math';

class MyPePaTe extends StatefulWidget {
  const MyPePaTe({super.key});

  @override
  State<MyPePaTe> createState() => _MyPePaTeState();
}

class _MyPePaTeState extends State<MyPePaTe> {

  String appEsc = "images/rock.png";
  String userEsc = "Sua escolha:";
  int appN = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Jokenpo"),
        centerTitle: true,
        backgroundColor: Colors.tealAccent[400],
      ),

      body: Center(child: 
        Column(children: [
          
          Padding(
            padding: EdgeInsets.only(top: 40),
            child: Text("Escolha da máquina:", style: TextStyle(fontSize: 24),),
          ),

          Row(children: [
            Padding(
              padding: EdgeInsets.only(top: 25, bottom: 10),
              child: Image.asset(appEsc),
            ),
          ], mainAxisAlignment: MainAxisAlignment.center),

          Padding(
            padding: EdgeInsets.only(top: 40),
            child: Text(userEsc, style: TextStyle(fontSize: 24),),
          ),

          Row(children: [

            SizedBox(
              width: 150,
              child: GestureDetector(
                onTap: () {
                  jokenpoDec();
                  jokenpoFinal(0);
                  setState(() {});
                },
                child: Image.asset("images/rock.png"),
              ),
            ),

            SizedBox(
              width: 150,
              child: GestureDetector(
                onTap: () {
                  jokenpoDec();
                  jokenpoFinal(1);
                  setState(() {});
                },
                child: Image.asset("images/paper.png"),
              ),
            ),

            SizedBox(
              width: 150,
              child: GestureDetector(
                onTap: () {
                  jokenpoDec();
                  jokenpoFinal(2);
                  setState(() {});
                },
                child: Image.asset("images/scissor.png"),
              ),
            ),

          ], mainAxisAlignment: MainAxisAlignment.spaceBetween),

        ],)
      ),
    );
  }

  void jokenpoDec(){
    appN = Random().nextInt(3);
    switch (appN){
      case 0: appEsc = "images/rock.png";
      break;
      
      case 1: appEsc = "images/paper.png";
      break;

      case 2: appEsc = "images/scissor.png";
      break;
    }
  }

  void jokenpoFinal(int n){
    switch(n){
      case 0: {
        userEsc = "Você escolheu pedra";
        switch(appN){
          case 0: userEsc = "${userEsc}. Empatou! :|";
          break;

          case 1: userEsc = "${userEsc}. Você perdeu :(";
          break;

          case 2: userEsc = "${userEsc}. Você venceu! :)";
          break;
        }
        break;
      }

      case 1: { 
        userEsc = "Você escolheu papel";
        switch(appN){
          case 0: userEsc = "${userEsc}. Você venceu! :)";
          break;

          case 1: userEsc = "${userEsc}. Empatou! :|";
          break;

          case 2: userEsc = "${userEsc}. Você perdeu. :(";
          break;
        }
        break;
      }

      case 2: { 
        userEsc = "Você escolheu tesoura";
        switch(appN){
          case 0: userEsc = "${userEsc}. Você perdeu. :(";
          break;

          case 1: userEsc = "${userEsc}. Você venceu! :)";
          break;

          case 2: userEsc = "${userEsc}. Empatou! :|";
          break;
        }
        break;
      }
    }
  }
}