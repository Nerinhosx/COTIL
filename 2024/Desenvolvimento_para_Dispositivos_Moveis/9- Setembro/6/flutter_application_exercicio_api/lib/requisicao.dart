// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_application_exercicio_api/item.dart';
import 'package:http/http.dart' as http;

class MyRequisicao extends StatefulWidget {
  const MyRequisicao({super.key});

  @override
  State<MyRequisicao> createState() => _MyRequisicaoState();
}

class _MyRequisicaoState extends State<MyRequisicao> {
  TextEditingController idCtrl = TextEditingController();
  String apiData = "";
  String tipo = "";
  String i1 = "";
  String i2 = "";
  String i3 = "";
  String i4 = "";
  String i5 = "";
  Item item = Item();

  Future<Item> requisicao(String tipo, String id) async{
    var url = Uri.parse(" https://swapi.dev/api/${tipo}/${id}");
    http.Response response;
    response = await http.get(url);
    apiData = response.body;
    if(response.statusCode == 200){
      Map<String, dynamic> formData = jsonDecode(apiData);
      switch (tipo){
        case 'people':{
          i1 = "Nome: ${formData['name']}";
          i2 = "Data de nascimento: ${formData['birth_year']}";
          i3 = "Cor dos olhos: ${formData['eye_color']}";
          i4 = "Gênero: ${formData['gender']}";
          i5 = "Cor do cabelo: ${formData['hair_color']}";
          item.setInfo1(i1);
          item.setInfo2(i2);
          item.setInfo3(i3);
          item.setInfo4(i4);
          item.setInfo5(i5);
          break;
        }
        case 'planets':{
          i1 = formData[''];
          i2 = formData[''];
          i3 = formData[''];
          i4 = formData[''];
          i5 = formData[''];
          item.setInfo1(i1);
          item.setInfo2(i2);
          item.setInfo3(i3);
          item.setInfo4(i4);
          item.setInfo5(i5);
          break;
        }
        case 'starships':{
          i1 = formData[''];
          i2 = formData[''];
          i3 = formData[''];
          i4 = formData[''];
          i5 = formData[''];
          item.setInfo1(i1);
          item.setInfo2(i2);
          item.setInfo3(i3);
          item.setInfo4(i4);
          item.setInfo5(i5);
          break;
        }
      }
    }
    setState(() {});
    return item;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Star Wars",
          style: TextStyle(fontFamily: 'Star Wars', fontSize: 30, color: Color.fromRGBO(236, 231, 32, 1)),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),

      body: Center(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 20, right: MediaQuery.of(context).size.width*0.4, left: MediaQuery.of(context).size.width*0.4),
              child: TextField(
                controller: idCtrl,
                cursorColor: Color.fromRGBO(171, 235, 255, 1),
                style: TextStyle(
                  color: Color.fromRGBO(171, 235, 255, 1),
                ),
                decoration: InputDecoration(
                  hintText: "ID:",
                  hintStyle: TextStyle(color: Color.fromRGBO(125, 173, 187, 1),),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color.fromRGBO(171, 235, 255, 1))
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color.fromRGBO(171, 235, 255, 1))
                  ),
                ),
              ),
            ),

            RadioListTile(
              title: Text("Pessoa", style: TextStyle(color: Color.fromRGBO(171, 235, 255, 1),),),
              activeColor: Color.fromRGBO(171, 235, 255, 1),
              value: "people",
              groupValue: tipo,
              onChanged: (value) {
                tipo = value!;
                setState(() {});
              },
            ),

            RadioListTile(
              title: Text("Planeta", style: TextStyle(color: Color.fromRGBO(171, 235, 255, 1),),),
              activeColor: Color.fromRGBO(171, 235, 255, 1),
              value: "planets",
              groupValue: tipo,
              onChanged: (value) {
                tipo = value!;
                setState(() {});
              },
            ),

            RadioListTile(
              title: Text("Nave", style: TextStyle(color: Color.fromRGBO(171, 235, 255, 1),),),
              activeColor: Color.fromRGBO(171, 235, 255, 1),
              value: "starships",
              groupValue: tipo,
              onChanged: (value) {
                tipo = value!;
                setState(() {});
              },
            ),

            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(Colors.black),
              ),
              child: Text(
                "Buscar",
                style: TextStyle(
                  color: Color.fromRGBO(236, 231, 32, 1),
                ),
              ),
              onPressed: () {
                String id = idCtrl.text;
                requisicao(tipo, id);
                setState(() {});
              },
            ),
          ],
        ),
      ),
      backgroundColor: Color.fromRGBO(0, 28, 70, 1),
    );
  }
}