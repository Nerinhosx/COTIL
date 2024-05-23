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
                                fontFamily: "Kameron",
                                fontWeight: FontWeight.w600,
                                fontSize: 15,
                              ),
                            ),
                          ),
                          width: MediaQuery.of(context).size.width*0.6,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.5),
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ],
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                  ),
                ),

                Padding(
                  padding: EdgeInsets.all(20),
                  child: Row(
                    children: [
                      Image.asset(widget.lista[1].img, height: MediaQuery.of(context).size.height*0.35),
                      DecoratedBox(
                        child: SizedBox(
                          child: Padding(
                            padding: EdgeInsets.all(10),
                            child: Text(
                              widget.lista[1].desc,
                              softWrap: true,
                              style: TextStyle(
                                fontFamily: "Kameron",
                                fontWeight: FontWeight.w600,
                                fontSize: 15,
                              ),
                            ),
                          ),
                          width: MediaQuery.of(context).size.width*0.6,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.5),
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ],
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                  ),
                ),

                Padding(
                  padding: EdgeInsets.all(20),
                  child: Row(
                    children: [
                      Image.asset(widget.lista[2].img, height: MediaQuery.of(context).size.height*0.35),
                      DecoratedBox(
                        child: SizedBox(
                          child: Padding(
                            padding: EdgeInsets.all(10),
                            child: Column(
                              children: [
                                Text(
                                  widget.lista[2].desc,
                                  softWrap: true,
                                  style: TextStyle(
                                    fontFamily: "Kameron",
                                    fontWeight: FontWeight.w600,
                                    fontSize: 15,
                                  ),
                                ),
                                Row(
                                  children: [
                                    //TO DO: adicionar foto das habilidades do personagem
                                  ],
                                ),
                              ],
                            )
                          ),
                          width: MediaQuery.of(context).size.width*0.6,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.5),
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ],
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
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