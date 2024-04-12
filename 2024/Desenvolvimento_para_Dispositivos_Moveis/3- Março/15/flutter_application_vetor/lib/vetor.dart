// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';

class MyVetor extends StatefulWidget {
  const MyVetor({super.key});

  @override
  State<MyVetor> createState() => MyVetorState();
}

class MyVetorState extends State<MyVetor> {
  
  List <int> vetor = [1,4,8,9,6,2];
  String textVet = "";
  String func = "";
  int sum = 0, ma=0, me=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Vetores em Dart"),
        backgroundColor: Colors.blueGrey[600],
      ),

      body: Center(child: 
        Column(children: [
          Padding(
            padding: EdgeInsets.only(top: 20, bottom: 20),
            child: Text(func + textVet),
          ),
          
          Row(children: [
            ElevatedButton(onPressed: () {
                func = "Soma do vetor: ";
                showSum();
                setState(() {});
              },
              child: Text("Mostrar a soma do vetor"),
            ),

            ElevatedButton(onPressed: () {
                func = "Maior valor: ";
                showMa();
                setState(() {});
              },
              child: Text("Mostrar o maior valor do vetor")
            ),
          ], mainAxisAlignment: MainAxisAlignment.spaceAround,),

          Padding(
            padding: EdgeInsets.only(top: 5), 
            child: 
            Row(children: [
              ElevatedButton(onPressed: () {
                func = "Menor valor: ";
                showMe();
                setState(() {});
              },
              child: Text("Mostrar o menor valor do vetor"))
            ], mainAxisAlignment: MainAxisAlignment.spaceAround,),
          ),
        ]),
      ),
    );
  }

  void showSum(){
    for(int i=0; i<vetor.length; i++){
      sum += vetor[i];
    }
    textVet = sum.toString();
    sum = 0;
  }

  void showMa(){
    ma=vetor[0];
    for(int i=0; i<vetor.length;i++){
      if(vetor[i]>ma){
        ma=vetor[i];
      }
    }
    textVet = ma.toString();
  }

  void showMe(){
    me=vetor[0];
    for(int i=0; i<vetor.length;i++){
      if(vetor[i]<me){
        me=vetor[i];
      }
    }
    textVet = me.toString();
  }

}