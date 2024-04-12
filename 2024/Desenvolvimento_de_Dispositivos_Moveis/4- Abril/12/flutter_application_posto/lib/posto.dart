// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';

class Posto extends StatefulWidget {
  const Posto({super.key});

  @override
  State<Posto> createState() => _PostoState();
}

class _PostoState extends State<Posto> {

  TextEditingController alcoolCtrl = TextEditingController();
  TextEditingController gasCtrl = TextEditingController();
  String combusComp = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: 
        Text(
          "Posto Fênix",
          style: TextStyle(
            color: Colors.amber[50],
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.yellow[900],
      ),

      body: Center(child: 
        Column(children: [
          Padding(
            padding: EdgeInsets.only(top: 20, bottom: 10),
            child: Text("Informe o preço dos combustíveis:", style: TextStyle(fontSize: 28),),
          ),

          SizedBox(child: 
            TextField(
              controller: alcoolCtrl,
              decoration: InputDecoration(labelText: "Preço do etanol:", icon: Icon(Icons.gas_meter_outlined)),
            ),
            width: 400,
          ),

          SizedBox(child: 
            TextField(
              controller: gasCtrl,
              decoration: InputDecoration(labelText: "Preço da gasosa:", icon: Icon(Icons.gas_meter_outlined)),
            ),
            width: 400,
          ),

          Padding(
            padding: EdgeInsets.only(top: 35, bottom: 50),
            child: ElevatedButton(onPressed: () {
              combusComp = calcular();
              setState(() {});
            },
            child: Text("Calcular"))
          ),

          Text(combusComp),
        ],)
      ),
    );
  }
  String calcular(){
    //Passando valor dos TextFields p/ variáveis
    double a = double.parse(alcoolCtrl.text);
    double g = double.parse(gasCtrl.text);

    //Verificando qual o combustível com melhor preço
    if(g*0.7<=a){
      return "Hoje compensa abastecer com Gasolina";
    }else{
      return "Hoje compensa abastecer com Álcool";
    }
  }
}