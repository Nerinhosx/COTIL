// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';

class Ex1 extends StatelessWidget {
  const Ex1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Exercício 1",
          style: TextStyle(
            fontWeight: FontWeight.w700,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 28, 101, 228),
      ),

      body: SingleChildScrollView(child:
        Center(child:
          Column(
            children:[
              SizedBox(height: 60,),
              Text(
                "Eu",
                style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.w500,
                  backgroundColor: Colors.blueAccent,
                ),
              ),
              
              SizedBox(height: 60,),
              Text(
                "Amo",
                style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.w500,
                  backgroundColor: Colors.red,
                ),
              ),

              SizedBox(height: 60,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "a",
                    style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.w500,
                      backgroundColor: Colors.yellow,
                    ),
                  ),

                  Text(
                    "aula",
                    style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.w500,
                      backgroundColor: Color.fromARGB(255, 163, 11, 0)
                    ),
                  ),

                  Text(
                    "da",
                    style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.w500,
                      backgroundColor: Color.fromARGB(255, 244, 216, 54),
                    ),
                  ),
                ]  
              ),

              SizedBox(height: 60,),
              Text(
                "Tânia",
                style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.w500,
                  backgroundColor: const Color.fromARGB(255, 206, 54, 244),
                ),
              ),

              SizedBox(height: 50,),
              SizedBox(child:
                Image.network('https://upload.wikimedia.org/wikipedia/commons/thumb/f/f1/Heart_coraz%C3%B3n.svg/220px-Heart_coraz%C3%B3n.svg.png'),
                height: 120,
              ),
            ]
          ),
        ),     
      ),
    );
  }
}