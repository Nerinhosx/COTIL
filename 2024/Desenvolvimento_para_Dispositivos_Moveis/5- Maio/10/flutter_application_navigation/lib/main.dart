// ignore_for_file: prefer_const_constructors, unused_import, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_application_navigation/favoritos.dart';
import 'package:flutter_application_navigation/home.dart';
import 'package:flutter_application_navigation/pessoa.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      //home: MyHome(),
      routes: {
        '/': (context) => MyHome(),
        '/pessoa':(context) => MyPessoa("Bom-dia!"),
        '/favoritos':(context) => MyFavoritos(["Ratinhoo", "Cavalo", "UUUUI"]),
      }
    );
  }
}
