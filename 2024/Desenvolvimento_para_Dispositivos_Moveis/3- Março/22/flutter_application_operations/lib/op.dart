// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last, unused_element, dead_code, unnecessary_import, prefer_interpolation_to_compose_strings

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyOperations extends StatefulWidget {
  const MyOperations({super.key});

  @override
  State<MyOperations> createState() => _MyOperationsState();
}

class _MyOperationsState extends State<MyOperations> {

  TextEditingController txt1 = TextEditingController();
  TextEditingController txt2 = TextEditingController();
  
  double v1 = 0;
  double v2 = 0;
  double result = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[400],
        title: Text("Operações"),
        centerTitle: true,
      ),

      body: Center(
        child: Column(children: [
          Padding(padding: EdgeInsets.only(top: 50),
          child:
            Row(children: [
              SizedBox(
                child: Text("Operações para aprendizado do uso do Widget TextField", textAlign: TextAlign.center, style: TextStyle(fontSize: 20),),
                width: 400,
              ),
            ], mainAxisAlignment: MainAxisAlignment.center,),
          ),

          Column(children: [
            Padding(padding: EdgeInsets.fromLTRB(20, 25, 20, 25), child: 
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                  filled: true,
                  fillColor: Colors.green[100],
                  labelText: "Valor 1:"
                ),
                controller: txt1,
              ),
            ),

            Padding(padding: EdgeInsets.fromLTRB(20, 5, 20, 35), child: 
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                  filled: true,
                  fillColor: Colors.green[100],
                  labelText: "Valor 2:"
                ),
                controller: txt2,
              ),
            ),
          ],),

          Row(children: [
            //Início Botão +
            ElevatedButton(
              onPressed: () {
                sum();
                setState(() {});
              },
              child: Icon(Icons.add, color: Colors.white),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green[700],
                shape: ContinuousRectangleBorder(borderRadius: BorderRadius.circular(10)),
              ),
            ),
            //Fim Botão +

            //Início Botão -
            ElevatedButton(
              onPressed: () {
                sub();
                setState(() {});
              },
              child: Icon(Icons.remove, color: Colors.white),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green[700],
                shape: ContinuousRectangleBorder(borderRadius: BorderRadius.circular(10)),
              ),
            ),
            //Fim Botão -

            //Início Botão *
            ElevatedButton(
              onPressed: () {
                mult();
                setState(() {});
              },
              child: Text("*", style: TextStyle(color: Colors.white, fontSize: 23),),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green[700],
                shape: ContinuousRectangleBorder(borderRadius: BorderRadius.circular(10)),
              ),
            ),
            //Fim Botão *

            //Início Botão /
            ElevatedButton(
              onPressed: () {
                div();
                setState(() {});
              },
              child: Text("/", style: TextStyle(color: Colors.white, fontSize: 23),),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green[700],
                shape: ContinuousRectangleBorder(borderRadius: BorderRadius.circular(10)),
              ),
            ),
            //Fim Botão /

            //Início Botão CE
            ElevatedButton(
              onPressed: () {
                txt1.clear();
                txt2.clear();
                result = 0;
                setState(() {});
              },
              child: Text("CE", style: TextStyle(color: Colors.white, fontSize: 23),),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green[700],
                shape: ContinuousRectangleBorder(borderRadius: BorderRadius.circular(10)),
              ),
            ),
            //Fim Botão CE
          ], mainAxisAlignment: MainAxisAlignment.spaceAround,),

          Padding(
            padding: EdgeInsets.only(top: 20),
            child: Row(children: [
              Text("Resultado: "+ result.toString(), style: TextStyle(fontSize: 20),),
            ], mainAxisAlignment: MainAxisAlignment.center,),
          ),
        ],),
      ),
    );
  }
  void sum(){
    v1 = double.parse(txt1.text);
    v2 = double.parse(txt2.text);
    result = v1 + v2;
  }

  void sub(){
    v1 = double.parse(txt1.text);
    v2 = double.parse(txt2.text);
    result = v1 - v2;
  }

  void mult(){
    v1 = double.parse(txt1.text);
    v2 = double.parse(txt2.text);
    result = v1 * v2;
  }

  void div(){
    v1 = double.parse(txt1.text);
    v2 = double.parse(txt2.text);
    result = v1 / v2;
  }
}