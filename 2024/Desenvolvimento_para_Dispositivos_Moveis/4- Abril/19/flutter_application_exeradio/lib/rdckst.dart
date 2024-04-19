// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_print

import 'package:flutter/material.dart';

class MyRadChkSwt extends StatefulWidget {
  const MyRadChkSwt({super.key});

  @override
  State<MyRadChkSwt> createState() => _MyRadChkSwtState();
}

class _MyRadChkSwtState extends State<MyRadChkSwt> {

  String amorAula = "";
  String maisCedo = "";
  bool sono = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Text("Eu amo a aula da Tantan"),
            Text("Sim"),
            Radio(
              value: "SIM",
              groupValue: amorAula,
              onChanged: (value) {
                amorAula = value!;
                setState(() {});
              },
            ),

            Text("Não"),
            Radio(
              value: "NÃO",
              groupValue: amorAula,
              onChanged: (value) {
                amorAula = value!;
                setState(() {});
              },
            ),
            
            ElevatedButton(
              onPressed: () {
                switch (amorAula){
                  case 'NÃO': print("Não, não amo a aula da Tantan");
                  break;

                  case 'SIM': print("Sim, eu amo a aula da Tantan");
                  break;
                }

                switch (maisCedo){
                  case 'NÃO': print("Infelizmente, não vamos sair mais cedo😭");
                  break;

                  case 'SIM': print("VAMOS SAIR MAIS CEDOOOO😁😁");
                  break;
                }

                sono ? print("Tô com sono") : print("Não tô com sono");
              },
              child: Text("Ok"),
            ),

            RadioListTile(
              title: Text("Tantan está boazinha hoje"),
              subtitle: Text("Só hoje..."),
              secondary: Icon(Icons.sentiment_very_satisfied_rounded),
              value: "SIM",
              groupValue: maisCedo,
              onChanged: (value) {
                maisCedo = value!;
                setState(() {});
              },
            ),

            RadioListTile(
              title: Text("Tantan não está boazinha hoje"),
              subtitle: Text("Está cumpre o horário corretamente"),
              secondary: Icon(Icons.sentiment_very_dissatisfied),
              value: "NÃO",
              groupValue: maisCedo,
              onChanged: (value) {
                maisCedo = value!;
                setState(() {});  
              },
            ),

            SwitchListTile(
              title: Text("Estamos com sono Tantan"),
              subtitle: Text("Quero ir embora"),
              secondary: Icon(Icons.bed_rounded),
              value: sono,
              onChanged: (value) {
                sono = value;
                setState(() {});
              },
            ),
          ],
        ),
      )
    );
  }
}