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
  //Setando valores da lista de Controllers
  List<String> brimstoneHab = [];
  Character brimstone = Character("Brimstone" ,"images/cont/Brimstone.png", "Vindo diretamente dos EUA, o arsenal orbital do Brimstone garante que o esquadrão dele sempre esteja em vantagem. Sua capacidade de oferecer utilitários com precisão e segurança faz dele um comandante inigualável na linha de frente.");
  
  List<String> viperHab = [];
  Character viper = Character("Viper", "images/cont/Viper.png", "Viper, a química dos Estados Unidos, emprega uma variedade de dispositivos químicos venenosos para controlar o campo de batalha e prejudicar a visão do inimigo. Se as toxinas não matarem a presa, seus jogos mentais certamente o farão.");
  
  List<String> omenHab = [];
  Character omen = Character("Omen", "images/cont/Omen.png", "Omen, uma lembrança fantasmagórica, caça nas sombras. Ele cega os inimigos, teleporta-se pelo campo e deixa a paranoia assumir o controle enquanto o adversário tenta descobrir de onde virá seu próximo ataque.");
  
  List<Character> liCont = [];
  //Setando valores da lista de Controllers

  //Setando valores da lsita de Duelists
  List<String> phoenixHab = [];
  Character phoenix = Character("Phoenix", "images/duel/Phoenix.png", "Chegando com tudo diretamente do Reino Unido, o poder estelar de Phoenix reluz em seu estilo de luta, incendiando o campo de batalha com luz e estilo. Tendo ajuda ou não, ele entra na luta como e quando achar que deve.");
  
  List<String> razeHab = [];
  Character raze = Character("Raze", "images/duel/Raze.png", "Raze chega do Brasil com uma explosão de carisma e armas enormes. Com seu estilo de jogo \"porradeiro\", ela é craque em desentocar inimigos entrincheirados e limpar espaços apertados com uma bela dose de BUUUM!");
  
  List<String> reynaHab = [];
  Character reyna = Character("Reyna", "images/duel/Reyna.png", "Criada no coração do México, Reyna domina o combate individual, destacando-se a cada abate efetuado. Sua capacidade só é limitada por sua própria perícia, tornando-a bastante dependente de desempenho.");
  
  List<Character> liDuel = [];
  //Setando valores da lsita de Duelists

  //Setando valores da lsita de Initiators
  List<String> kayoHab = [];
  Character kayo = Character("KAY/O", "images/init/KAYO.png", "KAY/O é uma máquina de guerra construída com um único propósito: neutralizar Radiantes. Ele é capaz de Suprimir habilidades inimigas, anulando a capacidade de contra-ataque dos adversários e dando a si e a seus aliados uma vantagem essencial em combate.");
  
  List<String> skyeHab = [];
  Character skye = Character("Skye", "images/init/Skye.png", "Mandando um salve direto da Austrália, Skye e sua equipe de feras desbravam territórios hostis. Com seus poderes de cura e suas criações que partem pra cima dos inimigos, qualquer equipe ficará mais forte e mais segura tendo Skye como aliada.");
  
  List<String> sovaHab = [];
  Character sova = Character("Sova", "images/init/Sova.png", "Nascido sob o eterno inverno das tundras russas, Sova rastreia, encontra e elimina inimigos com eficiência e precisão implacáveis. Seu arco personalizado e suas habilidades inigualáveis de reconhecimento garantem que nenhuma presa escape.");
  
  List<Character> liInit = [];
  //Setando valores da lsita de Initiators

  //Setando valores da lsita de Sentinels
  List<String> chamberHab = [];
  Character chamber = Character("Chamber", "images/sent/Chamber.png", "Bem-vestido e armado até os dentes, o criador de armas francês Chamber coloca os inimigos para correr com precisão mortal. Use e abuse do arsenal personalizado dele para segurar posições e abater inimigos de longe, criando a defesa perfeita para qualquer plano.");
  
  List<String> cypherHab = [];
  Character cypher = Character("Cypher", "images/sent/Cypher.png", "Cypher, um vendedor de informações do Marrocos, é uma verdadeira rede de vigilância de um homem só que fica de olho em cada movimento dos inimigos. Nenhum segredo está a salvo. Nenhuma manobra passa despercebida. Cypher está sempre vigiando.");
  
  List<String> killjoyHab = [];
  Character killjoy = Character("Killjoy", "images/sent/Killjoy.png", "Killjoy, uma alemã genial, defende posições-chave no campo de batalha facilmente com seu arsenal de invenções. Se o dano causado por seu equipamento não der cabo dos inimigos, os efeitos negativos de seus queridos robôs darão conta do recado.");
  
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
                            brimstoneHab = ["images/cont/brimstone/Brimstone_hab1.png", "images/cont/brimstone/Brimstone_hab2.png", "images/cont/brimstone/Brimstone_hab3.png", "images/cont/brimstone/Brimstone_hab4.png"];
                            brimstone.setLiHab(brimstoneHab);

                            viperHab = ["images/cont/viper/Viper_hab1.png", "images/cont/viper/Viper_hab2.png", "images/cont/viper/Viper_hab3.png", "images/cont/viper/Viper_hab4.png"];
                            viper.setLiHab(viperHab);

                            omenHab = ["images/cont/omen/Omen_hab1.png", "images/cont/omen/Omen_hab2.png", "images/cont/omen/Omen_hab3.png", "images/cont/omen/Omen_hab4.png"];
                            omen.setLiHab(omenHab);

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
                            phoenixHab = ["images/duel/phoenix/Phoenix_hab1.png", "images/duel/phoenix/Phoenix_hab2.png", "images/duel/phoenix/Phoenix_hab3.png", "images/duel/phoenix/Phoenix_hab4.png"];
                            phoenix.setLiHab(phoenixHab);

                            razeHab = ["images/duel/raze/Raze_hab1.png", "images/duel/raze/Raze_hab2.png", "images/duel/raze/Raze_hab3.png", "images/duel/raze/Raze_hab4.png"];
                            raze.setLiHab(razeHab);

                            reynaHab = ["images/duel/reyna/Reyna_hab1.png", "images/duel/reyna/Reyna_hab2.png", "images/duel/reyna/Reyna_hab3.png", "images/duel/reyna/Reyna_hab4.png"];
                            reyna.setLiHab(reynaHab);

                            liDuel.add(phoenix);
                            liDuel.add(raze);
                            liDuel.add(reyna);
                            Navigator.push(context, MaterialPageRoute(builder: (context) => MyDuelist(liDuel)));
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
                            kayoHab = ["images/init/kayo/KAYO_hab1.png", "images/init/kayo/KAYO_hab2.png", "images/init/kayo/KAYO_hab3.png", "images/init/kayo/KAYO_hab4.png"];
                            kayo.setLiHab(kayoHab);

                            skyeHab = ["images/init/skye/Skye_hab1.png", "images/init/skye/Skye_hab2.png", "images/init/skye/Skye_hab3.png", "images/init/skye/Skye_hab4.png"];
                            skye.setLiHab(skyeHab);

                            sovaHab = ["images/init/sova/Sova_hab1.png", "images/init/sova/Sova_hab2.png", "images/init/sova/Sova_hab3.png", "images/init/sova/Sova_hab4.png"];
                            sova.setLiHab(sovaHab);

                            liInit.add(kayo);
                            liInit.add(skye);
                            liInit.add(sova);
                            Navigator.push(context, MaterialPageRoute(builder: (context) => MyInitiator(liInit)));
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
                            chamberHab = ["images/sent/chamber/Chamber_hab1.png", "images/sent/chamber/Chamber_hab2.png", "images/sent/chamber/Chamber_hab3.png", "images/sent/chamber/Chamber_hab4.png"];
                            chamber.setLiHab(chamberHab);

                            cypherHab = ["images/sent/cypher/Cypher_hab1.png", "images/sent/cypher/Cypher_hab2.png", "images/sent/cypher/Cypher_hab3.png", "images/sent/cypher/Cypher_hab4.png"];
                            cypher.setLiHab(cypherHab);

                            killjoyHab = ["images/sent/killjoy/Killjoy_hab1.png", "images/sent/killjoy/Killjoy_hab2.png", "images/sent/killjoy/Killjoy_hab3.png", "images/sent/killjoy/Killjoy_hab4.png"];
                            killjoy.setLiHab(killjoyHab);

                            liSent.add(chamber);
                            liSent.add(cypher);
                            liSent.add(killjoy);
                            Navigator.push(context, MaterialPageRoute(builder: (context) => MySentinel(liSent)));
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