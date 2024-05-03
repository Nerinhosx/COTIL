// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last, unnecessary_import, unnecessary_new, avoid_print, unnecessary_string_interpolations

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_prova_pratica_1/med.dart';

class MyClinica extends StatefulWidget {
  const MyClinica({super.key});

  @override
  State<MyClinica> createState() => _MyClinicaState();
}

class _MyClinicaState extends State<MyClinica> {

  GlobalKey<FormState> formK = GlobalKey<FormState>();
  TextEditingController nameCtrl = TextEditingController();
  TextEditingController crmCtrl = TextEditingController();
  bool res = false;
  bool esp = false;
  bool pos = false;
  List<String> formL = [];
  bool emerCall = false;

  List<Med> medL = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Clínica Gomes da Silva",
          style: TextStyle(fontSize: 24, fontFamily: 'Lumanosimo', fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.teal[300],
      ),

      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [

              Padding(padding: EdgeInsets.only(top: 20, bottom: 20),
              child: 
                Row(
                  children: [
                    Image.asset('assets/images/medicos.jpg', width: 350),
                  ],
                  mainAxisAlignment: MainAxisAlignment.center,
                ),
              ),

              Padding(
                padding: EdgeInsets.only(left: 10),
                child: Row(
                  children: [
                    Text("Dados:", style: TextStyle(fontWeight: FontWeight.bold),)
                  ],
                  mainAxisAlignment: MainAxisAlignment.start,
                ),
              ),

              Form(
                key: formK,
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: 20, left: 20, bottom: 15),
                      child: TextFormField(
                        controller: nameCtrl,
                        decoration: InputDecoration(
                          labelText: "Nome:",
                          icon: Icon(Icons.person, color: Colors.teal[800]),
                        ),
                        validator: (value) {
                          if(value!.isEmpty){
                            return "O nome é obrigatório!";
                          }
                          return null;
                        },
                      ),
                    ),

                    Padding(
                      padding: EdgeInsets.only(right: 20, left: 20, bottom: 15),
                      child: TextFormField(
                        controller: crmCtrl,
                        decoration: InputDecoration(
                          labelText: "CRM:",
                          icon: Icon(Icons.comment_rounded, color: Colors.teal[800]),
                        ),
                        validator: (value) {
                          if(value!.isEmpty){
                            return "O CRM é obrigatório!";
                          }
                          return null;
                        },
                      ),
                    ),
                  ],
                ),
              ),

              Padding(
                padding: EdgeInsets.only(left: 10, right: 10),
                child: Divider(color: Colors.teal[400],),
              ),

              Padding(
                padding: EdgeInsets.only(left: 10, top: 10),
                child: Row(
                  children: [
                    Text("Formação:", style: TextStyle(fontWeight: FontWeight.bold),)
                  ],
                  mainAxisAlignment: MainAxisAlignment.start,
                ),
              ),

              CheckboxListTile(
                title: Text("Residente"),
                secondary: Icon(Icons.house_rounded, color: Colors.teal[800]),
                value: res,
                onChanged: (value) {
                  res = value!;
                  setState(() {});
                },
              ),

              CheckboxListTile(
                title: Text("Especializado"),
                secondary: Icon(Icons.assignment_ind_rounded, color: Colors.teal[800]),
                value: esp,
                onChanged: (value) {
                  esp = value!;
                  setState(() {});
                },
              ),

              CheckboxListTile(
                title: Text("Pós-graduado"),
                secondary: Icon(Icons.school_rounded, color: Colors.teal[800]),
                value: pos,
                onChanged: (value) {
                  pos = value!;
                  setState(() {});
                },
              ),

              Padding(
                padding: EdgeInsets.only(left: 10, right: 10),
                child: Divider(color: Colors.teal[400],),
              ),

              SwitchListTile(
                title: Text("Permitir chamadas de emergência"),
                secondary: Icon(Icons.emergency_rounded, color: Colors.teal[800]),
                value: emerCall,
                onChanged: (value) {
                  emerCall = value;
                  setState(() {});
                },
              ),

              Padding(
                padding: EdgeInsets.only(top: 20, bottom: 20),
                  child: Row(children: [
                    ElevatedButton(
                      onPressed: () {
                        if(formK.currentState!.validate()){
                          cad();
                          show();
                          clear();
                          setState(() {});
                        }
                      },
                      child: Text("Cadastrar"),
                    ),

                    ElevatedButton(
                      onPressed: () {
                        clear();
                        setState(() {});
                      },
                      child: Text("Cancelar")
                    )
                ],
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                )
              )
            ],
          ),
        ),
      ),
      backgroundColor: Colors.teal[100],
    );
  }

  void cad(){
    String name = nameCtrl.text;
    int crm = int.parse(crmCtrl.text);
    String eC = "";
    
    if(res){
      formL.add("Residente");
    }

    if(esp){
      formL.add("Especializado");
    }

    if(pos){
      formL.add("Pós-graduado");
    }

    if(emerCall){
      eC = "Permite chamadas de emergência";
    }
    else{
      eC = "Não permite chamadas de emergência";
    }

    Med m = new Med(name, crm, formL, eC);
    for(String f in formL){
      print(f);
    }
    medL.add(m);
  }

  void clear(){
    nameCtrl.text = "";
    crmCtrl.text = "";
    res = false;
    esp = false;
    pos = false;
    emerCall = false;
    formL.clear();
  }

  void show(){
    print("\n");
    medL.forEach((Med m) {
      print("Nome: ${m.name}");
      print("CRM: ${m.crm.toString()}");
      print("Formação: ${m.formacao.toString()}");
      print(m.emCall);
      print("==============================================================");
    });
  }
}