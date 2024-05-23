// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter_application_exercicio_navigation/character.dart';
import 'package:flutter_application_exercicio_navigation/controller.dart';
import 'package:flutter_application_exercicio_navigation/duelist.dart';
import 'package:flutter_application_exercicio_navigation/initiator.dart';
import 'package:flutter_application_exercicio_navigation/sentinel.dart';

class MyVava extends StatefulWidget {
  const MyVava({super.key});

  @override
  State<MyVava> createState() => _MyVavaState();
}

class _MyVavaState extends State<MyVava> {
  Character brimstone = Character("images/cont/Brimstone.png", "Vindo diretamente dos EUA, o arsenal orbital do Brimstone garante que o esquadrão dele sempre esteja em vantagem. Sua capacidade de oferecer utilitários com precisão e segurança faz dele um comandante inigualável na linha de frente.");
  Character viper = Character("images/cont/Viper.png", "Viper, a química dos Estados Unidos, emprega uma variedade de dispositivos químicos venenosos para controlar o campo de batalha e prejudicar a visão do inimigo. Se as toxinas não matarem a presa, seus jogos mentais certamente o farão.");
  Character omen = Character("images/cont/Omen.png", "Omen, uma lembrança fantasmagórica, caça nas sombras. Ele cega os inimigos, teleporta-se pelo campo e deixa a paranoia assumir o controle enquanto o adversário tenta descobrir de onde virá seu próximo ataque.");
  List<Character> liCont = [];
  //Setando valores da lista de Controllers

  Character phoenix = Character("images/duel/Phoenix.png", "Vindo diretamente dos EUA, o arsenal orbital do Brimstone garante que o esquadrão dele sempre esteja em vantagem. Sua capacidade de oferecer utilitários com precisão e segurança faz dele um comandante inigualável na linha de frente.");
  Character raze = Character("images/duel/Raze.png", "Viper, a química dos Estados Unidos, emprega uma variedade de dispositivos químicos venenosos para controlar o campo de batalha e prejudicar a visão do inimigo. Se as toxinas não matarem a presa, seus jogos mentais certamente o farão.");
  Character reyna = Character("images/duel/Reyna.png", "Omen, uma lembrança fantasmagórica, caça nas sombras. Ele cega os inimigos, teleporta-se pelo campo e deixa a paranoia assumir o controle enquanto o adversário tenta descobrir de onde virá seu próximo ataque.");
  List<Character> liDuel = [];
  //Setando valores da lsita de Duelists

  Character kayo = Character("images/init/KAYO.png", "Vindo diretamente dos EUA, o arsenal orbital do Brimstone garante que o esquadrão dele sempre esteja em vantagem. Sua capacidade de oferecer utilitários com precisão e segurança faz dele um comandante inigualável na linha de frente.");
  Character skye = Character("images/init/Skye.png", "Viper, a química dos Estados Unidos, emprega uma variedade de dispositivos químicos venenosos para controlar o campo de batalha e prejudicar a visão do inimigo. Se as toxinas não matarem a presa, seus jogos mentais certamente o farão.");
  Character sova = Character("images/init/Sova.png", "Omen, uma lembrança fantasmagórica, caça nas sombras. Ele cega os inimigos, teleporta-se pelo campo e deixa a paranoia assumir o controle enquanto o adversário tenta descobrir de onde virá seu próximo ataque.");
  List<Character> liInit = [];
  //Setando valores da lsita de Initiators

