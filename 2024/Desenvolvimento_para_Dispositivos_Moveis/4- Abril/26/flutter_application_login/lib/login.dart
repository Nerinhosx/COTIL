// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter_application_login/pessoa.dart';

class MyLogin extends StatefulWidget {
  const MyLogin({super.key});

  @override
  State<MyLogin> createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
  GlobalKey<FormState> keyForm = GlobalKey<FormState>();
  TextEditingController ctrlLogin = TextEditingController();
  TextEditingController ctrlPass = TextEditingController();

  Pessoa p1 = Pessoa("Nero", "123");
  Pessoa p2 = Pessoa("Mari", "456");
  Pessoa p3 = Pessoa("Jay", "789");
  List<Pessoa> listaPessoa = [];

  int c = 0;

  @override
  Widget build(BuildContext context) {
    listaPessoa.add(p1);
    listaPessoa.add(p2);
    listaPessoa.add(p3);

    return Scaffold(
      appBar: AppBar(
        title: Text("Login", style: TextStyle(fontSize: 32),),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),

      body: Center(
        child: Column(children: [
          Image.asset("assets/images/lock.png", width: 250),
          Padding(
            padding: EdgeInsets.only(top: 35, bottom: 40),
            child: Form(
              key: keyForm,
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 20, right: 20),
                    child: TextFormField(
                      controller: ctrlLogin,
                      decoration: InputDecoration(labelText: "Login:", icon: Icon(Icons.person, color: Colors.lightGreen[900])),
                      validator: (value) {
                        if(value!.isEmpty){
                          return "O login deve ser informado";
                        }
                        return null;
                      },
                    )
                  ),

                  Padding(
                    padding: EdgeInsets.only(left: 20, right: 20, top: 10),
                    child: TextFormField(
                      controller: ctrlPass,
                      obscureText: true,
                      decoration: InputDecoration(labelText: "Senha:", icon: Icon(Icons.password_rounded, color: Colors.lightGreen[900])),
                      validator: (value) {
                        if(value!.isEmpty){
                          return "A senha deve ser informada";
                        }
                        else if(value.length<3){
                          return "A senha deve ter 3 ou mais caracteres";
                        }
                        return null;
                      },
                    )
                  )
                ],
              ),
            ),
          ),

          Row(children: [
            ElevatedButton(
              onPressed: () {
                if(keyForm.currentState!.validate()){
                  String l = ctrlLogin.text;
                  String s = ctrlPass.text;
                  
                  for(int i=0; i<listaPessoa.length; i++){
                    if(listaPessoa[i].login == l && listaPessoa[i].senha == s && c==0){
                      showAlertDialog1(context);
                      c=1;
                    }
                    else if(i==(listaPessoa.length-1) && c==0){
                      showAlertDialog2(context);
                    }
                  }
                  c=0;
                }
                setState(() {});
              },
              child: Text("Login"),
            ),
          ], mainAxisAlignment: MainAxisAlignment.center,)
        ],),
      ),

      backgroundColor: Colors.blueAccent[100],
    );
  }

  showAlertDialog1(BuildContext context) {
    AlertDialog alertDialog = AlertDialog(
      icon: Icon(Icons.verified_rounded),
      iconColor: Colors.white,
      backgroundColor: Colors.green,
      title: Text(
        'Logou!',
        style: TextStyle(
          fontSize: 18,
          color: Colors.white,
        ),
      ),
      actions: [
        ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text(
            'OK',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold
            ),
          ),
          style: ElevatedButton.styleFrom(
            backgroundColor: Color.fromRGBO(38, 138, 77, 1),
          ),
        )
      ],
    );
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alertDialog;
      }
    );
  }

  showAlertDialog2(BuildContext context) {
    AlertDialog alertDialog = AlertDialog(
      icon: Icon(Icons.warning_amber),
      iconColor: Colors.white,
      backgroundColor: Colors.red,
      title: Text(
        'Login e/ou senha incorretos!',
        style: TextStyle(
          fontSize: 18,
          color: Colors.white,
        ),
      ),
      actions: [
        ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text(
            'OK',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold
            ),
          ),
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.red[700],
          ),
        )
      ],
    );
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alertDialog;
      }
    );
  }
}