// ignore_for_file: prefer_const_constructors, prefer_interpolation_to_compose_strings, avoid_print, sort_child_properties_last

import 'package:flutter/material.dart';

class MyCheckBox extends StatefulWidget {
  const MyCheckBox({super.key});

  @override
  State<MyCheckBox> createState() => _MyCheckBoxState();
}

class _MyCheckBoxState extends State<MyCheckBox> {

  bool biscSelec = false;
  bool bolSelec = false;

  bool dogSelec = false;
  bool catSelec = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Escolha sabiamente"),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),

      body: Center(child: 
        Column(children: [
          Padding(
            padding: EdgeInsets.only(top: 20, bottom: 25),
            child: Text("Biscoito ou bolacha?"),
          ),

          Padding(
            padding: EdgeInsets.only(bottom: 50), 
            child: 
            Row(children: [
              Column(children: [
                Text("Biscoito"),
                Checkbox(
                  value: biscSelec,
                  onChanged: (value) {
                    biscSelec = value!;
                    setState(() {});
                  },
                ),
              ],),

              Column(children: [
                Text("Bolacha"),
                Checkbox(
                  value: bolSelec,
                  onChanged: (value) {
                    bolSelec = value!;
                    setState(() {});
                  },
                ),
              ],),
            ], mainAxisAlignment: MainAxisAlignment.spaceAround,),
          ),

          Text("O pet que eu mais gosto:"),

          CheckboxListTile(
            title: Text("Cachorro"),
            subtitle: Text("fox paulistinha"),
            secondary: Icon(Icons.pets),
            value: dogSelec,
            onChanged: (value) {
              dogSelec = value!;
              setState(() {});
            },
          ),

          CheckboxListTile(
            title: Text("Gato"),
            subtitle: Text("laranja"),
            secondary: Icon(Icons.pets_rounded),
            value: catSelec,
            onChanged: (value) {
              catSelec = value!;
              setState(() {});
            },
          ),

          ElevatedButton(
            onPressed: () {
              print(biscSelec.toString() + " " + bolSelec.toString());
            },
            child: Text("OK"),
          ),
        ],),
      ),
    );
  }
}