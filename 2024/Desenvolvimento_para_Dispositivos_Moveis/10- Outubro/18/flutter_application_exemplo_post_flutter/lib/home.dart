import 'package:flutter/material.dart';
import 'package:flutter_application_exemplo_post_flutter/aluno.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  TextEditingController raCtrl = TextEditingController();
  TextEditingController nameCtrl = TextEditingController();
  Aluno al = Aluno();

  Future<void> cadastrarAluno() async{
    var url = Uri.parse("http://localhost:8080/apiAlunoFlutter/cadastro");
    await http.post(
      url,
      headers: {'Content-Type': 'application/json; charset=UTF-8',},
      body: jsonEncode({
        "ra": al.ra,
        "name": al.name
      }),
    );
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Exemplo de POST pelo flutter",
          style: TextStyle(
            color: Colors.teal[900],
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.blue[400],
        centerTitle: true,
      ),

      body: Container(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
              child: TextField(
                controller: raCtrl,
                decoration: InputDecoration(
                  labelText: "RA:",
                  border: OutlineInputBorder(),
                ),
              ),
            ),

            Padding(
              padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
              child: TextField(
                controller: nameCtrl,
                decoration: InputDecoration(
                  labelText: "Nome:",
                  border: OutlineInputBorder(),
                )
              ),
            ),

            ElevatedButton(
              onPressed: () {
                al.ra = int.parse(raCtrl.text);
                al.name = nameCtrl.text;
                raCtrl.clear();
                nameCtrl.clear();
                cadastrarAluno();
              },
              child: Text("Cadastrar"),
            ),
          ],
        ),
      ),
    );
  }
}