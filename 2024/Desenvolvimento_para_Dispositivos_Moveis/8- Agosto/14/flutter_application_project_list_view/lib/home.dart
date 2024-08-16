// ignore_for_file: prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_application_project_list_view/character.dart';

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  List<Character> listC = [];
  Character c1 = Character("images/raze.jpg", "Raze", "Duelista", "Brasil");
  Character c2 = Character("images/cypher.jpg", "Cypher", "Sentinela", "Marrocos");
  Character c3 = Character("images/neon.jpg", "Neon", "Duelista", "Filipinas");

  @override
  Widget build(BuildContext context) {
    listC.add(c1);
    listC.add(c2);
    listC.add(c3);
    
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Valorant Agents",
          style: TextStyle(
            color: Color.fromRGBO(255, 48, 64, 1),
          ),
        ),
        backgroundColor: Color.fromRGBO(15, 25, 35, 1),
        centerTitle: true,
      ),

      body: Center(
        child: Column(
          children: [
            ListView.separated(
              shrinkWrap: true,
              separatorBuilder: (context, index) => Divider(thickness: 1, color: Color.fromARGB(255, 163, 81, 81),),
              itemCount: listC.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(100.0)),
                    child: Image.asset(
                      listC[index].img,
                      fit: BoxFit.cover,
                      height: 50,
                      width: 50,
                    )
                  ),
                  title: Text(listC[index].name),
                  subtitle: Text(listC[index].func),
                  trailing: Text(listC[index].country),
                );
              },
            ),
            ElevatedButton(
              onPressed: (){},
              child: Text(
                "Voltar",
                style: TextStyle(color: Color.fromRGBO(255, 48, 64, 1)),
              ),
              style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(Color.fromRGBO(15, 25, 35, 1)),
              ),
            )
          ],),
      ),
      backgroundColor: Color.fromARGB(255, 81, 132, 163),
    );
  }
}