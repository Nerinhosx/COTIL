// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter_application_project_list_view_cadastro/animal.dart';
import 'package:flutter_application_project_list_view_cadastro/animalCad.dart';

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  TextEditingController nomeCCtrl = TextEditingController();
  TextEditingController nomePCtrl = TextEditingController();
  TextEditingController popCtrl = TextEditingController();
  TextEditingController habitCtrl = TextEditingController();
  List<Animal> listA = [];
  GlobalKey<FormState> formK = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Cadastro de Animais",
          style: TextStyle(
            color: Color.fromRGBO(0, 236, 124, 0.9),
          ),
        ),
        backgroundColor: Color.fromRGBO(57, 12, 16, 1),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => MyAnimalCad(listA)));
            },
            icon: Icon(Icons.list_alt_rounded, color: Color.fromRGBO(0, 236, 124, 0.75),),
          ),
        ],
      ),

      body: Center(
        child: Form(
          key: formK,
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(10, 15, 10, 15),
                child: Image.asset("assets/images/capivara.jpg", height: 200,),
              ),

              Padding(
                padding: EdgeInsets.fromLTRB(10, 15, 10, 15),
                child: TextFormField(
                  controller: nomeCCtrl,
                  decoration: InputDecoration(
                    fillColor: Colors.lightGreen[400],
                    filled: true,
                    labelText: "Nome científico",
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                  ),
                  validator: (value) {
                    if(value!.isEmpty){
                      return "O nome científico é obrigatório!";
                    }
                    return null;
                  },
                ),
              ),

              Padding(
                padding: EdgeInsets.fromLTRB(10, 15, 10, 25),
                child: TextFormField(
                  controller: nomePCtrl,
                  decoration: InputDecoration(
                    fillColor: Colors.lightGreen[400],
                    filled: true,
                    labelText: "Nome popular",
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                  ),
                  validator: (value) {
                    if(value!.isEmpty){
                      return "O nome popular é obrigatório!";
                    }
                    return null;
                  },
                ),
              ),

              Padding(
                padding: EdgeInsets.fromLTRB(10, 15, 10, 25),
                child: TextFormField(
                  controller: popCtrl,
                  decoration: InputDecoration(
                    fillColor: Colors.lightGreen[400],
                    filled: true,
                    labelText: "População",
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                  ),
                  validator: (value) {
                    if(value!.isEmpty){
                      return "A quantidade populacional é obrigatória!";
                    }
                    else if(int.tryParse(value)==null){
                      return "Valor textual identificado em campo numérico!";
                    }
                    return null;
                  }
                ),
              ),

              Padding(
                padding: EdgeInsets.fromLTRB(10, 15, 10, 25),
                child: TextFormField(
                  controller: habitCtrl,
                  decoration: InputDecoration(
                    fillColor: Colors.lightGreen[400],
                    filled: true,
                    labelText: "Hábito",
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                  ),
                  validator: (value) {
                    if(value!.isEmpty){
                      return "O hábito é obrigatório!";
                    }
                    return null;
                  },
                ),
              ),

              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 5, 0),
                    child: ElevatedButton(
                      onPressed: () {
                        if(formK.currentState!.validate()){
                          String nC = nomeCCtrl.text;
                          String nP = nomePCtrl.text;
                          int pop = int.parse(popCtrl.text);
                          String habit = habitCtrl.text;
                          Animal animal = Animal(nC, nP, pop, habit);
                          listA.add(animal);
                          clearAll();
                          setState(() {});
                        }
                      },
                      child: Text("Cadastrar"),
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                    child: ElevatedButton(
                      onPressed: () {
                        clearAll();
                        setState(() {});
                      },
                      child: Text("Limpar"),
                    ),
                  ),
                ],
                mainAxisAlignment: MainAxisAlignment.center,
              ),
            ],
          ),
        )
      ),
      backgroundColor: Color.fromRGBO(84, 30, 12, 0.9),
    );
  }

  void clearAll(){
    nomeCCtrl.clear();
    nomePCtrl.clear();
    popCtrl.clear();
    habitCtrl.clear();
  }
}