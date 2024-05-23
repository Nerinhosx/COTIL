import 'package:flutter/material.dart';
import 'package:flutter_application_exercicio_navigation/character.dart';

class MyController extends StatefulWidget {
  List<Character> lista = [];
  MyController(this.lista, {super.key});

  @override
  State<MyController> createState() => _MyControllerState();
}

class _MyControllerState extends State<MyController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Controller", style: TextStyle(fontFamily: "VavaFont", fontSize: 46)),
        centerTitle: true,
        backgroundColor: Color.fromRGBO(255, 70, 85, 1),
      ),

      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/mapas/Fracture.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(20),
                  child: Row(
                    children: [
                      Image.asset(widget.lista[0].img, height: MediaQuery.of(context).size.height*0.35),
                      DecoratedBox(
                        child: SizedBox(
                          child: Padding(
                            padding: EdgeInsets.all(10),
                            child: Text(
                              widget.lista[0].desc,
                              softWrap: true,
                              style: TextStyle(
                                fontFamily: "Montserrat",
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                          ),
                          width: MediaQuery.of(context).size.width*0.4,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.5),
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ],
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  ),
                ),

                Padding(
                  padding: EdgeInsets.all(20),
                  child: Row(
                    children: [
                      Image.asset("images/cont/Viper.png", height: MediaQuery.of(context).size.height*0.35),
                      DecoratedBox(
                        child: SizedBox(
                          child: Padding(
                            padding: EdgeInsets.all(10),
                            child: Text(
                              "Viper, a química dos Estados Unidos, emprega uma variedade de dispositivos químicos venenosos para controlar o campo de batalha e prejudicar a visão do inimigo. Se as toxinas não matarem a presa, seus jogos mentais certamente o farão.",
                              softWrap: true,
                              style: TextStyle(
                                fontFamily: "Montserrat",
                                fontSize: 16,
                              ),
                            ),
                          ),
                          width: MediaQuery.of(context).size.width*0.4,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.5),
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ],
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  ),
                ),

                Padding(
                  padding: EdgeInsets.all(20),
                  child: Row(
                    children: [
                      Image.asset("images/cont/Omen.png", height: MediaQuery.of(context).size.height*0.35),
                      DecoratedBox(
                        child: SizedBox(
                          child: Padding(
                            padding: EdgeInsets.all(10),
                            child: Text(
                              "Omen, uma lembrança fantasmagórica, caça nas sombras. Ele cega os inimigos, teleporta-se pelo campo e deixa a paranoia assumir o controle enquanto o adversário tenta descobrir de onde virá seu próximo ataque.",
                              softWrap: true,
                              style: TextStyle(
                                fontFamily: "Montserrat",
                                fontSize: 16,
                              ),
                            ),
                          ),
                          width: MediaQuery.of(context).size.width*0.4,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.5),
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ],
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}