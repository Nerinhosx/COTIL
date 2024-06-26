// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last, unused_local_variable, prefer_interpolation_to_compose_strings, avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_application_exercicio_radio_check_switch/player.dart';

class MyForm extends StatefulWidget {
  const MyForm({super.key});

  @override
  State<MyForm> createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {

  TextEditingController name = TextEditingController();
  TextEditingController id = TextEditingController();
  String func = "";
  bool noClassSel = false;
  bool rankSel = false;
  bool aquecerMira = false;

  List<Player> lP = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Formulário para preferências no Vava", style: TextStyle(fontSize: 18, color: Colors.white)),
        centerTitle: true,
        backgroundColor: Colors.red[800],
      ),

      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              //Imagem
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: Image.asset("assets/images/bgVava.jpg", width: 400),
              ),
              //Imagem

              //Campo de Nome
              Padding(
                padding: EdgeInsets.only(left: 20, right: 20),
                child: TextField(
                  controller: name,
                  decoration: InputDecoration(
                    label: Text("Nome:"),
                    icon: Icon(Icons.person),
                  ),
                ),
              ),
              //Campo de nome

              //Campo de ID
              Padding(
                padding: EdgeInsets.only(left: 20, right: 20),
                child: TextField(
                  controller: id,
                  decoration: InputDecoration(
                    label: Text("ID:"),
                    icon: Icon(Icons.tag),
                  ),
                ),
              ),
              //Campo de ID

              //Texto
              Padding(
                padding: EdgeInsets.only(left: 10, top: 20, bottom: 10),
                child: Row(
                  children: [
                    Text("Função de preferência:", style: TextStyle(fontWeight: FontWeight.bold),)
                  ],
                  mainAxisAlignment: MainAxisAlignment.start,
                ),
              ),
              //Texto

              //Início RadioButtons
                //Radio -> Initiator
                RadioListTile(
                  title: Text("Initiator"),
                  subtitle: Text("Responsável por scannear o bomb"),
                  secondary: Icon(Icons.bolt_rounded),
                  value: "Initiator",
                  groupValue: func,
                  onChanged: (value) {
                    func = value!;
                    setState(() {});
                  },
                ),
                //Radio -> Initiator
                
                //Radio -> Duelist
                RadioListTile(
                  title: Text("Duelist"),
                  subtitle: Text("Responsável por eliminar adversários"),
                  secondary: Icon(Icons.cancel_rounded),
                  value: "Duelist",
                  groupValue: func,
                  onChanged: (value) {
                    func = value!;
                    setState(() {});
                  },
                ),
                //Radio -> Duelist

                //Radio -> Controller
                RadioListTile(
                  title: Text("Controller"),
                  subtitle: Text("Responsável por facilitar o progresso do time"),
                  secondary: Icon(Icons.arrow_upward_rounded),
                  value: "Controller",
                  groupValue: func,
                  onChanged: (value) {
                    func = value!;
                    setState(() {});
                  },
                ),
                //Radio -> Controller

                //Radio -> Sentinel
                RadioListTile(
                  title: Text("Sentinel"),
                  subtitle: Text("Responsável por cuidar da retaguarda"),
                  secondary: Icon(Icons.arrow_downward_rounded),
                  value: "Sentinel",
                  groupValue: func,
                  onChanged: (value) {
                    func = value!;
                    setState(() {});
                  },
                ),
                //Radio -> Sentinel
              //Fim RadioButtons

              //Divisor
              Padding(
                padding: EdgeInsets.only(left: 10, right: 10),
                child: Divider(color: Colors.red[300],),
              ),
              //Divisor

              //Texto
              Padding(
                padding: EdgeInsets.only(left: 10, top: 20, bottom: 10),
                child: Row(
                  children: [
                    Text("Modos de preferência:", style: TextStyle(fontWeight: FontWeight.bold),)
                  ],
                  mainAxisAlignment: MainAxisAlignment.start,
                ),
              ),
              //Texto

              //Início Checkboxes
                CheckboxListTile(
                  title: Text("Sem classificação"),
                  value: noClassSel,
                  onChanged: (value) {
                    noClassSel = value!;
                    setState(() {});
                  },
                  activeColor: Colors.red[900],
                ),

                CheckboxListTile(
                  title: Text("Competitivo"),
                  value: rankSel,
                  onChanged: (value) {
                    rankSel = value!;
                    setState(() {});
                  },
                  activeColor: Colors.red[900],
                ),
              //Fim Checkboxes

              //Divisor
              Padding(
                padding: EdgeInsets.only(left: 10, right: 10),
                child: Divider(color: Colors.red[300],),
              ),
              //Divisor

              //Switch
              SwitchListTile(
                title: Text("Permite abrir um mata-mata antes das partidas?"),
                subtitle: Text("Só pra dar uma aquecidinha..."),
                value: aquecerMira,
                onChanged: (value) {
                  aquecerMira = value;
                  setState(() {});
                },
              ),
              //Switch
              
              Row(children: [
                ElevatedButton(
                  onPressed: () {
                    cad();
                    setState(() {});
                  },
                  child: Text("Enviar"),
                ),

                Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: ElevatedButton(
                    onPressed: () {
                      name.clear();
                      id.clear();
                      func = "";
                      noClassSel = false;
                      rankSel = false;
                      aquecerMira = false;
                      setState(() {});
                    },
                    child: Text("Cancelar"),
                  ),
                ),
              ], mainAxisAlignment: MainAxisAlignment.center,)
            ],
          ),
        ),
      ),
      backgroundColor: Colors.red[200],
    );
  }
  void cad(){
    String n = name.text;
    int i = int.parse(id.text);
    String f = func;
    List<String> l = [];
    String aqc = "";

    if(noClassSel==true){
      l.add("Sem classificação");
    }
    if(rankSel==true){
      l.add("Competitivo");
    }


    if(aquecerMira==true){
      aqc = "Permito aquecer mira";
    }
    else{
      aqc = "Não permito aquecer mira";
    }

    Player p = Player(n, i, f, l, aqc);
    lP.add(p);
    showPlayers();
  }

  void showPlayers(){
    for (Player p in lP) {
      print("\n" + p.name);
      print(p.id.toString());
      print(p.func);
      for(String m in p.listModes){
        print(m);
      }
      print(p.aqc + "\n==========================================");
    }
  }
}