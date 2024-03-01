// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class MyCat extends StatelessWidget {
  const MyCat({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Meus Gatos",
           
        ),
      ),

      body: Center(child: 
          Column(children: [

            DecoratedBox(
              decoration: BoxDecoration(
                border: Border.all(),
                borderRadius: BorderRadius.circular(20),
                color: Colors.blue,
              ),

              child: Padding(
                padding: EdgeInsets.all(50),
                child: Text("Meus gatinhos"),
              ),
            ),
          ]
        ),
      ),
    );
  }
}