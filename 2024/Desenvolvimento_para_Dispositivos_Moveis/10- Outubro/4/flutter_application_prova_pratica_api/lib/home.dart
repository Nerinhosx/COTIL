import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_application_prova_pratica_api/animal.dart';
import 'package:flutter_application_prova_pratica_api/repository.dart';

import 'package:http/http.dart' as http;

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {

  AnimalRepository anRepo = AnimalRepository();

  Future<void> Requisicao() async{
    var url = Uri.parse("http://localhost:8080/apiAnimal/todos");
    http.Response response = await http.get(url);
    if(response.statusCode == 200){
      List listAnimal = jsonDecode(response.body) as List;
      anRepo.listAn = listAnimal.map((listAnimal) => Animal.fromJson(listAnimal)).toList();
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    Requisicao();
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "BioSearch Demo",
          style: TextStyle(
            color: const Color.fromRGBO(56, 224, 62, 1),
            fontFamily: "Rubik Bubbles",
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 12, 26, 2),
        centerTitle: true,
      ),

      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/forest.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                ListView.builder(
                  shrinkWrap: true,
                  itemCount: anRepo.listAn.length,
                  itemBuilder: (context, index) {
                    return Container(
                      color:Color.fromRGBO(14, 73, 18, 0.7),
                      child: Padding(
                        padding: EdgeInsets.only(bottom: 10),
                        child: ListTile(
                          title: Text(
                            anRepo.listAn[index].nomeP,
                          ),

                          subtitle: Text(
                            anRepo.listAn[index].nomeC,
                          ),

                          leading: Text(
                            anRepo.listAn[index].riscoExt + " risco de extinção",
                          ),

                          trailing: Text(
                            "Hábito " + anRepo.listAn[index].habito,
                          ),
                          textColor: Color.fromRGBO(171, 210, 44, 1),
                        ),
                      )
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}