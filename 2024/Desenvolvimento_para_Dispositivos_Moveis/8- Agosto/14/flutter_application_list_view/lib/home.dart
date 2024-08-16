// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_application_list_view/aluno.dart';

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {

  List<Aluno> listaAl = [];
  Aluno a1 = Aluno("Mariana", 202239);
  Aluno a2 = Aluno("Nero", 202227);
  Aluno a3 = Aluno("Guilherme", 202079);

  @override
  Widget build(BuildContext context) {
    listaAl.add(a1);
    listaAl.add(a2);
    listaAl.add(a3);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Exemplo ListView e ListTile",
        ),
        centerTitle: true,
        backgroundColor: Colors.lightBlue[300],
      ),

      body: ListView.separated(
        separatorBuilder: (context, index) => Divider(thickness: 1, color: Colors.lightBlueAccent,),
        itemCount: listaAl.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(child: Text(listaAl[index].name[0]),),
            title: Text(listaAl[index].name),
            subtitle: Text(listaAl[index].ra.toString()),
            trailing: Icon(Icons.tag_faces),
          );
        },
      ),
      /*
        ListTile(
          leading: Icon(Icons.alarm_rounded), //Item que vai à esquerda da linha do item
          title: Text("Despertar"), //Texto maior
          subtitle: Text("Hora de acordar"), //Texto menor
          trailing: Icon(Icons.delete), //Item que vai à direita da linha do item
        ),

        ListTile(
          leading: Icon(Icons.adb_rounded),
          title: Text("Mobile"),
          subtitle: Text("Disciplina de desenvolvimento"),
          trailing: Icon(Icons.delete),
        ),

        ListTile(
          leading: Icon(Icons.ac_unit_rounded),
          title: Text("Neve"),
          subtitle: Text("Muito frio"),
          trailing: Icon(Icons.delete),
        ),
      */
    );
  }
}