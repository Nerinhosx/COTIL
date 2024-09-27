import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_application_teste_consumo_api_java/aluno.dart';
import 'package:flutter_application_teste_consumo_api_java/repository.dart';
import 'package:http/http.dart' as http; 

class MyHomeAPI extends StatefulWidget {
  const MyHomeAPI({super.key});

  @override
  State<MyHomeAPI> createState() => _MyHomeAPIState();
}

class _MyHomeAPIState extends State<MyHomeAPI> {
  //AlunoFlutter alFl = AlunoFlutter();
  AlunoFlutterRepository alFlRepo = AlunoFlutterRepository();

  Future<void> fazerRequisicao() async{
    var url = Uri.parse("http://localhost:8080/apiAlunoFlutter/todos");
    http.Response response = await http.get(url);
    if(response.statusCode == 200){
      List listAl = jsonDecode(response.body) as List;
      alFlRepo.listAlFl = listAl.map((listAl) => AlunoFlutter.fromJson(listAl)).toList();
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    fazerRequisicao();
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Teste de consumo de API em Java",
          style: TextStyle(
            color: Color.fromRGBO(78, 228, 190, 1),
          ),
        ),
        centerTitle: true,
        backgroundColor: Color.fromRGBO(28, 5, 57, 1),
      ),

      body: ListView.builder(
        itemCount: alFlRepo.listAlFl.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(
              alFlRepo.listAlFl[index].nome,
              style: TextStyle(
                color: Color.fromRGBO(215, 238, 223, 1)
              ),
            ),
            subtitle: Text(
              alFlRepo.listAlFl[index].ra.toString(),
              style: TextStyle(
                color: Color.fromRGBO(215, 238, 223, 1),
              ),
            ),
          );
        },
      ),
      backgroundColor: Color.fromRGBO(37, 65, 103, 1),
    );
  }
}