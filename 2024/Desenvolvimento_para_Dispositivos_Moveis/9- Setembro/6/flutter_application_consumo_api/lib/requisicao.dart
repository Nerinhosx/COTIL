// ignore_for_file: prefer_typing_uninitialized_variables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class MyRequisicao extends StatefulWidget {
  const MyRequisicao({super.key});

  @override
  State<MyRequisicao> createState() => _MyRequisicaoState();
}

class _MyRequisicaoState extends State<MyRequisicao> {
  String dadosApi = "Teste";
  var userId;
  var taskId;
  var title;
  var completed;
  TextEditingController idUserCtrl = TextEditingController();

  Future<void> fazerRequisicao(String id) async {
    var url = Uri.parse("https://jsonplaceholder.typicode.com/todos/$id");
    http.Response response;
    response = await http.get(url);
    dadosApi = response.body;
    if(response.statusCode == 200){
      Map<String, dynamic> dadosFormatados = jsonDecode(response.body);
      userId = (dadosFormatados['userId']);
      taskId = (dadosFormatados['id']);
      title = (dadosFormatados['title']);
      completed = (dadosFormatados['completed']);
    }
    setState(() {});
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Teste API", style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),

      body: Center(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 20, right: MediaQuery.of(context).size.width*0.4, left: MediaQuery.of(context).size.width*0.4),
              child: TextField(
                controller: idUserCtrl,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20, bottom: 40),
              child: ElevatedButton(
                onPressed: () {
                  fazerRequisicao(idUserCtrl.text);
                },
                child: Text("Fazer Requisição")
              ),
            ),
            
            Text('ID do usuário: ' + userId.toString()),
            Text('ID da tarefa: ' + taskId.toString()),
            Text('Título da tarefa: ' + title.toString()),
            Text('Tarefa completa? ' + completed.toString()),
          ],
        ),
      ),
    );
  }
}