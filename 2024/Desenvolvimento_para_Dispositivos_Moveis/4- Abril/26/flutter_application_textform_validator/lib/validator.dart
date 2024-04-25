// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class MyValidator extends StatefulWidget {
  const MyValidator({super.key});

  @override
  State<MyValidator> createState() => _MyValidatorState();
}

class _MyValidatorState extends State<MyValidator> {

  GlobalKey<FormState> keyValid = GlobalKey();
  TextEditingController raCtrl = TextEditingController();
  TextEditingController nameCtrl = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Form(
          key: keyValid,
          child: Column(
            children: [
              TextFormField(
                controller: raCtrl,
                decoration: InputDecoration(labelText: "Ra"),
                validator: (value) {
                  if(value!.isEmpty){
                    return "O RA não pode ser vazio";
                  }
                  else{
                    if(value.trim().length<6){
                      return "O RA deve possuir 6 ou mais caracteres";
                    }
                  }
                  return null;
                },
              ),

              Padding(
                padding: EdgeInsets.only(top: 20, bottom: 40),
                child: TextFormField(
                  controller: nameCtrl,
                  decoration: InputDecoration(labelText: "Nome"),
                  validator: (value) {
                    if(value!.isEmpty){
                      return "O nome não pode ser vazio";
                    }
                    else{
                      if(value.length<3){
                        return "O nome deve possuir 3 ou mais caracteres";
                      }
                    }
                    return null;
                  },
                ),
              ),

              ElevatedButton(
                onPressed: () {
                  if(keyValid.currentState!.validate()){
                    print(nameCtrl.text + raCtrl.text.toString());
                    showMsg();
                    setState(() {});
                  }
                },
                child: Text("Cadastrar"),
              ),
            ],
          ),
        ),
      ),
    );
  }
  void showMsg(){
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text("Aluno cadastrado com sucesso!"))
    );
  }
}