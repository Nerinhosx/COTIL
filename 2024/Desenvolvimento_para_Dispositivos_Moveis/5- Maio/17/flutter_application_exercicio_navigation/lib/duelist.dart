import 'package:flutter/material.dart';
import 'package:flutter_application_exercicio_navigation/character.dart';

class MyDuelist extends StatefulWidget {
  List<Character> lista = [];
  MyDuelist(this.lista, {super.key});

  @override
  State<MyDuelist> createState() => _MyDuelistState();
}

class _MyDuelistState extends State<MyDuelist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Duelist", style: TextStyle(fontFamily: "VavaFont", fontSize: 46)),
        centerTitle: true,
        backgroundColor: Color.fromRGBO(255, 70, 85, 1),
      ),

      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/mapas/Pearl.jpg"),
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
                            child: Column(
                              children: [
                                Text(
                                  widget.lista[0].name,
                                  softWrap: true,
                                  style: TextStyle(
                                    fontFamily: "Kameron",
                                    fontWeight: FontWeight.w600,
                                    fontSize: 17,
                                  ),
                                ),
                                Text(
                                  widget.lista[0].desc,
                                  softWrap: true,
                                  style: TextStyle(
                                    fontFamily: "Kameron",
                                    fontWeight: FontWeight.w600,
                                    fontSize: 15,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 10),
                                  child: Row(
                                    children: [
                                      Image.asset(widget.lista[0].liHab[0], height: MediaQuery.of(context).size.height*0.05,),
                                      Image.asset(widget.lista[0].liHab[1], height: MediaQuery.of(context).size.height*0.05,),
                                      Image.asset(widget.lista[0].liHab[2], height: MediaQuery.of(context).size.height*0.05,),
                                      Image.asset(widget.lista[0].liHab[3], height: MediaQuery.of(context).size.height*0.05,),
                                    ],
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  ),
                                ),
                              ],
                            )
                          ),
                          width: MediaQuery.of(context).size.width*0.45,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.blueGrey[200]!.withOpacity(0.7),
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
                            child: Column(
                              children: [
                                Text(
                                  widget.lista[1].name,
                                  softWrap: true,
                                  style: TextStyle(
                                    fontFamily: "Kameron",
                                    fontWeight: FontWeight.w600,
                                    fontSize: 17,
                                  ),
                                ),
                                Text(
                                  widget.lista[1].desc,
                                  softWrap: true,
                                  style: TextStyle(
                                    fontFamily: "Kameron",
                                    fontWeight: FontWeight.w600,
                                    fontSize: 15,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 10),
                                  child: Row(
                                    children: [
                                      Image.asset(widget.lista[1].liHab[0], height: MediaQuery.of(context).size.height*0.05,),
                                      Image.asset(widget.lista[1].liHab[1], height: MediaQuery.of(context).size.height*0.05,),
                                      Image.asset(widget.lista[1].liHab[2], height: MediaQuery.of(context).size.height*0.05,),
                                      Image.asset(widget.lista[1].liHab[3], height: MediaQuery.of(context).size.height*0.05,),
                                    ],
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  ),
                                ),
                              ],
                            )
                          ),
                          width: MediaQuery.of(context).size.width*0.45,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.blueGrey[200]!.withOpacity(0.7),
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
                                  widget.lista[2].name,
                                  softWrap: true,
                                  style: TextStyle(
                                    fontFamily: "Kameron",
                                    fontWeight: FontWeight.w600,
                                    fontSize: 17,
                                  ),
                                ),
                                Text(
                                  widget.lista[2].desc,
                                  softWrap: true,
                                  style: TextStyle(
                                    fontFamily: "Kameron",
                                    fontWeight: FontWeight.w600,
                                    fontSize: 15,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 10),
                                  child: Row(
                                    children: [
                                      Image.asset(widget.lista[2].liHab[0], height: MediaQuery.of(context).size.height*0.05,),
                                      Image.asset(widget.lista[2].liHab[1], height: MediaQuery.of(context).size.height*0.05,),
                                      Image.asset(widget.lista[2].liHab[2], height: MediaQuery.of(context).size.height*0.05,),
                                      Image.asset(widget.lista[2].liHab[3], height: MediaQuery.of(context).size.height*0.05,),
                                    ],
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  ),
                                ),
                              ],
                            )
                          ),
                          width: MediaQuery.of(context).size.width*0.45,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.blueGrey[200]!.withOpacity(0.7),
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