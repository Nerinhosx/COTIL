// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_application_exercicio_api_cep/task.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  TextEditingController cepCtrl = TextEditingController();
  String apiData = "";
  Task myTask = Task();

  Future<void> requisition(String cep) async{
    var url = Uri.parse("https://viacep.com.br/ws/${cep}/json");
    http.Response response = await http.get(url);
    apiData = response.body;
    print(response.statusCode);
    if(response.statusCode == 200){
      Map<String, dynamic> formData = jsonDecode(apiData);
      myTask = Task.fromJson(formData);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Consulta de CEP",
          style: TextStyle(
            color: Colors.yellowAccent,
          ),
        ),
        backgroundColor: Colors.green[800],
        centerTitle: true,
      ),

      body: Center(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: 20,
                right: MediaQuery.of(context).size.width*0.35,
                left: MediaQuery.of(context).size.width*0.35,
              ),
              child: TextField(
                controller: cepCtrl,
                cursorColor: Color.fromRGBO(213, 221, 154, 1),
                decoration: InputDecoration(
                  hintText: "CEP:",
                  hintStyle: TextStyle(color: Color.fromRGBO(213, 221, 154, 0.6)),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Color.fromRGBO(213, 221, 154, 1)
                    ),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Color.fromRGBO(213, 221, 154, 1)
                    ),
                  ),
                ),
                style: TextStyle(
                  color: Color.fromRGBO(213, 221, 154, 1),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 30,
              ),
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(
                    Color.fromRGBO(213, 221, 154, 1),
                  ),
                ),
                child: Text(
                  "Consultar",
                  style: TextStyle(
                    color: Color.fromRGBO(34, 90, 71, 1),
                  ),
                ),
                onPressed: () {
                  String cep = cepCtrl.text;
                  requisition(cep);
                  setState(() {});
                },
              ),
            ),

            Padding(
              padding: EdgeInsets.only(
                top: 30,
              ),
              child: Column(
                children: [
                  Text("CEP: ${myTask.cep}", style: TextStyle(color: Color.fromRGBO(213, 221, 154, 1))),
                  Text("Logradouro: ${myTask.logradouro}", style: TextStyle(color: Color.fromRGBO(213, 221, 154, 1))),
                  Text("Complemento: ${myTask.complemento}", style: TextStyle(color: Color.fromRGBO(213, 221, 154, 1))),
                  Text("Unidade: ${myTask.unidade}", style: TextStyle(color: Color.fromRGBO(213, 221, 154, 1))),
                  Text("Bairro: ${myTask.bairro}", style: TextStyle(color: Color.fromRGBO(213, 221, 154, 1))),
                  Text("Localidade: ${myTask.localidade}", style: TextStyle(color: Color.fromRGBO(213, 221, 154, 1))),
                  Text("UF: ${myTask.uf}", style: TextStyle(color: Color.fromRGBO(213, 221, 154, 1))),
                  Text("Estado: ${myTask.estado}", style: TextStyle(color: Color.fromRGBO(213, 221, 154, 1))),
                  Text("Região: ${myTask.regiao}", style: TextStyle(color: Color.fromRGBO(213, 221, 154, 1))),
                  Text("IBGE: ${myTask.ibge}", style: TextStyle(color: Color.fromRGBO(213, 221, 154, 1))),
                  Text("GIA: ${myTask.gia}", style: TextStyle(color: Color.fromRGBO(213, 221, 154, 1))),
                  Text("DDD: ${myTask.ddd}", style: TextStyle(color: Color.fromRGBO(213, 221, 154, 1))),
                  Text("SIAFI: ${myTask.siafi}", style: TextStyle(color: Color.fromRGBO(213, 221, 154, 1))),
                ],
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Color.fromRGBO(69, 91, 13, 1),
    );
  }
}