  Character chamber = Character("images/sent/Chamber.png", "Vindo diretamente dos EUA, o arsenal orbital do Brimstone garante que o esquadrão dele sempre esteja em vantagem. Sua capacidade de oferecer utilitários com precisão e segurança faz dele um comandante inigualável na linha de frente.");
  Character cypher = Character("images/sent/Cypher.png", "Viper, a química dos Estados Unidos, emprega uma variedade de dispositivos químicos venenosos para controlar o campo de batalha e prejudicar a visão do inimigo. Se as toxinas não matarem a presa, seus jogos mentais certamente o farão.");
  Character killjoy = Character("images/sent/Killjoy.png", "Omen, uma lembrança fantasmagórica, caça nas sombras. Ele cega os inimigos, teleporta-se pelo campo e deixa a paranoia assumir o controle enquanto o adversário tenta descobrir de onde virá seu próximo ataque.");
  List<Character> liSent = [];
  //Setando valores da lsita de Sentinels
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Valorinfo", style: TextStyle(fontFamily: "VavaFont", fontSize: 46)),
        centerTitle: true,
        backgroundColor: Color.fromRGBO(255, 70, 85, 1),
      ),

      
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/fundo/vavaFundo.png"),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          children: [
            Image.asset("images/fundo/vavaLogo.png", width: MediaQuery.of(context).size.height*0.8),
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: MediaQuery.of(context).size.height*0.03),
                  child: Row(
                    children: [
                      //Início Controller
                      MouseRegion(
                        cursor: SystemMouseCursors.click,
                        child: GestureDetector(
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Image.asset("images/icones/controller.png", width: MediaQuery.of(context).size.height*0.1),
                                ],
                                mainAxisAlignment: MainAxisAlignment.center,
                              ),
                              Row(
                                children: [
                                  Text("Controller", style: TextStyle(color: Colors.cyan[50], fontFamily: "VavaFont"),),
                                ],
                                mainAxisAlignment: MainAxisAlignment.center,
                              ),
                            ],
                          ),
                          onTap: () {
                            liCont.add(brimstone);
                            liCont.add(viper);
                            liCont.add(omen);
                            Navigator.push(context, MaterialPageRoute(builder: (context) => MyController(liCont)));
                          },
                        ),
                      ),
                      //Fim Controller

                      //Início Duelist
                      MouseRegion(
                        cursor: SystemMouseCursors.click,
                        child: GestureDetector(
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Image.asset("images/icones/duelist.png", width: MediaQuery.of(context).size.height*0.1),
                                ],
                                mainAxisAlignment: MainAxisAlignment.center,
                              ),
                              Row(
                                children: [
                                  Text("Duelist", style: TextStyle(color: Colors.cyan[50], fontFamily: "VavaFont"),),
                                ],
                                mainAxisAlignment: MainAxisAlignment.center,
                              ),
                            ],
                            mainAxisAlignment: MainAxisAlignment.end,
                          ),
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => MyDuelist()));
                          },
                        ),
                      ),
                      //Fim Duelist

                      //Início Initiator
                      MouseRegion(
                        cursor: SystemMouseCursors.click,
                        child: GestureDetector(
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Image.asset("images/icones/initiator.png", width: MediaQuery.of(context).size.height*0.1),
                                ],
                                mainAxisAlignment: MainAxisAlignment.center,
                              ),
                              Row(
                                children: [
                                  Text("Initiator", style: TextStyle(color: Colors.cyan[50], fontFamily: "VavaFont"),),
                                ],
                                mainAxisAlignment: MainAxisAlignment.center,
                              ),
                            ],
                            mainAxisAlignment: MainAxisAlignment.end,
                          ),
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => MyInitiator()));
                          },
                        ),
                      ),
                      //Fim Initiator

                      //Início Sentinel
                      MouseRegion(
                        cursor: SystemMouseCursors.click,
                        child: GestureDetector(
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Image.asset("images/icones/sentinel.png", width: MediaQuery.of(context).size.height*0.1),
                                ],
                                mainAxisAlignment: MainAxisAlignment.center,
                              ),
                              Row(
                                children: [
                                  Text("Sentinel", style: TextStyle(color: Colors.cyan[50], fontFamily: "VavaFont"),),
                                ],
                                mainAxisAlignment: MainAxisAlignment.center,
                              ),
                            ],
                            mainAxisAlignment: MainAxisAlignment.end,
                          ),
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => MySentinel()));
                          },
                        ),
                      ),
                      //Fim Sentinel
                    ],
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                  ),
                ),
              ],
              mainAxisAlignment: MainAxisAlignment.center,
            ),
          ],
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
        ),
      )
    );
  }
}