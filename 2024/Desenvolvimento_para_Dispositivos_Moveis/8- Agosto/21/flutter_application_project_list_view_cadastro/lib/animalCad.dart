// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter_application_project_list_view_cadastro/animal.dart';

class MyAnimalCad extends StatefulWidget {
  List<Animal> listA = [];

  MyAnimalCad(this.listA, {super.key});

  @override
  State<MyAnimalCad> createState() => _MyAnimalCadState();
}

class _MyAnimalCadState extends State<MyAnimalCad> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Animais cadastrados",
          style: TextStyle(
            color: Color.fromRGBO(0, 236, 124, 0.9),
          ),
        ),
        backgroundColor: Color.fromRGBO(57, 12, 16, 1),
      ),

      body: Center(
        child: Column(
          children: [
            ListView.separated(
              shrinkWrap: true,
              separatorBuilder: (context, index) => Divider(thickness: 1, color: Color.fromRGBO(46, 15, 5, 1),),
              itemCount: widget.listA.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(child: Text(widget.listA[index].nomeP[0]),),
                  title: Text(widget.listA[index].nomeP),
                  subtitle: Text(widget.listA[index].nomeC),
                  trailing: Text(widget.listA[index].habito),
                  tileColor: Colors.lightGreen[400],
                );
              },
            ),

            Padding(
              padding: EdgeInsets.only(top: 10),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  "Voltar",
                  style: TextStyle(color: Color.fromRGBO(139, 232, 44, 1)),
                ),
                style: ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(Color.fromRGBO(0, 109, 58, 1)),
                ),
              ),
            ),
          ],
        ),
      ),

      backgroundColor: Color.fromRGBO(84, 30, 12, 0.9),
    );
  }
}